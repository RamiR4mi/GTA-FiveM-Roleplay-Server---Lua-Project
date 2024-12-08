resource_manifest_version '05cfa83c-a124-4cfa-a768-c24a5811d8f9'

ui_page 'html/index.html'

server_scripts {
	'@mysql-async/lib/MySQL.lua',
	'server.lua'
}

client_scripts {
	'client.lua'
}

files {
	'html/assets/images/plate.png',
	'html/index.html',
	'html/assets/fonts/roboto/Roboto-Bold.woff',
	'html/assets/css/style.css',
	'html/assets/js/jquery.js',
	'html/assets/js/init.js',
}
