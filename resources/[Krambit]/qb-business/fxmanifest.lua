fx_version 'cerulean'
games { 'gta5' }

shared_script "@mka-array/Array.lua"

client_scripts {
    '@qb-lib/client/cl_rpc.lua',
    '@qb-lib/client/cl_ui.lua',
	'@qb-lib/client/cl_interface.lua',
    '@qb-errorlog/client/cl_errorlog.lua',
    'client/cl_*.lua',
}

shared_script {
    '@qb-lib/shared/sh_util.lua',
}

server_scripts {
    '@qb-lib/server/sv_rpc.lua',
    '@qb-lib/server/sv_sql.lua',
    'server/sv_*.lua',
}