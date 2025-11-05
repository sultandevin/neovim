# sultandevin's Neovim Config 

Minimal config I use daily. 

## Features

- **LSP**: Native Neovim LSP via `nvim-lspconfig` + Mason
- **Completion**: Native Neovim completion (`<C-x>` trigger)
- **Syntax**: Treesitter + treesitter-context
- **File Explorer**: oil.nvim
- **Git**: lazygit.nvim integration
- **Formatting/Linting**: none-ls.nvim
- **UI**: lualine statusline, multiple themes (gruvbox, catppuccin, kanagawa, ayu, github, vague)
- **Utils**: mini.nvim plugins

## Requirements

- Neovim >= 0.11
- Git
- Node.js (for LSP servers)
- ripgrep (for telescope/grep)
- lazygit (optional, for git UI)

## Installation

```bash
# Backup existing config
mv ~/.config/nvim ~/.config/nvim.bak

# Clone this config
git clone https://github.com/sultandevin/neovim.git ~/.config/nvim

# Launch Neovim - lazy.nvim will auto-install
nvim
```

On first launch, lazy.nvim auto-bootstraps and installs all plugins.

## Structure

```
.
├── init.lua              # Entry point
├── lua/
│   ├── config/
│   │   ├── lazy.lua      # Lazy.nvim setup
│   │   └── diagnostics.lua
│   ├── options.lua       # Vim options + base keymaps
│   └── plugins/
│       ├── lsp.lua       # LSP config
│       ├── editor.lua    # Editor plugins (treesitter, etc)
│       ├── mini.lua      # Mini.nvim modules
│       ├── oil.lua       # File explorer
│       ├── lazygit.lua   # Git integration
│       ├── copilot.lua   # AI completion
│       ├── none-ls.lua   # Formatting/linting
│       └── ui/
│           ├── theme.lua     # Colorschemes
│           └── statusline.lua # Lualine config
```

## Key Bindings

Leader: `<Space>`

### General
- `<leader>w` - Save
- `<leader>q` - Quit
- `<leader>d` - Close buffer
- `<leader>l` - Open Lazy
- `<leader>o` - Save + source file
- `<leader>td` - Toggle diagnostics

### Clipboard
- `<leader>y` - Copy to system clipboard
- `<leader>yy` - Copy line to system clipboard
- `<leader>p` / `<leader>P` - Paste from system clipboard

### LSP (when attached)
- `gd` - Go to definition
- `K` - Hover documentation
- `<leader>ca` - Code actions
- `<C-x>` (insert mode) - Trigger completion

### File Explorer (oil.nvim)
- `-` - Open parent directory

### Git (lazygit)
- `<leader>lg` - Open lazygit

(Check plugin configs for complete keymaps)

## Customization

### Change theme
`:Themery` - Interactive theme picker

### Add plugins
Create new file in `lua/plugins/` or edit existing ones. Lazy.nvim auto-loads all files.

### Modify keymaps
Edit `lua/options.lua` for base keymaps, or respective plugin files.

