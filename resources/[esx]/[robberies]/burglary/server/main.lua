local ESX = nil

TriggerEvent("esx:getSharedObject", function(library) 
	ESX = library 
end)

RegisterServerEvent("slizzarn-burglary:lockDoor") 
AddEventHandler("slizzarn-burglary:lockDoor", function(house, lockStatus)
	TriggerClientEvent("slizzarn-burglary:lockDoor", -1, house, lockStatus)
	Wait(540000)
	TriggerClientEvent("slizzarn-burglary:Reset", -1)
end)

RegisterServerEvent("slizzarn-burglary:search")
AddEventHandler("slizzarn-burglary:search", function(house, place)
	TriggerClientEvent("slizzarn-burglary:search", -1, house, place)
end)

RegisterServerEvent("slizzarn-burglary:giveItem")
AddEventHandler("slizzarn-burglary:giveItem", function(item, amount)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.addInventoryItem(item, amount)
end)

RegisterServerEvent("slizzarn-burglary:sellallItems")
AddEventHandler("slizzarn-burglary:sellallItems", function()
	local player = ESX.GetPlayerFromId(source)
	local price = 0
	for k,v in pairs(Config["items"]) do
		local inv = player.getInventoryItem(v["item"])
		if inv["count"] > 0 then
			price = price + (v["price"] * inv["count"])
			player.removeInventoryItem(v["item"], inv["count"])
		end
	end
	xPlayer.addMoney(price)
	TriggerClientEvent("esx:showNotification", source, Strings["sold_all"]:format(price))
end)