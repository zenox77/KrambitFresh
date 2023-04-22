previewEnabled = false
local usedItemId, usedItemSlot, usedItemMetadata

RegisterNetEvent("qb-racing:addedActiveRace")
AddEventHandler("qb-racing:addedActiveRace", function(race)
    print("ADDING ACTIVE RACE")
    activeRaces[race.id] = race

    if not config.nui.hudOnly then
        SendNUIMessage({
            activeRaces = activeRaces
        })
    end

    TriggerEvent("qb-racing:api:addedActiveRace", race, activeRaces)
    TriggerEvent("qb-racing:api:updatedState", { activeRaces = activeRaces })
end)

RegisterNetEvent("qb-racing:removedActiveRace")
AddEventHandler("qb-racing:removedActiveRace", function(id)
    print("REMOVE ACTIVE RACE")
    activeRaces[id] = nil

    if not config.nui.hudOnly then
        SendNUIMessage({
            activeRaces = activeRaces
        })
    end

    TriggerEvent("qb-racing:api:removedActiveRace", activeRaces)
    TriggerEvent("qb-racing:api:updatedState", { activeRaces = activeRaces })
end)

RegisterNetEvent("qb-racing:updatedActiveRace")
AddEventHandler("qb-racing:updatedActiveRace", function(race)
    if activeRaces[race.id] then
        activeRaces[race.id] = race
    end

    if not config.nui.hudOnly then
        SendNUIMessage({
            activeRaces = activeRaces
        })
    end

    TriggerEvent("qb-racing:api:updatedActiveRace", activeRaces)
    TriggerEvent("qb-racing:api:updatedState", { activeRaces = activeRaces })
end)

RegisterNetEvent("qb-racing:endRace")
AddEventHandler("qb-racing:endRace", function(race)
    print("RACE FUCKING END")
    SendNUIMessage({
        showHUD = false
    })

    TriggerEvent("qb-racing:api:raceEnded", race)
    TriggerEvent('qb-racing:qb-racing:api:updatedStat')
    cleanupRace()
end)

RegisterNetEvent("qb-racing:raceHistory")
AddEventHandler("qb-racing:raceHistory", function(race)
    finishedRaces[#finishedRaces + 1] = race

    if race then
        if not config.nui.hudOnly then
            SendNUIMessage({
                leaderboardData = race
            })
        end
    end

    TriggerEvent("qb-racing:api:raceHistory", race)
    TriggerEvent("qb-racing:api:updatedState", { finishedRaces = finishedRaces })
end)

RegisterNetEvent("qb-racing:startRace")
AddEventHandler("qb-racing:startRace", function(race, startTime)
    TriggerEvent("qb-racing:api:startingRace", startTime)
    -- Wait for race countdown
    Citizen.Wait(startTime - 3000)

    SendNUIMessage({
        type = "countdown",
        start = 3,
    })

    PlaySoundFrontend(-1, "Beep_Red", "DLC_HEIST_HACKING_SNAKE_SOUNDS")
    Citizen.Wait(1000)
    PlaySoundFrontend(-1, "Beep_Red", "DLC_HEIST_HACKING_SNAKE_SOUNDS")
    Citizen.Wait(1000)
    PlaySoundFrontend(-1, "Beep_Red", "DLC_HEIST_HACKING_SNAKE_SOUNDS")
    Citizen.Wait(1000)
    PlaySoundFrontend(-1, "Oneshot_Final", "MP_MISSION_COUNTDOWN_SOUNDSET")

    if not curRace then
        initRace(race)
        TriggerEvent("qb-racing:api:raceStarted", race)
    end
end)

RegisterNetEvent("qb-racing:updatePosition")
AddEventHandler("qb-racing:updatePosition", function(position)
    -- print("Position is now: " .. position)
    SendNUIMessage({
        HUD = { position = position }
    })
end)

RegisterNetEvent("qb-racing:dnfRace")
AddEventHandler("qb-racing:dnfRace", function()
    SendNUIMessage({
        HUD = { dnf = true }
    })

    TriggerEvent("qb-racing:api:dnfRace", race)
end)

RegisterNetEvent("qb-racing:startDNFCountdown")
AddEventHandler("qb-racing:startDNFCountdown", function(dnfTime)
    SendNUIMessage({
        HUD = { dnfTime = dnfTime }
    })
end)

function round(x, n) 
    return tonumber(string.format("%." .. n .. "f", x))
end

RegisterNetEvent("qb-racing:finishedRace")
AddEventHandler("qb-racing:finishedRace", function(position, time, pEnterAmt)
    if position == 1 then
        RPC.execute('qb-racing:awardPlayer', math.random(40, 50) + round(pEnterAmt / 6, 0))
    elseif position == 2 then
        RPC.execute('qb-racing:awardPlayer', math.random(20, 30))
    elseif position == 3 then
        RPC.execute('qb-racing:awardPlayer', math.random(10))
    end
    SendNUIMessage({
        HUD = {
            position = position,
            finished = time,
        }
    })
end)

RegisterNetEvent("qb-racing:joinedRace")
AddEventHandler("qb-racing:joinedRace", function(race)
    race.start.pos = tableToVector3(race.start.pos)
    spawnCheckpointObjects(race.start, config.startObjectHash)
end)

RegisterNetEvent("qb-racing:leftRace")
AddEventHandler("qb-racing:leftRace", function()
    cleanupProps()
    TriggerEvent('qb-racing:api:updatedState')
end)

RegisterNetEvent("qb-racing:playerJoinedYourRace")
AddEventHandler("qb-racing:playerJoinedYourRace", function(characterId, name)
    if characterId == getCharacterId() then return end

    TriggerEvent("qb-racing:api:playerJoinedYourRace", characterId, name)
end)

RegisterNetEvent("qb-racing:playerLeftYourRace")
AddEventHandler("qb-racing:playerLeftYourRace", function(characterId, name)
    if characterId == getCharacterId() then return end

    TriggerEvent("qb-racing:api:playerLeftYourRace", characterId, name)
end)

RegisterNetEvent("qb-racing:addedPendingRace")
AddEventHandler("qb-racing:addedPendingRace", function(race)
    pendingRaces[race.id] = race
    if not config.nui.hudOnly then
        SendNUIMessage({
            pendingRaces = pendingRaces
        })
    end

    TriggerEvent("qb-racing:api:addedPendingRace", race, pendingRaces)
    TriggerEvent("qb-racing:api:updatedState", { pendingRaces = pendingRaces })
end)

RegisterNetEvent("qb-racing:removedPendingRace")
AddEventHandler("qb-racing:removedPendingRace", function(id)
    pendingRaces[id] = nil

    SendNUIMessage({ pendingRaces = pendingRaces })

    TriggerEvent("qb-racing:api:removedPendingRace", pendingRaces)
    TriggerEvent("qb-racing:api:updatedState", {pendingRaces=pendingRaces})
end)

RegisterNetEvent("qb-racing:startCreation")
AddEventHandler("qb-racing:startCreation", function()
    startRaceCreation()
end)

RegisterNetEvent("qb-racing:addedRace")
AddEventHandler("qb-racing:addedRace", function(newRace, newRaces)
    if not races then return end
    races = newRaces

    SendNUIMessage({
        races = newRaces
    })

    TriggerEvent("qb-racing:api:addedRace")
    TriggerEvent("qb-racing:api:updatedState", {races=races})
end)

local function openAliasTextbox()
  exports['qb-interface']:openApplication('textbox', {
    callbackUrl = 'qb-interface:racing:input:alias',
    key = 1,
    items = {{icon = "pencil-alt", label = "Alias", name = "alias"}},
    show = true
  })
end

AddEventHandler("qb-inventory:itemUsed", function(item, metadata, inventoryName, slot)
  if item ~= "racingusb2" then return end
  usedItemId = item
  usedItemSlot = slot
  usedItemMetadata = json.decode(metadata)

  local characterId = exports["isPed"]:isPed("cid")
  if characterId ~= usedItemMetadata.characterId then
    TriggerEvent("DoLongHudText", "You don't own this usb!", 2)
    return
  end

  if usedItemMetadata.Alias then
    TriggerEvent("DoLongHudText", "Alias can't be changed for this usb!", 2)
    return
  end

  openAliasTextbox()
end)

RegisterInterfaceCallback("qb-interface:racing:input:alias", function(data, cb)
  cb({data = {}, meta = {ok = true, message = ''}})
  exports['qb-interface']:closeApplication('textbox')
  local alias = data.values.alias

  if usedItemMetadata.Alias then return end

  if not alias then
    TriggerEvent("DoLongHudText", "No alias entered!", 2)
    return
  end

  local success, msg = RPC.execute("qb-racing:setAlias", usedItemId, usedItemSlot, usedItemMetadata, alias)
  if success then
    exports["qb-phone"]:phoneNotification("racen", "Welcome to the underground, " .. alias .. ".", "From the PM", 5000)
  else
    TriggerEvent("DoLongHudText", msg or "Alias could not be set.", 2)
    if msg == "Alias already taken!" then
      openAliasTextbox()
    end
  end
end)

RegisterCommand("qb-racing:giveRacingUSB", function()
    RPC.execute("qb-racing:giveRacingUSB")
end)

AddEventHandler("onResourceStop", function (resourceName)
    if resourceName ~= GetCurrentResourceName() then return end

    cleanupProps()
    clearBlips()
    ClearGpsMultiRoute()
end)
local isRacing = false
SetLocalPlayerAsGhost(false)
-- Set our alpha to others as 254 (near ghost)
SetGhostedEntityAlpha(254)

function startBubblePopper(pRace)
    if not pRace.bubblePopper then return end

    -- print('Starting Race', json.encode(pRace))

    isRacing = true

    local playerIds = {}
    local playerPed = PlayerPedId()

    local serverId = GetPlayerServerId(PlayerId())

    for _, player in pairs(pRace.players) do
        if serverId ~= player.id then
            playerIds[player.id] = GetVehiclePedIsIn(GetPlayerPed(GetPlayerFromServerId(player.id)), false)
        end
    end

    -- print('Starting vehicle tracking...')

    local ghosted = false
    local forceOff = false

    -- Tracks nearby players
    Citizen.CreateThread(function()
        while isRacing do
            forceOff = false
            playerPed = PlayerPedId()
            local otherVehicles = GetGamePool('CVehicle')
            local myCoords = GetEntityCoords(playerPed)

            for _, vehicle in ipairs(otherVehicles) do
                local ped = GetPedInVehicleSeat(vehicle, -1)
                if ped ~= 0 and ped ~= playerPed and not playerIds[GetPlayerServerId(NetworkGetPlayerIndexFromPed(ped))] then
                    local dist = #(myCoords - GetEntityCoords(vehicle))
                    if dist < 35.0 then
                        forceOff = true -- Some other vehicle is too close, disable ghost mode
                    end
                end
            end

            for playerId, _ in pairs(playerIds) do
                playerIds[playerId] = GetVehiclePedIsIn(GetPlayerPed(GetPlayerFromServerId(playerId)), false)
            end
            Wait(1000)
        end
    end)

    Citizen.CreateThread(function()
        while isRacing do
            Wait(0) -- Update time, this will determine how fast we should disable when ramming someone, should be LOW

            local inRange = false
            local toClose = false
            local myCoords = GetEntityCoords(playerPed)
            local myVehicle = GetVehiclePedIsIn(playerPed, false)
            if myVehicle ~= 0 then
                local myVelocity = GetEntityVelocity(myVehicle)
                for _, vehicle in pairs(playerIds) do
                    local innerBubbleThreshold = 10.0
                    local dist = #(myCoords - GetEntityCoords(vehicle))
                    if dist < 25.0 then
                        inRange = true -- At least one vehicle close enough, enable ghost mode
                        local relativeVelocity = #(GetEntityVelocity(vehicle) - myVelocity)
                        innerBubbleThreshold = math.max(6.0, math.min(10.0, relativeVelocity + 3.0))
                    end
                    if dist < innerBubbleThreshold then
                        toClose = true -- At least one vehicle inside of us, disable ghost mode
                    end
                end

                if inRange and not toClose and not ghosted then
                    SetLocalPlayerAsGhost(true)
                    ghosted = true
                    --print('In range, ghosting')
                end

                if (toClose or forceOff) and ghosted then
                    SetLocalPlayerAsGhost(false)
                    ghosted = false
                    --print('To close, disabling')
                end

                if not inRange and not toClose and ghosted then
                    SetLocalPlayerAsGhost(false)
                    ghosted = false
                    --print('Nobody in range and not to close, disabling')
                end
            end
        end
        SetLocalPlayerAsGhost(false)
        ghosted = false
    end)
end

AddEventHandler("qb-racing:api:currentRace", function(currentRace)
    isRacing = currentRace ~= nil
    if isRacing then
        startBubblePopper(currentRace)
    end
end)
