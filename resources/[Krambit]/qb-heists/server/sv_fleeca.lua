cooldownglobal = 0
Available = true

RegisterServerEvent("qb-fleeca:startcheck")
AddEventHandler("qb-fleeca:startcheck", function(bank)
    local _source = source
    globalonaction = true
    TriggerClientEvent('inventory:removeItem', _source, 'hacklaptop', 1)
    TriggerClientEvent("qb-fleeca:outcome", _source, true, bank)
end)

RegisterServerEvent("qb-fleeca:TimePoggers")
AddEventHandler("qb-fleeca:TimePoggers", function()
    local _source = source
    TriggerClientEvent("qb-fleeca:outcome", _source, false, "A bank as been recently robbed. You need to wait "..math.floor((fleeca.cooldown - (os.time() - cooldownglobal)) / 60)..":"..math.fmod((fleeca.cooldown - (os.time() - cooldownglobal)), 60))
end)

RegisterServerEvent("qb-fleeca:DoorAccessPoggers")
AddEventHandler("qb-fleeca:DoorAccessPoggers", function()
    local _source = source
    TriggerClientEvent("qb-fleeca:outcome", _source, false, "There is a bank currently being robbed.")
end)

RegisterServerEvent("qb-fleeca:lootup")
AddEventHandler("qb-fleeca:lootup", function(var, var2)
    TriggerClientEvent("qb-fleeca:lootup_c", -1, var, var2)
end)

RegisterServerEvent("qb-fleeca:openDoor")
AddEventHandler("qb-fleeca:openDoor", function(coords, method)
    TriggerClientEvent("qb-fleeca:openDoor_c", -1, coords, method)
end)

RegisterServerEvent("qb-fleeca:startLoot")
AddEventHandler("qb-fleeca:startLoot", function(data, name)
    TriggerClientEvent("qb-fleeca:startLoot_c", -1, data, name)
end)

RegisterServerEvent("qb-fleeca:stopHeist")
AddEventHandler("qb-fleeca:stopHeist", function(name)
    TriggerClientEvent("qb-fleeca:stopHeist_c", -1, name)
end)

RegisterServerEvent("qb-fleeca:rewardCash")
AddEventHandler("qb-fleeca:rewardCash", function()
    local reward = math.random(1, 2)
    local mathfunc = math.random(200)
    local rare = math.random(1,1)
    
    if mathfunc == 15 then
      TriggerClientEvent('qb-user:receiveItem', source, 'heistusb4', 1)
    end
    TriggerClientEvent("qb-user:receiveItem", source, "band", reward)
end)

RegisterServerEvent("qb-fleeca:setCooldown")
AddEventHandler("qb-fleeca:setCooldown", function(name)
    cooldownglobal = os.time()
    globalonaction = false
    TriggerClientEvent("qb-fleeca:resetDoorState", -1, name)
end)

RegisterServerEvent("qb-fleeca:getBanksSV")
AddEventHandler("qb-fleeca:getBanksSV", function()
    local banks = fleeca.Banks
    TriggerClientEvent('qb-fleeca:getBanks', -1, fleeca.Banks)
end)

local cooldownAttempts = 5

RegisterServerEvent("qb-fleeca:getHitSV")
AddEventHandler("qb-fleeca:getHitSV", function()
    TriggerClientEvent('qb-fleeca:getHit', -1, cooldownAttempts)
end)

RegisterServerEvent("qb-fleeca:getHitSVSV")
AddEventHandler("qb-fleeca:getHitSVSV", function(fleecaBanksTimes)
    cooldownAttempts = fleecaBanksTimes
end)

local doorCheckFleeca = false

RegisterServerEvent("qb-fleeca:getGetDoorStateSV")
AddEventHandler("qb-fleeca:getGetDoorStateSV", function()
    TriggerClientEvent('qb-fleeca:getDoorCheckCL', -1, doorCheckFleeca)
end)

RegisterServerEvent("qb-fleeca:getGetDoorStateSVSV")
AddEventHandler("qb-fleeca:getGetDoorStateSVSV", function(fleecaBanksDoors)
    doorCheckFleeca = fleecaBanksDoors
end)


RegisterServerEvent("qb-fleeca:getTimeSV")
AddEventHandler("qb-fleeca:getTimeSV", function()
    TriggerClientEvent('qb-fleeca:GetTimeCL', -1, cooldownglobal)
end)

RegisterServerEvent("qb-fleeca:getTime2SV")
AddEventHandler("qb-fleeca:getTime2SV", function()
    TriggerClientEvent('qb-fleeca:GetTime2CL', -1, (os.time() - fleeca.cooldown))
end)

RegisterServerEvent("qb-fleeca:getDoorAccessSV")
AddEventHandler("qb-fleeca:getDoorAccessSV", function()
    TriggerClientEvent('qb-fleeca:GetDoorAccessCL', -1, globalonaction)
end)

RegisterServerEvent('charge:fleeca')
AddEventHandler('charge:fleeca', function(amount, bankname)
  local _source = source
  local user = exports["qb-base"]:getModule("Player"):GetUser(source)

    if user:getCash() >= amount then
        user:removeMoney(amount)
        TriggerClientEvent('ghost:bankemail', source, bankname)
    else
        TriggerClientEvent('DoLongHudText', source, 'You dont have enough money!', 2)
    end
end)

RegisterServerEvent('qb-robbery:server:setBankState')
AddEventHandler('qb-robbery:server:setBankState', function(bankId, state)
    if bankId == "pacific" then
       print('[QUEER]')
    else
        if not robberyBusy then
            Config.SmallBanks[bankId]["isOpened"] = state
            TriggerClientEvent('qb-robbery:client:setBankState', -1, bankId, state)
            TriggerEvent('qb-robbery:server:SetSmallbankTimeout', bankId)
            TriggerEvent('ghost:bankstore', bankId, state)
        end
    end
    robberyBusy = true
end)

RegisterServerEvent('qb-robbery:server:SetSmallbankTimeout')
 AddEventHandler('qb-robbery:server:SetSmallbankTimeout', function(BankId)
     if not robberyBusy then
        Citizen.Wait(3600000)
        Config.SmallBanks[BankId]["isOpened"] = false
        timeOut = false
        robberyBusy = false
        TriggerClientEvent('qb-robbery:client:ResetFleecaLockers', -1, BankId)
        TriggerEvent('lh-banking:server:SetBankClosed', BankId, false)
     end
 end)


local Loot = false

RegisterServerEvent('qb-fleeca:tut_tut')
AddEventHandler('qb-fleeca:tut_tut', function()
    local src = source
    if not Loot then
        Loot = true
        TriggerClientEvent('qb-fleeca:grab', src)
        Citizen.Wait(40000)
        Loot = false
    end
end)

RegisterServerEvent('Karambitrp-heists:fleeca_availability')
AddEventHandler('Karambitrp-heists:fleeca_availability', function()
    local src = source
    
    if Available then
        TriggerClientEvent('qb-heists:fleeca_available', src)
    else
        TriggerClientEvent('qb-heists:fleeca_unavailable', src)
    end
end)

RegisterServerEvent('qb-heists:fleecaBankLog')
AddEventHandler('qb-heists:fleecaBankLog', function()
    local src = source
    local user = exports["qb-base"]:getModule("Player"):GetUser(src)
    local charInfo = user:getCurrentCharacter()
    local pName = GetPlayerName(source)

    local connect = {
        {
          ["color"] = color,
          ["title"] = "** FM | Karambit [Heists] **",
          ["description"] = "Steam Name: "..pName.." | Started Robbing a Fleeca Bank",
        }
      }
      PerformHttpRequest("https://discord.com/api/webhooks/ENTER_HERE", function(err, text, headers) end, 'POST', json.encode({username = "qb | Job Payout Log", embeds = connect, avatar_url = "https://i.imgur.com/hMqEEQp.png"}), { ['Content-Type'] = 'application/json' })
end)