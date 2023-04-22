fx_version "cerulean"
games { "gta5" }

client_script "@qb-lib/client/cl_interface.lua"

shared_scripts {
	"@qb-lib/shared/sh_util.lua",
	"shared/*",
}

server_scripts {
	"@oxmysql/lib/MySQL.lua",
	"@qb-lib/server/sv_rpc.lua",
    "server/*",
}

client_scripts {
	'@qb-lib/client/cl_ui.lua',
	"@qb-lib/client/cl_rpc.lua",
	"client/*",
}