fx_version 'cerulean'
games {'gta5'}

ui_page "html/index.html"

files({
	"html/*",
	"html/img/*",
	"html/css/*",
	"html/font/*",
	"html/js/*"
})

client_script "@qb-lib/client/cl_ui.lua"
client_script "@qb-lib/client/cl_interface.lua"


client_scripts {
	"client/*.lua",
	"@qb-lib/client/cl_polyhooks.lua",
	"@qb-lib/client/cl_ui.lua",
	'@qb-lib/client/cl_rpc.lua',
	'client/model/*.lua'
	
}
server_scripts {
	"server/*",
	"@qb-lib/server/sv_asyncExports.lua",
	'@qb-lib/server/sv_rpc.lua',
	'@qb-lib/server/sv_sql.lua',
}
