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
   
ESX = nil
local PlayerData              = {}

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0)
		PlayerData = ESX.GetPlayerData()
	end
end)

RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded', function(xPlayer)
    PlayerData = xPlayer
end)

RegisterNetEvent('esx:setJob')
AddEventHandler('esx:setJob', function(job)
  PlayerData.job = job
end)

function hintToDisplay(text)
	SetTextComponentFormat("STRING")
	AddTextComponentString(text)
	DisplayHelpTextFromStringLabel(0, 0, 1, -1)
end

local blips = {
      {title="Black Dealer", colour=20, id=59, x = 2432.59, y = 4966.35, z = 42.35}
}
 
      
Citizen.CreateThread(function()
    for _, info in pairs(blips) do
      info.blip = AddBlipForCoord(info.x, info.y, info.z)
      SetBlipSprite(info.blip, info.id)
      SetBlipDisplay(info.blip, 4)
      SetBlipScale(info.blip, 1.0)
      SetBlipColour(info.blip, info.colour)
      SetBlipAsShortRange(info.blip, true)
      BeginTextCommandSetBlipName("STRING")
      AddTextComponentString(info.title)
      EndTextCommandSetBlipName(info.blip)
    end
end)
  
local gym = {
    {x = 2432.59, y = 4966.35, z = 42.35}
}

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        for k in pairs(gym) do
            DrawMarker(21, gym[k].x, gym[k].y, gym[k].z, 0, 0, 0, 0, 0, 0, 0.301, 0.301, 0.3001, 0, 153, 255, 255, 0, 0, 0, 0)
        end
    end
end)

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)

        for k in pairs(gym) do
		
            local plyCoords = GetEntityCoords(GetPlayerPed(-1), false)
            local dist = Vdist(plyCoords.x, plyCoords.y, plyCoords.z, gym[k].x, gym[k].y, gym[k].z)

            if dist <= 0.5 then
				hintToDisplay('Press ~INPUT_CONTEXT~ to open ~b~BlackMart~w~')
				
				if IsControlJustPressed(0, Keys['E']) then
					OpenPawnMenu()
				end			
            end
        end
    end
end)

function OpenPawnMenu()
    ESX.UI.Menu.CloseAll()

    ESX.UI.Menu.Open(
        'default', GetCurrentResourceName(), 'pawn_menu',
        {
            title    = 'BlackMarket',
            elements = {
				{label = 'Buy', value = 'shop'},
				{label = 'Sell', value = 'sell'},
            }
        },
        function(data, menu)
            if data.current.value == 'shop' then
				OpenPawnShopMenu()
            elseif data.current.value == 'sell' then
				OpenSellMenu()
            end
        end,
        function(data, menu)
            menu.close()
        end
    )
end

function OpenPawnShopMenu()
    ESX.UI.Menu.CloseAll()

    ESX.UI.Menu.Open(
        'default', GetCurrentResourceName(), 'pawn_shop_menu',
        {
            title    = 'Buy Items',
            elements = {
			{label = 'LockPick ($1000)', value = 'lockpick'},
			{label = 'Net Cracker ($5000)', value = 'net_cracker'},
			{label = 'Thermite Bomb ($3500)', value = 'thermite'},
            {label = 'Pendrive  ($40000)', value = 'pendrive'},

             {label = "Rope", value = "rope"},
             {label = "Handcuffs", value = "handcuffs"},
             {label = "Body Armour", value = "armor"},
             {label = "Head Bag", value = "headbag"},




            }
        },
        function(data, menu)
            if data.current.value == 'lockpick' then
				TriggerServerEvent('esx_pawnshop:buylockpick')
			elseif data.current.value == 'net_cracker' then
				TriggerServerEvent('esx_pawnshop:buynet_cracker')

                elseif data.current.value == 'rope' then
                TriggerServerEvent('esx_pawnshop:buyrope')
                elseif data.current.value == 'handcuffs' then
                TriggerServerEvent('esx_pawnshop:buyhandcuffs')
                elseif data.current.value == 'armor' then
                TriggerServerEvent('esx_pawnshop:buyarmor')
                elseif data.current.value == 'headbag' then
                TriggerServerEvent('esx_pawnshop:buyheadbag')
                
			elseif data.current.value == 'thermite' then
				TriggerServerEvent('esx_pawnshop:buythermite')
            end
        end,
        function(data, menu)
            menu.close()
        end
    )
end

function OpenSellMenu()
    ESX.UI.Menu.CloseAll()

    ESX.UI.Menu.Open(
        'default', GetCurrentResourceName(), 'pawn_sell_menu',
        {
            title    = 'Sell Items',
            elements = {
                {label = 'Ring ($550)', value = 'ring'},
                {label = 'Gold Bar ($1000)', value = 'goldbar'},
                {label = 'Jewlery ($700)', value = 'jewlery'},
                {label = 'Beer ($350)', value = 'beer'},
                {label = 'Repair Kit ($350)', value = 'fixkit'},
                {label = 'Laptop ($1500)', value = 'laptop'},
                {label = 'IphoneX ($1500)', value = 'iphonex'},
                {label = 'Handcuff ($500)', value = 'handcuff'},

            }
        },
        function(data, menu)
            if data.current.value == 'ring' then
				TriggerServerEvent('esx_pawnshop:sellring')
            elseif data.current.value == 'goldbar' then
				TriggerServerEvent('esx_pawnshop:sellgoldbar')
            elseif data.current.value == 'jewlery' then
				TriggerServerEvent('esx_pawnshop:selljewlery')
            elseif data.current.value == 'beer' then
                TriggerServerEvent('esx_pawnshop:sellbeer')
             elseif data.current.value == 'fixkit' then
				TriggerServerEvent('esx_pawnshop:sellfixkit')
			elseif data.current.value == 'laptop' then
				TriggerServerEvent('esx_pawnshop:selllaptop')
elseif data.current.value == 'iphonex' then
TriggerServerEvent('esx_pawnshop:selliphonex')
elseif data.current.value == 'handcuff' then
TriggerServerEvent('esx_pawnshop:sellhandcuff')
     end
        end,
        function(data, menu)
            menu.close()
        end
    )
end





