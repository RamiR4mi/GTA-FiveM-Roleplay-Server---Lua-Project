resource_manifest_version '05cfa83c-a124-4cfa-a768-c24a5811d8f9'

name 'Mythic Framework Notification System'
author 'Alzar - https://github.com/Alzar'
version 'v1.0.4'

ui_page {
	'html/ui.html',
}

files {
	'html/ui.html',
	'html/js/app.js', 
	'html/css/style.css',
}

client_scripts {
	'client/main.lua',
	'client/depracated.lua'
	
}

exports {
	'SendAlert',
	'PersistentAlert',

	
--[[ WARNING: These are depracated and may be removed at a future date, Suggest not using it ]]--
	'DoShortHudText',
	'DoHudText',
	'DoLongHudText',
	'DoCustomHudText',
	'PersistentHudText'
}
