return {
  "akinsho/toggleterm.nvim",
  version = "*",
  config = function()
    require("toggleterm").setup({
      size = 20,
      open_mapping = [[<leader>\\]],
      shading_factor = 2,
      direction = "float", -- float, horizontal, vertical
      float_opts = {
        border = "curved",
      },
    })
  end,
}
