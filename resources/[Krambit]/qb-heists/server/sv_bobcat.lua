pCanBlow = false
canloot = false

RegisterServerEvent("qb-bobcat:effect")
AddEventHandler("qb-bobcat:effect", function(method)
    TriggerClientEvent("lumo:effectoutside", -1, method)
end)

RegisterServerEvent("qb-bobcat:effect2")
AddEventHandler("qb-bobcat:effect2", function(method)
    TriggerClientEvent("lumo:effectinside", -1, method)
end)

RegisterServerEvent('qb-heists:spawnpeds',function()
    TriggerClientEvent('ghost:bobcatcreateped',-1)
end)

RegisterServerEvent("qb-bobcat:bubbles")
AddEventHandler("qb-bobcat:bubbles", function()
    canloot = true
    TriggerClientEvent("qb-bobcat:bubbles", -1)
end)

local searched1 = false
local searched2 = false
local searched3 = false

RegisterServerEvent("qb-bobcat:search_crate_1")
AddEventHandler("qb-bobcat:search_crate_1", function()
    local source = source
    
    if searched1 then
        TriggerClientEvent("DoLongHudText", source, "Already Searched")
    elseif canloot then
        TriggerClientEvent("qb-bobcat:search_crate_1", source)
        searched1 = true
    end
end)

RegisterServerEvent("qb-bobcat:search_crate_2")
AddEventHandler("qb-bobcat:search_crate_2", function()
    local source = source
    
    if searched2 then
        TriggerClientEvent("DoLongHudText", source, "Already Searched")
    elseif canloot then
        TriggerClientEvent("qb-bobcat:search_crate_2", source)
        searched2 = true
    end
end)

RegisterServerEvent("qb-bobcat:search_crate_3")
AddEventHandler("qb-bobcat:search_crate_3", function()
    local source = source
    
    if searched3 then
        TriggerClientEvent("DoLongHudText", source, "Already Searched")
    elseif canloot then
        TriggerClientEvent("qb-bobcat:search_crate_3", source)
        searched3 = true
    end
end)

RegisterServerEvent("ghost:particleserver")
AddEventHandler("ghost:particleserver", function(method)
    TriggerClientEvent("ghost:ptfxparticle", -1, method)
end)

RegisterServerEvent('qb-bobcat:blow_door')
AddEventHandler('qb-bobcat:blow_door', function()
    if not pCanBlow then
        pCanBlow = true
        TriggerClientEvent('qb-heists:explosion_ped_walk', source)
    end
end)

RegisterServerEvent('qb-heists:bobcatLog')
AddEventHandler('qb-heists:bobcatLog', function()
    local src = source
    local user = exports["qb-base"]:getModule("Player"):GetUser(src)
    local charInfo = user:getCurrentCharacter()
    local pName = GetPlayerName(source)

    local connect = {
        {
          ["color"] = color,
          ["title"] = "** FM | Development [Heists] **",
          ["description"] = "Steam Name: "..pName.." | Started Robbing Bobcat Security",
        }
      }
      PerformHttpRequest("https://discord.com/api/webhooks/ENTER_HERE", function(err, text, headers) end, 'POST', json.encode({username = "qb | Job Payout Log", embeds = connect, avatar_url = "https://i.imgur.com/hMqEEQp.png"}), { ['Content-Type'] = 'application/json' })
end)