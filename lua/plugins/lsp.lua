return {
	{
		"mason-org/mason.nvim",
		lazy = false,
		opts = {},
	},
	{
		"mason-org/mason-lspconfig.nvim",
		lazy = false,
		opts = {
			auto_install = true,
		},
		dependencies = {
			"mason-org/mason.nvim",
			"neovim/nvim-lspconfig",
		},
	},
	{
		"neovim/nvim-lspconfig",
		lazy = false,
		config = function()
			local lspconfig = require("lspconfig")
			local capabilities = require("cmp_nvim_lsp").default_capabilities()

			lspconfig.lua_ls.setup({
				capabilities = capabilities,
			})

			lspconfig.ts_ls.setup({
				capabilities = capabilities,
        commands = {
          OrganizeImports = {
            function()
              local client = vim.lsp.get_clients({ name = "ts_ls" })[1]

              if not client then
                vim.notify("No ts_ls client found!", vim.log.levels.ERROR)
                return
              end

              client:exec_cmd({
                command = "_typescript.organizeImports",
                arguments = { vim.api.nvim_buf_get_name(0) },
                title = "Organize Imports",
              })
                vim.notify("Imports sorted!", vim.log.levels.INFO)
            end,
            description = "Organize Imports",
          },
        },
			})

			lspconfig.svelte.setup({
				capabilities = capabilities,
			})

			lspconfig.tailwindcss.setup({
				capabilities = capabilities,
			})

			-- lspconfig.go.setup({
			-- 	capabilities = capabilities,
			-- })

			lspconfig.html.setup({
				capabilities = capabilities,
			})

			lspconfig.dockerls.setup({
				capabilities = capabilities,
			})

			lspconfig.docker_compose_language_service.setup({
				capabilities = capabilities,
			})

			lspconfig.copilot.setup({
				capabilities = capabilities,
			})

			vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
			vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
			vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {})
			vim.diagnostic.enable()
		end,
	},
}
