return {
	{
		"nvim-treesitter/nvim-treesitter",
		lazy = false,
		branch = "master",
		build = ":TSUpdate",
		-- event = { "BufReadPost", "BufNewFile" },
		-- cmd = { "TSUpdate", "TSInstall" },
		config = function()
			require("nvim-treesitter.configs").setup({
				ensure_installed = { "vim", "vimdoc", "lua", "javascript", "typescript", "json" },
				auto_install = false,
				highlight = { enabled = true },
				indent = { enabled = true },
			})
		end,
	},
}
