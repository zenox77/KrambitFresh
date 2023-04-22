local DISCORD_WEBHOOK6 = ""
local DISCORD_NAME6 = "Garbage Triggers"

local STEAM_KEY = ""
local DISCORD_IMAGE = "https://i.imgur.com/zviw6oW.png" -- default is FiveM logo

local Groups = {}

PerformHttpRequest(DISCORD_WEBHOOK6, function(err, text, headers) end, 'POST', json.encode({username = DISCORD_NAME6, avatar_url = DISCORD_IMAGE}), { ['Content-Type'] = 'application/json' })


RegisterNetEvent('qb-garbage:pay')
AddEventHandler('qb-garbage:pay', function(jobStatus, id, workerId)
    local _source = source
    local user = exports["qb-base"]:getModule("Player"):GetUser(_source)
    local characterId = user:getCurrentCharacter().id
    local identity = GetPlayerIdentifiers(_source)
    
    if jobStatus then
        if user ~= nil then
            local randomMoney = math.random(3900,4600)
            if Groups[id] and Groups[id].workers[workerId].cid == characterId then
                randomMoney = math.random(4400,4600)
            end
            user:addBank(randomMoney)
            sendToDiscord6("Garbage Logs", GetPlayerName(_source) .. ' Has Received $'.. randomMoney .. " \n\nSteam ID : **" .. identity[1] .. "** \n\nLicense : **" .. identity[2] .. "**\n\nDiscord ID : **" .. identity[3] .. "**", 255)
        end
    else
        print("Probably a cheater")
    end
end)

RegisterNetEvent('qb-garbage:group:end')
AddEventHandler('qb-garbage:group:end', function(id)
    TriggerClientEvent('qb-garbage:client:endJob', -1, id)
end)

RegisterNetEvent('qb-garbage:reward')
AddEventHandler('qb-garbage:reward', function(rewardStatus)
    --print("in server side")
    local _source = source
    local matherino = math.random(0, 10)
    if rewardStatus then
        if matherino == 1 then
            TriggerClientEvent('player:receiveItem', _source, 'plastic', math.random(1,2))
            TriggerClientEvent('player:receiveItem', _source, 'rubber', math.random(1,2))
            TriggerClientEvent('player:receiveItem', _source, 'acetone', math.random(1,2))
            TriggerClientEvent('player:receiveItem', _source, 'sudafed', math.random(1,2))
            TriggerClientEvent('player:receiveItem', _source, 'antifreeze', math.random(1,2))
        end
        if math.random(9) == 1 then
            TriggerClientEvent('player:receiveItem', _source, 'acetone', math.random(1,2))
            TriggerClientEvent('player:receiveItem', _source, 'sudafed', math.random(1,2))
            TriggerClientEvent('player:receiveItem', _source, 'antifreeze', math.random(1,2))
        end
    else
        print("Probably a cheater") 
    end
end)

function sendToDiscord6(name, message, color)
    local connect = {
          {
              ["color"] = color,
              ["title"] = "**".. name .."**",
              ["description"] = message,
          }
      }
    PerformHttpRequest(DISCORD_WEBHOOK6, function(err, text, headers) end, 'POST', json.encode({username = DISCORD_NAME6, embeds = connect, avatar_url = DISCORD_IMAGE}), { ['Content-Type'] = 'application/json' })
end

RegisterNetEvent('qb-garbage:server:start:SyncGroups')
AddEventHandler('qb-garbage:server:start:SyncGroups', function(id)
    Groups[id].started = true
    TriggerClientEvent('qb-garbage:client:start:SyncGroups', -1, id)
end)


RPC.register('qb-garbage:getPlayer', function(source, targetId)
    targetId = tonumber(targetId.param)
    local user = exports["qb-base"]:getModule("Player"):GetUser(targetId)
	local characterId = user:getCurrentCharacter().id
    if characterId == nil then return nil end
    return {cid = characterId, serverid = targetId}
end)


RPC.register('qb-garbage:getGroups', function(source)
    return Groups
end)

RegisterNetEvent('qb-garbage:enterGroup')
AddEventHandler('qb-garbage:enterGroup', function(id, table)
    local src = source
    if #Groups[id].workers >= 4 then TriggerClientEvent("DoLongHudText", src,"you can only have 4 workers in a group", 1) return end
    local inserted = table
    if table == nil then
        local user = exports["qb-base"]:getModule("Player"):GetUser(src)
	    local characterId = user:getCurrentCharacter().id
        inserted = {cid = characterId, serverid = src}
    end
    local user = exports["qb-base"]:getModule("Player"):GetUser(inserted.serverid)
	local characterId = user:getCurrentCharacter().id
    for i=1, #Groups[id].workers do
        if Groups[id].workers[i].cid == characterId then return end
    end
    
    local workerId = #Groups[id].workers+1
    Groups[id].workers[workerId] = inserted
    print(json.encode(Groups))
    TriggerClientEvent('qb-garbage:set:workerID', inserted.serverid, workerId, Groups)
    TriggerClientEvent("DoLongHudText", inserted.serverid,"you are in group: "..Groups[id].name, 1)
end)

RegisterNetEvent('qb-garbage:leftGroup')
AddEventHandler('qb-garbage:leftGroup', function(id, workerId)
    local src = source
    Groups[id].workers[workerId] = nil
    TriggerClientEvent('qb-garbage:set:workerID', src, 0, Groups)
end)

RPC.register('qb-garbage:createGroup', function(source, name, mode)
    local src = source
    name = name.param
    mode = mode.param
    local user = exports["qb-base"]:getModule("Player"):GetUser(src)
	local characterId = user:getCurrentCharacter().id
    local private = false
    if mode == 'yes' then
        private = true
    end
    local table = {
        started = false,
        owner = characterId,
        name = name,
        workers = {},
        runs = 0,
        private = private,
        coords = nil,
        vehicle = 0
    }
    local tableLenght = #Groups+1
    Groups[tableLenght] = table
    return tableLenght
end)


RegisterNetEvent('qb-garbage:addRun')
AddEventHandler('qb-garbage:addRun', function(id)
    Groups[id].runs = Groups[id].runs+1
    if Groups[id].runs >= Groups[id].maxRun then 
        Groups[id].runs = 0
        TriggerClientEvent('qb-garbage:client:endMission', -1, id)
        return 
    end
    TriggerClientEvent('qb-garbage:client:setRun', -1, Groups[id], id)
end)

RegisterNetEvent('qb-garbage:server:setData')
AddEventHandler('qb-garbage:server:setData', function(id, coords, vehicle, netid)
    Groups[id].coords = coords
    Groups[id].vehicle = vehicle
    Groups[id].netId = netid
    local max = 10
    if #Groups[id].workers > 2 then
        max = 20
    elseif #Groups[id].workers == 2 then
        max = 15
    end
    Groups[id].maxRun = max
    TriggerClientEvent('qb-garbage:client:setData', -1, Groups)
end)

RegisterNetEvent('qb-garbage:server:deleteGroup')
AddEventHandler('qb-garbage:server:deleteGroup', function(id)
    if not Groups[id] then return end
    Groups[id] = nil
end)