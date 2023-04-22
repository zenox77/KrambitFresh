fx_version 'cerulean'
games {'gta5'}

--client_script "@dpx/client/lib.js"
--server_script "@dpx/server/lib.js"
--shared_script "@dpx/shared/lib.lua"

client_script "@qb-errorlog/client/cl_errorlog.lua"
client_script "@qb-sync/client/lib.lua"

server_script "@qb-lib/server/sv_asyncExports.lua"

shared_script "@qb-lib/shared/sh_util.lua"

client_scripts {
  '@qb-lib/client/cl_rpc.lua',
  'cl_*.lua'
}

server_scripts {
  '@qb-lib/server/sv_sql.lua',
  '@qb-lib/server/sv_rpc.lua',
  'sv_*.lua'
}
