resource_manifest_version '05cfa83c-a124-4cfa-a768-c24a5811d8f9'

server_scripts {
  '@mysql-async/lib/MySQL.lua',
  'server/main.lua'
}

client_scripts {
  'client/main.lua',
}
