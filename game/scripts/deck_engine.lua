local cards_data = require("game.data.cards_data")
local i18n = require("game.data.i18n")

local M = {}

M.START_STATS = { team = 50, product = 50, money = 50, board = 50 }
M.COOLDOWN_TURNS = 12

function M.new()
	local instance = {
		stats = {
			team = M.START_STATS.team,
			product = M.START_STATS.product,
			money = M.START_STATS.money,
			board = M.START_STATS.board
		},
		quarters = 0,
		forced_queue = { "tut_01" }, -- Onboarding starts with tut_01
		recent_cards = {}, -- card_id -> turn seen
		is_game_over = false,
		death_info = nil,
		ad_rewarded_used = false,
		total_runs = 0,
		current_card = nil
	}
	setmetatable(instance, { __index = M })
	return instance
end

function M:reset()
	self.stats = {
		team = M.START_STATS.team,
		product = M.START_STATS.product,
		money = M.START_STATS.money,
		board = M.START_STATS.board
	}
	self.quarters = 0
	self.forced_queue = {}
	self.recent_cards = {}
	self.is_game_over = false
	self.death_info = nil
	self.ad_rewarded_used = false
	self.total_runs = self.total_runs + 1
	self.current_card = nil
	return self:draw_next_card()
end

function M:get_card_by_id(id)
	for i = 1, #cards_data.cards do
		if cards_data.cards[i].id == id then
			return cards_data.cards[i]
		end
	end
	return nil
end

function M:draw_next_card()
	if self.is_game_over then
		return nil
	end

	-- 1. Check forced queue
	if #self.forced_queue > 0 then
		local next_id = table.remove(self.forced_queue, 1)
		local card = self:get_card_by_id(next_id)
		if card then
			self.current_card = card
			self.recent_cards[card.id] = self.quarters
			return card
		end
	end

	-- 2. Filter pool by cooldown and available weights
	local candidate_cards = {}
	local total_weight = 0

	for i = 1, #cards_data.cards do
		local card = cards_data.cards[i]
		local is_tutorial = (card.id:sub(1, 4) == "tut_")
		local last_turn = self.recent_cards[card.id]
		local cooldown_ok = (last_turn == nil) or ((self.quarters - last_turn) > M.COOLDOWN_TURNS)
		local weight = card.weight or 0

		-- Do not pull tutorial cards again in normal random draws, and ignore weight <= 0
		if (not is_tutorial) and cooldown_ok and (weight > 0) then
			table.insert(candidate_cards, { card = card, weight = weight })
			total_weight = total_weight + weight
		end
	end

	-- Fallback if pool is depleted due to cooldowns
	if #candidate_cards == 0 then
		for i = 1, #cards_data.cards do
			local card = cards_data.cards[i]
			if (card.id:sub(1, 4) ~= "tut_") and ((card.weight or 0) > 0) then
				table.insert(candidate_cards, { card = card, weight = card.weight or 10 })
				total_weight = total_weight + (card.weight or 10)
			end
		end
	end

	if #candidate_cards == 0 then
		return nil
	end

	-- 3. Weighted random selection
	local rnd = math.random() * total_weight
	local chosen_card = candidate_cards[1].card
	local current_acc = 0

	for i = 1, #candidate_cards do
		current_acc = current_acc + candidate_cards[i].weight
		if rnd <= current_acc then
			chosen_card = candidate_cards[i].card
			break
		end
	end

	self.current_card = chosen_card
	self.recent_cards[chosen_card.id] = self.quarters
	return chosen_card
end

function M:apply_choice(direction)
	if not self.current_card or self.is_game_over then
		return false
	end

	local choice = (direction == "left") and self.current_card.left_choice or self.current_card.right_choice
	if not choice then
		return false
	end

	-- 1. Apply effects
	if choice.effects then
		for stat_name, delta in pairs(choice.effects) do
			if self.stats[stat_name] ~= nil then
				self.stats[stat_name] = self.stats[stat_name] + delta
			end
		end
	end

	-- 2. Increment quarters
	self.quarters = self.quarters + 1

	-- 3. Queue next card if linked
	if choice.next_card_id and choice.next_card_id ~= "" then
		table.insert(self.forced_queue, 1, choice.next_card_id)
	end

	-- 4. Check death conditions (V <= 0 or V >= 100)
	local death_stat, death_type = self:check_death()
	if death_stat then
		self.is_game_over = true
		local death_info = i18n.get_death(death_stat, death_type)
		self.death_info = {
			stat = death_stat,
			type = death_type,
			title = death_info.title,
			desc = death_info.desc,
			quarters = self.quarters
		}
		return true
	end

	-- 5. Draw next card
	self:draw_next_card()
	return true
end

function M:check_death()
	local stat_names = { "team", "product", "money", "board" }
	for _, name in ipairs(stat_names) do
		local val = self.stats[name]
		if val <= 0 then
			return name, "min"
		elseif val >= 100 then
			return name, "max"
		end
	end
	return nil, nil
end

function M:apply_rewarded_revive()
	if not self.is_game_over or self.ad_rewarded_used or not self.death_info then
		return false
	end

	local dead_stat = self.death_info.stat
	local dead_type = self.death_info.type

	if dead_type == "min" then
		self.stats[dead_stat] = math.min(100, self.stats[dead_stat] + 35)
		if self.stats[dead_stat] <= 0 then
			self.stats[dead_stat] = 35
		end
	else
		self.stats[dead_stat] = math.max(0, self.stats[dead_stat] - 35)
		if self.stats[dead_stat] >= 100 then
			self.stats[dead_stat] = 65
		end
	end

	self.ad_rewarded_used = true
	self.is_game_over = false
	self.death_info = nil
	self:draw_next_card()
	return true
end

function M:get_character_info(char_id)
	return i18n.get_character(char_id)
end

function M:get_current_card_text()
	if not self.current_card then
		return nil
	end
	return i18n.get_card_text(self.current_card.id)
end

return M
