-- Customizations specific to MacOS
-- Intended for wezterm.target_triple == 'aarch64-apple-darwin'
local wezterm = require('wezterm')
local module = require('platform_base')

function module.apply_to_config(config)
    config.native_macos_fullscreen_mode = true
    config.font = wezterm.font('CaskaydiaCove Nerd Font Mono')
    table.insert(
        config.launch_menu,
        module.sqlcl_launch_menu(wezterm.home_dir..'/.local/oracle/product/sqlcl/bin/sql')
    )
    return config
end

return module
