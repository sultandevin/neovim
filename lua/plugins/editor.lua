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
			{ "<C-p>", "<cmd>FzfLua files<cr>", desc = "Find Files" },
			{ "<C-g>", "<cmd>FzfLua grep<cr>", desc = "Grep" },
			{ "<C-k>", "<cmd>FzfLua builtin commands<cr>", desc = "Builtin Commands" },
			{ "<C-l>", "<cmd>FzfLua live_grep<cr>", desc = "Live Grep" },
			-- { "<C-\\>", "<cmd>FzfLua buffers<cr>", desc = "Buffers" },
			{ "F1", "<cmd>FzfLua help_tags<cr>", desc = "Help Tags" },
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
		"echasnovski/mini.nvim",
		version = false,
		lazy = false,
		config = function()
			require("mini.files").setup({
				windows = {
					preview = true,
				},
			})
		end,
		keys = {
			{
				"<C-b>",
				function()
					MiniFiles.open()
				end,
				desc = "Open MiniFiles",
			},
		},
	},
}
