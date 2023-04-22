fx_version 'cerulean'
games { 'gta5' }

client_script "@qb-errorlog/client/cl_errorlog.lua"
client_script "@qb-lib/client/cl_ui.lua" 

client_scripts {
  'client/cl_*.lua',
  '@qb-lib/client/cl_rpc.lua',
}

shared_script {
  'sh_config.lua',
}

server_scripts {
  '@qb-lib/server/sv_rpc.lua',
  'server/sv_*.lua',
}

ui_page "ui/index.html"

files({
    "ui/index.html",
    "ui/js/*.js",
    "ui/css/*.css",
})