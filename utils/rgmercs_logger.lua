--- @type Mq
local mq = require('mq')

local actions = {}

local logLeaderStart = '\ar[\agRGMercs'
local logLeaderEnd   = '\ar]\aw >>>'

--- @type number
local logLevel = 3

function actions.get_log_level() return logLevel end

function actions.set_log_level(level) logLevel = level end

function actions.log_error(output, ...)
	if (logLevel < 0) then
		return
	end

	if (... ~= nil) then output = string.format(output, ...) end
	mq.parse(string.format('/mqlog [%s] %s', mq.TLO.Me.Name(), output))
	printf('%s:\arERROR\ax%s \aw%s', logLeaderStart, logLeaderEnd, output)
end

function actions.log_info(output, ...)
	if (logLevel < 1) then
		return
	end

	if (... ~= nil) then output = string.format(output, ...) end
	mq.parse(string.format('/mqlog [%s] %s', mq.TLO.Me.Name(), output))
	printf('%s:\agINFO\ax%s \aw%s', logLeaderStart, logLeaderEnd, output)
end

function actions.log_warning(output, ...)
	if (logLevel < 2) then
		return
	end

	if (... ~= nil) then output = string.format(output, ...) end
	mq.parse(string.format('/mqlog [%s] %s', mq.TLO.Me.Name(), output))
	printf('%s:\ayWARN\ax%s \aw%s', logLeaderStart, logLeaderEnd, output)
end

function actions.log_debug(output, ...)
	if (logLevel < 3) then
		return
	end

	if (... ~= nil) then output = string.format(output, ...) end
	mq.cmd(string.format('/mqlog [%s] %s', mq.TLO.Me.Name(), output))
	printf('%s:\amDEBUG\ax%s \aw%s', logLeaderStart, logLeaderEnd, output)
end

function actions.output_test_logs()
	actions.log_error("Test Error")
	actions.log("Test Warning")
	actions.log2("Test Normal")
	actions.debug_log("Test Debug")
end

return actions
