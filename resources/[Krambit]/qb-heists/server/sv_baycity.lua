local pCanDo2NDDoor = false

RegisterServerEvent('qb-heists:first_door:cl')
AddEventHandler('qb-heists:first_door:cl', function()
    TriggerClientEvent('qb-heists:bay_city:first_door', source)
end)

RegisterServerEvent('qb-heists:second_door:cl')
AddEventHandler('qb-heists:second_door:cl', function()
    if pCanDo2NDDoor then
        TriggerClientEvent('qb-heists:bay_city:second_door', source)
    end
end)

RegisterServerEvent('pSendSecondDoor')
AddEventHandler('pSendSecondDoor', function()
    pCanDo2NDDoor = true
end)

RegisterServerEvent('pStopSecondDoor')
AddEventHandler('pStopSecondDoor', function()
    pCanDo2NDDoor = false
end)

RegisterServerEvent('qb-heists:bayCityLog')
AddEventHandler('qb-heists:bayCityLog', function()
    local src = source
    local user = exports["qb-base"]:getModule("Player"):GetUser(src)
    local charInfo = user:getCurrentCharacter()
    local pName = GetPlayerName(source)

    local connect = {
        {
          ["color"] = color,
          ["title"] = "** FM | Development [Heists] **",
          ["description"] = "Steam Name: "..pName.." | Started Robbing Bay City Bank",
        }
      }
      PerformHttpRequest("https://discord.com/api/webhooks/ENTER_HERE", function(err, text, headers) end, 'POST', json.encode({username = "qb | Job Payout Log", embeds = connect, avatar_url = "https://i.imgur.com/hMqEEQp.png"}), { ['Content-Type'] = 'application/json' })
end)