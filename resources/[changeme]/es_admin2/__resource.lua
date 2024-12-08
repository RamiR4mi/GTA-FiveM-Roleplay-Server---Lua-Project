resource_manifest_version '05cfa83c-a124-4cfa-a768-c24a5811d8f9'

description 'Admin tool for ES'

client_script 'client.lua'
server_script 'server.lua'

ui_page 'ui/index.html'

files {
	'ui/index.html',
	'ui/style.css'
}

dependency 'essentialmode'
