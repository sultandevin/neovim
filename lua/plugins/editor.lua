return {
  {
    "ibhagwan/fzf-lua",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    opts = {
      "hide",
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
      { "<C-p>", "<cmd>FzfLua files resume=true<cr>", desc = "Find Files" },
      { "<C-g>", "<cmd>FzfLua grep<cr>", desc = "Grep" },
      { "<C-k>", "<cmd>FzfLua builtin commands<cr>", desc = "Builtin Commands" },
      { "<C-l>", "<cmd>FzfLua live_grep<cr>", desc = "Live Grep" },
      { "<C-\\>", "<cmd>FzfLua buffers<cr>", desc = "Buffers" },
      { "F1", "<cmd>FzfLua help_tags<cr>", desc = "Help Tags" },
    }
  },
  {
    "nvim-treesitter/nvim-treesitter", 
    branch = 'master', 
    lazy = false, 
    build = ":TSUpdate",
    opts = {
      auto_install = true,
      highlight = { enable = true },
      indent = { enable = true },
    }
  },
  {
    'echasnovski/mini.nvim', 
    version = false, 
    lazy = false,
    config = function() 
      require("mini.files").setup({
        windows = {
          preview = true
        }
      })
    end,
    keys = {
      { "<C-b>", function() MiniFiles.open() end, desc = "Open MiniFiles" }
    }
  },
  {
    "nvim-lualine/lualine.nvim",
    dependencies = {
      "nvim-tree/nvim-web-devicons"
    },
    opts = {
      icons_enabled = true,
      theme = 'auto',
    }
  }
}
