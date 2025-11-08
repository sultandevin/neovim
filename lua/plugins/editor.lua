return {
  {
    "nvim-treesitter/nvim-treesitter",
    branch = "master",
    lazy = false,
    build = ":TSUpdate",
    config = function()
      require("nvim-treesitter.configs").setup({
        -- auto_install = true,
        ensure_installed = { "lua", "javascript", "typescript", "svelte", "html", "css", "json" },
        highlight = { enable = true },
        indent = { enable = true },
        rainbow = { enable = true },
        autotag = { enable = true },
      })
    end,
  },
  {
    "nvim-treesitter/nvim-treesitter-context",
    opts = {
      enable = true,
    },
  },
}
