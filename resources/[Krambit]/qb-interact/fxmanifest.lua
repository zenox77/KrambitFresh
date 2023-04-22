fx_version "cerulean"

games {"gta5"}

description "Karambit Peek Interactions"

shared_scripts{
    "@qb-lib/shared/sh_util.lua",
    "shared/sh_*.lua",
}

server_scripts {
	"@qb-lib/server/sv_rpc.lua",
	"server/sv_*.lua",
}


client_script "@qb-locales/client/lib.lua"
client_script "@qb-lib/client/cl_interface.lua"


client_scripts{
	"@qb-lib/client/cl_rpc.lua",
    "@PolyZone/client.lua",
    "@PolyZone/BoxZone.lua",
    "@PolyZone/EntityZone.lua",
    "@PolyZone/CircleZone.lua",
    "@PolyZone/ComboZone.lua",
    "client/cl_*.lua",
    "client/entries/cl_*.lua",
}

ui_page "ui/index.html"
files{
    "ui/index.html",
    "ui/style.css",
    "ui/script.js",
    "ui/*.png"
}