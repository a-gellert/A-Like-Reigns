local ru = require("game.data.locales.ru")
local en = require("game.data.locales.en")
local tr = require("game.data.locales.tr")
local de = require("game.data.locales.de")
local fr = require("game.data.locales.fr")

local M = {}

M.LANGUAGES = { "ru", "en", "tr", "de", "fr" }

M.locales = {
	ru = ru,
	en = en,
	tr = tr,
	de = de,
	fr = fr
}

M.current_language = "ru"

local SAVE_APP_NAME = "boss_simulator"
local SAVE_FILE_NAME = "settings"

local function load_saved_language()
	if sys and sys.get_save_file then
		local path = sys.get_save_file(SAVE_APP_NAME, SAVE_FILE_NAME)
		local data = sys.load(path)
		if data and data.language and M.locales[data.language] then
			return data.language
		end
	end
	return nil
end

local function normalize_language(lang)
	if not lang or type(lang) ~= "string" then
		return nil
	end

	-- Clean up string
	local str = string.lower(lang)
	str = string.gsub(str, "^%s+", "")
	str = string.gsub(str, "%s+$", "")
	str = string.gsub(str, "[\"']", "")

	if str == "" then
		return nil
	end

	-- Direct match with available locales
	if M.locales[str] then
		return str
	end

	-- Extract 2-letter ISO prefix
	local prefix = string.sub(str, 1, 2)
	if M.locales[prefix] then
		return prefix
	end

	-- Regional / language alias mappings
	local mappings = {
		rus = "ru", russian = "ru", uk = "ru", ukr = "ru", be = "ru", bel = "ru", kk = "ru", kaz = "ru", ky = "ru", uz = "ru",
		tur = "tr", turkish = "tr", az = "tr", aze = "tr",
		deu = "de", ger = "de", german = "de", deutsch = "de",
		fra = "fr", fre = "fr", french = "fr", francais = "fr",
		eng = "en", english = "en"
	}

	if mappings[str] then
		return mappings[str]
	end

	if mappings[prefix] then
		return mappings[prefix]
	end

	return nil
end

function M.detect_sdk_language()
	-- 1. Check Poki SDK Lua extension URL parameters
	if poki_sdk and poki_sdk.get_url_param then
		local url_keys = { "gdLanguage", "lang", "language", "locale", "poki_lang", "hl" }
		for _, key in ipairs(url_keys) do
			local val = poki_sdk.get_url_param(key)
			local detected = normalize_language(val)
			if detected then
				return detected
			end
		end
	end

	-- 2. Check HTML5 Web environment (Poki SDK JS, Yandex Games SDK, URL params, browser navigator)
	if html5 and html5.run then
		local js_detect = [[
			(function() {
				try {
					if (typeof PokiSDK !== 'undefined') {
						if (typeof PokiSDK.getLanguage === 'function') {
							var l = PokiSDK.getLanguage();
							if (l) return String(l);
						}
						if (typeof PokiSDK.getURLParam === 'function') {
							var l = PokiSDK.getURLParam('gdLanguage') || PokiSDK.getURLParam('lang') || PokiSDK.getURLParam('language') || PokiSDK.getURLParam('locale') || PokiSDK.getURLParam('poki_lang') || PokiSDK.getURLParam('hl');
							if (l) return String(l);
						}
					}
					if (typeof ysdk !== 'undefined' && ysdk.environment && ysdk.environment.i18n && ysdk.environment.i18n.lang) {
						return String(ysdk.environment.i18n.lang);
					}
					if (window.location && window.location.search) {
						var params = new URLSearchParams(window.location.search);
						var l = params.get('gdLanguage') || params.get('lang') || params.get('language') || params.get('locale') || params.get('poki_lang') || params.get('hl');
						if (l) return String(l);
					}
					if (navigator) {
						var l = (navigator.languages && navigator.languages[0]) || navigator.language || navigator.userLanguage;
						if (l) return String(l);
					}
				} catch(e) {}
				return '';
			})()
		]]
		local res = html5.run(js_detect)
		local detected = normalize_language(res)
		if detected then
			return detected
		end
	end

	-- 3. Check Defold system info
	if sys and sys.get_sys_info then
		local info = sys.get_sys_info()
		if info then
			local detected = normalize_language(info.language) or normalize_language(info.device_language)
			if detected then
				return detected
			end
		end
	end

	return "en"
end

function M.init()
	local saved = load_saved_language()
	if saved then
		M.current_language = saved
	else
		-- First launch: detect and select language via SDK / platform
		local sdk_lang = M.detect_sdk_language()
		M.set_language(sdk_lang)
	end
end

function M.set_language(lang_code)
	if M.locales[lang_code] then
		M.current_language = lang_code
		if sys and sys.get_save_file and sys.save then
			local path = sys.get_save_file(SAVE_APP_NAME, SAVE_FILE_NAME)
			sys.save(path, { language = lang_code })
		end
		return true
	end
	return false
end

function M.get_language()
	return M.current_language
end

function M.cycle_language()
	for i = 1, #M.LANGUAGES do
		if M.LANGUAGES[i] == M.current_language then
			local next_idx = (i % #M.LANGUAGES) + 1
			M.set_language(M.LANGUAGES[next_idx])
			return M.current_language
		end
	end
	M.set_language("en")
	return M.current_language
end

function M.get_current_locale()
	return M.locales[M.current_language] or M.locales["en"] or ru
end

function M.t(key, ...)
	local loc = M.get_current_locale()
	local val = loc.ui and loc.ui[key]
	if not val and M.locales["en"] and M.locales["en"].ui then
		val = M.locales["en"].ui[key]
	end
	if not val then
		return key
	end
	if select("#", ...) > 0 then
		return string.format(val, ...)
	end
	return val
end

function M.get_character(char_id)
	local loc = M.get_current_locale()
	local char = loc.characters and loc.characters[char_id]
	if not char and M.locales["en"] and M.locales["en"].characters then
		char = M.locales["en"].characters[char_id]
	end
	if char then
		return {
			name = char.name,
			sprite = char.sprite or char_id
		}
	end
	return {
		name = "Unknown",
		sprite = "lead_artem"
	}
end

function M.get_card_text(card_id)
	local loc = M.get_current_locale()
	local card = loc.cards and loc.cards[card_id]
	if not card and M.locales["en"] and M.locales["en"].cards then
		card = M.locales["en"].cards[card_id]
	end
	if not card and ru.cards then
		card = ru.cards[card_id]
	end
	if card then
		return card
	end
	return {
		text = "...",
		left = loc.ui.choice_left_default or "NO",
		right = loc.ui.choice_right_default or "YES"
	}
end

function M.get_death(stat_name, death_type)
	local loc = M.get_current_locale()
	local stat_deaths = loc.deaths and loc.deaths[stat_name]
	local d = stat_deaths and stat_deaths[death_type]
	if not d and M.locales["en"] and M.locales["en"].deaths then
		local en_s = M.locales["en"].deaths[stat_name]
		d = en_s and en_s[death_type]
	end
	if d then
		return {
			title = d.title,
			desc = d.desc
		}
	end
	return {
		title = M.t("game_over_default_title"),
		desc = M.t("game_over_default_desc")
	}
end

M.init()

return M
