resource_manifest_version '05cfa83c-a124-4cfa-a768-c24a5811d8f9'

files {
}



client_script {
	'client/main.lua',
	'GUI.lua',
	'config.lua',
}

server_scripts {
	'@mysql-async/lib/MySQL.lua',
	'config.lua',
	'server/main.lua',
}
