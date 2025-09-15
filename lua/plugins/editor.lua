return {
	{
		"ibhagwan/fzf-lua",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		opts = {
			{
				"ivy",
			},
			-- resume = true,
			oldfiles = {
				include_current_session = true,
			},
			previewers = {
				builtin = {
					syntax_limit_b = 1024 * 100,
				},
			},
			grep = {
				git_icons = true,
				rg_glob = true,
				glob_flag = "--iglob",
				glob_separator = "%s%-%-",
			},
		},
		keys = {
			{ "<leader>ff", "<cmd>FzfLua files<cr>", desc = "Find Files" },
			{ "<leader>fg", "<cmd>FzfLua grep<cr>", desc = "Grep" },
			{ "<leader>fl", "<cmd>FzfLua live_grep<cr>", desc = "Live Grep" },
			-- { "<C-k>", "<cmd>FzfLua builtin commands<cr>", desc = "Builtin Commands" },
			-- { "<C-\\>", "<cmd>FzfLua buffers<cr>", desc = "Buffers" },
			-- { "F1", "<cmd>FzfLua help_tags<cr>", desc = "Help Tags" },
		},
	},
	{
		"nvim-treesitter/nvim-treesitter",
		branch = "master",
		lazy = false,
		build = ":TSUpdate",
		config = function()
			require("nvim-treesitter.configs").setup({
				auto_install = true,
				-- ensure_installed = { "lua", "javascript", "typescript", "svelte", "html", "css", "json" },
				highlight = { enable = true },
				indent = { enable = true },
				rainbow = { enable = true },
				autotag = { enable = true },
			})
		end,
	},
	{
		"nvim-treesitter/nvim-treesitter-context",
		opts = {
			enable = true,
		},
	},
	{
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
			require("mini.pairs").setup()
			require("mini.notify").setup()
			require("mini.tabline").setup()
			require("mini.indentscope").setup()
			require("mini.surround").setup()
			-- require("mini.icons").setup()
			require("mini.statusline").setup()
			require("mini.cursorword").setup()
			require("mini.bracketed").setup()
		end,
		keys = {
			{
				"-",
				function()
					MiniFiles.open()
				end,
				desc = "Open MiniFiles",
			},
		},
	},
	{
		"folke/which-key.nvim",
		event = "VeryLazy",
		opts = {},
		keys = {
			{
				"<leader>?",
				function()
					require("which-key").show({ global = false })
				end,
				desc = "Buffer Local Keymaps (which-key)",
			},
		},
	},
}
