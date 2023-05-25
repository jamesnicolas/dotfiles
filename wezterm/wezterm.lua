local wezterm = require 'wezterm'
local act = wezterm.action

return {
  color_scheme = "tokyonight-storm",
  window_decorations = "RESIZE",
  hide_tab_bar_if_only_one_tab = true,
  window_frame = {
    -- The overall background color of the tab bar when
    -- the window is focused
    active_titlebar_bg = '#000000',

    -- The overall background color of the tab bar when
    -- the window is not focused
    inactive_titlebar_bg = '#333333',
  },

  keys = {
    { key = 'a', mods = 'CMD', action = act.SendKey { key = 'a', mods = 'CTRL' } },
    { key = 'b', mods = 'CMD', action = act.SendKey { key = 'b', mods = 'CTRL' } },
    { key = 'c', mods = 'CMD', action = act.SendKey { key = 'c', mods = 'CTRL' } },
    { key = 'd', mods = 'CMD', action = act.SendKey { key = 'd', mods = 'CTRL' } },
    { key = 'e', mods = 'CMD', action = act.SendKey { key = 'e', mods = 'CTRL' } },
    { key = 'f', mods = 'CMD', action = act.SendKey { key = 'f', mods = 'CTRL' } },
    { key = 'g', mods = 'CMD', action = act.SendKey { key = 'g', mods = 'CTRL' } },
    { key = 'h', mods = 'CMD', action = act.SendKey { key = 'h', mods = 'CTRL' } },
    { key = 'i', mods = 'CMD', action = act.SendKey { key = 'i', mods = 'CTRL' } },
    { key = 'j', mods = 'CMD', action = act.SendKey { key = 'j', mods = 'CTRL' } },
    { key = 'k', mods = 'CMD', action = act.SendKey { key = 'k', mods = 'CTRL' } },
    { key = 'l', mods = 'CMD', action = act.SendKey { key = 'l', mods = 'CTRL' } },
    { key = 'm', mods = 'CMD', action = act.SendKey { key = 'm', mods = 'CTRL' } },
    { key = 'n', mods = 'CMD', action = act.SendKey { key = 'n', mods = 'CTRL' } },
    { key = 'o', mods = 'CMD', action = act.SendKey { key = 'o', mods = 'CTRL' } },
    { key = 'p', mods = 'CMD', action = act.SendKey { key = 'p', mods = 'CTRL' } },
    { key = 'q', mods = 'CMD', action = act.SendKey { key = 'q', mods = 'CTRL' } },
    { key = 'r', mods = 'CMD', action = act.SendKey { key = 'r', mods = 'CTRL' } },
    { key = 's', mods = 'CMD', action = act.SendKey { key = 's', mods = 'CTRL' } },
    { key = 't', mods = 'CMD', action = act.SendKey { key = 't', mods = 'CTRL' } },
    { key = 'u', mods = 'CMD', action = act.SendKey { key = 'u', mods = 'CTRL' } },
    { key = 'v', mods = 'CMD', action = act.SendKey { key = 'v', mods = 'CTRL' } },
    { key = 'w', mods = 'CMD', action = act.SendKey { key = 'w', mods = 'CTRL' } },
    { key = 'x', mods = 'CMD', action = act.SendKey { key = 'x', mods = 'CTRL' } },
    { key = 'y', mods = 'CMD', action = act.SendKey { key = 'y', mods = 'CTRL' } },
    { key = 'z', mods = 'CMD', action = act.SendKey { key = 'z', mods = 'CTRL' } },

    { key = 'v', mods = 'CMD|SHIFT', action = act.PasteFrom 'Clipboard' },

    { key = 'v', mods = 'CMD|SHIFT', action = act.PasteFrom 'Clipboard' },
    { key = 'n', mods = 'CMD|SHIFT', action = act.SpawnWindow },
    { key = 'w', mods = 'CMD|SHIFT', action = act.CloseCurrentPane { confirm = true } },

  },

}
