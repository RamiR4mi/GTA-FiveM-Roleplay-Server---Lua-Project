StartLockpick = function(_house)
	for house,v in pairs(Config["Houses"]) do
		if house == _house then

			local playerPed = PlayerPedId()

			Lockpicking = true
			FreezeEntityPosition(playerPed, true)
			SetEntityHeading(playerPed, v["heading"])
			SetEntityCoords(playerPed, v["animPos"] - vector3(0, 0, 0.98))
			loadDict("missheistfbisetup1")
			TaskPlayAnim(playerPed, "missheistfbisetup1", "hassle_intro_loop_f", 3.5, -8, -1, 255, 0, 0, 0, 0, 0)
			timer(Config["lockPickingTime"])
			ClearPedTasks(playerPed)
			FreezeEntityPosition(playerPed, false)
			Lockpicking = false
			local random = math.random(1, 6)
			if random == 6 then
				ESX.ShowNotification(Strings["fail"])
			else
				TriggerServerEvent("slizzarn-burglary:lockDoor", house, false)
				TriggerServerEvent('esx_phone:send', 'police', Strings["police_text"], false, { x = v["entering"].x, y = v["entering"].y, z = v["entering"].z })
			end
		end
	end
end

Enterhouse = function(houseType)
	local playerPed = PlayerPedId()
	DoScreenFadeOut(1000)
	Wait(200)
	SetEntityCoords(playerPed, Config["houseTypes"][houseType]["coords"] - vector3(0, 0, 0.98))
	DoScreenFadeIn(1000)
end

Searching = function()
	local playerPed = PlayerPedId()
	TaskStartScenarioInPlace(playerPed, "PROP_HUMAN_BUM_BIN", 0, true)
	searching = true
	timer(Config["searchingTime"])
	ClearPedTasks(playerPed)
	local random = math.random(1, #Config["items"])
	local amount = Config["items"][random]["amount"]
	local item = Config["items"][random]["item"]
	local itemlabel = Config["items"][random]["label"]
	if searching then
		searching = false
		if math.random(1, 5) == 5 then
			ESX.ShowNotification(Strings["dont_found"])
		else
			--ESX.ShowNotification(Strings["found"]:format(amount, itemlabel))
			TriggerServerEvent("slizzarn-burglary:giveItem", item, amount)
		end
	end
end

help = function(text)
	SetTextComponentFormat("STRING")
    AddTextComponentString(text)
	DisplayHelpTextFromStringLabel(0, 0, 1, -1)
end

DrawAdvancedMarker = function(markerData)
    DrawMarker(markerData["type"] or 1, markerData["pos"] or vector3(0.0, 0.0, 0.0), 0.0, 0.0, 0.0, (markerData["type"] == 6 and -90.0 or markerData["rotate"] and -180.0) or 0.0, 0.0, 0.0, markerData["sizeX"] or 1.0, markerData["sizeY"] or 1.0, markerData["sizeZ"] or 1.0, markerData["r"] or 1.0, markerData["g"] or 1.0, markerData["b"] or 1.0, 100, false, true, 2, false, false, false, false)
end

timer = function(time)
	Timer = 0
	repeat
	Timer = Timer + 1
	Wait(time)
	until(Timer == 100)
end

loadDict = function(dict)
	while not HasAnimDictLoaded(dict) do
	  RequestAnimDict(dict)
	  Wait(10)
	end
end

DrawText3D = function(x, y, z, text, scale)
	local onScreen, _x, _y = World3dToScreen2d(x, y, z)
	local pX, pY, pZ = table.unpack(GetGameplayCamCoords())
  
	SetTextScale(scale, scale)
	SetTextFont(4)
	SetTextProportional(1)
	SetTextEntry("STRING")
	SetTextCentre(1)
	SetTextColour(255, 255, 255, 255)
	SetTextOutline()
  
	AddTextComponentString(text)
	DrawText(_x, _y)
  end
  