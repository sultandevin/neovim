return {
	{
		"neovim/nvim-lspconfig",
		lazy = false,
		dependencies = {
			"mason-org/mason.nvim",
			opts = {},
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
			vim.lsp.enable({
        -- Javascript/Typescript
				"tsgo",
				-- "vtsls",
				"emmet_ls",
				"biome",
				"tailwindcss",
				"svelte",
        -- Lua/Vim
				"lua_ls",
				"stylua",
				"texlab",
        -- Python
        "basedpyright",
        "ruff",
        -- Github
				"copilot",
				"gh_actions_ls",
        -- Docker
				"docker_language_server",
        -- Rust
				"rust_analyzer",
        -- Databases
				"postgres_lsp",
        -- General
				"prettier",
				"yamlls",
				"jsonls",
			})
		end,
	},
}
