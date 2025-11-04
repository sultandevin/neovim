return {
	{
		"ibhagwan/fzf-lua",
		dependencies = { "nvim-mini/mini.icons" },
		opts = {
			{
				"telescope",
			},
			winopts = {
				height = 0.7,
				width = 0.65,
				border = "rounded",
				preview = {
					hidden = "hidden",
				},
			},
			oldfiles = {
				include_current_session = true,
			},
			-- previewers = {
			-- 	builtin = {
			-- 		syntax_limit_b = 1024 * 100,
			-- 	},
			-- },
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
			{ "<leader>fb", "<cmd>FzfLua buffers<cr>", desc = "Buffers" },
			-- { "<C-k>", "<cmd>FzfLua builtin commands<cr>", desc = "Builtin Commands" },
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
