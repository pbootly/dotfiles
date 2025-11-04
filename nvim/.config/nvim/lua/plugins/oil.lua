return {
  {
    "stevearc/oil.nvim",
    ---@module 'oil'
    ---@type oil.SetupOpts
    opts = {
      view_options = {
        show_hidden = true,
        is_hidden_file = function(name, bufnr)
          return name:match("^%.") ~= nil
        end,
        is_always_hidden = function(name, bufnr)
          return false
        end,
        natural_order = "fast",
        case_insensitive = false,
        sort = {
          { "type", "asc" },
          { "name", "asc" },
        },
      },
    },
    dependencies = {
      { "nvim-mini/mini.icons", opts = {} },
    },
    lazy = false,
    keys = {
      {
        "-",
        function()
          require("oil").open()
        end,
        desc = "Open Oil (file explorer)",
      },
    },
  },
}
