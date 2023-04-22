fx_version 'cerulean'
games { 'gta5' }

client_scripts {
  '@qb-lib/client/cl_rpc.lua',
  'client/cl_*.lua',
}

server_scripts {
  '@qb-lib/server/sv_sqlother.lua',
  '@qb-lib/server/sv_rpc.lua',
  '@qb-lib/server/sv_rpc.js',
  '@qb-lib/server/sv_sql.lua',
  '@qb-lib/server/sv_sql.js',
  'server/sv_*.lua',
}
