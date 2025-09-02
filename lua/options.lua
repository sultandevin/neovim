vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("set number relativenumber")

-- local opts = { noremap = true, silent = true }

-- Copy to clipboard
vim.keymap.set("v", "<leader>y", '"+y', { desc = "Visual Copy to Clipboard" })
vim.keymap.set("n", "<leader>Y", '"+yg_', { desc = "Normal Copy to EOL to Clipboard" })
vim.keymap.set("n", "<leader>y", '"+y', { desc = "Normal Operator Copy to Clipboard" })
vim.keymap.set("n", "<leader>yy", '"+yy', { desc = "Normal Copy Line to Clipboard" })

-- Paste from clipboard
vim.keymap.set("n", "<leader>p", '"+p', { desc = "Normal Paste From Clipboard" })
vim.keymap.set("n", "<leader>P", '"+P', { desc = "Normal Paste Before From Clipboard" })
vim.keymap.set("v", "<leader>p", '"+p', { desc = "Visual Paste From Clipboard" })
vim.keymap.set("v", "<leader>P", '"+P', { desc = "Visual Paste Before From Clipboard" })

