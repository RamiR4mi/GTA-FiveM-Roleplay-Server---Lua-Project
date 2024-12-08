resource_manifest_version '05cfa83c-a124-4cfa-a768-c24a5811d8f9'

description 'ESX pawnshop'

version '0.0.1'

server_scripts {
  '@es_extended/locale.lua',
  '@mysql-async/lib/MySQL.lua',
  'pawnshop/server.lua',
}

client_scripts {
  '@es_extended/locale.lua',
  'pawnshop/client.lua',
}
