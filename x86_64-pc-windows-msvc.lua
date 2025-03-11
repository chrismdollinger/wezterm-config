-- Customizations specific to Windows
-- Intended for wezterm.target_triple == 'x86_64-pc-windows-msvc'
local wezterm = require('wezterm')
local module = require('platform_base')

function module.apply_to_config(config)
    config.font = wezterm.font('Cascadia Code NF')
    table.insert(
        config.launch_menu,
        module.sqlcl_launch_menu('sql.exe') -- assuming sql.exe is in PATH via Windows settings
    )
    config.default_prog = { 'nu' }
    return config
end

return module
