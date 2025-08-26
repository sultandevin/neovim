return {
  {
    "ibhagwan/fzf-lua",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    opts = {
      previewers = {
        builtin = {
          syntax_limit_b = 1024 * 100,
        }
      },
      grep = {
        rg_glob = true,
        glob_flag = "--iglob",
        glob_separator = "%s%-%-"
      }
    },
    keys = {
      { "<leader>ff", "<cmd>FzfLua files<cr>", desc = "Find Files" },
      { "<leader>fg", "<cmd>FzfLua live_grep<cr>", desc = "Live Grep" },
      { "<leader>fb", "<cmd>FzfLua buffers<cr>", desc = "Buffers" },
      { "<leader>fh", "<cmd>FzfLua help_tags<cr>", desc = "Help Tags" },
    }
  },
  {
    "nvim-treesitter/nvim-treesitter", 
    branch = 'master', 
    lazy = false, 
    build = ":TSUpdate",
    opts = {
      ensure_installed = {"javascript", "lua", "typescript"},
      highlight = { enable = true },
      indent = { enable = true },
    }
  },
  { 
    'echasnovski/mini.nvim', 
    version = false, 
    lazy = false,
    config = function() 
      require("mini.files").setup()
      require("mini.comment").setup()
    end,
    keys = {
      { "<leader>e", function() MiniFiles.open() end, desc = "Open MiniFiles" }
    }
  }
}
