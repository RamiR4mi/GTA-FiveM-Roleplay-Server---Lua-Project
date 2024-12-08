resource_manifest_version '05cfa83c-a124-4cfa-a768-c24a5811d8f9'

version '1.0.8'

server_scripts {
	'@async/async.lua',
	'@mysql-async/lib/MySQL.lua',
	'config.lua',
	'server.lua'
}

client_scripts {
  'client.lua'
}

dependencies {
	'essentialmode',
	'async'
}
