function openGui()
  SetNuiFocus(true,true)
  SendNUIMessage({open = true})
end

function CloseGui()
  SetNuiFocus(false,false)
  SendNUIMessage({close = true})
end

RegisterNUICallback('close', function(data, cb)
  CloseGui()
  cb('ok')
end)

RegisterNUICallback('complete', function(data, cb)
  TriggerEvent('banking:openATM', data.pin)
  CloseGui()
  cb('ok')
end)

RegisterNetEvent('numpad:OpenUI')
AddEventHandler('numpad:OpenUI', function()
  Citizen.Wait(75)
  openGui()
end)

RegisterCommand('test', function()
  TriggerEvent('numpad:OpenUI')
end)