-- Basic settings
vim.o.number = true
vim.o.relativenumber = true
vim.o.winborder = "rounded"
vim.o.softtabstop = 2

-- Indentation
vim.o.tabstop = 2 -- Tab Width
vim.o.shiftwidth = 2 -- Indent Width
vim.o.softtabstop = 2 -- Soft Tab Stop
vim.o.expandtab = true -- Use Spaces Instead of Tabs
vim.o.smartindent = true -- Smart Indentation
vim.o.autoindent = true -- Copy indent from current line

-- Search
vim.o.smartcase = true
vim.o.ignorecase = true
vim.o.incsearch = true
vim.o.hlsearch = false

-- Editor
vim.o.completeopt = "menuone,noselect,fuzzy,nosort" -- add 'noselect' to disable auto selection

-- Visual
vim.o.termguicolors = true
vim.o.cursorline = true
vim.o.signcolumn = "yes"
-- Transparent Background
-- vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
-- vim.api.nvim_set_hl(0, "NormalNC", { bg = "none" })
-- vim.api.nvim_set_hl(0, "EndOfBuffer", { bg = "none" })
vim.cmd(":hi statusline guibg=none")
vim.o.cmdheight = 1
vim.o.lazyredraw = true
vim.o.synmaxcol = 300

-- File handling
vim.o.backup = false
vim.o.writebackup = false
vim.o.swapfile = false
vim.o.undofile = true
vim.o.undodir = vim.fn.expand("~/.vim/undodir")
vim.o.updatetime = 300
vim.o.autoread = true

-- Behavior
vim.o.backspace = "indent,eol,start"

-- Default Keymaps
vim.keymap.set("n", "<leader>o", ":update<CR> :source<CR>", { desc = "Save & Source File" })
vim.keymap.set("n", "<leader>w", ":w<CR>", { desc = "Save File" })
vim.keymap.set("n", "<leader>d", ":bd<CR>", { desc = "Close Buffer" })
vim.keymap.set("n", "<leader>q", ":q<CR>", { desc = "Quit NeoVim" })
vim.keymap.set("n", "<leader>l", ":Lazy<CR>", { desc = "Open Lazy" })
vim.keymap.set("n", "<leader>gf", function()
	vim.lsp.buf.format({ timeout_ms = 2000 })
end, { desc = "Format File" })
vim.keymap.set("i", "<C-c>", vim.lsp.completion.get)

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
