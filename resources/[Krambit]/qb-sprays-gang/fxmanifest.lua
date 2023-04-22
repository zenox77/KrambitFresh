fx_version "cerulean"

description "Sprays"
author "Nopixel"
version '0.0.1'

game "gta5"

this_is_a_map 'yes'

client_script {
    '@qb-lib/client/cl_interface.js',
    '@qb-lib/client/cl_rpc.js',
    'client/*.js',
    'client/*.lua'
}

server_script {
    '@qb-lib/server/sv_rpc.js',
    '@qb-lib/server/sv_rpc.lua',
    '@qb-lib/server/sv_sql.js',
    'server/*.js',
    'server/*.lua'
}

data_file 'DLC_ITYP_REQUEST' 'stream/durp_misc_load.ytyp'