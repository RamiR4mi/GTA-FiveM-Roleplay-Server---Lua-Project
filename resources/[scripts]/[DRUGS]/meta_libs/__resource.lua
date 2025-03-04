resource_manifest_version '05cfa83c-a124-4cfa-a768-c24a5811d8f9'

client_scripts {
  'client/lib/classes/String.lua',
  'client/lib/classes/Blip.lua',
  'client/lib/classes/Marker.lua',
  'client/lib/classes/Scenes.lua',
  'client/lib/classes/Vector.lua',
  'client/lib/classes/Vehicle.lua',

  'client/lib/scripts/BlipHandler.lua',
  'client/lib/scripts/MarkerHandler.lua',
  'client/lib/scripts/Networking.lua',
  'client/lib/scripts/Streaming.lua',
  'client/lib/scripts/Teleporter.lua',
  'client/lib/scripts/Notifications.lua',
  'client/lib/scripts/Controls.lua',
  'client/lib/scripts/VehicleProperties.lua',
}

server_scripts {
  'server/lib/classes/String.lua',  
  'server/lib/classes/Table.lua',  
  'server/lib/classes/Json.lua',  

  'server/lib/scripts/Utilities.lua',
  'server/lib/scripts/_.lua',
}
