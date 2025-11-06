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

			vim.lsp.enable({ "ts_ls", "jsonls", "lua_ls", "postgres_lsp", "emmet_language_server" })
		end,
	},
}
