local M = {}

M.has_poki = (poki_sdk ~= nil)

function M.init()
	if M.has_poki then
		poki_sdk.gameplay_start()
	end
end

function M.gameplay_stop()
	if M.has_poki then
		poki_sdk.gameplay_stop()
	end
end

function M.gameplay_start()
	if M.has_poki then
		poki_sdk.gameplay_start()
	end
end

function M.commercial_break(callback)
	if M.has_poki then
		poki_sdk.commercial_break(function(self_ctx, success)
			if callback then
				callback(success)
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
	if M.has_poki then
		poki_sdk.rewarded_break(function(self_ctx, success)
			if callback then
				callback(success)
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
