resource_manifest_version '05cfa83c-a124-4cfa-a768-c24a5811d8f9'
-- James


client_scripts {
	"config.lua",
	"client/functions.lua",
	"client/main.lua"
}

server_scripts {
	"@mysql-async/lib/MySQL.lua",
	"config.lua",
	"server/main.lua",
	"server/functions.lua",
	"server/database.lua"
}
