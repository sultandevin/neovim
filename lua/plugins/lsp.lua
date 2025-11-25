return {
	{
		"mason-org/mason.nvim",
		lazy = false,
		opts = {
			ui = {
				border = "rounded",
			},
		},
	},
	{
		"neovim/nvim-lspconfig",
		lazy = false,
		config = function()
			vim.lsp.config("lua_ls", {
				settings = {
					Lua = {
						diagnostics = {
							globals = { "vim" },
						},
						workspace = {
							library = vim.api.nvim_get_runtime_file("", true),
							checkThirdParty = false,
						},
					},
				},
			})

			vim.lsp.enable({
				-- "tsgo",
				"vtsls",
				"jsonls",
				"lua_ls",
				"prettier",
				"gh_actions_ls",
				"yamlls",
				"docker_language_server",
				"docker_compose_language_service",
				"postgres_lsp",
				"rust_analyzer",
				"svelte",
				"stylua",
				"emmet_language_server",
				"tailwindcss",
				"biome",
			})
		end,
	},
}
