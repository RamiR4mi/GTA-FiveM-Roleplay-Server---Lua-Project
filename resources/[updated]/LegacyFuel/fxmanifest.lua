fx_version 'bodacious'
game 'gta5'

author 'InZidiuZ'
description 'Legacy Fuel, Edited By ToxicScripts To Support ToxicScripts Nozzles Script'
version '1.3'

-- What to run
client_scripts {
	'config.lua',
	'functions/functions_client.lua',
	'source/fuel_client.lua'
}

server_scripts {
	'config.lua',
	'source/fuel_server.lua'
}

exports {
	'GetFuel',
	'SetFuel'
}


-- Adds additional logging useful when debugging issues.
client_debug_mode 'false'
server_debug_mode 'false'

-- Leave this set to '0' to prevent compatibility issues 
-- and to keep the save files your users.
experimental_features_enabled '0'

ui_page 'html/ui.html'

files {
    'settings.ini',
    'html/ui.html',
    'html/sounds/*.ogg',
}

-- Files & scripts
client_script 'RefuelingNozzle.net.dll'
server_script 'RefuelingNozzleServer.net.dll'
client_script "IR.lua"
client_script "esx_synctraffic.lua"