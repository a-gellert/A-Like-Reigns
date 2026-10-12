local M = {}

M.has_poki = (poki_sdk ~= nil)

M.is_gameplay_active = false

function M.init()
	M.is_gameplay_active = false
end

function M.gameplay_stop()
	if M.has_poki and M.is_gameplay_active then
		M.is_gameplay_active = false
		poki_sdk.gameplay_stop()
	end
end

function M.gameplay_start()
	if M.has_poki and not M.is_gameplay_active then
		M.is_gameplay_active = true
		poki_sdk.gameplay_start()
	end
end

function M.get_sdk_language()
	if M.has_poki and poki_sdk.get_url_param then
		local url_keys = { "gdLanguage", "lang", "language", "locale", "poki_lang", "hl" }
		for _, key in ipairs(url_keys) do
			local val = poki_sdk.get_url_param(key)
			if val and val ~= "" then
				return val
			end
		end
	end
	return nil
end

function M.commercial_break(callback)
	if M.has_poki and poki_sdk.commercial_break then
		poki_sdk.commercial_break(function(self_ctx, status)
			local success_status = poki_sdk.COMMERCIAL_BREAK_SUCCESS or 1
			if status == success_status then
				if callback then
					callback(true)
				end
			end
		end)
	else
		-- Standalone mock fallback
		if callback then
			callback(true)
		end
	end
end

function M.rewarded_break(callback)
	if M.has_poki and poki_sdk.rewarded_break then
		poki_sdk.rewarded_break(function(self_ctx, status)
			local success_status = poki_sdk.REWARDED_BREAK_SUCCESS or 1
			local error_status = poki_sdk.REWARDED_BREAK_ERROR or 0

			if status == success_status then
				if callback then
					callback(true)
				end
			elseif status == error_status then
				if callback then
					callback(false)
				end
			end
		end)
	else
		-- Standalone mock fallback
		if callback then
			callback(true)
		end
	end
end

return M
