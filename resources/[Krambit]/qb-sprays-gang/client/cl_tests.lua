

Citizen.CreateThread(function()
    Citizen.Wait(1000)
    exports["qb-polyzone"]:AddBoxZone("gang_spray_npc", vector3(-276.27, -2419.81, 6.0), 2, 2, {
        name="gang_sprays",
        heading=325,
        --debugPoly=false,
        minZ=5.0,
        maxZ=9.0
    })

    exports["qb-interact"]:AddPeekEntryByPolyTarget("gang_spray_npc", {
    {
        id = "ped_purchase_sprays",
        label = 'Purchase Gang Spray ($10k)',
        icon = "spray-can",
        event = "qb-gang-sprays:openPurchaseMenu",
        parameters = {}
    },
    {
        id = "ped_purchase_sprays1",
        label = 'Purchase Scrubbing Cloth ($50k)',
        icon = "brush",
        event = "qb-gang-sprays:buyScrubbingCloth",
        parameters = {}
    },
    },{
        distance = { radius = 2.5 },
    });
end)

-- AddEventHandler('qb-gang-sprays:openPurchaseMenu',function()
--     TriggerEvent('qb-gang-sprays:openPurchaseMenu')
-- end)