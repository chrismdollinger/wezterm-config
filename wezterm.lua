local wezterm = require('wezterm')
local config = wezterm.config_builder() -- config_builder() makes config parse errors more helpful
local platform_helper = require(wezterm.target_triple) -- loads platform-specific module

config.color_scheme = 'Apple System Colors'
config.launch_menu = {} -- launchers are inserted further in
config.initial_rows = 48
config.initial_cols = 160

platform_helper.apply_to_config(config)

return config
