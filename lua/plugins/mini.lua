return {
	"nvim-mini/mini.nvim",
	version = false,
	lazy = false,
	config = function()
		require("mini.files").setup({
			windows = {
				preview = true,
				width_preview = 30,
			},
		})
		require("mini.ai").setup()
		require("mini.pairs").setup()
		require("mini.notify").setup()
		-- require("mini.tabline").setup()
		require("mini.indentscope").setup()
		require("mini.surround").setup()
		require("mini.pairs").setup()
		require("mini.icons").setup()
		require("mini.statusline").setup()
		require("mini.cursorword").setup()
		require("mini.bracketed").setup()
		require("mini.starter").setup()
		-- require("mini.completion").setup({
		-- 	window = {
		-- 		info = { height = 25, width = 80, border = "rounded" },
		-- 		signature = { height = 25, width = 80, border = "rounded" },
		-- 	},
		-- })
		-- require("mini.snippets").setup()
	end,
	keys = {
		{
			"-",
			function()
				MiniFiles.open()
			end,
			desc = "Open Explorer",
		},
	},
}
