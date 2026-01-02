return {
	"windwp/nvim-ts-autotag",
	-- Make sure you have nvim-treesitter installed and configured
	dependencies = { "nvim-treesitter/nvim-treesitter" },
	config = function()
		require("nvim-ts-autotag").setup({
			opts = {
				enable_close = true, -- Auto close tags
				enable_rename = true, -- Auto rename pairs of tags
			},
			-- It should automatically work for JSX/TSX if you have the parsers installed.
		})
	end,
	-- Recommended events for lazy loading
	ft = { "html", "javascriptreact", "typescriptreact" },
}
