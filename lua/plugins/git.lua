return {
	{
		"tpope/vim-fugitive",
	},
	{
		"lewis6991/gitsigns.nvim",
		opts = {},
    keys = {
      { "<leader>gp", ":Gitsigns preview_hunk<CR>", desc = "Preview Hunk" },
      { "<leader>gt", ":Gitsigns toggle_current_line_blame<CR>", desc = "Toggle Blame" },
    },
	},
}

