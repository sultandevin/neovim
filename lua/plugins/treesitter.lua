return {
  {
    "nvim-treesitter/nvim-treesitter",
    lazy = false,
    build = ":TSUpdate",
    config = function()
      require("nvim-treesitter").install({
        "vim", "vimdoc", "lua", "javascript", "typescript", "tsx", "json", "ruby", "embedded_template"
      })
    end,
  },
}
