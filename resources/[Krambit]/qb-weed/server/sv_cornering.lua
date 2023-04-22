RPC.register("qb-weed:startCorner", function(pSource, pCoords)
    return true
end)

RPC.register("qb-weed:cornerPed", function(pSource, pCoords, pPed, pVehicle)
    TriggerClientEvent("qb-weed:cornerPed", pSource, pPed, pCoords, pVehicle)
    return true
end)

RPC.register("qb-weed:cornerSyncHandoff", function(pSource, pCoords, pPed)
    TriggerClientEvent("qb-weed:cornerSyncHandoff", pSource, pPed)
    return true
end)

RPC.register("qb-weed:cornerSale", function(pSource, pCoords, pNetId, CurrentCornerZone, baggieInfo)
    local user = exports["qb-base"]:getModule("Player"):GetUser(pSource)
    TriggerClientEvent("inventory:removeItem", -1, "weedbaggie", 1)
        if math.random (1,5) < 3 then
            user:addMoney(math.random(450,2500))
        end
    return true
end)

RPC.register("qb-weed:prepareBaggies", function(pSource, pInfo)
    TriggerClientEvent("inventory:removeItem", -1, "emptybaggies", CornerConfig.BaggiesPerBrick)
    return true
end)

RPC.register("qb-weed:stopCorner", function(pSource)
    TriggerLatentClientEvent('qb-weed:cleanCornerPeds',pSource)
    return false
end)