local wezterm = require("wezterm")
local is_macos = wezterm.target_triple:find("darwin") ~= nil
local config = {}

function scheme_for_appearance(appearance)
	if appearance:find("Dark") then
		return "Catppuccin Mocha"
	else
		return "Catppuccin Latte"
	end
end
config.color_scheme = scheme_for_appearance(wezterm.gui.get_appearance())

if is_macos or true then
	config.keys = {
		{
			key = "LeftArrow",
			mods = "CMD",
			action = wezterm.action.SendString("\x1bb"),
		},
		{
			key = "RightArrow",
			mods = "CMD",
			action = wezterm.action.SendString("\x1bf"),
		},
		-- Option+Left
		{
			key = "LeftArrow",
			mods = "OPT",
			action = wezterm.action.SendString("\x1bb"),
		},
		-- Option+Right
		{
			key = "RightArrow",
			mods = "OPT",
			action = wezterm.action.SendString("\x1bf"),
		},
	}
else
	config.keys = {
		{
			key = "%",
			mods = "CTRL|SHIFT|ALT",
			action = wezterm.action.SplitPane({
				direction = "Left",
				command = { args = { "top" } },
				size = { Percent = 50 },
			}),
		},
	}
end

return config
