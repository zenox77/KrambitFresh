

RegisterServerEvent('qb-carrent:hasmoney')
AddEventHandler('qb-carrent:hasmoney', function(price, vehicle)
    local vehicleName = vehicle
    local user = exports["qb-base"]:getModule("Player"):GetUser(source)
    local money = tonumber(user:getCash())
    if money >= price then
            user:removeMoney(price)
            TriggerClientEvent("qb-carrent:spawncar", user.source, vehicleName)
    else
            TriggerClientEvent('DoLongHudText', user.source, 'You dont have enough money on you!', 2)
    end
end)






