local wezterm = require("wezterm")

local launch_menu = {}

if wezterm.target_triple == "x86_64-pc-windows-msvc" then
	table.insert(launch_menu, {
		label = "WSL: Ubuntu",
		args = { "wsl.exe", "--cd", "~" },
	})
end

return {
	color_scheme = "citruszest",
	font = wezterm.font("ComicShanns Nerd Font", { weight = "Regular" }),
	font_size = 13,
	default_prog = (wezterm.target_triple == "x86_64-pc-windows-msvc") and { "wsl.exe" } or nil,
	enable_tab_bar = true,
	hide_tab_bar_if_only_one_tab = true,
	audible_bell = "Disabled",
}
