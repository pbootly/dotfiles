return {
  {
    "folke/tokyonight.nvim",
    config = function()
      vim.g.tokyonight_style = "storm"
      vim.cmd([[colorscheme tokyonight]])
    end,
  },
}

