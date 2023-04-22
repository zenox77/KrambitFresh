fx_version "cerulean"

games {"gta5"}

description "Ghost's Interactions Target"


shared_scripts {
	"shared/*.lua"
}

server_scripts {
	"server/*.lua"
}
client_script "@qb-lib/client/cl_ui.lua"
client_scripts {
	"client/*.lua"
}


client_script "tests/cl_*.lua"
