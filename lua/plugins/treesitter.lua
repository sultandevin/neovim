return {
  {
    "nvim-treesitter/nvim-treesitter",
    lazy = false,
    build = ":TSUpdate",
    config = function()
      require "nvim-treesitter".install {
        "vim", "vimdoc", "lua", "javascript", "typescript", "tsx", "json", "ruby", "embedded_template", "sql"
      }
      vim.api.nvim_create_autocmd('FileType', {
        pattern = { '<filetype>' },
        callback = function()
          vim.treesitter.start()
        end,
      })
    end,
  },
}
