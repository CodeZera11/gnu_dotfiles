local wezterm = require 'wezterm'

local act = wezterm.action
-- This will hold the configuration.
local cf = wezterm.config_builder()

local config = {
	-- color_scheme = "Catppuccin Mocha",
	font_size = 16,
	line_height = 1.1,
	--disable_default_key_bindings = true,
	--default_domain = "WSL:Ubuntu",
	window_decorations = "INTEGRATED_BUTTONS|RESIZE",
	use_fancy_tab_bar = false,
	-- enable_tab_bar = false,
	-- enable_scroll_bar = true,
}

for k, v in pairs(config) do
	cf[k] = v
end

config.keys = {
  -- Turn off the default CMD-m Hide action, allowing CMD-m to
  -- be potentially recognized and handled by the tab
  {
    key = 'h',
    mods = 'CMD',
    action = act.ActivateTabRelative(-1)
  },
  {
    key = 'l',
    mods = 'CMD',
    action = act.ActivateTabRelative(1)
  }
}

return config
