-- Basic settings
vim.o.number = true
vim.o.relativenumber = true
vim.o.winborder = "rounded"
vim.o.softtabstop = 2

-- Indentation
vim.o.tabstop = 2
vim.o.shiftwidth = 2
vim.o.expandtab = true
vim.o.breakindent = true

-- Search
vim.o.smartcase = true
vim.o.ignorecase = true
vim.o.incsearch = true
vim.o.hlsearch = false

-- Visual
vim.o.termguicolors = true
vim.o.cursorline = true
vim.o.signcolumn = "yes"
vim.o.completeopt = "menuone,noinsert,fuzzy"
vim.cmd(":hi statusline guibg=none")

-- Default Keymaps
vim.keymap.set("n", "<leader>o", ":update<CR> :source<CR>", { desc = "Save & Source File" })
vim.keymap.set("n", "<leader>w", ":w<CR>", { desc = "Save File" })
vim.keymap.set("n", "<leader>d", ":bd<CR>", { desc = "Close Buffer" })
vim.keymap.set("n", "<leader>q", ":q<CR>", { desc = "Quit NeoVim" })
vim.keymap.set("n", "<leader>l", ":Lazy<CR>", { desc = "Open Lazy" })
vim.keymap.set("n", "<leader>gf", function()
  vim.lsp.buf.format({ timeout_ms = 2000 })
end, { desc = "Format File" })
-- vim.keymap.set("i", "<C-x>", vim.lsp.completion.get)

-- Clipboard Keymaps
vim.keymap.set("v", "<leader>y", '"+y', { desc = "Visual Copy" })
-- vim.keymap.set("n", "<leader>Y", '"+yg_', { desc = "Normal Copy to EOL to Clipboard" })
vim.keymap.set("n", "<leader>y", '"+y', { desc = "Normal Operator Copy" })
vim.keymap.set("n", "<leader>yy", '"+yy', { desc = "Normal Copy Line" })
vim.keymap.set("n", "<leader>p", '"+p', { desc = "Normal Paste" })
vim.keymap.set("n", "<leader>P", '"+P', { desc = "Normal Paste (before)" })
vim.keymap.set("v", "<leader>p", '"+p', { desc = "Visual Paste" })
vim.keymap.set("v", "<leader>P", '"+P', { desc = "Visual Paste (before)" })

-- Editor Keymaps
vim.keymap.set("n", "K", vim.lsp.buf.hover, { desc = "Hover Documentation" })
vim.keymap.set("n", "gd", vim.lsp.buf.definition, { desc = "Go to Definition" })
vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, { desc = "Code Action" })

-- Typescript Specific
vim.keymap.set("n", "<leader>ta", ":LspTypescriptSourceAction<CR>", { desc = "TS Actions" })
