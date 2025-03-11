-- Base functions and variables for platform-specific customizations
local wezterm = require('wezterm')
local module = {}

function module.sqlcl_launch_menu(exec)
    local launch_menu = {
        label = 'Oracle Sql Developer Command Line (SqlCl)',
        args = {}
    }
    table.insert(launch_menu.args,exec)
    table.insert(launch_menu.args,'/nolog')
    return launch_menu
end


return module
