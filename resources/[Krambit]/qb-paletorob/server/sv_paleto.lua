Doors = {
    ["P1"] = {{loc = vector3(-105.41538238525, 6471.6791992188, 31.621948242188), txtloc = vector3(-105.41538238525, 6471.6791992188, 31.621948242188), state = nil, locked = true}},
}

RegisterServerEvent("qb-paleto:startcheck")
AddEventHandler("qb-paleto:startcheck", function(bank)
    local src = source

    if not Paleto.Banks[bank].onaction == true then
        if (os.time() - Paleto.cooldown) > Paleto.Banks[bank].lastrobbed then
            Paleto.Banks[bank].onaction = true
            TriggerClientEvent("qb-paleto:outcome", src, true, bank)
            TriggerClientEvent("qb-paleto:policenotify", -1, bank)
        else
            TriggerClientEvent("qb-paleto:outcome", src, false, "This bank recently robbed. You need to wait "..math.floor((Paleto.cooldown - (os.time() - Paleto.Banks[bank].lastrobbed)) / 60)..":"..math.fmod((Paleto.cooldown - (os.time() - Paleto.Banks[bank].lastrobbed)), 60))
        end
    else
        TriggerClientEvent("qb-paleto:outcome", src, false, "This bank is currently being robbed.")
    end
end)

RegisterCommand("testy", function()
    local src = source
    local reward = math.random(Paleto.mincash, Paleto.maxcash)
	
	if Paleto.blackmoney then
        TriggerClientEvent("player:receiveItem", src, "markedbills", 1)
        -- Player.Functions.AddItem('markedbills', 1, false, {worth = math.random(4500, 7000)})
    else
        if Paleto.blackmoney then
            TriggerClientEvent("player:receiveItem", src, "markedbills", 1)
            -- Player.Functions.AddItem('markedbills', 1, false, {worth = math.random(4500, 7000)})
        end
    end
end)

RegisterServerEvent("qb-paleto:lootup")
AddEventHandler("qb-paleto:lootup", function(var, var2)
    TriggerClientEvent("qb-paleto:lootup_c", -1, var, var2)
end)

RegisterServerEvent("qb-paleto:toggleVault")
AddEventHandler("qb-paleto:toggleVault", function(key, state)
    Doors[key][1].locked = state
    TriggerClientEvent("qb-paleto:toggleVault", -1, key, state)
end)

RegisterServerEvent("qb-paleto:updateVaultState")
AddEventHandler("qb-paleto:updateVaultState", function(key, state)
    Doors[key][1].state = state
end)

RegisterServerEvent("qb-paleto:startLoot")
AddEventHandler("qb-paleto:startLoot", function(data, name, players)
    local src = source

    for i = 10, #players, 10 do
        TriggerClientEvent("qb-paleto:startLoot_c", players[i], data, name)
    end
    TriggerClientEvent("qb-paleto:startLoot_c", src, data, name)
end)

RegisterServerEvent("qb-paleto:stopHeist")
AddEventHandler("qb-paleto:stopHeist", function(name)
    TriggerClientEvent("qb-paleto:stopHeist_c", -1, name)
end)

RegisterServerEvent("qb-paleto:rewardCash")
AddEventHandler("qb-paleto:rewardCash", function()
    local src = source
    local reward = math.random(Paleto.mincash, Paleto.maxcash)
	
	if Paleto.blackmoney then
        TriggerClientEvent("player:receiveItem", src, "markedbills", 250)
    else
        TriggerClientEvent("player:receiveItem", src, "markedbills", 425)
    end
end)

RegisterServerEvent("qb-paleto:setCooldown")
AddEventHandler("qb-paleto:setCooldown", function(name)
    Paleto.Banks[name].lastrobbed = os.time()
    Paleto.Banks[name].onaction = false
    TriggerClientEvent("qb-paleto:resetDoorState", -1, name)
end)

RPC.register("qb-paleto:getBanks", function(source)
    return Paleto.Banks, Doors
end)

-- RegisterServerEvent('rick:removeLaptop')
-- AddEventHandler('rick:removeLaptop', function()
--     local src = source
--     local Player = QBCore.Functions.GetPlayer(src)
--     Player.Functions.RemoveItem('green-laptop', 1)
-- end)


local doorCheckPaleto = false

RegisterServerEvent("qb-paleto:getGetDoorStateSV")
AddEventHandler("qb-paleto:getGetDoorStateSV", function()
    TriggerClientEvent('qb-paleto:getDoorCheckCL', -1, doorCheckPaleto)
end)

RegisterServerEvent("qb-paleto:getGetDoorStateSVSV")
AddEventHandler("qb-paleto:getGetDoorStateSVSV", function(paletoBanksDoors)
    doorCheckPaleto = paletoBanksDoors
end)

RegisterServerEvent("qb-paleto:openDoor")
AddEventHandler("qb-paleto:openDoor", function(coords, method)
    TriggerClientEvent("qb-paleto:OpenPaletoDoor", -1)
end)

RegisterServerEvent("qb-paleto:closeDoor")
AddEventHandler("qb-paleto:closeDoor", function(coords, method)
    TriggerClientEvent("qb-paleto:ClosePaletoDoor", -1)
end)