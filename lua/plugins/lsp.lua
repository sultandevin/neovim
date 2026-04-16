return {
  {
    "neovim/nvim-lspconfig",
    event = { "BufReadPre", "BufNewFile" },
    dependencies = {
      "mason-org/mason.nvim",
      opts = {},
    },
    opts = {
      inlay_hints = {
        enabled = true,
      },
      folds = {
        enabled = true,
      },
    },
    config = function()
      vim.lsp.enable({
        -- Bash
        "bashls",
        -- Javascript/Typescript
        "tsgo",
        -- "vtsls",
        "emmet_language_server",
        "oxfmt",
        "oxlint",
        "biome",
        "tailwindcss",
        "svelte",
        -- "angularls",
        -- Ruby
        "rubocop",
        "ruby_lsp",
        -- Lua/Vim
        "lua_ls",
        "stylua",
        "texlab",
        -- Python
        "basedpyright",
        "ruff",
        -- Github
        "gh_actions_ls",
        -- Docker
        "docker_language_server",
        -- Rust
        "rust_analyzer",
        -- Databases
        "postgres_lsp",
        -- General
        "prettier",
        "yamlls",
        "jsonls",
      })
    end,
  },
}
