





fx_version 'cerulean'
games { 'gta5' }

dependencies {
  "PolyZone"
}

client_script "@qb-lib/client/cl_ui.lua"
client_script "@qb-lib/client/cl_interface.lua"
client_script "config.lua"

client_scripts {
  "@PolyZone/client.lua",
  "@PolyZone/BoxZone.lua",
  "@PolyZone/CircleZone.lua",
  "@PolyZone/ComboZone.lua",
  "@PolyZone/EntityZone.lua",
  '@qb-errorlog/client/cl_errorlog.lua',
  '@qb-lib/client/cl_rpc.lua',
  'client/cl_*.lua'
}


shared_script 'shared/sh_*.*'

server_scripts {
    '@qb-lib/server/sv_rpc.lua',
    '@qb-lib/server/sv_sql.lua',
    'server/sv_*.lua',
}

export "getModule"