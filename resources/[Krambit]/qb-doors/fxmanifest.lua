





fx_version 'cerulean'

games {
    'gta5',
    'rdr3'
}

client_scripts {
  '@qb-lib/client/cl_rpc.lua',
  '@qb-lib/client/cl_ui.lua',
  '@qb-lib/client/cl_interface.lua',
  '@qb-lib/client/cl_polyhooks.lua',
	'client/cl_*.lua'
}

shared_scripts {
  '@qb-lib/shared/sh_util.lua',
	"shared/*.lua"
}

server_scripts {
  '@qb-lib/server/sv_rpc.lua',
  '@qb-lib/server/sv_sql.lua',
	'server/*.lua'
}