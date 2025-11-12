return {
	{
		"L3MON4D3/LuaSnip",
		lazy = true,
		dependencies = {
			{
				"rafamadriz/friendly-snippets",
				config = function()
					require("luasnip.loaders.from_vscode").lazy_load()
					require("luasnip.loaders.from_vscode").lazy_load({
						paths = { vim.fn.stdpath("config") .. "/snippets" },
					})
				end,
			},
		},
		opts = {
			history = true,
			delete_check_events = "TextChanged",
		},
	},
	{
		"saghen/blink.cmp",
		version = "1.*",
		---@module 'blink.cmp'
		---@type blink.cmp.Config
		dependencies = { "nvim-mini/mini.snippets" },
		opts = {
			snippets = {
				preset = "luasnip",
			},

			keymap = {
				preset = "default",
				["<C-x>"] = {
					"show",
					"show_documentation",
					"hide_documentation",
				},
			},

			appearance = {
				nerd_font_variant = "mono",
			},

			completion = { documentation = { auto_show = true } },

			sources = {
				default = { "lsp", "path", "snippets", "buffer" },
			},

			fuzzy = { implementation = "prefer_rust_with_warning" },
		},
		opts_extend = { "sources.default" },
	},
	{
		"piersolenski/import.nvim",
		dependencies = {
			"folke/snacks.nvim",
		},
		opts = {
			picker = "snacks",
		},
		keys = {
			{
				"<leader>fi",
				function()
					require("import").pick()
				end,
				desc = "Import",
			},
		},
	},
}
