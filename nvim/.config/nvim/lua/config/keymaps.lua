-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
-- local opts = { noremap = true, silent = false }

-- Disable arrow keys
local opts = { noremap = true, silent = true }
local keys = { "<Up>", "<Down>", "<Left>", "<Right>" }

for _, mode in ipairs({ "n", "i", "v" }) do
  for _, key in ipairs(keys) do
    vim.keymap.set(mode, key, "<nop>", opts)
  end
end
