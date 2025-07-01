local function register_filetype(pattern, filetype)
	vim.api.nvim_create_autocmd(
		{ "BufRead", "BufNewFile" },
		{
			pattern = pattern,
			callback = function()
				vim.cmd.setfiletype(filetype)
			end
		}
	)
end

local M = {}

function M.setup()
	register_filetype("*.wgsl", "wgsl");
	register_filetype("*.sticker", "sticker");
	register_filetype("*.wesl", "wesl");
end

function M.after() end

return M;
