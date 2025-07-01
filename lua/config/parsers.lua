local M = {}

function M.setup() end

function M.after()
	local parser_config = require("nvim-treesitter.parsers").get_parser_configs()
	parser_config.sticker = {
		install_info = {
			url = "https://github.com/lina-roether/tree-sitter-sticker",
			files = { "src/parser.c" },
			branch = "main",
			generate_requires_npm = false,
			requires_generate_from_grammar = false
		},
		filetype = "sticker"
	}
	vim.opt.rtp:append("~/.local/share/nvim/tree-sitter-sticker/queries")
end

return M
