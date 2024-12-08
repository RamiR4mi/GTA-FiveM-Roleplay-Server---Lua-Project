resource_manifest_version '05cfa83c-a124-4cfa-a768-c24a5811d8f9'
--------------------------------
------- Created by Hamza -------
-------------------------------- 


description 'ESX Gold Currency'

client_scripts {
    "config.lua",
    "client/client.lua",
    "client/goldjob.lua"
}

server_scripts {
    "@mysql-async/lib/MySQL.lua",
    "config.lua",
    "server/server.lua"
}
