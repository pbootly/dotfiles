return {
  {
    "nvim-telescope/telescope.nvim",
    keys = {
      {
        "<leader>ff",
        function()
          require("telescope.builtin").find_files({ hidden = true })
        end,
        desc = "Find files (including hidden)",
      },
      {
        "<leader>fF",
        function()
          require("telescope.builtin").find_files({ cwd = false, hidden = true })
        end,
        desc = "Find files from project root (including hidden)",
      },
    },
  },
}
