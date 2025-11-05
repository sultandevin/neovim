return {
	"stevearc/oil.nvim",
	opts = {
		float = {
			padding = 2,
			max_width = 0.5,
			max_height = 0.5,
			border = "rounded",
		},
		confirmation = {
			max_width = 0.5,
			max_height = 0.5,
			border = "rounded",
		},
		keymaps_help = {
			border = "rounded",
		},
	},
	-- dependencies = { "nvim-tree/nvim-web-devicons" }, -- use if you prefer nvim-web-devicons
	-- Lazy loading is not recommended because it is very tricky to make it work correctly in all situations.
	lazy = false,
	keys = {
		{ "-", "<CMD>Oil --float<CR>", desc = "Open parent directory" },
	},
}
