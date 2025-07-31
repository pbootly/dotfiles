local wezterm = require 'wezterm'

local act = wezterm.action

local launc_menu = {}

if wezterm.target_triple == "x86_64-pc-windows-msvc" then
  table.insert(launc_menu, {
    label = "WSL: Ubuntu",
    args = { "wsl.exe" }
  })
end

return {
  font = wezterm.font("ComicShannsMono Nerd Font", { weight = "Regular" }),
  font_size = 12.5, 
  default_prog = (wezterm.target_triple == "x86_64-pc-windows-msvc")
      and { "wsl.exe" } or nil,
  launch_menu = launch_menu,
  enable_tab_bar = true,
  hide_tab_bar_if_only_one_tab = true,
}
