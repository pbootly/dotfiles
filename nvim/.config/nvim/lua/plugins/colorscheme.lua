return {
  -- {
  --   "EdenEast/nightfox.nvim",
  --   config = function()
  --     vim.cmd([[colorscheme terafox]])
  --   end,
  -- },
  {
    "zootedb0t/citruszest.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      vim.cmd([[colorscheme citruszest]])
    end,
  },
}
