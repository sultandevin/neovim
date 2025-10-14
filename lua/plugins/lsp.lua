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
			-- vim.lsp.config("ts_ls", {
			--   cmd = { "typescript-language-server" },
			-- })

			local capabilities = require("cmp_nvim_lsp").default_capabilities()

			vim.lsp.config("lua_ls", {
				capabilities = capabilities,
			})

      vim.lsp.config("ts_ls", {
        capabilities = capabilities,
        on_attach = function(_, bufnr)
          vim.keymap.set("n", "<leader>oi", function()
            vim.lsp.buf.execute_command({
              command = "_typescript.organizeImports",
              arguments = { vim.api.nvim_buf_get_name(bufnr) },
            })
          end, { buffer = bufnr, desc = "Organize imports" })
        end,
      })

			vim.lsp.config("tailwindcss", {
				capabilities = capabilities,
			})

			vim.lsp.config("jsonls", {
				capabilities = capabilities,
			})

			vim.lsp.enable({ "ts_ls", "jsonls", "lua_ls" })

			--
			-- lspconfig.svelte.setup({
			-- 	capabilities = capabilities,
			-- })
			--
			-- lspconfig.tailwindcss.setup({
			-- 	capabilities = capabilities,
			-- })
			--
			-- lspconfig.html.setup({
			-- 	capabilities = capabilities,
			-- })
			--
			-- lspconfig.dockerls.setup({
			-- 	capabilities = capabilities,
			-- })
			--
			-- lspconfig.docker_compose_language_service.setup({
			-- 	capabilities = capabilities,
			-- })

			vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
			vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
			vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {})
			vim.diagnostic.enable()
		end,
	},
}
