return {
	{
		"neovim/nvim-lspconfig",
		lazy = false,
		dependencies = {
			"mason-org/mason.nvim",
      opts = {}
		},
		opts = {
			inlay_hints = {
				enabled = true,
			},
			folds = {
				enabled = true,
			},
		},
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
				"emmet_language_server",
				"biome",
				"jsonls",
				"tailwindcss",
				"lua_ls",
				-- "copilot",
				"prettier",
				"gh_actions_ls",
				"yamlls",
				"postgres_lsp",
				"rust_analyzer",
				"svelte",
				"stylua",
				"docker_language_server",
				"texlab",
			})
		end,
	},
}
