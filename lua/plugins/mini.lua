return {
	"nvim-mini/mini.nvim",
	version = false,
	lazy = false,
	config = function()
		require("mini.files").setup({
			windows = {
				preview = false,
				width_preview = 30,
			},
		})
		require("mini.ai").setup()
		require("mini.notify").setup()
		require("mini.indentscope").setup()
		require("mini.surround").setup()
		require("mini.pairs").setup()
		require("mini.icons").setup()
		require("mini.cursorword").setup()
		require("mini.bracketed").setup()

		local miniclue = require("mini.clue")
		miniclue.setup({
			triggers = {
				-- Leader triggers
				{ mode = "n", keys = "<Leader>" },
				{ mode = "x", keys = "<Leader>" },

				-- Built-in completion
				-- { mode = "i", keys = "<C-x>" },

				-- `g` key
				{ mode = "n", keys = "g" },
				{ mode = "x", keys = "g" },

				-- Marks
				{ mode = "n", keys = "'" },
				{ mode = "n", keys = "`" },
				{ mode = "x", keys = "'" },
				{ mode = "x", keys = "`" },

				-- Registers
				{ mode = "n", keys = '"' },
				{ mode = "x", keys = '"' },
				{ mode = "i", keys = "<C-r>" },
				{ mode = "c", keys = "<C-r>" },

				-- Window commands
				{ mode = "n", keys = "<C-w>" },

				-- `z` key
				{ mode = "n", keys = "z" },
				{ mode = "x", keys = "z" },
			},

			clues = {
				-- Enhance this by adding descriptions for <Leader> mapping groups
				miniclue.gen_clues.builtin_completion(),
				miniclue.gen_clues.g(),
				miniclue.gen_clues.marks(),
				miniclue.gen_clues.registers(),
				miniclue.gen_clues.windows(),
				miniclue.gen_clues.z(),
			},
		})
		-- require("mini.starter").setup()

		local win_config = function()
			local height = math.floor(0.5 * vim.o.lines)
			local width = math.floor(0.5 * vim.o.columns)
			return {
				anchor = "NW",
				height = height,
				width = width,
				row = math.floor(0.5 * (vim.o.lines - height)),
				col = math.floor(0.5 * (vim.o.columns - width)),
			}
		end
		require("mini.pick").setup({
			-- Different border
			window = {
				config = win_config,
			},
		})
	end,
	keys = {
		{
			"-",
			function()
				MiniFiles.open()
			end,
			desc = "Open Explorer",
		},
		{
			"<leader>ff",
			function()
				MiniPick.builtin.files()
			end,
			desc = "Find Files",
		},
		{
			"<leader>fl",
			function()
				MiniPick.builtin.grep_live()
			end,
			desc = "Live Grep",
		},
		{
			"<leader>fb",
			function()
				MiniPick.builtin.buffers()
			end,
			desc = "Find Buffers",
		},
		{
			"<leader>h",
			function()
				MiniPick.builtin.help()
			end,
			desc = "Help",
		},
	},
}
