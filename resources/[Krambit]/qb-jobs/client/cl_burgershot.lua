RegisterNetEvent('qb-jobs:burgershot-warmer')
AddEventHandler('qb-jobs:burgershot-warmer', function()
    local isEmployed = exports["qb-business"]:IsEmployedAt("burger_shot")
    if isEmployed then
        TriggerEvent("server-inventory-open", "1", "storage-burger_warmer")
        Wait(1000)
    else
        TriggerEvent('DoLongHudText', 'You do not work here !',2)
    end
end)

RegisterNetEvent("qb-burgershot:startfryer")
AddEventHandler("qb-burgershot:startfryer", function()
    local isEmployed = exports["qb-business"]:IsEmployedAt("burger_shot")
    if isEmployed then
        if exports['qb-inventory']:hasEnoughOfItem('potato', 1) then
            local dict = 'anim@amb@business@coc@coc_unpack_cut_left@'
            LoadDict(dict)
            FreezeEntityPosition(GetPlayerPed(-1),true)
            TaskPlayAnim(GetPlayerPed(-1), dict, "coke_cut_v1_coccutter", 3.0, -8, -1, 63, 0, 0, 0, 0 )
            SetEntityHeading(GetPlayerPed(-1), 124.72439575195)
            local finished = exports['qb-taskbar']:taskBar(10000, 'Dropping Fries')
            if (finished == 100) then
                TriggerEvent('player:receiveItem', 'fries', 1)
                TriggerEvent('inventory:removeItem', 'potato', 1)
                FreezeEntityPosition(GetPlayerPed(-1),false)
                ClearPedTasks(GetPlayerPed(-1))
                Citizen.Wait(1000)
            end
        else
            TriggerEvent('DoLongHudText', "You need more patato's (Required Amount: x1)", 2)
        end
    else
        TriggerEvent('DoLongHudText', 'You dont work here', 2)
    end
end)

RegisterNetEvent("qb-burgershot:makeshake")
AddEventHandler("qb-burgershot:makeshake", function()
    local isEmployed = exports["qb-business"]:IsEmployedAt("burger_shot")
    if isEmployed then
        if exports['qb-inventory']:hasEnoughOfItem('milk', 1) then
        SetEntityHeading(GetPlayerPed(-1), 121.88976287842)
        TriggerEvent("animation:PlayAnimation","browse")
        FreezeEntityPosition(GetPlayerPed(-1),true)
        local finished = exports['qb-taskbar']:taskBar(10000, 'Making Shake')
        if (finished == 100) then
            TriggerEvent('inventory:removeItem', 'milk', 1)
            TriggerEvent('player:receiveItem', 'mshake', 1)
            FreezeEntityPosition(GetPlayerPed(-1),false)
            ClearPedTasks(GetPlayerPed(-1))
            Citizen.Wait(1000)
            TriggerEvent("animation:PlayAnimation","layspike")
            Citizen.Wait(1000)
        else
            FreezeEntityPosition(GetPlayerPed(-1),false)
        end
    else
        TriggerEvent('DoLongHudText',"You need milk (Required Amount: x1)",2)
    end
else
    TriggerEvent('DoLongHudText', 'You dont work here', 2)
end
end)


RegisterNetEvent("qb-burgershot:soft-drink")
AddEventHandler("qb-burgershot:soft-drink", function()
    local isEmployed = exports["qb-business"]:IsEmployedAt("burger_shot")
    if isEmployed then   
        if exports['qb-inventory']:hasEnoughOfItem('burgershot_cup', 1) then
        SetEntityHeading(GetPlayerPed(-1), 121.88976287842)
        TriggerEvent("animation:PlayAnimation","browse")
        FreezeEntityPosition(GetPlayerPed(-1),true)
        local finished = exports['qb-taskbar']:taskBar(10000, 'Making Soft Drink')
        if (finished == 100) then
            TriggerEvent('player:receiveItem', 'softdrink', 1)
            TriggerEvent('inventory:removeItem', 'burgershot_cup', 1)
            FreezeEntityPosition(GetPlayerPed(-1),false)
            ClearPedTasks(GetPlayerPed(-1))
            Citizen.Wait(1000)
        else
            FreezeEntityPosition(GetPlayerPed(-1),false)
        end
    else
        TriggerEvent('DoLongHudText',"Required Ingridients: 1x Sugar | 1x Empty Burgershot Cup",2)
    end
else
    TriggerEvent('DoLongHudText', 'You dont work here', 2)
end
end)

RegisterNetEvent("qb-burgershot:getcola")
AddEventHandler("qb-burgershot:getcola", function()
    local isEmployed = exports["qb-business"]:IsEmployedAt("burger_shot")
    if isEmployed then  
        if exports['qb-inventory']:hasEnoughOfItem('sugarbs', 1) then  
        SetEntityHeading(GetPlayerPed(-1), 121.88976287842)
        TriggerEvent("animation:PlayAnimation","browse")
        FreezeEntityPosition(GetPlayerPed(-1),true)
        local finished = exports['qb-taskbar']:taskBar(10000, 'Pouring Cola')
        if (finished == 100) then
            TriggerEvent('player:receiveItem', 'cola', 1)
            TriggerEvent('inventory:removeItem', 'sugarbs', 1)
            FreezeEntityPosition(GetPlayerPed(-1),false)
            ClearPedTasks(GetPlayerPed(-1))
            Citizen.Wait(1000)
            TriggerEvent("animation:PlayAnimation","layspike")
            Citizen.Wait(1000)
        else
            FreezeEntityPosition(GetPlayerPed(-1),false)
        end
    else
        TriggerEvent('DoLongHudText',"You need more sugar (Required Amount: x1)",2)
    end
else
    TriggerEvent('DoLongHudText', 'You dont work here', 2)
end
end)

RegisterNetEvent('qb-burgershot:get_water')
AddEventHandler('qb-burgershot:get_water', function()
    local isEmployed = exports["qb-business"]:IsEmployedAt("burger_shot")
    if isEmployed then
        SetEntityHeading(GetPlayerPed(-1), 121.88976287842)
        TriggerEvent("animation:PlayAnimation","browse")
        FreezeEntityPosition(GetPlayerPed(-1),true)
        local finished = exports['qb-taskbar']:taskBar(10000, 'Pouring Water')
        if (finished == 100) then
            TriggerEvent('player:receiveItem', 'water', 1)
            FreezeEntityPosition(GetPlayerPed(-1),false)
            ClearPedTasks(GetPlayerPed(-1))
        else
            FreezeEntityPosition(GetPlayerPed(-1),false)
        end
    end
end)

function LoadDict(dict)
    RequestAnimDict(dict)
	while not HasAnimDictLoaded(dict) do
	  	Citizen.Wait(10)
    end
end

--// Counter

RegisterNetEvent('qb-burgershot:counter')
AddEventHandler('qb-burgershot:counter', function()
    local isEmployed = exports["qb-business"]:IsEmployedAt("burger_shot")
    if isEmployed then
		TriggerEvent("server-inventory-open", "1", "counter-burger_shot")
		Wait(1000)
else
    TriggerEvent('DoLongHudText', 'You do not work here !',2)
    end
end)

--// Store

RegisterNetEvent('qb-burgershot:store')
AddEventHandler('qb-burgershot:store', function()
    local isEmployed = exports["qb-business"]:IsEmployedAt("burger_shot")
    if isEmployed then
        TriggerEvent("server-inventory-open", "45", "Shop")
		Wait(1000)
    else
        TriggerEvent('DoLongHudText', 'You do not work here !',2)
        end
    end)

--// Make Burgers

RegisterNetEvent('qb-civjobs:burgershot-heartstopper')
AddEventHandler('qb-civjobs:burgershot-heartstopper', function()
    local ped = PlayerPedId()
    local isEmployed = exports["qb-business"]:IsEmployedAt("burger_shot")
    if isEmployed then
        if exports['qb-inventory']:hasEnoughOfItem('burgershotpatty', 2) and exports['qb-inventory']:hasEnoughOfItem('lettuce', 1) and exports['qb-inventory']:hasEnoughOfItem('hamburgerbuns', 1) and exports['qb-inventory']:hasEnoughOfItem('tomato', 1) and exports['qb-inventory']:hasEnoughOfItem('cheese', 1) then
            FreezeEntityPosition(ped, true)
            ExecuteCommand('e cokecut')
            local heartstopper = exports['qb-taskbar']:taskBar(5000, 'Cooking Heartstopper')
            if (heartstopper == 100) then
                FreezeEntityPosition(ped, false)
                TriggerEvent('inventory:removeItem', 'hamburgerbuns', 1) 
                TriggerEvent('inventory:removeItem', 'burgershotpatty', 2) 
                TriggerEvent('inventory:removeItem', 'lettuce', 1) 
                TriggerEvent('inventory:removeItem', 'tomato', 1)
                TriggerEvent('inventory:removeItem', 'cheese', 1)
                TriggerEvent('player:receiveItem', 'heartstopper', 1)
                TriggerEvent('DoLongHudText', 'Cooked Heartstopper', 1)
            else
                FreezeEntityPosition(ped, false)
            end
        else
            TriggerEvent('DoLongHudText', 'Requires: 1x Burger Buns | 2x Cooked Burger Pattys | 1x Lettuce | 1x Tomato | 1x Cheese', 2)
        end
    else
        TriggerEvent('DoLongHudText', 'You dont work here', 2)
    end
end)

RegisterNetEvent('qb-civjobs:burgershot-moneyshot')
AddEventHandler('qb-civjobs:burgershot-moneyshot', function()
    local ped = PlayerPedId()
    local isEmployed = exports["qb-business"]:IsEmployedAt("burger_shot")
    if isEmployed then
        if exports['qb-inventory']:hasEnoughOfItem('hamburgerbuns', 1) and exports['qb-inventory']:hasEnoughOfItem('burgershotpatty', 1) and exports['qb-inventory']:hasEnoughOfItem('lettuce', 1) and exports['qb-inventory']:hasEnoughOfItem('tomato', 1) and exports['qb-inventory']:hasEnoughOfItem('cheese', 1) then
            FreezeEntityPosition(ped, true)
            ExecuteCommand('e cokecut')
            local moneyshot = exports['qb-taskbar']:taskBar(5000, 'Cooking Moneyshot')
            if (moneyshot == 100) then
                FreezeEntityPosition(ped, false)
                TriggerEvent('inventory:removeItem', 'hamburgerbuns', 1)
                TriggerEvent('inventory:removeItem', 'burgershotpatty', 1)
                TriggerEvent('inventory:removeItem', 'lettuce', 1)
                TriggerEvent('inventory:removeItem', 'tomato', 1)
                TriggerEvent('inventory:removeItem', 'cheese', 1)
                TriggerEvent('player:receiveItem', 'moneyshot', 1)
                TriggerEvent('DoLongHudText', 'Cooked Moneyshot', 1)
            else
                FreezeEntityPosition(ped, false)
            end
        else
            TriggerEvent('DoLongHudText', 'Requires: 1x Burger Buns | 1x Cooked Burger Patty | 1x Cheese | 1x Lettuce | 1x Tomato', 2)
        end
    else
        TriggerEvent('DoLongHudText', 'You dont work here', 2)
    end
end)

RegisterNetEvent('qb-civjobs:burgershot-meatfree')
AddEventHandler('qb-civjobs:burgershot-meatfree', function()
    local ped = PlayerPedId()
    local isEmployed = exports["qb-business"]:IsEmployedAt("burger_shot")
    if isEmployed then
        if exports['qb-inventory']:hasEnoughOfItem('burgershotpatty2', 1) and exports['qb-inventory']:hasEnoughOfItem('lettuce', 1) and exports['qb-inventory']:hasEnoughOfItem('hamburgerbuns', 1) then
            FreezeEntityPosition(ped, true)
            ExecuteCommand('e cokecut')
            local meatfree = exports['qb-taskbar']:taskBar(5000, 'Cooking Meat Free')
            if (meatfree == 100) then
                FreezeEntityPosition(ped, false)
                TriggerEvent('inventory:removeItem', 'lettuce', 1)
                TriggerEvent('inventory:removeItem', 'hamburgerbuns', 1)
                TriggerEvent('inventory:removeItem', 'burgershotpatty2', 1)
                TriggerEvent('player:receiveItem', 'meatfree', 1)
            else
                FreezeEntityPosition(ped, false)
            end
        else
            TriggerEvent('DoLongHudText', 'Requires: 1x Burger Buns | 1x Lettuce | 1x Cooked Meat Free Patty', 2)
        end
    else
        TriggerEvent('DoLongHudText', 'You dont work here', 2)
    end
end)  

RegisterNetEvent('qb-civjobs:burgershot-bleeder')
AddEventHandler('qb-civjobs:burgershot-bleeder', function()
    local ped = PlayerPedId()
    local isEmployed = exports["qb-business"]:IsEmployedAt("burger_shot")
    if isEmployed then
        if exports['qb-inventory']:hasEnoughOfItem('hamburgerbuns', 1) and exports['qb-inventory']:hasEnoughOfItem('lettuce', 1) and exports['qb-inventory']:hasEnoughOfItem('burgershotpatty', 1) and exports['qb-inventory']:hasEnoughOfItem('cheese', 1) and exports['qb-inventory']:hasEnoughOfItem('tomato', 1) then
            FreezeEntityPosition(ped, true)
            ExecuteCommand('e cokecut')
            local meatfree = exports['qb-taskbar']:taskBar(5000, 'Cooking Bleeder Burger')
            if (meatfree == 100) then
                FreezeEntityPosition(ped, false)
                TriggerEvent('inventory:removeItem', 'lettuce', 1)
                TriggerEvent('inventory:removeItem', 'hamburgerbuns', 1)
                TriggerEvent('inventory:removeItem', 'burgershotpatty', 1)
                TriggerEvent('inventory:removeItem', 'tomato', 1)
                TriggerEvent('inventory:removeItem', 'cheese', 1)
                TriggerEvent('player:receiveItem', 'bleederburger', 1)
            else
                FreezeEntityPosition(ped, false)
            end
        else
            TriggerEvent('DoLongHudText', 'Requires: 1x Lettuce | 1x Patty | 1x Burger Buns', 2)
        end
    else
        TriggerEvent('DoLongHudText', 'You dont work here', 2)
    end
end)  

-- // Drink Machine Start // --

RegisterNetEvent('qb-jobs:burgershot-drinks')
AddEventHandler('qb-jobs:burgershot-drinks', function()
    local isEmployed = exports["qb-business"]:IsEmployedAt("burger_shot")
    if isEmployed then
        local BurgershotDrinks = {
            {
                title = 'Burger Shot Drinks',
                icon = "glass-whiskey"
            },
            {
                title = "Pour Cola",
                description = "Pour a nice refreshing Cola",
                icon = "beer",
                action = 'qb-burgershot:cola',
            },
            {
                title = "Pour Milkshake",
                description = "Pour a Ice Cold Milkshake",
                icon = "beer",
                action = 'qb-burgershot:shake',
            },
            {
                title = "Pour Soft Drink",
                description = "Pour a monsterous sweet Soft Drink",
                icon = "beer",
                action = 'qb-burgershot:drink',
            },
            {
                title = "Pour Cup Of Water",
                description = "Pour a Cup Of Water",
                icon = "beer",
                action = 'qb-burgershot:water',
            },
        }
        exports["qb-interface"]:showContextMenu(BurgershotDrinks)
    else
        TriggerEvent('DoLongHudText', 'Fuck off POLITELY', 2)
    end
end)

RegisterInterfaceCallback('qb-burgershot:cola', function(data, cb)
    cb({ data = {}, meta = { ok = true, message = '' } })
    TriggerEvent('qb-burgershot:getcola')
end)

RegisterInterfaceCallback('qb-burgershot:shake', function(data, cb)
    cb({ data = {}, meta = { ok = true, message = '' } })
    TriggerEvent('qb-burgershot:makeshake')
end)

RegisterInterfaceCallback('qb-burgershot:drink', function(data, cb)
    cb({ data = {}, meta = { ok = true, message = '' } })
    TriggerEvent('qb-burgershot:soft-drink')
end)

RegisterInterfaceCallback('qb-burgershot:water', function(data, cb)
    cb({ data = {}, meta = { ok = true, message = '' } })
    TriggerEvent('qb-burgershot:get_water')
end)

-- // Drink Machine End // --

-- // Start Of Burgers // --

RegisterNetEvent('qb-civjobs:burgershot-make-burgers')
AddEventHandler('qb-civjobs:burgershot-make-burgers', function()
    local isEmployed = exports["qb-business"]:IsEmployedAt("burger_shot")
    if isEmployed then
        local BurgershotBurgers = {
            {
                title = 'Burger Shot Burgers',
                icon = "utensils"
            },
            {
                title = "Assemble Heartstopper",
                icon = "hamburger", 
                action = 'qb-burgershot:hs',
            },
            {
                title = "Assemble Moneyshot",
                icon = "hamburger", 
                action = 'qb-burgershot:ms',
            },
            {
                title = "Assemble Meat Free Burger",
                icon = "hamburger", 
                action = 'qb-burgershot:mf',
            },
            {
                title = "Assemble Bleeder Burger",
                icon = "hamburger", 
                action = 'qb-burgershot:bb',
            },
        }
        exports["qb-interface"]:showContextMenu(BurgershotBurgers)
    else
        TriggerEvent('DoLongHudText', 'Fuck off POLITELY', 2)
    end
end)

RegisterInterfaceCallback('qb-burgershot:hs', function(data, cb)
    cb({ data = {}, meta = { ok = true, message = '' } })
    TriggerEvent('qb-civjobs:burgershot-heartstopper')
end)

RegisterInterfaceCallback('qb-burgershot:ms', function(data, cb)
    cb({ data = {}, meta = { ok = true, message = '' } })
    TriggerEvent('qb-civjobs:burgershot-moneyshot')
end)

RegisterInterfaceCallback('qb-burgershot:mf', function(data, cb)
    cb({ data = {}, meta = { ok = true, message = '' } })
    TriggerEvent('qb-civjobs:burgershot-meatfree')
end)

RegisterInterfaceCallback('qb-burgershot:bb', function(data, cb)
    cb({ data = {}, meta = { ok = true, message = '' } })
    TriggerEvent('qb-civjobs:burgershot-bleeder')
end)

--// Meat No Meat?

RegisterNetEvent('qb-civjobs:burgershot-make-pattys')
AddEventHandler('qb-civjobs:burgershot-make-pattys', function()
    local isEmployed = exports["qb-business"]:IsEmployedAt("burger_shot")
    if isEmployed then
        local BurgershotPattys = {
            {
                title = 'Burger Shot Pattys',
            },
            {
                title = "Cook Patty (Contains Meat)",
                description = "Requires: 1x Raw Patty (Contains Meat)",
                key = "CP.M",
                action = 'qb-burgershot:cm',
            },
            {
                title = "Cook Patty (Doesnt Contain Meat)",
                description = "Requires: 1x Raw Patty (Doesnt Contain Meat)",
                key = "CP.NM",
                action = 'qb-burgershot:dcm',
            },
        }
        exports["qb-interface"]:showContextMenu(BurgershotPattys)
    else
        TriggerEvent('DoLongHudText', 'Fuck off POLITELY', 2)
    end
end)

RegisterInterfaceCallback('qb-burgershot:cm', function(data, cb)
    cb({ data = {}, meta = { ok = true, message = '' } })
    TriggerEvent('qb-burgershot:contains-meat')
end)

RegisterInterfaceCallback('qb-burgershot:dcm', function(data, cb)
    cb({ data = {}, meta = { ok = true, message = '' } })
    TriggerEvent('qb-burgershot:doesnt-contains-meat')
end)

RegisterNetEvent("qb-burgershot:contains-meat")
AddEventHandler("qb-burgershot:contains-meat", function()
    local isEmployed = exports["qb-business"]:IsEmployedAt("burger_shot")
    if isEmployed then
        if exports["qb-inventory"]:hasEnoughOfItem("rawpatty", 1) then 
            local dict = 'anim@amb@business@coc@coc_unpack_cut_left@'
            LoadDict(dict)
            FreezeEntityPosition(GetPlayerPed(-1),true)
            TaskPlayAnim(GetPlayerPed(-1), dict, "coke_cut_v1_coccutter", 3.0, -8, -1, 63, 0, 0, 0, 0 )
            SetEntityHeading(GetPlayerPed(-1), 124.72439575195)
            local finished = exports['qb-taskbar']:taskBar(7500, 'Cooking Patty')
            if (finished == 100) then
                TriggerEvent("inventory:removeItem", "rawpatty", 1)
                TriggerEvent('player:receiveItem', 'burgershotpatty', 1)
                FreezeEntityPosition(GetPlayerPed(-1),false)
                ClearPedTasks(GetPlayerPed(-1))
                Citizen.Wait(1000)
            end
        else
            TriggerEvent('DoLongHudText', 'You need more Raw Pattys to cook! (Required Amount: 1)', 2)
        end
    else
        TriggerEvent('DoLongHudText', 'You dont work here', 2)
    end
end)

RegisterNetEvent("qb-burgershot:doesnt-contains-meat")
AddEventHandler("qb-burgershot:doesnt-contains-meat", function()
    local isEmployed = exports["qb-business"]:IsEmployedAt("burger_shot")
    if isEmployed then   
        if exports["qb-inventory"]:hasEnoughOfItem("rawpatty2", 1) then 
            local dict = 'anim@amb@business@coc@coc_unpack_cut_left@'
            LoadDict(dict)
            FreezeEntityPosition(GetPlayerPed(-1),true)
            TaskPlayAnim(GetPlayerPed(-1), dict, "coke_cut_v1_coccutter", 3.0, -8, -1, 63, 0, 0, 0, 0 )
            SetEntityHeading(GetPlayerPed(-1), 124.72439575195)
            local finished = exports['qb-taskbar']:taskBar(7500, 'Cooking Patty')
            if (finished == 100) then
                TriggerEvent("inventory:removeItem", "rawpatty2", 1)
                TriggerEvent('player:receiveItem', 'burgershotpatty2', 1)
                FreezeEntityPosition(GetPlayerPed(-1),false)
                ClearPedTasks(GetPlayerPed(-1))
                Citizen.Wait(1000)
            end
        else
            TriggerEvent('DoLongHudText', 'You need more Raw Pattys to cook! (Required Amount: 1)', 2)
        end
    else
        TriggerEvent('DoLongHudText', 'You dont work here', 2)
    end
end)

RegisterNetEvent('qb-burgershot:gettoy')
AddEventHandler('qb-burgershot:gettoy', function()
    local BurgershotToy = math.random(10)
    if BurgershotToy == 1 then
        TriggerEvent('player:receiveItem', 'larrybirdtoy', 1)
    elseif BurgershotToy == 2 then
        TriggerEvent('player:receiveItem', 'tatumtoy', 1)
    elseif BurgershotToy == 3 then
        TriggerEvent('player:receiveItem', 'klaytoy', 1)
    elseif BurgershotToy == 4 then
        TriggerEvent('player:receiveItem', 'currytoy', 1)
    elseif BurgershotToy == 5 then
        TriggerEvent('player:receiveItem', 'strangetoy', 1)
    elseif BurgershotToy == 6 then
        TriggerEvent('player:receiveItem', 'woodytoy', 1)
    elseif BurgershotToy == 7 then
        TriggerEvent('player:receiveItem', 'joinwicktoy', 1)
    elseif BurgershotToy == 8 then
        TriggerEvent('player:receiveItem', 'eletoy', 1)
    elseif BurgershotToy == 9 then
        TriggerEvent('player:receiveItem', 'captoy', 1)
    elseif BurgershotToy == 10 then
        TriggerEvent('player:receiveItem', 'supermantoy', 1)
    end
end)

RegisterNetEvent("qb-icecream")
AddEventHandler("qb-icecream", function()
    local isEmployed = exports["qb-business"]:IsEmployedAt("burger_shot")
    if isEmployed then
        if exports["qb-inventory"]:hasEnoughOfItem("icecreamcone", 1) then 
            local dict = 'anim@amb@business@coc@coc_unpack_cut_left@'
            LoadDict(dict)
            FreezeEntityPosition(GetPlayerPed(-1),true)
            TaskPlayAnim(GetPlayerPed(-1), dict, "coke_cut_v1_coccutter", 3.0, -8, -1, 63, 0, 0, 0, 0 )
            SetEntityHeading(GetPlayerPed(-1), 302.72439575195)
            local finished = exports['qb-taskbar']:taskBar(7500, 'Scooping')
            if (finished == 100) then
                TriggerEvent("inventory:removeItem", "icecreamcone", 1)
                TriggerEvent('player:receiveItem', 'vanillaicecream', 1)
                FreezeEntityPosition(GetPlayerPed(-1),false)
                ClearPedTasks(GetPlayerPed(-1))
                Citizen.Wait(1000)
            end
        else
            TriggerEvent('DoLongHudText', 'You need more Ice Cream Cone!', 2)
        end
    else
        TriggerEvent('DoLongHudText', 'You dont work here', 2)
    end
end)

RegisterNetEvent('grabtoybs')
AddEventHandler('grabtoybs', function()
    TriggerEvent('player:receiveItem', 'bstoy', 1)
end)

 -- Interact --
 
 exports["qb-polytarget"]:AddBoxZone("burgershot_assemble", vector3(-1198.33, -898.61, 13.98), 1, 1.8, {
    heading=35,
    minZ=10.38,
    maxZ=14.38
})

exports["qb-interact"]:AddPeekEntryByPolyTarget("burgershot_assemble", {{
    event = "qb-civjobs:burgershot-make-burgers",
    id = "burgershot_assemble",
    icon = "hand-holding",
    label = "Assemble Burger",
    parameters = {},
}}, {
    distance = { radius = 2.5 },
});

exports["qb-polytarget"]:AddBoxZone("burgershot_stash", vector3(-1203.65, -895.86, 13.98), 1, 1.6, {
    heading=305,
    --debugPoly=false,
    minZ=11.38,
    maxZ=15.38
})

exports["qb-interact"]:AddPeekEntryByPolyTarget("burgershot_stash", {
    {
        event = "qb-burgershot:store",
        id = "burgershot_stash",
        icon = "circle",
        label = "Get Ingridients",
        parameters = {},
    }
}, {
    distance = { radius = 2.5 },
});

exports["qb-polytarget"]:AddBoxZone("np_burgershot_make_drinks", vector3(-1199.87, -895.3, 13.98), 2, 1, {
    heading=35,
    minZ=10.98,
    maxZ=14.98
})

exports["qb-interact"]:AddPeekEntryByPolyTarget("np_burgershot_make_drinks", {{
    event = "qb-jobs:burgershot-drinks",
    id = "np_burgershot_make_drinks",
    icon = "circle",
    label = "Drink Machine",
    parameters = {},
}}, {
    distance = { radius = 2.5 },
});

exports["qb-polytarget"]:AddBoxZone("burgershot_warmer",  vector3(-1197.84, -893.96, 13.98), 3.0, 1, {
    minZ=13.58,
    maxZ=14.78
})

exports["qb-interact"]:AddPeekEntryByPolyTarget("burgershot_warmer", {
    {
        event = "qb-jobs:burgershot-warmer",
        id = "void_burgershot_warmer",
        icon = "circle",
        label = "Food Warmer",
        parameters = {},
    },
    {
        event = "qb-dispatch:burgershotAlarm",
        id = "Panic",
        icon = "bell",
        label = "Panic Button",
        parameters = {},
    },
}, {
    distance = { radius = 2.5 },
});

RegisterNetEvent('qb-dispatch:burgershotAlarm')
AddEventHandler('qb-dispatch:burgershotAlarm', function()
    if exports['qb-business']:IsEmployedAt('burger_shot') then
        exports["qb-dispatch"]:policedead('10-13A', "Burgershot Panic Alarm", "59", true)
    end
end)

exports["qb-polytarget"]:AddCircleZone("burgershot_fryer",  vector3(-1201.79, -898.58, 13.98), 0.65, {
    useZ = true
})

exports["qb-interact"]:AddPeekEntryByPolyTarget("burgershot_fryer", {{
    event = "qb-burgershot:startfryer",
    id = "burgershot_fryer",
    icon = "circle",
    label = "Make Fries",
    parameters = {},
}}, {
    distance = { radius = 2.5 },
});

exports["qb-polytarget"]:AddBoxZone("burgershot_stash", vector3(-1203.65, -895.86, 13.98), 1, 1.6, {
    heading=305,
    --debugPoly=false,
    minZ=11.38,
    maxZ=15.38
})

exports["qb-interact"]:AddPeekEntryByPolyTarget("burgershot_stash", {
    {
        event = "qb-burgershot:store",
        id = "burgershot_stash",
        icon = "circle",
        label = "Get Ingridients",
        parameters = {},
    }
}, {
    distance = { radius = 2.5 },
});

exports["qb-polytarget"]:AddCircleZone("burgershot_stuffs_4",  vector3(-1202.89, -897.28, 14.0), 0.93, {
    useZ = true
})

exports["qb-interact"]:AddPeekEntryByPolyTarget("burgershot_stuffs_4", {{
    event = "qb-civjobs:burgershot-make-pattys",
    id = "burgershot_stuffs_4",
    icon = "hamburger",
    label = "Grill Patty",
    parameters = {},
}}, {
    distance = { radius = 2.5 },
});

exports["qb-polytarget"]:AddCircleZone("gettoybs",  vector3(-1196.27, -905.06, 13.98), 0.4, {
    useZ = true
})

exports["qb-interact"]:AddPeekEntryByPolyTarget("gettoybs", {
    {
        event = "grabtoybs",
        id = "gettoybs",
        icon = "circle",
        label = "Grab Toy!",
        parameters = {},
    },
}, {
    distance = { radius = 2.5 },
});

exports["qb-polytarget"]:AddBoxZone("icecreamspot",  vector3(-1193.03, -895.87, 13.98), 1, 2.0, {
    heading=305,
    --debugPoly=false,
    minZ=10.58,
    maxZ=14.58
})

exports["qb-interact"]:AddPeekEntryByPolyTarget("icecreamspot", {
    {
        event = "qb-icecream",
        id = "icecreamspot",
        icon = "circle",
        label = "Scoop Ice Cream!",
        parameters = {},
    },
}, {
    distance = { radius = 5 },
});

-- Trays --

exports["qb-polytarget"]:AddBoxZone("burger_shot_tray_1", vector3(-1193.83, -894.44, 13.98), 1, 0.8, {
    heading=305,
    minZ=10.78,
    maxZ=14.78
})

exports["qb-polytarget"]:AddBoxZone("burger_shot_tray_2", vector3(-1194.92, -892.86, 13.98), 1, 0.8, {
    heading=305,
    minZ=10.78,
    maxZ=14.78
})

 -- Tray 1
 exports["qb-interact"]:AddPeekEntryByPolyTarget("burger_shot_tray_1", {{
    event = "qb-jobs:BurgerShotTray-1",
    id = "burger_shot_tray_1",
    icon = "hand-holding",
    label = "Open",
    parameters = {},
}}, {
    distance = { radius = 2.5 },
});

-- Tray 2
exports["qb-interact"]:AddPeekEntryByPolyTarget("burger_shot_tray_2", {{
    event = "qb-jobs:BurgerShotTray-2",
    id = "burger_shot_tray_2",
    icon = "hand-holding",
    label = "Open",
    parameters = {},
}}, {
    distance = { radius = 2.5 },
});

RegisterNetEvent('qb-jobs:BurgerShotTray-1')
AddEventHandler('qb-jobs:BurgerShotTray-1', function()
    TriggerEvent("server-inventory-open", "1", "traysz-Burgershot Tray")
end)

RegisterNetEvent('qb-jobs:BurgerShotTray-2')
AddEventHandler('qb-jobs:BurgerShotTray-2', function()
    TriggerEvent("server-inventory-open", "1", "trays-Burgershot Tray")
end)