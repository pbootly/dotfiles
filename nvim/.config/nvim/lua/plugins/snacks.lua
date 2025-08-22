return {
  {
    "folke/snacks.nvim",
    opts = function(_, opts)
      opts.explorer = { enabled = false }
      return opts
    end,
  },
}
