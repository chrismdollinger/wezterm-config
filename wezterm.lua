local wezterm = require 'wezterm'
local config = wezterm.config_builder()

-- This is where you actually apply your config choices
config.color_scheme = 'Apple System Colors'

if wezterm.target_triple == 'x86_64-pc-windows-msvc' then
    config.font = wezterm.font('Cascadia Code NF')
    config.default_prog = { 'nu' }

    config.launch_menu = {
        {
            label = 'Oracle Sql Developer Command Line (SqlCl)',
            args = { 'sql', '/nolog' },
        }
    }

end

if wezterm.target_triple == 'aarch64-apple-darwin' then
    config.font = wezterm.font('CaskaydiaCove Nerd Font Mono')
    native_macos_fullscreen_mode = false
end

return config
