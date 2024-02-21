-- Pull in the wezterm API
local wezterm = require("wezterm")

local mux = wezterm.mux

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices

-- Changing color scheme to be the same as neovim
config.color_scheme = "Tokyo Night Moon"

-- Default is true, has more "native" look
config.use_fancy_tab_bar = false
config.tab_bar_at_bottom = true

-- I don't like putting anything at the ege if I can help it.
config.enable_scroll_bar = false
config.window_padding = {
	left = 0,
	right = 0,
	top = 0,
	bottom = 0,
}

-- Maximize window on startup
wezterm.on("gui-startup", function()
	local tab, pane, window = mux.spawn_window({})
	window:gui_window():maximize()
end)

-- and finally, return the configuration to wezterm
return config
