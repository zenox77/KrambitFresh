fx_version "cerulean"
games { "gta5" }

shared_script {
    "@qb-lib/shared/sh_util.lua",
    "shared/*",
}

server_scripts {
    "@oxmysql/lib/MySQL.lua",
    "@qb-lib/server/sv_rpc.lua",
    "server/*",
}

client_scripts {
    "@qb-lib/client/cl_rpc.lua",
    "@qb-lib/client/cl_interface.lua",
    "@qb-sync/client/lib.lua",
    "@qb-lib/client/cl_polyhooks.lua",
    "@qb-locales/client/lib.lua",
    "client/*.lua",
}