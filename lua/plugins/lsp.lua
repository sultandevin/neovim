return {
  {
    "mason-org/mason.nvim",
    opts = {}
  },
  {
    "mason-org/mason-lspconfig.nvim",
    opts = {
      ensure_installed = { "lua_ls", "ts_ls" }
    },
    dependencies = {
        { "mason-org/mason.nvim", opts = {} },
        "neovim/nvim-lspconfig",
    },
  },
  {
    "neovim/nvim-lspconfig",
    config = function() 
      local lspconfig = require("lspconfig")
      lspconfig.lua_ls.setup({})
      lspconfig.ts_ls.setup({})

      vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
    end
  },
  {
      'hrsh7th/nvim-cmp',
      dependencies = {
        'hrsh7th/cmp-nvim-lsp',
        'hrsh7th/cmp-buffer',
        'hrsh7th/cmp-path',
        'saadparwaiz1/cmp_luasnip', -- Example for snippet integration
        'L3MON4D3/LuaSnip',
      },
      config = function()
        local cmp = require('cmp')
        local luasnip = require('luasnip') -- If using snippets

        cmp.setup({
          snippet = {
            expand = function(args)
              luasnip.lsp_expand(args.body) -- Example for snippet engine
            end,
          },
          sources = cmp.config.sources({
            { name = 'nvim_lsp' },
            { name = 'buffer' },
            { name = 'path' },
            { name = 'luasnip' }, -- If using snippets
          }),
          -- Further configuration for keymaps, appearance, etc.
        })
      end,
    }
}
