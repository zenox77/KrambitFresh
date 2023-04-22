





games {"gta5"}

fx_version "adamant"
version "1.0"

dependency "qb-base"

server_scripts {
    "@qb-lib/server/sv_sqlother.lua",
    "server.lua"
}

server_export "AddLog"
server_export "AddLogHex"