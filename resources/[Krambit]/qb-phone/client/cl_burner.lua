RegisterCommand("openBurner", function()
    openGui(true, "868")
end)
RegisterNetEvent('qb-phone:useBurner', function(pCid)
    openGui(true, tonumber(pCid))
end)

RegisterNUICallback("getRecentCallsByCid", function(data, cb)
    local recentCalls = RPC.execute("qb-phone:getRecentCallsByCid", tonumber(data.cid))
    SendNUIMessage({
        openSection = "callHistory",
        callHistory = recentCalls
      })
end)

RegisterNUICallback("getTextsByCid", function(data, cb)
    loadSMS(tonumber(data.cid))
end)