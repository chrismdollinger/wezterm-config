local wezterm = require 'wezterm'
local config = wezterm.config_builder()

-- This is where you actually apply your config choices
config.color_scheme = 'AdventureTime'
config.font = wezterm.font_with_fallback {
    'Cascadia Code NF',
    'CaskaydiaCove Nerd Font Mono'
}
native_macos_fullscreen_mode = false
config.default_prog = { 'nu' }

config.launch_menu = {
    {
        label = 'Oracle Sql Developer Command Line (SqlCl)',
        args = { 'sql', '/nolog' },
    }
}

return config
