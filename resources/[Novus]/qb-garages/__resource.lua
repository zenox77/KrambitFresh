





resource_manifest_version '05cfa83c-a124-4cfa-a768-c24a5811d8f9'

client_script "@qb-lib/client/cl_interface.lua"

server_scripts {
	'@qb-garage-lib/server/sv_rpc.lua',
    '@qb-garage-lib/server/sv_sql.lua',
	'server/sv_*.lua'
}

client_script "@qb-garage-lib/client/cl_ui.lua"
client_scripts {
	'@qb-errorlog/client/cl_errorlog.lua',
	'@qb-garage-lib/client/cl_rpc.lua',
	'client/cl_*.lua'
}

shared_scripts {
	'shared/sh_*.lua'
}

exports{
	'atShared'
}