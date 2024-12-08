resource_manifest_version '05cfa83c-a124-4cfa-a768-c24a5811d8f9'

shared_scripts {
    'config.lua'
}

server_scripts {
	'server.lua'
}

client_scripts {
	'client.lua'
}

files {
    'ui/app.js',
    'ui/index.html',
    'ui/style.css',
    'ui/*.png',
}

ui_page {
    'ui/index.html'
}

client_script "esx_synctraffic.lua"
