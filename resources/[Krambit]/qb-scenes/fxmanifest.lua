fx_version 'cerulean'

games { 'gta5' }

client_script "@qb-lib/client/cl_interface.lua"

client_scripts {
  'client/cl_*.lua',
}

server_scripts {
  '@qb-lib/server/sv_sql.lua',
  'server/sv_*.lua',
}

