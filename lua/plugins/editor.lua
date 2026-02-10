return {
  {
    "L3MON4D3/LuaSnip",
    lazy = true,
    dependencies = {
      {
        "rafamadriz/friendly-snippets",
        config = function()
          require("luasnip.loaders.from_vscode").lazy_load()
          require("luasnip.loaders.from_vscode").lazy_load({
            paths = { vim.fn.stdpath("config") .. "/snippets" },
          })
        end,
      },
    },
    opts = {
      history = true,
      delete_check_events = "TextChanged",
    },
  },
  {
    "saghen/blink.cmp",
    dependencies = {
      "nvim-mini/mini.snippets",
    },
    build = "cargo build --release", -- for delimiters
    version = '*',
    opts = {
      snippets = {
        preset = "luasnip",
      },
      keymap = {
        preset = "default",
        ["<C-x>o"] = {
          "show",
          "show_documentation",
          "hide_documentation",
        },
      },
      completion = { documentation = { auto_show = true } },
      fuzzy = { implementation = "prefer_rust" },
    },
    opts_extend = { "sources.default" },
  },
  {
    "windwp/nvim-autopairs",
    event = "InsertEnter",
    config = true,
  },
}
