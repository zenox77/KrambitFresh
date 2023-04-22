fx_version "cerulean"

version '0.0.1'

lua54 'yes'

game "gta5"

ui_page 'web/build/index.html'

client_scripts {
  "@qb-lib/client/cl_rpc.lua",
  "client/cl_*.lua"
}

server_scripts {
  "@qb-lib/server/sv_rpc.lua",
  "@qb-lib/server/sv_sql.lua",
  "server/sv_*.lua"
}

files {
  'web/build/index.html',
  'web/build/**/*'
}