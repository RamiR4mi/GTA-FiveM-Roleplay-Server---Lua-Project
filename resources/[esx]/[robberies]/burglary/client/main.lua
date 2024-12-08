Lockpicking = false
Locking = false
searching = false
currentlyHouse = 0
currentlyHouseType = "Apartment"
Timer = 0
ped = nil

ESX = nil

CreateThread(function()
	while not ESX do

		TriggerEvent("esx:getSharedObject", function(library) 
			ESX = library 
		end)

		Citizen.Wait(0)
	end
	
	while not DoesEntityExist(ped) do
		local model = "u_m_y_antonb"
		RequestModel(model)
  
		while not HasModelLoaded(model) do
			Wait(1)
		end
		ped = CreatePed(5, model, Config["sellingLocation"]["coords"] - vector3(0.0, 0.0, 0.985), Config["sellingLocation"]["heading"], false, false)
		FreezeEntityPosition(ped, true)
		SetEntityInvincible(ped, true)
		SetBlockingOfNonTemporaryEvents(ped, true)
		SetPedDefaultComponentVariation(ped)
		loadDict("switch@michael@parkbench_smoke_ranger")
		TaskPlayAnim(ped, "switch@michael@parkbench_smoke_ranger", "parkbench_smoke_ranger_loop", 3.5, -8, -1, 2, 0, 0, 0, 0, 0)
	end

	while true do
		local sleep = 1000

		local playerPed = PlayerPedId()
		local coords = GetEntityCoords(playerPed)

		for house,v in pairs(Config["Houses"]) do
			local dst = GetDistanceBetweenCoords(coords, v["entering"], true)

			if not Lockpicking and not Locking and dst <= 5 then
				sleep = 5

				DrawAdvancedMarker({
					["type"] = 6,
					["pos"] = v["entering"] - vector3(0.0, 0.0, 0.985),
					["r"] = 15,
					["g"] = 205,
					["b"] = 215,
					["sizeX"] = 1.0,
					["sizeY"] = 1.0,
					["sizeZ"] = 1.0,
					["rotate"] = true
				})
				if dst <= 1 then
					if v["locked"] then
						help(Strings["press_e_lockpick"])

						if IsControlJustPressed(0, 38) then
							local inventory = ESX.GetPlayerData().inventory
							local LockpickAmount = 0
							for i=1, #inventory, 1 do                          
								if inventory[i].name == Config["lockPickItem"] then
									LockpickAmount = inventory[i].count
								end
							end
				
							if LockpickAmount >= 1 then
								if v["cooldown"] < 1 then
									StartLockpick(house)
								else
									ESX.ShowNotification(Strings["cooldown"])
								end
							else
								ESX.ShowNotification(Strings["no_lockpick"])
							end
						end

					else
						if ESX.PlayerData["job"]["name"] == 'police' then
							help(Strings["press_e_enter_police"])
							if IsControlJustReleased(0, 47) then
								Locking = true
								FreezeEntityPosition(playerPed, true)
								SetEntityHeading(playerPed, v["heading"])
								SetEntityCoords(playerPed, v["animPos"] - vector3(0, 0, 0.98))
								loadDict("missheistfbisetup1")
								TaskPlayAnim(playerPed, "missheistfbisetup1", "hassle_intro_loop_f", 3.5, -8, -1, 255, 0, 0, 0, 0, 0)
								Wait(5000)
								ClearPedTasks(playerPed)
								Locking = false
								FreezeEntityPosition(playerPed, false)
								TriggerServerEvent("slizzarn-burglary:lockDoor", house, true)
							end
						else	
							help(Strings["press_e_enter"])
						end

						if IsControlJustPressed(0, 38) then
							Enterhouse(v["houseType"])
							EnterInstance(house + 999999)
							currentlyHouseType = v["houseType"]
							currentlyHouse = house
						end
					end
				end
			end

		end

		Wait(sleep)
	end
end)

CreateThread(function()
	while true do
		local sleep = 1000
		local playerPed = PlayerPedId()
		local coords = GetEntityCoords(playerPed)

		for k,v in pairs(Config["houseTypes"]) do
			local dst = GetDistanceBetweenCoords(coords, v["coords"], true)

			if currentlyHouse ~= 0 and dst <= 10 then
				sleep = 5
				DrawAdvancedMarker({
					["type"] = 6,
					["pos"] = v["coords"] - vector3(0.0, 0.0, 0.985),
					["r"] = 15,
					["g"] = 205,
					["b"] = 215,
					["sizeX"] = 1.0,
					["sizeY"] = 1.0,
					["sizeZ"] = 1.0,
					["rotate"] = true
				})
				if dst <= 1 then
					help(Strings["press_e_exit"])
					if IsControlJustReleased(0, 38) then
						SetEntityCoords(playerPed, Config["Houses"]["" .. currentlyHouse .. ""]["entering"] - vector3(0, 0, 0.98))
						ExitInstance()
					    currentlyHouse = 0
					end
				end
			end
		end

		if GetDistanceBetweenCoords(coords, Config["sellingLocation"]["marker"], true) <= 10 then
			sleep = 5
			DrawAdvancedMarker({
				["type"] = 6,
				["pos"] = Config["sellingLocation"]["marker"] - vector3(0.0, 0.0, 0.985),
				["r"] = 15,
				["g"] = 205,
				["b"] = 215,
				["sizeX"] = 1.0,
				["sizeY"] = 1.0,
				["sizeZ"] = 1.0,
				["rotate"] = true
			})
			if GetDistanceBetweenCoords(coords, Config["sellingLocation"]["marker"], true) <= 1 then
				help(Strings["press_e_sell"])
				if IsControlJustReleased(0, 38) then
					TriggerServerEvent("slizzarn-burglary:sellallItems")
				end
			end
		end

		for k,v in pairs(Config["Houses"]) do
			if Lockpicking then
				sleep = 0
				help(Strings["lockpicking"])
				DrawText3D(coords.x, coords.y, coords.z + 0.3, Timer .. "%", 0.35)
				DisableControlAction(0, 73, true)
				DisableControlAction(2, 199, true)
				DisableControlAction(0, 37, true)
				DisableControlAction(0, 288,  true)
				DisableControlAction(0, 289, true)
				DisableControlAction(0, 170, true)
				DisableControlAction(0, 167, true)
				DisableControlAction(0, 47, true) 
				DisableControlAction(0, 264, true) 
				DisableControlAction(0, 257, true)
				DisableControlAction(0, 140, true)
				DisableControlAction(0, 141, true)
				DisableControlAction(0, 142, true)
				DisableControlAction(0, 143, true)
				DisableControlAction(0, 24, true)
				DisableControlAction(0, 257, true)
				DisableControlAction(0, 25, true)
				DisableControlAction(0, 263, true)
				DisableControlAction(0, 32, true)
				DisableControlAction(0, 34, true)
				DisableControlAction(0, 31, true)
				DisableControlAction(0, 30, true)
			end

			if Locking then
				if GetDistanceBetweenCoords(coords, v["entering"]) <= 1.5 then
					sleep = 0
					help(Strings["locking"])
					DisableControlAction(0, 73, true)
					DisableControlAction(2, 199, true)
					DisableControlAction(0, 37, true)
					DisableControlAction(0, 288,  true)
					DisableControlAction(0, 289, true)
					DisableControlAction(0, 170, true)
					DisableControlAction(0, 167, true)
					DisableControlAction(0, 47, true) 
					DisableControlAction(0, 264, true) 
					DisableControlAction(0, 257, true)
					DisableControlAction(0, 140, true)
					DisableControlAction(0, 141, true)
					DisableControlAction(0, 142, true)
					DisableControlAction(0, 143, true)
					DisableControlAction(0, 24, true)
					DisableControlAction(0, 257, true)
					DisableControlAction(0, 25, true)
					DisableControlAction(0, 263, true)
					DisableControlAction(0, 32, true)
					DisableControlAction(0, 34, true)
					DisableControlAction(0, 31, true)
					DisableControlAction(0, 30, true)
				end
			end
		end

		if searching then
			sleep = 5
			help(Strings["searching"])
			DrawText3D(coords.x, coords.y, coords.z + 0.3, Timer .. "%", 0.35)
			DisableControlAction(0, 73, true)
			DisableControlAction(2, 199, true)
			DisableControlAction(0, 37, true)
			DisableControlAction(0, 288,  true)
			DisableControlAction(0, 289, true)
			DisableControlAction(0, 170, true)
			DisableControlAction(0, 167, true)
			DisableControlAction(0, 47, true) 
			DisableControlAction(0, 264, true) 
			DisableControlAction(0, 257, true)
			DisableControlAction(0, 140, true)
			DisableControlAction(0, 141, true)
			DisableControlAction(0, 142, true)
			DisableControlAction(0, 143, true)
			DisableControlAction(0, 24, true)
			DisableControlAction(0, 257, true)
			DisableControlAction(0, 25, true)
			DisableControlAction(0, 263, true)
			DisableControlAction(0, 32, true)
			DisableControlAction(0, 34, true)
			DisableControlAction(0, 31, true)
			DisableControlAction(0, 30, true)
			if IsDisabledControlJustReleased(0, 323) then
				searching = false
				ClearPedTasks(playerPed)
			end
		end

		Wait(sleep)
	end
end)

CreateThread(function()
	while true do
		local sleep = 1000

		local playerPed = PlayerPedId()
		local coords = GetEntityCoords(playerPed)
		
		for place,v in pairs(Config["houseTypes"]["" .. currentlyHouseType .. ""]["lootPlaces"]) do
			local dst = GetDistanceBetweenCoords(coords, v["pos"], true)

			if dst <= 3 then
				sleep = 5
				DrawAdvancedMarker({
					["type"] = 6,
					["pos"] = v["pos"] - vector3(0.0, 0.0, 0.985),
					["r"] = 15,
					["g"] = 205,
					["b"] = 215,
					["sizeX"] = 0.6,
					["sizeY"] = 0.6,
					["sizeZ"] = 0.6,
					["rotate"] = true
				})
				if dst <= 0.5 then
					help(Strings["press_e_search"]:format(v["label"]))
					if IsControlJustReleased(0, 38) then
						if not Config["Houses"]["" .. currentlyHouse .. ""]["cachedLootPlaces"][place] then
							TriggerServerEvent("slizzarn-burglary:search", currentlyHouse, place)
							SetEntityCoords(playerPed, v["pos"] - vector3(0, 0, 0.98))
							SetEntityHeading(playerPed, v["heading"])
							Searching()
						else
							ESX.ShowNotification(Strings["already_searched"])
						end
					end
				end
			end
		end
		Wait(sleep)
	end
end)

freezeddoor = false
CreateThread(function()
	while true do
		Wait(0)
		if not freezeddoor then
			freezeddoor = true
			local door = GetClosestObjectOfType(-14.86892, -1441.182, 18.58479, 2.0, GetHashKey('v_ilev_fa_frontdoor'), false, 0, 0)
			FreezeEntityPosition(door, true)
		end
	end
end)

RegisterNetEvent("slizzarn-burglary:Reset")
AddEventHandler("slizzarn-burglary:Reset", function()
	for k,v in pairs(Config["Houses"]) do
		v["locked"] = true
		v["cachedLootPlaces"] = {}
	end
end)

RegisterNetEvent("slizzarn-burglary:lockDoor")
AddEventHandler("slizzarn-burglary:lockDoor", function(house, lockStatus)
	Config["Houses"][house]["locked"] = lockStatus
	if lockStatus then
		Config["Houses"][house]["cooldown"] = Config["cooldownTime"]
	end
end)

RegisterNetEvent("slizzarn-burglary:search")
AddEventHandler("slizzarn-burglary:search", function(house, place)
	Config["Houses"]["" .. house .. ""]["cachedLootPlaces"][place] = true
end)

RegisterNetEvent("esx:playerLoaded")
AddEventHandler("esx:playerLoaded", function(playerData)
	ESX.PlayerData = playerData
end)

RegisterNetEvent("esx:setJob")
AddEventHandler("esx:setJob", function(newJob)
	ESX.PlayerData["job"] = newJob
end)

CreateThread(function()
	while true do
		for house,v in pairs(Config["Houses"]) do
			if v["cooldown"] > 0 then
				Config["Houses"][house]["cooldown"] = Config["Houses"][house]["cooldown"] - 5000
			end
		end
		Wait(5000)
	end
end)