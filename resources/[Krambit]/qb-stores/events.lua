local ped = 0
DecorRegister('NPC', 2)
inStore = false

local daytime = false
RegisterNetEvent("daytime", function(passedTime)
    daytime = passedTime
end)

exports("InStore", function()
    return inStore
end)

RegisterNetEvent("PolyZone:enter:store", function(name)
    inStore = true
    TriggerEvent('qb-stores:inStore', inStore)
    if name == "pawnshop_store" and daytime then return end
    local spawn = PedSpawns[name]
    if spawn ~= nil then
        ped = StationaryPed(spawn)
        TriggerEvent('qb-stores:PedLoop', ped, spawn, name)
        DecorSetBool(ped, "NPC", true)
    end
end)

RegisterNetEvent("PolyZone:exit:store", function()
    inStore = false
    TriggerEvent('qb-stores:inStore', inStore)
    if DoesEntityExist(ped) then
        RequestControl(ped)
        DecorRemove(ped, 'NPC')
        SetEntityAsMissionEntity(ped, false, true)
        DeleteEntity(ped)
        DeletePed(ped)
        SetEntityAsNoLongerNeeded(ped)
    end
end)

local speech = {
    [1] = "SHOP_BANTER",
    [2] = "SHOP_GREET",
    [3] = "CHAT_RESP"
}

RegisterNetEvent("qb-stores:PedLoop", function(ped, spawn, store)
    while DoesEntityExist(ped) do
        if spawn.emote ~= nil then
            if not IsPedUsingScenario(ped, spawn.emote) then
                TaskStartScenarioInPlace(ped, spawn.emote, 0, true)
            end
        end
        local talk = speech[math.random(1, #speech)]
        if CanPedSpeak(ped, talk, 0) then
            PlayAmbientSpeech1(ped, talk, "Speech_Params_Force")
        elseif CanPedSpeak(ped, speech[3], 0) then
            PlayAmbientSpeech1(ped, speech[3], "Speech_Params_Force")
        end
        if store == "pawnshop_store" and daytime then
            if DoesEntityExist(ped) then
                RequestControl(ped)
                DecorRemove(ped, 'NPC')
                SetEntityAsMissionEntity(ped, false, true)
                DeleteEntity(ped)
                DeletePed(ped)
                SetEntityAsNoLongerNeeded(ped)
            end
            break
        end
        Wait(30000)
    end
end)

RegisterNetEvent('qb-inventory:general', function()
    TriggerEvent('OpenInventory', 'store', "general")
end)

RegisterNetEvent('qb-inventory:vendingMachine', function(pParams, pEntity, pContext)
    TriggerEvent("OpenInventory", 'store', "vending")
end)

RegisterNetEvent('qb-inventory:weap', function()
    if exports["qb-license"]:HasLicense("weapons") then
        if exports["qb-license"]:GetLicensePoints("weapons") < 30 then
            TriggerEvent('OpenInventory', 'store', "weapons")
        else
            TriggerEvent("LongText", "Worker: Your weapon license is not valid", 3)
        end
    else
        TriggerEvent("LongText", "Worker: You need a weapon license", 3)
    end
end)

RegisterNetEvent('qb-inventory:hunting', function()
    TriggerEvent('OpenInventory', 'store', "hunting")
end)

RegisterNetEvent('qb-inventory:mall', function()
    TriggerEvent("OpenInventory", 'store', "mall")
end)

RegisterNetEvent('qb-inventory:youtool', function()
    TriggerEvent("OpenInventory", 'store', "youtool")
end)

RegisterNetEvent('qb-inventory:pdlocker', function()
    TriggerEvent("OpenInventory", 'store', "cop")
end)

RegisterNetEvent('qb-inventory:doclocker', function()
    TriggerEvent("OpenInventory", 'store', "doc")
end)

RegisterNetEvent('qb-inventory:emslocker', function()
    TriggerEvent("OpenInventory", 'store', "ems")
end)

RegisterNetEvent('qb-inventory:bar', function()
    TriggerEvent("OpenInventory", 'store', "bar")
end)


RegisterNetEvent("inventory:drugmarket", function()
    Wait(100)
    TriggerEvent('OpenInventory', 'store', "drugmarket")
end)