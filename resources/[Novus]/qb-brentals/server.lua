RegisterServerEvent('qb-bikerent:hasmoney')
AddEventHandler('qb-bikerent:hasmoney', function(price, vehicle)
    local vehicleName = vehicle
    local user = exports["qb-base"]:getModule("Player"):GetUser(source)
    local money = tonumber(user:getCash())
    if money >= price then
            user:removeMoney(price)
            TriggerClientEvent("qb-bikerent:spawnbike", user.source, vehicleName)
    else
            TriggerClientEvent('DoLongHudText', user.source, 'You dont have enough money on you!', 2)
    end
end)
