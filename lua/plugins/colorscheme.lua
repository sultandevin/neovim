return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    config = function ()
      vim.cmd.colorscheme("catppuccin-mocha")
    end,
  }
  -- {
  --   "projekt0n/github-nvim-theme",
  --   name = "github",
  --   lazy = false,
  --   priority = 1000,
  --   config = function()
  --     vim.cmd.colorscheme("github_dark")
  --   end,
  -- }
}
