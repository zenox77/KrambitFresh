RegisterNUICallback('getDiamondSportsEvents', function(data,cb)
    local returnEvents = RPC.execute("qb-phone:getDiamondSportsEvents")
    SendNUIMessage({
        openSection = "diamondSportsAppend",
        diamondSports = returnEvents,
        canMakeDiamondEvents = exports['qb-business']:IsEmployedAt('the_diamond')
    })
end)

RegisterNUICallback('submitNewEventDiamondSports', function(data, cb)
    RPC.execute("qb-phone:submitNewEventDiamondSports", data.pEventName, data.pEventLocation, data.pTimeZone, data.pEventTimeHr, data.pEventTimeMin, data.pEventDate)
end)

RegisterNUICallback('deleteDiamondEvent', function(data, cb)
    RPC.execute("qb-phone:deleteDiamondEvent", data.diamondEventID)
end)