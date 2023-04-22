
local CooldownTimer = true

local pIsAvailable = true

RegisterServerEvent('qb-heists:start_hitting_upper_vangelico')
AddEventHandler('qb-heists:start_hitting_upper_vangelico', function()
    local src = source
    local user = exports["qb-base"]:getModule("Player"):GetUser(src)
    if CooldownTimer then
        print('[qb-heists] Someone Robbing Vangelico')
        CooldownTimer = false
        pIsAvailable = false
        TriggerClientEvent('qb-jewelry:open_doors', src)
        print('^3[qb-heists]: ^2Cooldown started^0')
        Citizen.Wait(3600000)
        print('[qb-heists] Vangelico No Longer On Cooldown')
        TriggerClientEvent('qb-heists:lock_vangelico_doors_cooldown', src)
        CooldownTimer = true
        pIsAvailable = true
    else
        print('[qb-heists] Someone Trying to Rob Vangelico But Already Been Robbed')
        TriggerClientEvent('DoLongHudText', src, 'This Jewelry Store was recently robbed.', 2)
    end
end)

RegisterServerEvent('qb-heists:vangelico_loot')
AddEventHandler('qb-heists:vangelico_loot', function()
    local src = source
    local EvanVangelicoLoot = math.random(1, 3)

    if EvanVangelicoLoot == 1 then
        TriggerClientEvent('player:receiveItem', src,'valuablegoods', math.random(5, 10))
        TriggerClientEvent('player:receiveItem', src,'goldbar', math.random(1, 5))
        TriggerClientEvent('player:receiveItem', src,'rolexwatch', math.random(10, 20))
    elseif EvanVangelicoLoot == 2 then
        TriggerClientEvent('player:receiveItem', src,'goldcoin', math.random(15, 30))
        TriggerClientEvent('player:receiveItem', src,'stolen8ctchain', math.random(3, 10))
    elseif EvanVangelicoLoot == 3 then
        TriggerClientEvent('player:receiveItem', src,'valuablegoods', math.random(5, 14))
        TriggerClientEvent('player:receiveItem', src,'goldcoin', math.random(15, 50))
        TriggerClientEvent('player:receiveItem', src,'rolexwatch', math.random(15, 30))
    end
end)

RegisterServerEvent('qb-heists:get_vangelico_availability')
AddEventHandler('qb-heists:get_vangelico_availability', function()
    local src = source

    if pIsAvailable then
        TriggerClientEvent('qb-heists:vangelico_available', src)
    else
        TriggerClientEvent('qb-heists:vangelico_unavailable', src)
    end
end)

RegisterServerEvent('qb-heists:vangelicoRobberyLog')
AddEventHandler('qb-heists:vangelicoRobberyLog', function()
    local src = source
    local user = exports["qb-base"]:getModule("Player"):GetUser(src)
    local charInfo = user:getCurrentCharacter()
    local pName = GetPlayerName(source)

    local connect = {
        {
          ["color"] = color,
          ["title"] = "** FM | Karambit [Heists] **",
          ["description"] = "Steam Name: "..pName.." | Started Robbing Jewelry Store",
        }
      }
      PerformHttpRequest("https://discord.com/api/webhooks/ENTER_HERE", function(err, text, headers) end, 'POST', json.encode({username = "qb | Job Payout Log", embeds = connect, avatar_url = "https://i.imgur.com/hMqEEQp.png"}), { ['Content-Type'] = 'application/json' })
end)