return {
	"ellisonleao/gruvbox.nvim",
	"projekt0n/github-nvim-theme",
	"Shatur/neovim-ayu",
	"rebelot/kanagawa.nvim",
	"catppuccin/nvim",
	{
		"vague-theme/vague.nvim",
		lazy = false,
		priority = 1000,
		config = function()
			require("vague").setup({
				style = "dark",
				transparent = false,
				terminal_colors = true,
				dim_inactive_windows = false,
				lualine_bold = false,
			})
			vim.cmd("colorscheme vague")
		end,
	},
}
