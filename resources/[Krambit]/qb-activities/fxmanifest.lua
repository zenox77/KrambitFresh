fx_version 'adamant'
games { 'gta5' }

client_script {
    '@qb-lib/client/cl_rpc.lua',
	'@qb-lib/client/cl_ui.lua',
	'@qb-lib/client/cl_interface.lua',
    '@qb-lib/client/cl_ui.js',
    'client/cl_*.lua'
}

server_script {
    '@qb-lib/server/sv_rpc.lua',
    'server/sv_*.lua'
}

exports {
    'canHandOffPackages'
}