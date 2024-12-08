resource_manifest_version '05cfa83c-a124-4cfa-a768-c24a5811d8f9'

description 'ESX Car Thief'

version '1.0.0'

server_scripts {
    '@es_extended/locale.lua',
	'config.lua',
	'server/main.lua',
	'locales/en.lua',
	'locales/es.lua',
	'locales/fr.lua'
}

client_scripts {
	'@es_extended/locale.lua',
	'config.lua',
	'client/main.lua',
	'locales/en.lua',
	'locales/es.lua',
	'locales/fr.lua'
}

dependency 'es_extended'
