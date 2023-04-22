fx_version 'cerulean'
games { 'gta5' }

client_script "@qb-sync/client/lib.lua"
client_script "@qb-lib/client/cl_polyhooks.lua"

client_scripts {
  "@qb-lib/client/cl_rpc.lua",
  "@qb-lib/client/cl_ui.lua",
  "@qb-sync/client/lib.lua",
  "@qb-lib/client/cl_polyhooks.lua",
  "@qb-locales/client/lib.lua",
  "client/cl_*",
  "@PolyZone/client.lua",
}

shared_script {
  "@qb-lib/shared/sh_util.lua",
  'shared/sh_*.*',
}

server_scripts {
  "@oxmysql/lib/MySQL.lua",
  '@qb-lib/server/sv_rpc.lua',
  '@qb-lib/server/sv_sql.lua',
  '@qb-lib/server/sv_asyncExports.lua',
  'server/sv_*.lua',
}
