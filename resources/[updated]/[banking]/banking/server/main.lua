ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterServerEvent('banking:checkBlance')
AddEventHandler('banking:checkBlance', function()
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)
    bankBalance = format_int(xPlayer.getAccount('bank').money)
    moneyBalance = format_int(xPlayer.getMoney())
    name = xPlayer.getName()
    TriggerClientEvent('banking:sendBalance', _source, moneyBalance, bankBalance, name)
end)

function format_int(number)
    local i, j, minus, int, fraction = tostring(number):find('([-]?)(%d+)([.]?%d*)')
    int = int:reverse():gsub("(%d%d%d)", "%1,")
    return minus .. int:reverse():gsub("^,", "") .. fraction
end

RegisterServerEvent('banking:deposit')
AddEventHandler('banking:deposit', function(amount)
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)
    if xPlayer.getMoney() >= amount then
        xPlayer.removeMoney(amount)
        xPlayer.addAccountMoney('bank', amount)
    end
end)

RegisterServerEvent('banking:withdraw')
AddEventHandler('banking:withdraw', function(amount)
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)

    if xPlayer.getAccount('bank').money >= amount then
        xPlayer.addMoney(amount)
        xPlayer.removeAccountMoney('bank', amount)
    end
end)


RegisterServerEvent('banking:Deposit100')
AddEventHandler('banking:Deposit100', function()
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)
    if xPlayer.getMoney() >= 100 then
        xPlayer.removeMoney(100)
        xPlayer.addAccountMoney('bank', 100)
    end
end)

RegisterServerEvent('banking:transferMoney')
AddEventHandler('banking:transferMoney', function(amount, identifier)
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)
    local xPlayerTarget = ESX.GetPlayerFromId(identifier)

    if xPlayer then
        if xPlayerTarget then
            if xPlayer.getAccount('bank').money >= amount then
                xPlayer.removeAccountMoney('bank', amount)
                xPlayerTarget.addAccountMoney('bank', amount)
                TriggerClientEvent('banking:sendBalance', xPlayer.source, format_int(xPlayer.getMoney()), format_int(xPlayer.getAccount('bank').money), xPlayer.getName())
                TriggerClientEvent('banking:sendBalance', xPlayerTarget.source, format_int(xPlayerTarget.getMoney()), format_int(xPlayerTarget.getAccount('bank').money), xPlayerTarget.getName())
            end
        end
    end
end)

RegisterServerEvent('banking:Deposit1000')
AddEventHandler('banking:Deposit1000', function()
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)
    if xPlayer.getMoney() >= 1000 then
        xPlayer.removeMoney(1000)
        xPlayer.addAccountMoney('bank', 1000)
    end
end)

RegisterServerEvent('banking:Deposit10000')
AddEventHandler('banking:Deposit10000', function()
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)
    if xPlayer.getMoney() >= 10000 then
        xPlayer.removeMoney(10000)
        xPlayer.addAccountMoney('bank', 10000)
    end
end)

RegisterServerEvent('banking:Withdraw100')
AddEventHandler('banking:Withdraw100', function()
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)

    if xPlayer.getAccount('bank').money >= 100 then
        xPlayer.addMoney(100)
        xPlayer.removeAccountMoney('bank', 100)
    end
end)

RegisterServerEvent('banking:Withdraw1000')
AddEventHandler('banking:Withdraw1000', function()
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)

    if xPlayer.getAccount('bank').money >= 1000 then
        xPlayer.addMoney(1000)
        xPlayer.removeAccountMoney('bank', 1000)
    end
end)

RegisterServerEvent('banking:Withdraw10000')
AddEventHandler('banking:Withdraw10000', function()
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)

    if xPlayer.getAccount('bank').money >= 10000 then
        xPlayer.addMoney(10000)
        xPlayer.removeAccountMoney('bank', 10000)
    end
end)

RegisterServerEvent('banking:CreateSavingsAccount')
AddEventHandler('banking:CreateSavingsAccount', function()
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)

    if xPlayer then
        MySQL.Async.execute('INSERT INTO saving_accounts (id, money) VALUES (@id, @money)', {
            ['@id'] = xPlayer.identifier,
            ['@money']  = 0
        }, function(result)
            TriggerClientEvent('banking:refreshSavings', _source)
            TriggerClientEvent('banking:refreshSavingsBalance', _source)
        end)
    end
end)

RegisterServerEvent('banking:DeleteSavingsAccount')
AddEventHandler('banking:DeleteSavingsAccount', function()
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)

    if xPlayer then
        MySQL.Async.execute('DELETE FROM saving_accounts WHERE id = @id', {
            ['@id'] = xPlayer.identifier
        }, function(result)
            TriggerClientEvent('banking:refreshSavings', _source)
            TriggerClientEvent('banking:refreshSavingsBalance', _source)
        end)
    end
end)

ESX.RegisterServerCallback('banking:hasSavingsAccount', function(source, cb, player) 
    print(player)
    local xPlayer = ESX.GetPlayerFromId(source)
    print(xPlayer)

    if xPlayer then
        MySQL.Async.fetchAll('SELECT COUNT(*) as count FROM saving_accounts WHERE id = @id', {
            ['@id'] = xPlayer.identifier
		}, function(result)
            if tonumber(result[1].count) > 0 then
				cb(true)
			else
				cb(false)
			end
		end)
    end
end)

ESX.RegisterServerCallback('banking:SavingsAccountBalance', function(source, cb, player) 
    local xPlayer = ESX.GetPlayerFromId(source)

    if xPlayer then
        MySQL.Async.fetchAll('SELECT money FROM saving_accounts WHERE id = @id', {
            ['@id'] = xPlayer.identifier
		}, function(result)
            for k,v in pairs(result) do
                cb(format_int(v.money))
            end
		end)
    end
end)

RegisterServerEvent('banking:savingsDeposit')
AddEventHandler('banking:savingsDeposit', function(amount, balance)
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)
  
    if xPlayer.getAccount('bank').money >= amount then
        xPlayer.removeAccountMoney('bank', amount)
        MySQL.Async.execute('UPDATE saving_accounts SET money = @money WHERE id = @id', {
            ['@id'] = xPlayer.identifier,
            ['@money']  = balance + amount
        }, function(result)
            TriggerClientEvent('banking:refreshSavingsBalance', _source)
        end)
    end
end)

RegisterServerEvent('banking:savingsWithdraw')
AddEventHandler('banking:savingsWithdraw', function(amount, balance) 
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)

    MySQL.Async.fetchAll('SELECT money FROM saving_accounts WHERE id = @id', {
            ['@id'] = xPlayer.identifier
		}, function(result)
            for k,v in pairs(result) do
                if v.money >= amount then
                    xPlayer.addAccountMoney('bank', amount)
                    MySQL.Async.execute('UPDATE saving_accounts SET money = @money WHERE id = @id', {
                        ['@id'] = xPlayer.identifier,
                        ['@money']  = tonumber(balance) - amount
                    }, function(result)
                        TriggerClientEvent('banking:refreshSavingsBalance', _source)
                    end)
                end
            end
		end)
end)

ESX.RegisterServerCallback('banking:SavingsAccountBalanceNoFormat', function(source, cb, player) 
    local xPlayer = ESX.GetPlayerFromId(source)

    if xPlayer then
        MySQL.Async.fetchAll('SELECT money FROM saving_accounts WHERE id = @id', {
            ['@id'] = xPlayer.identifier
		}, function(result)
            for k,v in pairs(result) do
                cb(v.money)
            end
		end)
    end
end)

RegisterServerEvent('banking:GiveBankCard')
AddEventHandler('banking:GiveBankCard', function()
    local xPlayer = ESX.GetPlayerFromId(source)

    if xPlayer then
        if xPlayer.getInventoryItem('bankcard').count < 1 then
            xPlayer.addInventoryItem('bankcard', 1)
        end
    end
end)

RegisterServerEvent('banking:CreateNewPin')
AddEventHandler('banking:CreateNewPin', function(newPin)
    local xPlayer = ESX.GetPlayerFromId(source)

    MySQL.Async.execute('UPDATE users SET pin = @pin WHERE identifier = @identifier', {
        ['@identifier'] = xPlayer.identifier,
        ['@pin']  = tonumber(newPin)
    })
end)

ESX.RegisterServerCallback('banking:checkPin', function(source, cb) 
    local xPlayer = ESX.GetPlayerFromId(source)

    if xPlayer then
        MySQL.Async.fetchAll('SELECT pin FROM users WHERE identifier = @identifier', {
            ['@identifier'] = xPlayer.identifier
		}, function(result)
            for k,v in pairs(result) do
                cb(v.pin)
            end
		end)
    end
end)

ESX.RegisterServerCallback('banking:hasBankCard', function(source, cb) 
    local xPlayer = ESX.GetPlayerFromId(source)

    if xPlayer then
        if xPlayer.getInventoryItem('bankcard').count == 1 then
            cb(true)
        else
            cb(false)
        end
    end
end)