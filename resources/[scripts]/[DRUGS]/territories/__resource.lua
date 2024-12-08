resource_manifest_version '05cfa83c-a124-4cfa-a768-c24a5811d8f9'

dependency 'meta_libs'

client_scripts {
  'colors-rgb.lua',
  
  'langs/main.lua',
  'langs/en.lua',
  'config.lua',
  'utils.lua',
  'code.lua',
  'client/main.lua',
}

server_scripts {
  '@mysql-async/lib/MySQL.lua',
  'langs/main.lua',
  'langs/en.lua',
  'config.lua',
  'utils.lua',
  'code.lua',
  'server/main.lua',
}

files {
}

