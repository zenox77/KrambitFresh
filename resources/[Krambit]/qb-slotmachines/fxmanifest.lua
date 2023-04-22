fx_version "adamant"
game "gta5"

name "qb-slotmachines"
description "Playable slot machines similar to that of GTA:Online."
author "Loqrin for NoPixel | nopixel.net"


ui_page "ui/index.html"

files({
    "ui/index.html",
    "ui/js/*.js",
    "ui/css/*.css",
})


client_scripts{
    "@qb-sync/client/lib.lua",
    '@qb-lib/client/cl_interface.lua',
    "@qb-lib/client/cl_polyhooks.lua",
    "@qb-locales/client/lib.lua",
    "@qb-lib/client/cl_rpc.lua",
    "_configs/cfg_general.lua", 
    "core/client/cl_ply.lua"
}

server_scripts{
    "@oxmysql/lib/MySQL.lua", 
    "@qb-lib/server/sv_rpc.lua",
    "_configs/cfg_general.lua",
    "server/sv_main.lua",
    "core/server/sv_ply.lua",
    "core/server/sv_slots.js"
}
