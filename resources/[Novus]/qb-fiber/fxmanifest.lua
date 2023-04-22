fx_version "cerulean"

games { "gta5" }

description "Ghost's Fiber"

version "0.1.0"

ui_page 'nui/index.html'

files {
    'nui/**/*',
}

server_scripts {
    "@qb-lib/server/sv_npx.js",
    "@qb-lib/server/sv_rpc.js",
    "@qb-lib/server/sv_sql.js",
    "@qb-lib/shared/sh_cacheable.js",
    "@qb-lib/server/sv_asyncExports.js",
    "server/*.js",
}

client_scripts {
    "@qb-lib/client/cl_rpc.js",
    "client/*.js",
}
