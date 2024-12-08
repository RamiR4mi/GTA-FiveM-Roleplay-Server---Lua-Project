ESX = nil

TriggerEvent('esx:getSharedObject', function(obj)
	ESX = obj
end)

-- Buy Items
RegisterServerEvent('esx_pawnshop:buylockpick')
AddEventHandler('esx_pawnshop:buylockpick', function()
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	
	if(xPlayer.getMoney() >= 1000) then
		xPlayer.removeMoney(1000)
		
		xPlayer.addInventoryItem('lockpick', 1)
		
		notification("You bought one  ~g~ Lock Pick")
	else
		notification("You do not have enough ~r~Money")
	end		
end)

RegisterServerEvent('esx_pawnshop:buynet_cracker')
AddEventHandler('esx_pawnshop:buynet_cracker', function()
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	
	if(xPlayer.getMoney() >= 5000) then
		xPlayer.removeMoney(5000)
		
		xPlayer.addInventoryItem('net_cracker', 1)
		
		notification("You bought one  ~g~ Net Cracker")
	else
		notification("You do not have enough ~r~Money")
	end		
end)

RegisterServerEvent('esx_pawnshop:buythermite')
AddEventHandler('esx_pawnshop:buythermite', function()
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	
	if(xPlayer.getMoney() >= 3500) then
		xPlayer.removeMoney(3500)
		
		xPlayer.addInventoryItem('thermite', 1)
		
		notification("You bought one  ~g~ Thermite")
	else
		notification("You do not have enough ~r~Money")
	end		
end)


RegisterServerEvent('esx_pawnshop:buypendrive')
AddEventHandler('esx_pawnshop:buypendrive', function()
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	
	if(xPlayer.getMoney() >= 40000) then
		xPlayer.removeMoney(40000)
		
		xPlayer.addInventoryItem('pendrive', 1)
		
		notification("You bought one  ~g~ Pendrive")
	else
		notification("You do not have enough ~r~Money")
	end		
end)

RegisterServerEvent('esx_pawnshop:buyrope')
AddEventHandler('esx_pawnshop:buyrope', function()
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	
	if(xPlayer.getMoney() >= 500) then
		xPlayer.removeMoney(500)
		
		xPlayer.addInventoryItem('rope', 1)
		
		notification("You bought one  ~g~ rope")
	else
		notification("You do not have enough ~r~Money")
	end		
end)

RegisterServerEvent('esx_pawnshop:buyhandcuffs')
AddEventHandler('esx_pawnshop:buyhandcuffs', function()
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	
	if(xPlayer.getMoney() >= 1000) then
		xPlayer.removeMoney(1000)
		
		xPlayer.addInventoryItem('handcuffs', 1)
		
		notification("You bought one  ~g~ handcuffs")
	else
		notification("You do not have enough ~r~Money")
	end		
end)

RegisterServerEvent('esx_pawnshop:buyarmor')
AddEventHandler('esx_pawnshop:buyarmor', function()
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	
	if(xPlayer.getMoney() >= 3000) then
		xPlayer.removeMoney(3000)
	if	xPlayer.getInventoryItem('armor').count >= 1 then
	 	notification("You cannot bought more armor")
	 else
			xPlayer.addInventoryItem('armor', 1)
	end	
		notification("You bought one  ~g~ armor")
	else
		notification("You do not have enough ~r~Money")
	end		
end)

RegisterServerEvent('esx_pawnshop:buyheadbag')
AddEventHandler('esx_pawnshop:buyheadbag', function()
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	
	if(xPlayer.getMoney() >= 500) then
		xPlayer.removeMoney(500)
	 if	xPlayer.getInventoryItem('headbag').count >= 1 then
	 	notification("You cannot bought more headbag")
	 else
		xPlayer.addInventoryItem('headbag', 1)
	end
		notification("You bought one  ~g~ headbag")
	else
		notification("You do not have enough ~r~Money")
	end		
end)

----- Sell Items
RegisterServerEvent('esx_pawnshop:sellring')
AddEventHandler('esx_pawnshop:sellring', function()
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
    local ring = 0

	for i=1, #xPlayer.inventory, 1 do
		local item = xPlayer.inventory[i]

		if item.name == "ring" then
			ring = item.count
		end
	end
    
    if ring > 0 then
        xPlayer.removeInventoryItem('ring', 1)
        xPlayer.addMoney(550)
    else 
        TriggerClientEvent('esx:showNotification', xPlayer.source, 'You do not have a gold ring to sell!')
    end
end)




RegisterServerEvent('esx_pawnshop:sellgoldbar')
AddEventHandler('esx_pawnshop:sellgoldbar', function()
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
    local kamera = 0

	for i=1, #xPlayer.inventory, 1 do
		local item = xPlayer.inventory[i]

		if item.name == "goldbar" then
			kamera = item.count
		end
	end
    
    if kamera > 0 then
        xPlayer.removeInventoryItem('goldbar', 1)
        xPlayer.addMoney(1000)
    else 
        TriggerClientEvent('esx:showNotification', xPlayer.source, 'You do not have a gold bar to sell!')
    end
end)

RegisterServerEvent('esx_pawnshop:selljewlery')
AddEventHandler('esx_pawnshop:selljewlery', function()
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
    local armband = 0

	for i=1, #xPlayer.inventory, 1 do
		local item = xPlayer.inventory[i]

		if item.name == "jewlery" then
			armband = item.count
		end
	end
    
    if armband > 0 then
        xPlayer.removeInventoryItem('jewlery', 1)
        xPlayer.addMoney(700)
    else 
        TriggerClientEvent('esx:showNotification', xPlayer.source, 'You do not have a Jewlery to sell!')
    end
end)

RegisterServerEvent('esx_pawnshop:sellbeer')
AddEventHandler('esx_pawnshop:sellbeer', function()
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
    local armband = 0

	for i=1, #xPlayer.inventory, 1 do
		local item = xPlayer.inventory[i]

		if item.name == "beer" then
			armband = item.count
		end
	end
    
    if armband > 0 then
        xPlayer.removeInventoryItem('beer', 1)
        xPlayer.addMoney(350)
    else 
        TriggerClientEvent('esx:showNotification', xPlayer.source, 'You do not have a beer to sell!')
    end
end)


RegisterServerEvent('esx_pawnshop:sellfixkit')
AddEventHandler('esx_pawnshop:sellfixkit', function()
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
    local armband = 0

	for i=1, #xPlayer.inventory, 1 do
		local item = xPlayer.inventory[i]

		if item.name == "fixkit" then
			armband = item.count
		end
	end
    
    if armband > 0 then
        xPlayer.removeInventoryItem('fixkit', 1)
        xPlayer.addMoney(350)
    else 
        TriggerClientEvent('esx:showNotification', xPlayer.source, 'You do not have a fixkit to sell!')
    end
end)

RegisterServerEvent('esx_pawnshop:selllaptop')
AddEventHandler('esx_pawnshop:selllaptop', function()
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
    local armband = 0

	for i=1, #xPlayer.inventory, 1 do
		local item = xPlayer.inventory[i]

		if item.name == "laptop" then
			armband = item.count
		end
	end
    
    if armband > 0 then
        xPlayer.removeInventoryItem('laptop', 1)
        xPlayer.addMoney(1500)
    else 
        TriggerClientEvent('esx:showNotification', xPlayer.source, 'You do not have a laptop to sell!')
    end
end)


RegisterServerEvent('esx_pawnshop:selliphonex')
AddEventHandler('esx_pawnshop:selliphonex', function()
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
    local armband = 0

	for i=1, #xPlayer.inventory, 1 do
		local item = xPlayer.inventory[i]

		if item.name == "iphonex" then
			armband = item.count
		end
	end
    
    if armband > 0 then
        xPlayer.removeInventoryItem('iphonex', 1)
        xPlayer.addMoney(1500)
    else 
        TriggerClientEvent('esx:showNotification', xPlayer.source, 'You do not have a iphonex to sell!')
    end
end)



RegisterServerEvent('esx_pawnshop:sellhandcuff')
AddEventHandler('esx_pawnshop:sellhandcuff', function()
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
    local armband = 0

	for i=1, #xPlayer.inventory, 1 do
		local item = xPlayer.inventory[i]

		if item.name == "handcuff" then
			armband = item.count
		end
	end
    
    if armband > 0 then
        xPlayer.removeInventoryItem('handcuff', 1)
        xPlayer.addMoney(500)
    else 
        TriggerClientEvent('esx:showNotification', xPlayer.source, 'You do not have a handcuff to sell!')
    end
end)


function notification(text)
	TriggerClientEvent('esx:showNotification', source, text)
end