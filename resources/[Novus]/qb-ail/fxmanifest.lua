fx_version 'bodacious'
game 'gta5'

resource_manifest_version '05cfa83c-a124-4cfa-a768-c24a5811d8f9'

client_script '@qb-lib/client/cl_interface.lua'
client_script "@qb-errorlog/client/cl_errorlog.lua"

client_script {
    'client/cl_jail_jobs.lua',
    'client/cl_jail.lua'
}

server_script {
    'server/sv_jail_jobs.lua',
    'server/sv_jail.lua'
}