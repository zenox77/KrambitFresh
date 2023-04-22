RegisterNetEvent('qb-jobs:whiteWidowTray')
AddEventHandler('qb-jobs:whiteWidowTray', function()
    TriggerEvent('server-inventory-open', '1', 'trays- White Widow -widow1')
end)

exports["qb-polytarget"]:AddBoxZone("tray_whitewidow_1", vector3(188.62, -242.18, 54.07), 1, 0.6, {
    heading=340,
    --debugPoly=false,
    minZ=50.47,
    maxZ=54.47
})

 -- Tray 1
 exports["qb-interact"]:AddPeekEntryByPolyTarget("tray_whitewidow_1", {{
    event = "qb-jobs:whiteWidowTray",
    id = "tray_whitewidow_1",
    icon = "hand-holding",
    label = "Open",
    parameters = {},
}}, {
    distance = { radius = 2.5 },
});

-- Pick Weed --

Citizen.CreateThread(function()
    exports["qb-polyzone"]:AddBoxZone("white_widow_pick", vector3(164.42, -238.47, 50.06), 5, 4.0, {
        name="white_widow_pick",
        heading=250,
        --debugPoly=false,
        minZ=48.06,
        maxZ=52.06
    })

    exports["qb-polyzone"]:AddBoxZone("white_widow_pick", vector3(170.68, -240.92, 50.06), 5, 4.2, {
        name="white_widow_pick",
        heading=250,
        --debugPoly=false,
        minZ=48.46,
        maxZ=52.46
    })
end)

local whiteWidowPick = false

RegisterNetEvent('qb-polyzone:enter')
AddEventHandler('qb-polyzone:enter', function(name)
    if name == "white_widow_pick" then
        whiteWidowPick = true
        pPickWeed()
        local isEmployed = exports["qb-business"]:IsEmployedAt("white_widow")
        if isEmployed then
            exports['qb-interface']:showInteraction("[E] Pick Weed")
        end
    end
end)

RegisterNetEvent('qb-polyzone:exit')
AddEventHandler('qb-polyzone:exit', function(name)
    if name == "white_widow_pick" then
        whiteWidowPick = false
        exports['qb-interface']:hideInteraction()
    end
end)

function pPickWeed()
	Citizen.CreateThread(function()
        while whiteWidowPick do
            Citizen.Wait(5)
			if IsControlJustReleased(0, 38) then
                local isEmployed = exports["qb-business"]:IsEmployedAt("white_widow")
                if isEmployed then
                    LoadAnim('amb@world_human_gardener_plant@male@base')
                    FreezeEntityPosition(PlayerPedId(),true)
                    Citizen.Wait(500)
                    ClearPedTasksImmediately(PlayerPedId())
                    TaskPlayAnim(PlayerPedId(), "amb@world_human_gardener_plant@male@base", "base", 8.0, -8, -1, 49, 0, 0, 0, 0)
                    local finished = exports['qb-taskbar']:taskBar(10000, 'Picking Weed...')
                    if finished == 100 then
                        FreezeEntityPosition(PlayerPedId(), false)
                        TriggerEvent("player:receiveItem", 'weedoz', math.random(1, 5))
                    else
                        FreezeEntityPosition(PlayerPedId(), false)
                    end
                end
			end
		end
	end)
end

function LoadAnim(animDict)
	RequestAnimDict(animDict)
	while not HasAnimDictLoaded(animDict) do
		Citizen.Wait(10)
	end
end

RegisterNetEvent('qb-jobs:whiteWidowCraft')
AddEventHandler('qb-jobs:whiteWidowCraft', function()
    local isEmp = exports['qb-business']:IsEmployedAt('white_widow')
    if isEmp then
        TriggerEvent('server-inventory-open', '17', 'Craft')
    end
end)

exports["qb-polytarget"]:AddBoxZone("craftWhiteWidow", vector3(164.48, -233.49, 50.06), 1, 2.4, {
    heading=250,
    --debugPoly=false,
    minZ=46.26,
    maxZ=50.26
})

 -- Tray 1
 exports["qb-interact"]:AddPeekEntryByPolyTarget("craftWhiteWidow", {{
    event = "qb-jobs:whiteWidowCraft",
    id = "craftWhiteWidow",
    icon = "circle",
    label = "Craft",
    parameters = {},
}}, {
    distance = { radius = 2.5 },
});

exports["qb-polytarget"]:AddBoxZone("white_widow_stash", vector3(185.49, -242.18, 54.06), 1, 2.8, {
    heading=250,
    --debugPoly=false,
    minZ=50.66,
    maxZ=54.66
})

 -- Tray 1
 exports["qb-interact"]:AddPeekEntryByPolyTarget("white_widow_stash", {{
    event = "qb-jobs:bestBudsStash",
    id = "white_widow_stash",
    icon = "box",
    label = "Stash",
    parameters = {},
}}, {
    distance = { radius = 2.5 },
});

RegisterNetEvent('qb-jobs:bestBudsStash')
AddEventHandler('qb-jobs:bestBudsStash', function()
    if exports['qb-business']:IsEmployedAt('white_widow') then
        TriggerEvent('server-inventory-open', '1', 'stash-white-widow')
    end
end)