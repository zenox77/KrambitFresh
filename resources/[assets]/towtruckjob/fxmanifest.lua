fx_version 'bodacious'
games { 'rdr3', 'gta5' }

shared_script 'config.lua'

client_scripts {
    'client/*.lua',
    "@qb-errorlog/client/cl_errorlog.lua",
    '@qb-lib/client/cl_interface.lua',
    "gui.lua",
    "cl_towgarage.lua"
}


server_scripts {
    'server/*.lua',
    "sv_towgarage.lua"
}