ESX                           = nil

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0)
	end

end)



Citizen.CreateThread(function()
  local dict = "anim@mp_player_intmenu@key_fob@"
  RequestAnimDict(dict)
  while not HasAnimDictLoaded(dict) do
      Citizen.Wait(0)
  end
  while true do
    Citizen.Wait(0)
	if (IsControlJustPressed(1, 303)) then
		local coords = GetEntityCoords(GetPlayerPed(-1))
		local hasAlreadyLocked = false
		cars = ESX.Game.GetVehiclesInArea(coords, 30)
		local carstrie = {}
		local cars_dist = {}		
		notowned = 0
		if #cars == 0 then
		---	ESX.ShowNotification("No vehicles to lock nearby.")
			exports['okokNotify']:Alert("Notification", "No vehicles to lock nearby.", 5000, 'error')
		else
			for j=1, #cars, 1 do
				local coordscar = GetEntityCoords(cars[j])
				local distance = Vdist(coordscar.x, coordscar.y, coordscar.z, coords.x, coords.y, coords.z)
				table.insert(cars_dist, {cars[j], distance})
			end
			for k=1, #cars_dist, 1 do
				local z = -1
				local distance, car = 999
				for l=1, #cars_dist, 1 do
					if cars_dist[l][2] < distance then
						distance = cars_dist[l][2]
						car = cars_dist[l][1]
						z = l
					end
				end
				if z ~= -1 then
					table.remove(cars_dist, z)
					table.insert(carstrie, car)
				end
			end
			for i=1, #carstrie, 1 do
				local plate = ESX.Math.Trim(GetVehicleNumberPlateText(carstrie[i]))
				ESX.TriggerServerCallback('carlock:isVehicleOwner', function(owner)
					if owner and hasAlreadyLocked ~= true then
						local vehicleLabel = GetDisplayNameFromVehicleModel(GetEntityModel(carstrie[i]))
						vehicleLabel = GetLabelText(vehicleLabel)
						local lock = GetVehicleDoorLockStatus(carstrie[i])
						if lock == 1 or lock == 0 then
							SetVehicleDoorShut(carstrie[i], 0, false)
							SetVehicleDoorShut(carstrie[i], 1, false)
							SetVehicleDoorShut(carstrie[i], 2, false)
							SetVehicleDoorShut(carstrie[i], 3, false)
							SetVehicleDoorsLocked(carstrie[i], 2)
							PlayVehicleDoorCloseSound(carstrie[i], 1)
							--exports.pNotify:SendNotification({layout="centerLeft",type="success",timeout=500,progressbar=false,text='Locked '..vehicleLabel})
						--	ESX.ShowNotification('You have ~r~locked~s~ your ~y~'..vehicleLabel..'~s~.')
	
							exports['okokNotify']:Alert("Notification", "You have<span style='color: red;'> Locked </span> your " ..vehicleLabel.. ".", 5000, 'success')
							
							if not IsPedInAnyVehicle(PlayerPedId(), true) then
								TaskPlayAnim(PlayerPedId(), dict, "fob_click_fp", 8.0, 8.0, -1, 48, 1, false, false, false)
							end
							SetVehicleLights(carstrie[i], 2)
							Citizen.Wait(150)
							SetVehicleLights(carstrie[i], 0)
							Citizen.Wait(150)
							SetVehicleLights(carstrie[i], 2)
							Citizen.Wait(150)
							SetVehicleLights(carstrie[i], 0)
							hasAlreadyLocked = true
						elseif lock == 2 then
							SetVehicleDoorsLocked(carstrie[i], 1)
							PlayVehicleDoorOpenSound(carstrie[i], 0)
							--exports.pNotify:SendNotification({layout="centerLeft",type="error",timeout=500,progressbar=false,text='Unlocked '..vehicleLabel})
						--	ESX.ShowNotification('')
							exports['okokNotify']:Alert("Notification", "You have<span style='color: green;'> Unlocked </span> your " ..vehicleLabel.. ".", 5000, 'success')
							
							if not IsPedInAnyVehicle(PlayerPedId(), true) then
								TaskPlayAnim(PlayerPedId(), dict, "fob_click_fp", 8.0, 8.0, -1, 48, 1, false, false, false)
							end
							SetVehicleLights(carstrie[i], 2)
							Citizen.Wait(150)
							SetVehicleLights(carstrie[i], 0)
							Citizen.Wait(150)
							SetVehicleLights(carstrie[i], 2)
							Citizen.Wait(150)
							SetVehicleLights(carstrie[i], 0)
							hasAlreadyLocked = true
						end
					else
						notowned = notowned + 1
					end
					if notowned == #carstrie then
						--exports.pNotify:SendNotification({layout="centerLeft",type="error",timeout=500,progressbar=false,text="No vehicles to lock nearby."})
					--	ESX.ShowNotification("No vehicles to lock nearby.")

						exports['okokNotify']:Alert("Notification", "No vehicles to lock nearby.", 5000, 'error')
					end	
				end, plate)
			end			
		end
	end
  end
end)


-- Ktackle
-- 2018 Henric 'Kekke' Johansson

local Keys = {
	["ESC"] = 322, ["F1"] = 288, ["F2"] = 289, ["F3"] = 170, ["F5"] = 166, ["F6"] = 167, ["F7"] = 168, ["F8"] = 169, ["F9"] = 56, ["F10"] = 57,
	["~"] = 243, ["1"] = 157, ["2"] = 158, ["3"] = 160, ["4"] = 164, ["5"] = 165, ["6"] = 159, ["7"] = 161, ["8"] = 162, ["9"] = 163, ["-"] = 84, ["="] = 83, ["BACKSPACE"] = 177,
	["TAB"] = 37, ["Q"] = 44, ["W"] = 32, ["E"] = 38, ["R"] = 45, ["T"] = 245, ["Y"] = 246, ["U"] = 303, ["P"] = 199, ["["] = 39, ["]"] = 40, ["ENTER"] = 18,
	["CAPS"] = 137, ["A"] = 34, ["S"] = 8, ["D"] = 9, ["F"] = 23, ["G"] = 47, ["H"] = 74, ["K"] = 311, ["L"] = 182,
	["LEFTSHIFT"] = 21, ["Z"] = 20, ["X"] = 73, ["C"] = 26, ["V"] = 0, ["B"] = 29, ["N"] = 249, ["M"] = 244, [","] = 82, ["."] = 81,
	["LEFTCTRL"] = 36, ["LEFTALT"] = 19, ["SPACE"] = 22, ["RIGHTCTRL"] = 70,
	["HOME"] = 213, ["PAGEUP"] = 10, ["PAGEDOWN"] = 11, ["DELETE"] = 178,
	["LEFT"] = 174, ["RIGHT"] = 175, ["TOP"] = 27, ["DOWN"] = 173,
	["NENTER"] = 201, ["N4"] = 108, ["N5"] = 60, ["N6"] = 107, ["N+"] = 96, ["N-"] = 97, ["N7"] = 117, ["N8"] = 61, ["N9"] = 118
}

ESX               				= nil
local PlayerData                = {}
local PoliceJob 				= 'police'

local isTackling				= false
local isGettingTackled			= false

local tackleLib					= 'missmic2ig_11'
local tackleAnim 				= 'mic_2_ig_11_intro_goon'
local tackleVictimAnim			= 'mic_2_ig_11_intro_p_one'

local lastTackleTime			= 0
local isRagdoll					= false

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0)
	end

	PlayerData = ESX.GetPlayerData()
end)

RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded', function(xPlayer)
	PlayerData = xPlayer
end)

RegisterNetEvent('esx:setJob')
AddEventHandler('esx:setJob', function(job)
	PlayerData.job = job
end)

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(0)
		
		if isRagdoll then
			SetPedToRagdoll(GetPlayerPed(-1), 1000, 1000, 0, 0, 0, 0)
		end
	end
end)

RegisterNetEvent('esx_kekke_tackle:getTackled')
AddEventHandler('esx_kekke_tackle:getTackled', function(target)
	isGettingTackled = true

	local playerPed = GetPlayerPed(-1)
	local targetPed = GetPlayerPed(GetPlayerFromServerId(target))

	RequestAnimDict(tackleLib)

	while not HasAnimDictLoaded(tackleLib) do
		Citizen.Wait(10)
	end

	AttachEntityToEntity(GetPlayerPed(-1), targetPed, 11816, 0.25, 0.5, 0.0, 0.5, 0.5, 180.0, false, false, false, false, 2, false)
	TaskPlayAnim(playerPed, tackleLib, tackleVictimAnim, 8.0, -8.0, 3000, 0, 0, false, false, false)

	Citizen.Wait(3000)
	DetachEntity(GetPlayerPed(-1), true, false)

	isRagdoll = true
	Citizen.Wait(3000)
	isRagdoll = false

	isGettingTackled = false
end)

RegisterNetEvent('esx_kekke_tackle:playTackle')
AddEventHandler('esx_kekke_tackle:playTackle', function()
	local playerPed = GetPlayerPed(-1)

	RequestAnimDict(tackleLib)

	while not HasAnimDictLoaded(tackleLib) do
		Citizen.Wait(10)
	end

	TaskPlayAnim(playerPed, tackleLib, tackleAnim, 8.0, -8.0, 3000, 0, 0, false, false, false)

	Citizen.Wait(3000)

	isTackling = false

end)

-- Main thread
Citizen.CreateThread(function()
	while true do
		Wait(0)

		if IsControlPressed(0, Keys['LEFTSHIFT']) and IsControlPressed(0, Keys['G']) and not isTackling and GetGameTimer() - lastTackleTime > 10 * 1000 and PlayerData.job.name == PoliceJob then
			Citizen.Wait(10)
			local closestPlayer, distance = ESX.Game.GetClosestPlayer()
			if distance ~= -1 and distance <= 3.0 and not isTackling and not isGettingTackled and not IsPedInAnyVehicle(GetPlayerPed(-1)) and not IsPedInAnyVehicle(GetPlayerPed(closestPlayer)) then
				isTackling = true
				lastTackleTime = GetGameTimer()

				TriggerServerEvent('esx_kekke_tackle:tryTackle', GetPlayerServerId(closestPlayer))
			end
		end
	end
end)
-- Handcuff
-- ESX
ESX               = nil

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0)
	end
end)

RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded', function(xPlayer)
  PlayerData = xPlayer
end)

-- Locals

local cuffed = false
local dict = "mp_arresting"
local anim = "idle"
local flags = 49
local ped = PlayerPedId()
local changed = false
local prevMaleVariation = 0
local prevFemaleVariation = 0
local femaleHash = GetHashKey("mp_f_freemode_01")
local maleHash = GetHashKey("mp_m_freemode_01")
local IsLockpicking    = false

-- Sätt på handklovar
RegisterNetEvent('esx_handcuffs:cuff')
AddEventHandler('esx_handcuffs:cuff', function()
    ped = GetPlayerPed(-1)
    RequestAnimDict(dict)

    while not HasAnimDictLoaded(dict) do
        Citizen.Wait(0)
    end

        if GetEntityModel(ped) == femaleHash then
            prevFemaleVariation = GetPedDrawableVariation(ped, 7)
            SetPedComponentVariation(ped, 7, 25, 0, 0)
        elseif GetEntityModel(ped) == maleHash then
            prevMaleVariation = GetPedDrawableVariation(ped, 7)
            SetPedComponentVariation(ped, 7, 41, 0, 0)
        end

        SetEnableHandcuffs(ped, true)
        TaskPlayAnim(ped, dict, anim, 8.0, -8, -1, flags, 0, 0, 0, 0)

    cuffed = not cuffed
    changed = true
end)
--- Uncufing
RegisterNetEvent('esx_handcuffs:uncuff')
AddEventHandler('esx_handcuffs:uncuff', function()
    ped = GetPlayerPed(-1)
    RequestAnimDict(dict)

    while not HasAnimDictLoaded(dict) do
        Citizen.Wait(0)
    end

        ClearPedTasks(ped)
        SetEnableHandcuffs(ped, false)
        UncuffPed(ped)

        if GetEntityModel(ped) == femaleHash then -- mp female
            SetPedComponentVariation(ped, 7, prevFemaleVariation, 0, 0)
        elseif GetEntityModel(ped) == maleHash then -- mp male
            SetPedComponentVariation(ped, 7, prevMaleVariation, 0, 0)
        end

    cuffed = not cuffed

    changed = true
end)

RegisterNetEvent('esx_handcuffs:cuffcheck')
AddEventHandler('esx_handcuffs:cuffcheck', function()
  local player, distance = ESX.Game.GetClosestPlayer()
  if distance ~= -1 and distance <= 3.0 then
  				  RequestAnimDict("amb@prop_human_bum_bin@idle_b")
				  TaskPlayAnim(ped,"amb@prop_human_bum_bin@idle_b","idle_d",100.0, 200.0, 0.3, 120, 0.2, 0, 0, 0, 130)
								ESX.ShowNotification('~g~You have used your handcuffs')
				Wait(8000)
		TriggerServerEvent('esx_policejob:handcuff', GetPlayerServerId(player))
				ESX.ShowNotification('~r~Person Cuffed/UnCuffed')
  else
    ESX.ShowNotification('No players nearby')
	end
end)

RegisterNetEvent('esx_handcuffs:nyckelcheck')
AddEventHandler('esx_handcuffs:nyckelcheck', function()
	local player, distance = ESX.Game.GetClosestPlayer()
  if distance ~= -1 and distance <= 3.0 then
      TriggerServerEvent('esx_handcuffs:unlocking', GetPlayerServerId(player))
  else
    ESX.ShowNotification('No players nearby')
	end
end)

RegisterNetEvent('esx_handcuffs:unlockingcuffs')
AddEventHandler('esx_handcuffs:unlockingcuffs', function()
  local player, distance = ESX.Game.GetClosestPlayer()
	local ped = GetPlayerPed(-1)

	if IsLockpicking == false then
		ESX.UI.Menu.CloseAll()
		FreezeEntityPosition(player,  true)
		FreezeEntityPosition(ped,  true)

		TaskStartScenarioInPlace(ped, "WORLD_HUMAN_WELDING", 0, true)

		IsLockpicking = true

		Wait(30000)

		IsLockpicking = false

		FreezeEntityPosition(player,  false)
		FreezeEntityPosition(ped,  false)

		ClearPedTasksImmediately(ped)

		TriggerServerEvent('esx_policejob:handcuff', GetPlayerServerId(player))
		ESX.ShowNotification('Handcuffs unlocked')
	else
		ESX.ShowNotification('Your are already lockpicking handcuffs')
	end
end)

-- ??
Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        if not changed then
            ped = PlayerPedId()
            local IsCuffed = IsPedCuffed(ped)
            if IsCuffed and not IsEntityPlayingAnim(PlayerPedId(), dict, anim, 3) then
                Citizen.Wait(0)
                TaskPlayAnim(ped, dict, anim, 8.0, -8, -1, flags, 0, 0, 0, 0)
            end
        else
            changed = false
        end
    end
end)

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        ped = PlayerPedId()
        if cuffed then
        end
    end
end)

-- Garbase
local truckplate = false
local truckcoords
local inTruck
local missionBlip = nil
local binCoords = false
local maxruns = 0
local runs = 0
local arrived 
local jobBlip
local submitBlip
ESX = nil
local submitCoords = vector3(-354.28,-1560.88,24.9)
local clockRoom = vector3(-321.70, -1545.94, 31.02)
local doingGarbage = false
local jobCompleted = false
local garbageHQBlip = 0
local truckTaken = false

local JobCoords = {
    {x = 114.83280181885, y = -1462.3127441406, z = 29.295083999634},
    {x = -6.0481648445129, y = -1566.2338867188, z = 29.209197998047},
    {x = -1.8858588933945, y = -1729.5538330078, z = 29.300233840942},
    {x = 159.09, y = -1816.69, z = 27.9},
    {x = 358.94696044922, y = -1805.0723876953, z = 28.966590881348},
    {x = 481.36560058594, y = -1274.8297119141, z = 29.64475440979},
    {x = 254.70010375977, y = -985.32482910156, z = 29.196590423584},
    {x = 240.08079528809, y = -826.91204833984, z = 30.018426895142},
    {x = 342.78308105469, y = -1036.4720458984, z = 29.194206237793},
    {x = 462.17517089844, y = -949.51434326172, z = 27.959424972534},
    {x = 317.53698730469, y = -737.95416259766, z = 29.278547286987},
    {x = 410.22503662109, y = -795.30517578125, z = 29.20943069458},
    {x = 398.36038208008, y = -716.35577392578, z = 29.282489776611},
    {x = 443.96984863281, y = -574.33978271484, z = 28.494501113892},
    {x = -1332.53, y = -1198.49, z = 4.62},
    {x = -45.443946838379, y = -191.32261657715, z = 52.161594390869},
    {x = -31.948055267334, y = -93.437454223633, z = 57.249073028564},
    {x = 283.10873413086, y = -164.81878662109, z = 60.060565948486},
    {x = 441.89678955078, y = 125.97653198242, z = 99.887702941895},
}

local Dumpsters = {
    "prop_dumpster_01a",
    "prop_dumpster_02a",
    "prop_dumpster_02b",
    "prop_dumpster_3a",
    "prop_dumpster_4a",
    "prop_dumpster_4b",
    "prop_skip_01a",
    "prop_skip_02a",
    "prop_skip_06a",
    "prop_skip_05a",
    "prop_skip_03",
    "prop_skip_10a"
}

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0)
	end
	while ESX.GetPlayerData().job == nil do
		Citizen.Wait(10)
	end
	PlayerData = ESX.GetPlayerData()
end)

RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded', function(xPlayer)
	ESX.PlayerData = xPlayer
end)

RegisterNetEvent('esx:setJob')
AddEventHandler('esx:setJob', function(job)
	ESX.PlayerData.job = job
end)


Citizen.CreateThread(function()
    while true do
        Citizen.Wait(2000)
        if ESX.PlayerData.job and ESX.PlayerData.job.name == 'garbage' then
            havingGarbageJob = true
            if garbageHQBlip == nil or garbageHQBlip == 0 then
                garbageHQBlip = AddBlipForCoord(clockRoom)
                SetBlipSprite(garbageHQBlip, 467)
                SetBlipDisplay(garbageHQBlip, 4)
                SetBlipScale(garbageHQBlip, 1.0)
                SetBlipColour(garbageHQBlip, 25)
                SetBlipAsShortRange(garbageHQBlip, false)
                BeginTextCommandSetBlipName("STRING")
                AddTextComponentString("Garbage HQ")
                EndTextCommandSetBlipName(garbageHQBlip)
            end    
        else
            havingGarbageJob = false
            if garbageHQBlip ~= nil or garbageHQBlip ~= 0 then
                RemoveBlip(garbageHQBlip)
                garbageHQBlip = 0
            end
        end
    end
end)


Citizen.CreateThread(function() 
    local wait = 100
    while true do 
        Citizen.Wait(wait)
        if havingGarbageJob then
            local playerPed = GetPlayerPed(-1)
            local plyCoords = GetEntityCoords(playerPed)
            local distance = GetDistanceBetweenCoords(plyCoords, clockRoom, true)
            local vehicleCoords = vector3(-323.53, -1523.58, 27.00)
            local heading = 269.7
            if distance < 20 then
                wait = 5
                DrawMarker(2, clockRoom, 0.0, 0.0, 0.0, 0, 0.0, 0.0, 1.0, 1.0, 1.0, 255, 0, 0, 150, false, true, 2, false, false, false, false)
                if distance < 1.5 then
                    ESX.ShowHelpNotification("Press ~INPUT_CONTEXT~ to start job", true, true, 5000)
                    if IsControlJustReleased(1,46) then
                        if not truckTaken then 
                            if ESX.Game.IsSpawnPointClear(vehicleCoords, 5) then
                                truckTaken = true
                                local random = math.random(1, #JobCoords)
                                local coordVec = vector3(JobCoords[random].x, JobCoords[random].y, JobCoords[random].z)
                                inTruck = false
                                ESX.Game.SpawnVehicle("trash", vehicleCoords, heading , function(vehicle)
                                    truckplate = GetVehicleNumberPlateText(vehicle)
                                    truckcoords = GetEntityCoords(vehicle)
                                    Citizen.CreateThread(function() 
                                        while not inTruck do 
                                            Citizen.Wait(5)
                                            DrawMarker(2, truckcoords + vector3(0.0,0.0,3.5), 0.0, 0.0, 0.0, 0, 0.0, 0.0, 1.0, 1.0, 1.0, 255, 0, 0, 150, false, true, 2, false, false, false, false)
                                            if IsPedInAnyVehicle(GetPlayerPed(-1)) then
                                                local truck = GetVehiclePedIsIn(GetPlayerPed(-1),false)
                                                if truck == vehicle then
                                                    inTruck = true
                                                    Citizen.Wait(1000)
                                                    missionStart(coordVec,vehicle)
                                                    TriggerEvent('ndrp_carkeys:carkeys', vehicle)
                                                end
                                            end
                                        end
                                    end)
                                end)
                            else
                                exports['mythic_notify']:SendAlert('inform', 'Please clear the spawn point')
                            end
                        else
                            exports['mythic_notify']:SendAlert('inform', 'You already taken a truck for the job')
                        end
                    end
                end
            end
        end
    end
end)

function submit()
    Citizen.CreateThread(function()
        local pressed = false
        local wait = 100
        while true do
            Citizen.Wait(wait)
            local playerPed = GetPlayerPed(-1)
            local plyCoords = GetEntityCoords(playerPed)
            local distance = GetDistanceBetweenCoords(plyCoords,submitCoords, true) 
            if distance < 20 then
                wait = 5
                if IsPedInAnyVehicle(playerPed) then
                    DrawMarker(2, submitCoords+vector3(0.0,0.0,2.0), 0.0, 0.0, 0.0, 0, 0.0, 0.0, 1.0, 1.0, 1.0, 255, 0, 0, 150, false, true, 2, false, false, false, false)
                    local truck = GetVehiclePedIsIn(playerPed, false)
                    local plate = GetVehicleNumberPlateText(truck)
                    if distance < 2.0 then
                        ESX.ShowHelpNotification("Press ~INPUT_CONTEXT~ to drop off trash", true, true, 5000)
                        if IsControlJustReleased(1,46) and not pressed then
                            truckTaken = false
                            pressed = true
                            RemoveBlip(submitBlip)
                            if plate == truckplate then
                                jobCompleted = true
                                exports['progressBars']:startUI(5000, "Dropping off trash")
                                TriggerServerEvent('ndrp-garbage:pay',jobCompleted)
                                jobCompleted = false
                                ESX.Game.DeleteVehicle(truck)
                                for i=1,200,1 do 
                                    if DoesEntityExist(truck) then
                                        ESX.Game.DeleteVehicle(truck)
                                    else
                                        truckplate = false
                                        truckTaken = false
                                        return
                                    end
                                end
                                truckplate = false
                                Citizen.Wait(1000)
                                pressed = false    
                                return
                            else
                                exports['mythic_notify']:SendAlert('error', 'This is not our vehicle')
                                Citizen.Wait(1000)
                                pressed = false
                            end
                            Citizen.Wait(1000)
                            pressed = false
                        end
                    end
                end
            else
                wait = 100
            end
        end
    end)
end

function missionStart(coordVec,xtruck)
    local vehicle = xtruck
    arrived = false
    missionBlip = AddBlipForCoord(coordVec)
    SetBlipRoute(missionBlip, true)
    SetBlipRouteColour(missionBlip, 25)
    SetBlipColour(missionBlip, 25)
    Citizen.CreateThread(function()
        local wait = 100
        while not arrived do
            Citizen.Wait(wait)
            local tempdist = GetDistanceBetweenCoords(coordVec, GetEntityCoords(GetPlayerPed(-1)),true)
            if  tempdist < 50 then
                wait = 5
                DrawMarker(20, coordVec + vector3(0.0,0.0,3.5), 0.0, 0.0, 0.0, 0, 0.0, 0.0, 2.0, 2.0, 1.0, 0, 120, 0, 200, false, true, 2, false, false, false, false)
                if tempdist < 2 then
                    arrived = true
                    maxruns  = math.random(6,10)
                    Citizen.Wait(1000)
                    SetBlipRoute(missionBlip, false)
                    RemoveBlip(missionBlip)
                    findtrashbins(coordVec,vehicle,0)
                end
            else
                wait = 100
            end
        end
    end)      
end

function findtrashbins(coordVec,xtruck,pickup)
    doingGarbage = true
    local location = coordVec
    local vehicle = xtruck
    local playerPed = GetPlayerPed(-1)
    local boneindex = GetPedBoneIndex(playerPed, 57005)
    runs = pickup

    if not HasAnimDictLoaded("anim@heists@narcotics@trash") then
        RequestAnimDict("anim@heists@narcotics@trash")
    end
    while not HasAnimDictLoaded("anim@heists@narcotics@trash") do
        Citizen.Wait(0)
    end

    if runs < maxruns then
        angle = math.random()*math.pi*2;
        r = math.sqrt(math.random());
        x = coordVec.x + r * math.cos(angle) * 100;     
        y = coordVec.y + r * math.sin(angle) * 100;
        for i = 0, #Dumpsters, 1 do 
            local NewBin = GetClosestObjectOfType(x, y, coordVec.z, 100.0, GetHashKey(Dumpsters[i]), false)
            if NewBin ~= 0 then
                local dumpCoords = GetEntityCoords(NewBin)
                jobBlip = AddBlipForCoord(dumpCoords)
                SetBlipSprite(jobBlip, 420)
                SetBlipScale (jobBlip, 0.8)
                SetBlipColour(jobBlip, 25)
                while true do
                    Wait(5) 
                    local userDist = GetDistanceBetweenCoords(dumpCoords,GetEntityCoords(GetPlayerPed(-1)),true) 
                    if userDist < 20 then
                        DrawMarker(20, dumpCoords + vector3(0.0,0.0,2.5), 0.0, 0.0, 0.0, 0, 0.0, 0.0, 2.0, 2.0, 1.0, 0, 120, 0, 200, false, true, 2, false, false, false, false)
                        if userDist < 2 then
                            ESX.ShowHelpNotification("Press ~INPUT_CONTEXT~ to collect trash", true, true, 5000)
                            if IsControlJustReleased(1,46) then
                                local geeky = CreateObject(GetHashKey("hei_prop_heist_binbag"), 0, 0, 0, true, true, true)
                                AttachEntityToEntity(geeky, playerPed, boneindex, 0.12, 0.0, 0.00, 25.0, 270.0, 180.0, true, true, false, true, 1, true)
                                TaskPlayAnim(PlayerPedId(-1), 'anim@heists@narcotics@trash', 'walk', 1.0, -1.0,-1,49,0,0, 0,0)
                                RemoveBlip(jobBlip)
                                collectedtrash(geeky,vehicle,location,runs)
                                return
                            end
                        end
                    end
                end
                return
            end
        end
    else
        submit()
        doingGarbage = false
        exports['mythic_notify']:SendAlert('inform', 'Job done! Return to HQ',10000)
        submitBlip = AddBlipForCoord(submitCoords)
        SetBlipColour(submitBlip, 25)
    end
end

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(5)
        if havingGarbageJob then
            if not IsPedInAnyVehicle(GetPlayerPed(-1)) then
                if doingGarbage then
                    DisplayRadar(true)
                else
                    DisplayRadar(false)
                end
            end
        end
    end
end)

local trashCollected = false

function collectedtrash(geeky,vehicle,location,pickup)
    local wait = 100
    local trashbag = geeky
    local pressed = false
    while true do
        Wait(wait)
        local trunkcoord = GetWorldPositionOfEntityBone(vehicle, GetEntityBoneIndexByName(vehicle, "platelight"))
        local tdistance = GetDistanceBetweenCoords(GetEntityCoords(GetPlayerPed(-1)),trunkcoord)
        local runs = pickup
        if tdistance < 20 then
            wait = 5
            DrawMarker(20, trunkcoord + vector3(0.0,0.0,0.5), 0.0, 0.0, 0.0, 0, 0.0, 0.0, 1.0, 1.0, 1.0, 0, 120, 0, 200, false, true, 2, false, false, false, false)
            if tdistance < 2 then
                ESX.ShowHelpNotification("Press ~INPUT_CONTEXT~ to throw trash", true, true, 5000)
                if IsControlJustReleased(1, 46) and not pressed then
                    pressed = true
                    local dropChance = math.random(1,4)
                    if dropChance > 1 then
                        local randomChance = math.random(1,100)
                        trashCollected  = true
                        local item = 'water'
                        if randomChance < 20 then
                            item = 'sandwich'
                        elseif randomChance > 20 and randomChance < 40 then
                            item = 'water'
                        elseif randomChance > 40 and randomChance < 50 then
                            item = 'glass'
                        elseif randomChance > 50 and randomChance < 52 then
                            item = 'thermite'
                        elseif randomChance > 52 and randomChance < 80 then
                            item = 'glass'
                        elseif randomChance == 81 then  
                            item = 'WEAPON_PISTOL'
                        elseif randomChance > 81 and randomChance < 90 then
                            item = 'steel'
                        elseif randomChance > 90 and randomChance < 95 then
                            item = 'oxycutter'
                        elseif randomChance > 95 and randomChance < 97 then
                            item = 'safecracker'
                        else
                            item = 'beer'
                        end
                        TriggerServerEvent('ndrp-garbage:reward',item,trashCollected)
                        trashCollected = false
                    end
                    ClearPedTasksImmediately(GetPlayerPed(-1))
					TaskPlayAnim(GetPlayerPed(-1), 'anim@heists@narcotics@trash', 'throw_b', 1.0, -1.0,-1,2,0,0, 0,0)
                    Citizen.Wait(100)
                    DeleteObject(trashbag)
                    Citizen.Wait(3000)
                    ClearPedTasksImmediately(GetPlayerPed(-1))
                    findtrashbins(location,vehicle,runs+1)
                    pressed = false
                    return
                end
            end
        end
    end
end
-- Carwash
Key = 38 -- E

vehicleWashStation = {
	{26.5906,  -1392.0261,  27.3634},
	{167.1034,  -1719.4704,  27.2916},
	{-74.5693,  6427.8715,  29.4400},
	{-699.6325,  -932.7043,  17.0139},
	{1362.5385, 3592.1274, 33.9211}
}

Citizen.CreateThread(function ()
	Citizen.Wait(0)
	for i = 1, #vehicleWashStation do
		garageCoords = vehicleWashStation[i]
		stationBlip = AddBlipForCoord(garageCoords[1], garageCoords[2], garageCoords[3])
		SetBlipSprite(stationBlip, 100)
		SetBlipAsShortRange(stationBlip, true)
	end
    return
end)

local timer2 = false
local mycie = false

function es_better_carwash_DrawSubtitleTimed(m_text, showtime)
	SetTextEntry_2('STRING')
	AddTextComponentString(m_text)
	DrawSubtitleTimed(showtime, 1)
end

function es_better_carwash_DrawNotification(m_text)
	SetNotificationTextEntry('STRING')
	AddTextComponentString(m_text)
	DrawNotification(true, false)
end

Citizen.CreateThread(function ()
	while true do
		Citizen.Wait(0)
		if IsPedSittingInAnyVehicle(PlayerPedId()) then 
			for i = 1, #vehicleWashStation do
				garageCoords2 = vehicleWashStation[i]
				DrawMarker(1, garageCoords2[1], garageCoords2[2], garageCoords2[3], 0, 0, 0, 0, 0, 0, 5.0, 5.0, 2.0, 0, 157, 0, 155, 0, 0, 2, 0, 0, 0, 0)
				if GetDistanceBetweenCoords(GetEntityCoords(PlayerPedId()), garageCoords2[1], garageCoords2[2], garageCoords2[3], true ) < 5 then
					if mycie == false then
					HelpPromt('Press ~INPUT_CONTEXT~ to ~b~clean ~s~vehicle for ~g~(25$)')
					if IsControlJustPressed(1, Key) then
						TriggerServerEvent('es_better_carwash:checkmoney')
					end
				else
					HelpPromt('Press ~INPUT_CONTEXT~ to ~o~stop')
					if IsControlJustPressed(1, Key) then
						mycie = false
						timer2 = false
						StopParticleFxLooped(particles, 0)
						StopParticleFxLooped(particles2, 0)
						FreezeEntityPosition(GetVehiclePedIsUsing(PlayerPedId()), false)
					end
				end
				end
			end
		end
	end
end)

RegisterNetEvent('es_better_carwash:success')
AddEventHandler('es_better_carwash:success', function (price)
	local car = GetVehiclePedIsUsing(PlayerPedId())
	local coords = GetEntityCoords(PlayerPedId())
	mycie = true
	FreezeEntityPosition(car, true)
	if not HasNamedPtfxAssetLoaded("core") then
		RequestNamedPtfxAsset("core")
		while not HasNamedPtfxAssetLoaded("core") do
			Wait(1)
		end
	end
	UseParticleFxAssetNextCall("core")
	particles  = StartParticleFxLoopedAtCoord("ent_amb_waterfall_splash_p", coords.x, coords.y, coords.z, 0.0, 0.0, 0.0, 1.0, false, false, false, false)
	UseParticleFxAssetNextCall("core")
	particles2  = StartParticleFxLoopedAtCoord("ent_amb_waterfall_splash_p", coords.x + 2, coords.y, coords.z, 0.0, 0.0, 0.0, 1.0, false, false, false, false)
	timer = 15
	timer2 = true
    Citizen.CreateThread(function()
		while timer2 do
            Citizen.Wait(0)
            Citizen.Wait(1000)
            if(timer > 0)then
				timer = timer - 1
			elseif (timer == 0) then
				mycie = false
				WashDecalsFromVehicle(car, 1.0)
				SetVehicleDirtLevel(car)
				FreezeEntityPosition(car, false)
				TriggerEvent("pNotify:SendNotification", {text = "Your vehicle has been cleaned! For 25$", type = "warning", queue = "global", timeout = 5000, layout = "centerLeft"})
				StopParticleFxLooped(particles, 0)
				StopParticleFxLooped(particles2, 0)
				timer2 = false
			end
        end
    end)
	Citizen.CreateThread(function()
        while true do
			Citizen.Wait(0)
			if mycie == true then
				for i = 1, #vehicleWashStation do
				garageCoords3 = vehicleWashStation[i]
				if GetDistanceBetweenCoords(GetEntityCoords(PlayerPedId()), garageCoords3[1], garageCoords3[2], garageCoords3[3], true ) < 4 then
					DrawText3D(garageCoords3[1], garageCoords3[2], garageCoords3[3] + 3, '~b~Cleaning... ~s~Time:~b~ '.. timer ..' ~s~seconds.')
				end
				end
			end
		end
	end)
end)

RegisterNetEvent('es_better_carwash:notenoughmoney')
AddEventHandler('es_better_carwash:notenoughmoney', function (moneyleft)
	TriggerEvent("pNotify:SendNotification", {text = "You don't have enough money! You need:" .. moneyleft .."$ more.", type = "warning", queue = "global", timeout = 5000, layout = "centerLeft"}) 
end)

function DrawText3D(x, y, z, text)
    local onScreen,_x,_y=World3dToScreen2d(x, y, z)
    local px,py,pz=table.unpack(GetGameplayCamCoords())
    
    SetTextScale(0.35, 0.35)
    SetTextFont(4)
    SetTextProportional(1)
    SetTextColour(255, 255, 255, 215)
    SetTextEntry("STRING")
    SetTextCentre(1)
    AddTextComponentString(text)
    DrawText(_x,_y)
end

function HelpPromt(text)
	Citizen.CreateThread(function()
		SetTextComponentFormat("STRING")
		AddTextComponentString(text)
		DisplayHelpTextFromStringLabel(0, state, 0, -1)

	end)
end
-- rope 
-- ESX
ESX               = nil

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0)
	end
end)

RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded', function(xPlayer)
  PlayerData = xPlayer
end)

-- Locals

local cuffed = false
local dict = "mp_arresting"
local anim = "idle"
local flags = 49
local ped = PlayerPedId()
local changed = false
local prevMaleVariation = 0
local prevFemaleVariation = 0
local femaleHash = GetHashKey("mp_f_freemode_01")
local maleHash = GetHashKey("mp_m_freemode_01")
local IsLockpicking    = false

-- Sätt på handklovar
RegisterNetEvent('esx_rope:cuff')
AddEventHandler('esx_rope:cuff', function()
    ped = GetPlayerPed(-1)
    RequestAnimDict(dict)

    while not HasAnimDictLoaded(dict) do
        Citizen.Wait(0)
    end

        if GetEntityModel(ped) == femaleHash then
            prevFemaleVariation = GetPedDrawableVariation(ped, 7)
            SetPedComponentVariation(ped, 7, 25, 0, 0)
        elseif GetEntityModel(ped) == maleHash then
            prevMaleVariation = GetPedDrawableVariation(ped, 7)
            SetPedComponentVariation(ped, 7, 41, 0, 0)
        end

        SetEnablerope(ped, true)
        TaskPlayAnim(ped, dict, anim, 8.0, -8, -1, flags, 0, 0, 0, 0)

    cuffed = not cuffed
    changed = true
end)

-- Ta av handklovar
RegisterNetEvent('esx_rope:uncuff')
AddEventHandler('esx_rope:uncuff', function()
    ped = GetPlayerPed(-1)
    RequestAnimDict(dict)

    while not HasAnimDictLoaded(dict) do
        Citizen.Wait(0)
    end

        ClearPedTasks(ped)
        SetEnablerope(ped, false)
        UncuffPed(ped)

        if GetEntityModel(ped) == femaleHash then -- mp female
            SetPedComponentVariation(ped, 7, prevFemaleVariation, 0, 0)
        elseif GetEntityModel(ped) == maleHash then -- mp male
            SetPedComponentVariation(ped, 7, prevMaleVariation, 0, 0)
        end

    cuffed = not cuffed

    changed = true
end)

RegisterNetEvent('esx_rope:cuffcheck')
AddEventHandler('esx_rope:cuffcheck', function()
  local player, distance = ESX.Game.GetClosestPlayer()
  if distance ~= -1 and distance <= 3.0 then
  				  RequestAnimDict("amb@prop_human_bum_bin@idle_b")
				  TaskPlayAnim(ped,"amb@prop_human_bum_bin@idle_b","idle_d",100.0, 200.0, 0.3, 120, 0.2, 0, 0, 0, 130)
								ESX.ShowNotification('~g~You have used your rope')
				Wait(8000)
		TriggerServerEvent('esx_policejob:rope', GetPlayerServerId(player))
				ESX.ShowNotification('~r~Person dragged/UnDragged')
  else
    ESX.ShowNotification('No players nearby')
	end
end)

RegisterNetEvent('esx_rope:ropecheck')
AddEventHandler('esx_rope:ropecheck', function()
  local player, distance = ESX.Game.GetClosestPlayer()
  if distance ~= -1 and distance <= 3.0 then
  				  RequestAnimDict("amb@prop_human_bum_bin@idle_b")
				  TaskPlayAnim(ped,"amb@prop_human_bum_bin@idle_b","idle_d",100.0, 200.0, 0.3, 120, 0.2, 0, 0, 0, 130)
								ESX.ShowNotification('~g~You have used your rope')
				Wait(8000)
		TriggerServerEvent('esx_policejob:drag', GetPlayerServerId(player))
				ESX.ShowNotification('~r~Person Cuffed/UnCuffed')
  else
    ESX.ShowNotification('No players nearby')
	end
end)

RegisterNetEvent('esx_rope:nyckelcheck')
AddEventHandler('esx_rope:nyckelcheck', function()
	local player, distance = ESX.Game.GetClosestPlayer()
  if distance ~= -1 and distance <= 3.0 then
      TriggerServerEvent('esx_rope:unlocking', GetPlayerServerId(player))
  else
    ESX.ShowNotification('No players nearby')
	end
end)

RegisterNetEvent('esx_rope:unlockingcuffs')
AddEventHandler('esx_rope:unlockingcuffs', function()
  local player, distance = ESX.Game.GetClosestPlayer()
	local ped = GetPlayerPed(-1)

	if IsLockpicking == false then
		ESX.UI.Menu.CloseAll()
		FreezeEntityPosition(player,  true)
		FreezeEntityPosition(ped,  true)

		TaskStartScenarioInPlace(ped, "WORLD_HUMAN_WELDING", 0, true)

		IsLockpicking = true

		Wait(30000)

		IsLockpicking = false

		FreezeEntityPosition(player,  false)
		FreezeEntityPosition(ped,  false)

		ClearPedTasksImmediately(ped)

		TriggerServerEvent('esx_policejob:rope', GetPlayerServerId(player))
		ESX.ShowNotification('rope unlocked')
	else
		ESX.ShowNotification('Your are already lockpicking rope')
	end
end)

-- ??
Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        if not changed then
            ped = PlayerPedId()
            local IsCuffed = IsPedCuffed(ped)
            if IsCuffed and not IsEntityPlayingAnim(PlayerPedId(), dict, anim, 3) then
                Citizen.Wait(0)
                TaskPlayAnim(ped, dict, anim, 8.0, -8, -1, flags, 0, 0, 0, 0)
            end
        else
            changed = false
        end
    end
end)

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        ped = PlayerPedId()
        if cuffed then
        end
    end
end)

-- id
local showPlayerBlips = false
local ignorePlayerNameDistance = false
local playerNamesDist = 15
local displayIDHeight = 1.0 --Height of ID above players head(starts at center body mass)
--Set Default Values for Colors
local red = 255
local green = 255
local blue = 255

function DrawText3D(x,y,z, text) 
    local onScreen,_x,_y=World3dToScreen2d(x,y,z)
    local px,py,pz=table.unpack(GetGameplayCamCoords())
    local dist = GetDistanceBetweenCoords(px,py,pz, x,y,z, 1)

    local scale = (1/dist)*2
    local fov = (1/GetGameplayCamFov())*100
    local scale = scale*fov
    
    if onScreen then
        SetTextScale(0.0*scale, 0.55*scale)
        SetTextFont(0)
        SetTextProportional(1)
        SetTextColour(red, green, blue, 255)
        SetTextDropshadow(0, 0, 0, 0, 255)
        SetTextEdge(2, 0, 0, 0, 150)
        SetTextDropShadow()
        SetTextOutline()
        SetTextEntry("STRING")
        SetTextCentre(1)
        AddTextComponentString(text)
		World3dToScreen2d(x,y,z, 0) --Added Here
        DrawText(_x,_y)
    end
end

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        if IsControlPressed(1, 48) then
            for i=0,99 do
                N_0x31698aa80e0223f8(i)
            end
            for id = 0, 256 do
                if  ((NetworkIsPlayerActive( id )) and GetPlayerPed( id ) ~= GetPlayerPed( -1 )) then
                ped = GetPlayerPed( id )
                blip = GetBlipFromEntity( ped ) 
 
                x1, y1, z1 = table.unpack( GetEntityCoords( GetPlayerPed( -1 ), true ) )
                x2, y2, z2 = table.unpack( GetEntityCoords( GetPlayerPed( id ), true ) )
                distance = math.floor(GetDistanceBetweenCoords(x1,  y1,  z1,  x2,  y2,  z2,  true))

                if(ignorePlayerNameDistance) then
					if NetworkIsPlayerTalking(id) then
						red = 0
						green = 0
						blue = 255
						DrawText3D(x2, y2, z2 + displayIDHeight, GetPlayerServerId(id))
					else
						red = 255
						green = 255
						blue = 255
						DrawText3D(x2, y2, z2 + displayIDHeight, GetPlayerServerId(id))
					end
                end

                if ((distance < playerNamesDist)) then
                    if not (ignorePlayerNameDistance) then
						if NetworkIsPlayerTalking(id) then
							red = 0
							green = 0
							blue = 255
							DrawText3D(x2, y2, z2 + displayIDHeight, GetPlayerServerId(id))
						else
							red = 255
							green = 255
							blue = 255
							DrawText3D(x2, y2, z2 + displayIDHeight, GetPlayerServerId(id))
						end
                    end
                end  
            end
        end
        elseif not IsControlPressed(1, 208) then
            DrawText3D(0, 0, 0, "")
        end
    end
end)

-- tpm
local ESX = nil

Citizen.CreateThread(function()
    while ESX == nil do
        TriggerEvent('esx:getSharedObject', function(obj) 
            ESX = obj 
        end)

        Citizen.Wait(0)
    end
end)

RegisterCommand("tpm", function(source)
    TeleportToWaypoint()
end)

TeleportToWaypoint = function()
    ESX.TriggerServerCallback("esx_marker:fetchUserRank", function(playerRank)
        if playerRank == "admin" or playerRank == "superadmin" or playerRank == "mod" then
            local WaypointHandle = GetFirstBlipInfoId(8)

            if DoesBlipExist(WaypointHandle) then
                local waypointCoords = GetBlipInfoIdCoord(WaypointHandle)

                for height = 1, 1000 do
                    SetPedCoordsKeepVehicle(PlayerPedId(), waypointCoords["x"], waypointCoords["y"], height + 0.0)

                    local foundGround, zPos = GetGroundZFor_3dCoord(waypointCoords["x"], waypointCoords["y"], height + 0.0)

                    if foundGround then
                        SetPedCoordsKeepVehicle(PlayerPedId(), waypointCoords["x"], waypointCoords["y"], height + 0.0)

                        break
                    end

                    Citizen.Wait(5)
                end

                ESX.ShowNotification("Teleported.")
            else
                ESX.ShowNotification("Please place your waypoint.")
            end
        else
            ESX.ShowNotification("You do not have rights to do this.")
        end
    end)
end
-- ren
Citizen.CreateThread(function()
    local angle = 0.0
    local speed = 0.0
    while true do
        Citizen.Wait(0)
        local veh = GetVehiclePedIsUsing(PlayerPedId())
        if DoesEntityExist(veh) then
            local tangle = GetVehicleSteeringAngle(veh)
            if tangle > 10.0 or tangle < -10.0 then
                angle = tangle
            end
            speed = GetEntitySpeed(veh)
            local vehicle = GetVehiclePedIsIn(PlayerPedId(), true)
            if speed < 0.1 and DoesEntityExist(vehicle) and not GetIsTaskActive(PlayerPedId(), 151) and not GetIsVehicleEngineRunning(vehicle) then
                SetVehicleSteeringAngle(GetVehiclePedIsIn(PlayerPedId(), true), angle)
            end
        end
    end
end)
-- hrlp
-- FiveM Heli Cam by mraes
-- Version 1.3 2017-06-12

-- config
local fov_max = 80.0
local fov_min = 10.0 -- max zoom level (smaller fov is more zoom)
local zoomspeed = 2.0 -- camera zoom speed
local speed_lr = 3.0 -- speed by which the camera pans left-right 
local speed_ud = 3.0 -- speed by which the camera pans up-down
local toggle_helicam = 51 -- control id of the button by which to toggle the helicam mode. Default: INPUT_CONTEXT (E)
local toggle_vision = 25 -- control id to toggle vision mode. Default: INPUT_AIM (Right mouse btn)
local toggle_rappel = 154 -- control id to rappel out of the heli. Default: INPUT_DUCK (X)
local toggle_spotlight = 183 -- control id to toggle the front spotlight Default: INPUT_PhoneCameraGrid (G)
local toggle_lock_on = 22 -- control id to lock onto a vehicle with the camera. Default is INPUT_SPRINT (spacebar)

-- Script starts here
local helicam = false
local polmav_hash = GetHashKey("polmav")
local buzzard_hash = GetHashKey("buzzard2")
local fov = (fov_max+fov_min)*0.5
local vision_state = 0 -- 0 is normal, 1 is nightmode, 2 is thermal vision
Citizen.CreateThread(function()
	while true do
        Citizen.Wait(0)
		if IsPlayerInPolmav() then
			local lPed = GetPlayerPed(-1)
			local heli = GetVehiclePedIsIn(lPed)
			
			if IsHeliHighEnough(heli) then
				if IsControlJustPressed(0, toggle_helicam) then -- Toggle Helicam
					PlaySoundFrontend(-1, "SELECT", "HUD_FRONTEND_DEFAULT_SOUNDSET", false)
					helicam = true
				end
				
				if IsControlJustPressed(0, toggle_rappel) then -- Initiate rappel
					Citizen.Trace("try to rappel")
					if GetPedInVehicleSeat(heli, 1) == lPed or GetPedInVehicleSeat(heli, 2) == lPed then
						PlaySoundFrontend(-1, "SELECT", "HUD_FRONTEND_DEFAULT_SOUNDSET", false)
						TaskRappelFromHeli(GetPlayerPed(-1), 1)
					else
						SetNotificationTextEntry( "STRING" )
						AddTextComponentString("~r~Can't rappel from this seat")
						DrawNotification(false, false )
						PlaySoundFrontend(-1, "5_Second_Timer", "DLC_HEISTS_GENERAL_FRONTEND_SOUNDS", false) 
					end
				end
			end
			
			if IsControlJustPressed(0, toggle_spotlight)  and GetPedInVehicleSeat(heli, -1) == lPed then
				spotlight_state = not spotlight_state
				TriggerServerEvent("heli:spotlight", spotlight_state)
				PlaySoundFrontend(-1, "SELECT", "HUD_FRONTEND_DEFAULT_SOUNDSET", false)
			end
			
		end
		
		if helicam then
			SetTimecycleModifier("heliGunCam")
			SetTimecycleModifierStrength(0.3)
			local scaleform = RequestScaleformMovie("HELI_CAM")
			while not HasScaleformMovieLoaded(scaleform) do
				Citizen.Wait(0)
			end
			local lPed = GetPlayerPed(-1)
			local heli = GetVehiclePedIsIn(lPed)
			local cam = CreateCam("DEFAULT_SCRIPTED_FLY_CAMERA", true)
			AttachCamToEntity(cam, heli, 0.0,0.0,-1.5, true)
			SetCamRot(cam, 0.0,0.0,GetEntityHeading(heli))
			SetCamFov(cam, fov)
			RenderScriptCams(true, false, 0, 1, 0)
			PushScaleformMovieFunction(scaleform, "SET_CAM_LOGO")
			PushScaleformMovieFunctionParameterInt(1) -- 0 for nothing, 1 for LSPD logo
			PopScaleformMovieFunctionVoid()
			local locked_on_vehicle = nil
			while helicam and not IsEntityDead(lPed) and (GetVehiclePedIsIn(lPed) == heli) and IsHeliHighEnough(heli) do
				if IsControlJustPressed(0, toggle_helicam) then -- Toggle Helicam
					PlaySoundFrontend(-1, "SELECT", "HUD_FRONTEND_DEFAULT_SOUNDSET", false)
					helicam = false
				end
				if IsControlJustPressed(0, toggle_vision) then
					PlaySoundFrontend(-1, "SELECT", "HUD_FRONTEND_DEFAULT_SOUNDSET", false)
					ChangeVision()
				end

				if locked_on_vehicle then
					if DoesEntityExist(locked_on_vehicle) then
						PointCamAtEntity(cam, locked_on_vehicle, 0.0, 0.0, 0.0, true)
						RenderVehicleInfo(locked_on_vehicle)
						if IsControlJustPressed(0, toggle_lock_on) then
							PlaySoundFrontend(-1, "SELECT", "HUD_FRONTEND_DEFAULT_SOUNDSET", false)
							locked_on_vehicle = nil
							local rot = GetCamRot(cam, 2) -- All this because I can't seem to get the camera unlocked from the entity
							local fov = GetCamFov(cam)
							local old cam = cam
							DestroyCam(old_cam, false)
							cam = CreateCam("DEFAULT_SCRIPTED_FLY_CAMERA", true)
							AttachCamToEntity(cam, heli, 0.0,0.0,-1.5, true)
							SetCamRot(cam, rot, 2)
							SetCamFov(cam, fov)
							RenderScriptCams(true, false, 0, 1, 0)
						end
					else
						locked_on_vehicle = nil -- Cam will auto unlock when entity doesn't exist anyway
					end
				else
					local zoomvalue = (1.0/(fov_max-fov_min))*(fov-fov_min)
					CheckInputRotation(cam, zoomvalue)
					local vehicle_detected = GetVehicleInView(cam)
					if DoesEntityExist(vehicle_detected) then
						RenderVehicleInfo(vehicle_detected)
						if IsControlJustPressed(0, toggle_lock_on) then
							PlaySoundFrontend(-1, "SELECT", "HUD_FRONTEND_DEFAULT_SOUNDSET", false)
							locked_on_vehicle = vehicle_detected
						end
					end
				end
				HandleZoom(cam)
				HideHUDThisFrame()
				PushScaleformMovieFunction(scaleform, "SET_ALT_FOV_HEADING")
				PushScaleformMovieFunctionParameterFloat(GetEntityCoords(heli).z)
				PushScaleformMovieFunctionParameterFloat(zoomvalue)
				PushScaleformMovieFunctionParameterFloat(GetCamRot(cam, 2).z)
				PopScaleformMovieFunctionVoid()
				DrawScaleformMovieFullscreen(scaleform, 255, 255, 255, 255)
				Citizen.Wait(0)
			end
			helicam = false
			ClearTimecycleModifier()
			fov = (fov_max+fov_min)*0.5 -- reset to starting zoom level
			RenderScriptCams(false, false, 0, 1, 0) -- Return to gameplay camera
			SetScaleformMovieAsNoLongerNeeded(scaleform) -- Cleanly release the scaleform
			DestroyCam(cam, false)
			SetNightvision(false)
			SetSeethrough(false)
		end
	end
end)

RegisterNetEvent('heli:spotlight')
AddEventHandler('heli:spotlight', function(serverID, state)
	local heli = GetVehiclePedIsIn(GetPlayerPed(GetPlayerFromServerId(serverID)), false)
	SetVehicleSearchlight(heli, state, false)
	Citizen.Trace("Set heli light state to "..tostring(state).." for serverID: "..serverID)
end)

function IsPlayerInPolmav()
	local lPed = GetPlayerPed(-1)
	local vehicle = GetVehiclePedIsIn(lPed)
	return IsVehicleModel(vehicle, polmav_hash)
	return IsVehicleModel(vehicle, buzzard_hash)
end

function IsHeliHighEnough(heli)
	return GetEntityHeightAboveGround(heli) > 1.5
end

function ChangeVision()
	if vision_state == 0 then
		SetNightvision(true)
		vision_state = 1
	elseif vision_state == 1 then
		SetNightvision(false)
		SetSeethrough(true)
		vision_state = 2
	else
		SetSeethrough(false)
		vision_state = 0
	end
end

function HideHUDThisFrame()
	HideHelpTextThisFrame()
	HideHudAndRadarThisFrame()
	HideHudComponentThisFrame(19) -- weapon wheel
	HideHudComponentThisFrame(1) -- Wanted Stars
	HideHudComponentThisFrame(2) -- Weapon icon
	HideHudComponentThisFrame(3) -- Cash
	HideHudComponentThisFrame(4) -- MP CASH
	HideHudComponentThisFrame(13) -- Cash Change
	HideHudComponentThisFrame(11) -- Floating Help Text
	HideHudComponentThisFrame(12) -- more floating help text
	HideHudComponentThisFrame(15) -- Subtitle Text
	HideHudComponentThisFrame(18) -- Game Stream
end

function CheckInputRotation(cam, zoomvalue)
	local rightAxisX = GetDisabledControlNormal(0, 220)
	local rightAxisY = GetDisabledControlNormal(0, 221)
	local rotation = GetCamRot(cam, 2)
	if rightAxisX ~= 0.0 or rightAxisY ~= 0.0 then
		new_z = rotation.z + rightAxisX*-1.0*(speed_ud)*(zoomvalue+0.1)
		new_x = math.max(math.min(20.0, rotation.x + rightAxisY*-1.0*(speed_lr)*(zoomvalue+0.1)), -89.5) -- Clamping at top (cant see top of heli) and at bottom (doesn't glitch out in -90deg)
		SetCamRot(cam, new_x, 0.0, new_z, 2)
	end
end

function HandleZoom(cam)
	if IsControlJustPressed(0,241) then -- Scrollup
		fov = math.max(fov - zoomspeed, fov_min)
	end
	if IsControlJustPressed(0,242) then
		fov = math.min(fov + zoomspeed, fov_max) -- ScrollDown		
	end
	local current_fov = GetCamFov(cam)
	if math.abs(fov-current_fov) < 0.1 then -- the difference is too small, just set the value directly to avoid unneeded updates to FOV of order 10^-5
		fov = current_fov
	end
	SetCamFov(cam, current_fov + (fov - current_fov)*0.05) -- Smoothing of camera zoom
end

function GetVehicleInView(cam)
	local coords = GetCamCoord(cam)
	local forward_vector = RotAnglesToVec(GetCamRot(cam, 2))
	--DrawLine(coords, coords+(forward_vector*100.0), 255,0,0,255) -- debug line to show LOS of cam
	local rayhandle = CastRayPointToPoint(coords, coords+(forward_vector*200.0), 10, GetVehiclePedIsIn(GetPlayerPed(-1)), 0)
	local _, _, _, _, entityHit = GetRaycastResult(rayhandle)
	if entityHit>0 and IsEntityAVehicle(entityHit) then
		return entityHit
	else
		return nil
	end
end

function RenderVehicleInfo(vehicle)
	local model = GetEntityModel(vehicle)
	local vehname = GetLabelText(GetDisplayNameFromVehicleModel(model))
	local licenseplate = GetVehicleNumberPlateText(vehicle)
	SetTextFont(0)
	SetTextProportional(1)
	SetTextScale(0.0, 0.55)
	SetTextColour(255, 255, 255, 255)
	SetTextDropshadow(0, 0, 0, 0, 255)
	SetTextEdge(1, 0, 0, 0, 255)
	SetTextDropShadow()
	SetTextOutline()
	SetTextEntry("STRING")
	AddTextComponentString("Model: "..vehname.."\nPlate: "..licenseplate)
	DrawText(0.45, 0.9)
end

-- function HandleSpotlight(cam)
-- if IsControlJustPressed(0, toggle_spotlight) then
	-- PlaySoundFrontend(-1, "SELECT", "HUD_FRONTEND_DEFAULT_SOUNDSET", false)
	-- spotlight_state = not spotlight_state
-- end
-- if spotlight_state then
	-- local rotation = GetCamRot(cam, 2)
	-- local forward_vector = RotAnglesToVec(rotation)
	-- local camcoords = GetCamCoord(cam)
	-- DrawSpotLight(camcoords, forward_vector, 255, 255, 255, 300.0, 10.0, 0.0, 2.0, 1.0)
-- end
-- end

function RotAnglesToVec(rot) -- input vector3
	local z = math.rad(rot.z)
	local x = math.rad(rot.x)
	local num = math.abs(math.cos(x))
	return vector3(-math.sin(z)*num, math.cos(z)*num, math.sin(x))
end

-- armour
ESX          = nil

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0)
	end
end)

RegisterNetEvent('esx_armour:armor')
AddEventHandler('esx_armour:armor', function()

  if GetPedArmour(GetPlayerPed(-1)) == 100 then
    ESX.ShowNotification("You have a new bulletproof vest")
  else
    SetPedArmour(GetPlayerPed(-1), 0)
    ClearPedBloodDamage(GetPlayerPed(-1))
    ResetPedVisibleDamage(GetPlayerPed(-1))
    ClearPedLastWeaponDamage(GetPlayerPed(-1))
    ResetPedMovementClipset(GetPlayerPed(-1), 0)

    TriggerServerEvent('esx_armour:armorremove')
    TriggerEvent('skinchanger:getSkin', function(skin)

      if skin.sex == 0 then
        TriggerEvent('skinchanger:loadClothes', skin, {['bproof_1'] = 0,  ['bproof_2'] = 0})
        SetPedArmour(GetPlayerPed(-1), 100)
      else
        TriggerEvent('skinchanger:loadClothes', skin, {['bproof_1'] = 0,  ['bproof_2'] = 0})
        SetPedArmour(GetPlayerPed(-1), 100)
      end

    end)
    ESX.ShowNotification("You used a bulletproof vest")
  end

end)

-- cigratte
ESX = nil

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0)
	end
end)

RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded', function(xPlayer)
  PlayerData = xPlayer
end)

-----

RegisterNetEvent('esx_cigarette:startSmoke')
AddEventHandler('esx_cigarette:startSmoke', function(source)
	SmokeAnimation()
end)

RegisterNetEvent('esx_cigarette2:startSmoke')
AddEventHandler('esx_cigarette2:startSmoke', function(source)
	SmokeAnimation()
end)

function SmokeAnimation()
	local playerPed = GetPlayerPed(-1)
	
	Citizen.CreateThread(function()
        TaskStartScenarioInPlace(playerPed, "WORLD_HUMAN_SMOKING", 0, true)               
	end)
end
