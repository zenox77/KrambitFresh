fx_version "cerulean"
games { "gta5" }

--[[ dependencies {
  "qb-polyzone",
  "qb-lib",
  "qb-ui"
} ]]--

client_script "@qb-lib/client/cl_ui.lua"

client_scripts {
  "@qb-lib/client/cl_rpc.lua",
  '@qb-lib/client/cl_interface.lua',
  "client/cl_*.lua",
}

server_scripts {
  "@qb-lib/server/sv_asyncExports.lua",
  "@qb-lib/server/sv_rpc.lua",
  "server/sv_*.lua",
}
