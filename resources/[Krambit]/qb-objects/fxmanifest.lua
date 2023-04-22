fx_version "cerulean"

description "Nopixel Object System"
version '0.0.1'

game "gta5"

server_script '@qb-lib/server/sv_rpc.js'
server_script '@qb-lib/server/sv_sql.js'
server_script 'server/*.js'

client_script '@dpx/client/lib.js'
client_script '@qb-lib/client/cl_rpc.js'
client_script '@qb-lib/client/cl_poly.js'
client_script 'client/*.js'