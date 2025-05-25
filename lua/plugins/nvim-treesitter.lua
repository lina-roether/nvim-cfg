return {
	"nvim-treesitter/nvim-treesitter",
	lazy = false,
	build = function()
		vim.cmd.TSUpdate()
	end,
	opts = {
		auto_install = true,
		sync_install = false,
		highlight = {
			enable = true,
			additional_vim_regex_highlighting = false
		},
		textobjects = {
			select = {
				enable = true,
				lookahead = true,
				keymaps = {
					["af"] = "@function.outer",
					["if"] = "@function.inner",
					["ac"] = "@class.outer",
					["ic"] = "@class.inner",
					["ib"] = "@block.inner",
					["ab"] = "@block.outer",
					["as"] = "@statement.outer",
					["ip"] = "@parameter.inner",
					["ap"] = "@parameter.outer",
				},
				selection_modes = {
					["@function.outer"] = "V",
					["@block.outer"] = "V",
					["@class.outer"] = "V"
				}
			},
			move = {
				enable = true,
				set_jumps = true,
				goto_next_start = {
					["]f"] = "@function.outer",
					["]c"] = "@class.outer",
					["]b"] = "@block.outer",
					["]s"] = "@statement.outer",
					["]p"] = "@parameter.inner"
				},
				goto_next_end = {
					["]F"] = "@function.outer",
					["]C"] = "@class.outer",
					["]B"] = "@block.outer",
					["]S"] = "@statement.outer",
					["]P"] = "@parameter.inner"
				},
				goto_prev_start = {
					["[f"] = "@function.outer",
					["[c"] = "@class.outer",
					["[b"] = "@block.outer",
					["[s"] = "@statement.outer",
					["[p"] = "@parameter.inner"
				},
				goto_prev_end = {
					["[F"] = "@function.outer",
					["[C"] = "@class.outer",
					["[B"] = "@block.outer",
					["[S"] = "@statement.outer",
					["[P"] = "@parameter.inner"
				},
			},
			swap = {
				enable = true,
				swap_next = {
					[">p"] = "@parameter.inner",
					[">s"] = "@statement.outer",
				},
				swap_previous = {
					["<p"] = "@parameter.inner",
					["<s"] = "@parameter.outer"
				}
			}
		}
	},
	config = function(_, opts)
		require("nvim-treesitter.configs").setup(opts)
	end
}
