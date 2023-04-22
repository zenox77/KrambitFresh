game 'gta5'
fx_version 'adamant'
lua54 'yes'


server_script '@qb-lib/server/sv_rpc.lua'
server_script 'sv_main.lua'
client_script "@qb-lib/client/cl_interface.lua"

client_script {
    '@qb-lib/client/cl_rpc.lua',
    '@qb-lib/client/cl_ui.lua',
    'cl_main.lua',
    'config.lua'
}
