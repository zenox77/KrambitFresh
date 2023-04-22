fx_version "cerulean"
description "AdminUI"
version '0.0.1'
game "gta5"

server_scripts {
    '@oxmysql/lib/MySQL.lua',
    '@qb-lib/server/sv_sqlother.lua',
    '@qb-lib/server/sv_rpc.lua',
    '@qb-lib/server/sv_rpc.js',
    '@qb-lib/server/sv_sql.lua',
    '@qb-lib/server/sv_sql.js',
    'dist/server/*.js',
    'dist/server/*.lua',
    'server/sv_*.lua'
}

client_scripts {
    '@qb-lib/client/cl_rpc.js',
    '@qb-lib/client/cl_rpc.lua',
    '@qb-lib/client/cl_poly.js',
    'dist/client/*.js',
    'dist/client/*.lua',
    'client/cl_*.lua',
}