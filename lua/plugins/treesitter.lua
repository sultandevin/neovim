return {
	{
		"nvim-treesitter/nvim-treesitter",
		lazy = false,
		branch = "master",
		build = ":TSUpdate",
		dependencies = {
			"nvim-treesitter/nvim-treesitter-context",
			config = function()
				require("treesitter-context").setup({
					max_lines = 3, -- How many lines the window should span. Values <= 0 mean no limit.
				})
			end,
		},
		-- event = { "BufReadPost", "BufNewFile" },
		-- cmd = { "TSUpdate", "TSInstall" },
		config = function()
			require("nvim-treesitter.configs").setup({
				ensure_installed = { "vim", "vimdoc", "lua", "javascript", "typescript", "json" },
				auto_install = false,
				highlight = {
					enabled = true,
					additional_vim_regex_highlighting = false,
				},
				indent = { enabled = true },
			})
		end,
	},
}
