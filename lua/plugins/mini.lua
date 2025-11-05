return {
  "nvim-mini/mini.nvim",
  version = false,
  lazy = false,
  config = function()
    require("mini.files").setup({
      windows = {
        preview = true,
        width_preview = 30,
      },
    })
    require("mini.ai").setup()
    require("mini.pairs").setup()
    require("mini.notify").setup()
    require("mini.indentscope").setup()
    require("mini.surround").setup()
    require("mini.pairs").setup()
    require("mini.icons").setup()
    require("mini.cursorword").setup()
    require("mini.bracketed").setup()
    require("mini.starter").setup()

    local win_config = function()
      local height = math.floor(0.5 * vim.o.lines)
      local width = math.floor(0.5 * vim.o.columns)
      return {
        anchor = 'NW',
        height = height,
        width = width,
        row = math.floor(0.5 * (vim.o.lines - height)),
        col = math.floor(0.5 * (vim.o.columns - width)),
      }
    end
    require("mini.pick").setup({
      -- Different border
      window = {
        config = win_config,
      },
    })
  end,
  keys = {
    {
      "-",
      function()
        MiniFiles.open()
      end,
      desc = "Open Explorer",
    },
    {
      "<leader>ff",
      function()
        MiniPick.builtin.files()
      end,
      desc = "Find Files",
    },
    {
      "<leader>fl",
      function()
        MiniPick.builtin.grep_live()
      end,
      desc = "Live Grep",
    },
    {
      "<leader>fb",
      function()
        MiniPick.builtin.buffers()
      end,
      desc = "Find Buffers",
    },
    {
      "<leader>h",
      function()
        MiniPick.builtin.help()
      end,
      desc = "Help",
    },
  },
}
