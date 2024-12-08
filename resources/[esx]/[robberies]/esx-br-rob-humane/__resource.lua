resource_manifest_version '05cfa83c-a124-4cfa-a768-c24a5811d8f9'
dependency 'essentialmode'

client_scripts {
	'@es_extended/locale.lua',
	'locales/en.lua',
	'config.lua',
	'client/client.lua'
}

server_scripts {
	'@es_extended/locale.lua',
	'locales/en.lua',
	'config.lua',
	'server/server.lua'
}
