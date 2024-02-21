-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices

-- For example, changing the color scheme:
-- config.color_scheme = "Batman"

-- Set background to same color as neovim
config.colors = {}
config.colors.background = "#111111"

-- default is true, has more "native" look
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

-- and finally, return the configuration to wezterm
return config
