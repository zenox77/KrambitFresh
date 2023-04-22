fx_version "cerulean"
games { "gta5" }


client_scripts {
    "@qb-sync/client/lib.lua",
    '@qb-lib/client/cl_interface.lua',
    "@qb-lib/client/cl_polyhooks.lua",
    "@qb-locales/client/lib.lua",
    "@qb-lib/client/cl_rpc.lua",
    "client/*",
}

server_scripts {
    "@oxmysql/lib/MySQL.lua", 
    "@qb-lib/server/sv_rpc.lua",
    "server/*",
}


shared_scripts {
    "shared/*",
} 
