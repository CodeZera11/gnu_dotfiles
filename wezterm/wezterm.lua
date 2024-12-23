config.keys = {
  -- Turn off the default CMD-m Hide action, allowing CMD-m to
  -- be potentially recognized and handled by the tab
  {
    key = 'h',
    mods = 'CMD',
    action = 'wezterm.action.ActivateTabRelative(-1)'
  },
  {
    key = 'l',
    mods = 'CMD',
    action = 'wezterm.action.ActivateTabRelative(1)'
  },
}
