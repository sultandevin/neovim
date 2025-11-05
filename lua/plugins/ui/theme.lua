return {
	"zaldih/themery.nvim",
	dependencies = {
		"ellisonleao/gruvbox.nvim",
		"projekt0n/github-nvim-theme",
		"Shatur/neovim-ayu",
		"rebelot/kanagawa.nvim",
		"vague-theme/vague.nvim",
		"catppuccin/nvim",
	},
	lazy = false,
	config = function()
		require("themery").setup({
			themes = {
				"gruvbox",
				"ayu",
				"github_dark",
				"vague",
				"github_dark_default",
				"kanagawa-wave",
				"kanagawa-dragon",
				"kanagawa-lotus",
				"catppuccin-frappe",
				"catppuccin-macchiato",
				"catppuccin-mocha",
			},
			livePreview = true,
		})
	end,
}
