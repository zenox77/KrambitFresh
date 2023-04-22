fx_version 'cerulean'
games { 'rdr3', 'gta5' }

client_scripts {
    "@qb-lib/client/cl_rpc.lua",
    "@qb-lib/client/cl_interface.lua",
    'client/*.lua'
}

server_scripts {
    "@qb-lib/server/sv_rpc.lua",
    'server/*.lua'
}
 