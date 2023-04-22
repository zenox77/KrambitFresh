local hmm = vehicleBaseRepairCost

RegisterServerEvent('qb-bennys:attemptPurchase')
AddEventHandler('qb-bennys:attemptPurchase', function(cheap, type, upgradeLevel)
	local src = source
	local user = exports["qb-base"]:getModule("Player"):GetUser(src)
    if type == "repair" then
        if user:getCash() >= hmm then
            user:removeMoney(hmm)
            TriggerClientEvent('qb-bennys:purchaseSuccessful', src)

            exports["qb-log"]:AddLog("Bennys", 
                src, 
                "Repair", 
                { amount = tostring(hmm) })
        else
            TriggerClientEvent('qb-bennys:purchaseFailed', src)
        end
    elseif type == "performance" then
        if user:getCash() >= vehicleCustomisationPrices[type].prices[upgradeLevel] then
            TriggerClientEvent('qb-bennys:purchaseSuccessful', src)
            user:removeMoney(vehicleCustomisationPrices[type].prices[upgradeLevel])

            exports["qb-log"]:AddLog("Bennys", 
                src, 
                "Performance", 
                { amount = tostring(vehicleCustomisationPrices[type].prices[upgradeLevel]) })
        else
            TriggerClientEvent('qb-bennys:purchaseFailed', src)
        end
    else
        if user:getCash() >= vehicleCustomisationPrices[type].price then
            TriggerClientEvent('qb-bennys:purchaseSuccessful', src)
            user:removeMoney(vehicleCustomisationPrices[type].price)

            exports["qb-log"]:AddLog("Bennys", 
                src, 
                "Other", 
                { type = tostring(type), amount = tostring(vehicleCustomisationPrices[type].price) })
        else
            TriggerClientEvent('qb-bennys:purchaseFailed', src)
        end
    end
end)

RegisterServerEvent('qb-bennys:updateRepairCost')
AddEventHandler('qb-bennys:updateRepairCost', function(cost)
    hmm = cost
end)

RegisterServerEvent('qb-bennys:repairciv')
AddEventHandler('qb-bennys:repairciv', function(amount)
    local src = source
    local user = exports["qb-base"]:getModule("Player"):GetUser(src)
    if (user:getCash() >= amount) then
        user:removeMoney(amount)
        TriggerClientEvent("bennys:civ:repair:cl", src)

        exports["qb-log"]:AddLog("Bennys", 
            src, 
            "Repair Civ", 
            { amount = tostring(amount) })
    end
end)

RegisterServerEvent('qb-bennys:payPublicBennys')
AddEventHandler('qb-bennys:payPublicBennys', function()
    local src = source
    local user = exports["qb-base"]:getModule("Player"):GetUser(src)

    if user:getCash() >= 250 then
        user:removeMoney(250)
        TriggerClientEvent('qb-bennys:repairVeh', src)
        TriggerEvent('DoLongHudText', "You Have Been Charged For: $750!", 2)
    else
        TriggerClientEvent('DoLongHudText', src, 'You need $750', 2)
    end
end)
