fx_version 'cerulean'
games { 'gta5' }

--[[ dependencies {
  "qb-polyzone",
  "qb-lib",
  "qb-ui"
} ]]--

client_script "@qb-sync/client/lib.lua"
client_script "@qb-lib/client/cl_ui.lua"
client_script "@qb-lib/client/cl_interface.lua"

client_scripts {
  '@qb-lib/client/cl_rpc.lua',
  'client/cl_*.lua',
  'client/cl_*.js',
  "@PolyZone/client.lua",
  "@PolyZone/ComboZone.lua",
}

shared_script {
  '@qb-lib/shared/sh_util.lua',
  'shared/sh_*.*',
}

server_script "@qb-lib/server/sv_npx.js"
server_scripts {
  '@qb-lib/server/sv_asyncExports.lua',
  '@qb-lib/server/sv_rpc.lua',
  '@qb-lib/server/sv_rpc.js',
  '@qb-lib/server/sv_sql.lua',
  '@qb-lib/server/sv_sql.js',
  'server/sv_*.lua',
  'server/sv_*.js',
}
