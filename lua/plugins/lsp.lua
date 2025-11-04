return {
	{
		"mason-org/mason.nvim",
		lazy = false,
		opts = {},
	},
	{
		"neovim/nvim-lspconfig",
		lazy = false,
		config = function()
			-- local capabilities = require("mini.completion").get_lsp_capabilities()
			--
			-- vim.lsp.config("*", {
			--   capabilities = capabilities,
			-- })

			-- This is for native autocompletion (maybe wait for NeoVim 0.12.x)
			vim.api.nvim_create_autocmd("LspAttach", {
				callback = function(ev)
					local client = vim.lsp.get_client_by_id(ev.data.client_id)
					if client:supports_method("textDocument/completion") then
						vim.lsp.completion.enable(true, client.id, ev.buf, { autotrigger = true })
					end
				end,
			})

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

			vim.lsp.enable({ "ts_ls", "jsonls", "lua_ls" })

			vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
			vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
			vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {})
			vim.diagnostic.enable()
		end,
	},
}
