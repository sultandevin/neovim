return {
	{
		"akinsho/toggleterm.nvim",
		version = "*",
		opts = {
			open_mapping = [[<C-\>]],
			direction = "horizontal",
		},
		keys = {
			{ "<leader>1", "<cmd>ToggleTerm 1 direction=horizontal<cr>", desc = "Term 1" },
			{ "<leader>2", "<cmd>ToggleTerm 2 direction=horizontal<cr>", desc = "Term 2" },
		},
	},
}
