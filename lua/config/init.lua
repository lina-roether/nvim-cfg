local filetypes = require("config.filetypes")
local keymaps = require("config.keymaps")
local options = require("config.options")
local autocmds = require("config.autocmds")
local usercmds = require("config.usercmds")
local parsers = require("config.parsers")

local M = {}

function M.setup()
	options.setup()
	keymaps.setup()
	filetypes.setup()
	autocmds.setup()
	usercmds.setup()
	parsers.setup()
end

function M.after()
	options.after()
	keymaps.after()
	filetypes.after()
	autocmds.after()
	usercmds.after()
	parsers.after()
end

return M;
