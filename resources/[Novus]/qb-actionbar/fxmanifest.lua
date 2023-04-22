





fx_version 'cerulean'
games {"gta5"}

description "actionbar"

client_scripts {
  "@qb-errorlog/client/cl_errorlog.lua",
  '@qb-lib/client/cl_rpc.lua',
  "client.lua",
}

shared_script {
  '@qb-lib/shared/sh_util.lua'
}

server_scripts {
  '@qb-lib/server/sv_rpc.lua',
  '@qb-lib/server/sv_sql.lua',
}