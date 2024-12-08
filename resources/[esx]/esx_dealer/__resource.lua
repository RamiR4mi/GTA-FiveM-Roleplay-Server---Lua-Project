resource_manifest_version '05cfa83c-a124-4cfa-a768-c24a5811d8f9'

description 'ESX_AllroundDealer'

version '1.0'

server_scripts {
	'@mysql-async/lib/MySQL.lua',
	'@es_extended/locale.lua',
	'locales/ger.lua',
	'config.lua',
	'server/main.lua'
}

client_scripts {
	'@es_extended/locale.lua',
	'locales/ger.lua',
	'config.lua',
	'client/npc.lua',
	'client/main.lua',

}

dependencies {
	'es_extended'
}
