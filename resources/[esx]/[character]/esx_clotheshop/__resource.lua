resource_manifest_version '05cfa83c-a124-4cfa-a768-c24a5811d8f9'

description 'ESX ClotheShop'

version '1.0.0'

server_scripts {
    '@mysql-async/lib/MySQL.lua',
    '@es_extended/locale.lua',
    'locales/br.lua',
    'locales/de.lua',
    'locales/en.lua',
    'locales/fr.lua',
    'locales/es.lua',
    'config.lua',
    'server/main.lua'
}

client_scripts {
    '@es_extended/locale.lua',
    'locales/br.lua',
    'locales/de.lua',
    'locales/en.lua',
    'locales/fr.lua',
    'locales/es.lua',
    'config.lua',
    'client/main.lua'
}








