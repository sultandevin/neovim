local function augroup(name)
	return vim.api.nvim_create_augroup("lazyvim_" .. name, { clear = true })
end

-- Native Autocompletion
-- vim.api.nvim_create_autocmd("LspAttach", {
-- 	callback = function(ev)
-- 		local client = vim.lsp.get_client_by_id(ev.data.client_id)
-- 		if client:supports_method("textDocument/completion") then
-- 			vim.lsp.completion.enable(true, client.id, ev.buf, { autotrigger = true })
-- 		end
-- 	end,
-- })

vim.filetype.add({
	pattern = {
		[".*"] = {
			function(path, buf)
				return vim.bo[buf].filetype ~= "bigfile"
						and path
						and vim.fn.getfsize(path) > vim.g.bigfile_size
						and "bigfile"
					or nil
			end,
		},
	},
})

vim.api.nvim_create_autocmd({ "FileType" }, {
	group = augroup("bigfile"),
	pattern = "bigfile",
	callback = function(ev)
		vim.b.minianimate_disable = true
		vim.b.miniindentscope_disable = true
		vim.b.minicursorword_disable = true
		vim.b.minisurround_disable = true

		vim.schedule(function()
			vim.bo[ev.buf].syntax = vim.filetype.match({ buf = ev.buf }) or ""
		end)
	end,
})

-- Set up an autocmd to check for file changes when Neovim gains focus or a buffer is entered
vim.api.nvim_create_autocmd({ "FocusGained", "BufEnter" }, {
	command = "if mode() != 'c' | checktime | endif", -- checktime updates the buffer if the file has changed
	pattern = "*", -- Apply to all files
})

-- Enable treesitter highlighting and indentation
vim.api.nvim_create_autocmd("FileType", {
	pattern = { "ruby", "javascript", "typescript", "tsx", "json", "sql", "lua", "vim", "embedded_template" },
	callback = function()
		vim.treesitter.start()
		vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
	end,
})

-- Hide all semantic highlights
for _, group in ipairs(vim.fn.getcompletion("@lsp", "highlight")) do
	vim.api.nvim_set_hl(0, group, {})
end

-- Transparent floating windows for all themes
vim.api.nvim_create_autocmd("ColorScheme", {
	pattern = "*",
	callback = function()
		vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
		vim.api.nvim_set_hl(0, "FloatBorder", { bg = "none" })
	end,
})
