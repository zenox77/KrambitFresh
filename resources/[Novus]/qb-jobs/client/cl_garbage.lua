local truckcoords
local inTruck
local missionBlip = nil
local binCoords = false
local AtGarbageSpot = false
local truckplate = false
local truckTaken = false
local jobCompleted = false
local doingGarbage = false
local maxruns = 10
local runs = 0
local arrived 
local jobBlip
local submitBlip


local workerId = nil
local globalId = nil


local submitCoords = vector3(-354.28,-1560.88,24.9)
local Groups = {}


local JobCoords = {
    {x = 114.83280181885, y = -1462.3127441406, z = 29.295083999634},
    {x = -6.0481648445129, y = -1566.2338867188, z = 29.209197998047},
    {x = -1.8858588933945, y = -1729.5538330078, z = 29.300233840942},
    {x = 159.09, y = -1816.69, z = 27.9},
    {x = 358.94696044922, y = -1805.0723876953, z = 28.966590881348},
    {x = 481.36560058594, y = -1274.8297119141, z = 29.64475440979},
    {x = 254.70010375977, y = -985.32482910156, z = 29.196590423584},
    {x = 240.08079528809, y = -826.91204833984, z = 30.018426895142},
    {x = 342.78308105469, y = -1036.4720458984, z = 29.194206237793},
    {x = 462.17517089844, y = -949.51434326172, z = 27.959424972534},
    {x = 317.53698730469, y = -737.95416259766, z = 29.278547286987},
    {x = 410.22503662109, y = -795.30517578125, z = 29.20943069458},
    {x = 398.36038208008, y = -716.35577392578, z = 29.282489776611},
    {x = 443.96984863281, y = -574.33978271484, z = 28.494501113892},
    {x = -1332.53, y = -1198.49, z = 4.62},
    {x = -45.443946838379, y = -191.32261657715, z = 52.161594390869},
    {x = -31.948055267334, y = -93.437454223633, z = 57.249073028564},
    {x = 283.10873413086, y = -164.81878662109, z = 60.060565948486},
    {x = 441.89678955078, y = 125.97653198242, z = 99.887702941895},
}

local Dumpsters = {
    "prop_dumpster_01a",
    "prop_dumpster_02a",
    "prop_dumpster_02b",
    "prop_dumpster_3a",
    "prop_dumpster_4a",
    "prop_dumpster_4b",
    "prop_skip_01a",
    "prop_skip_02a",
    "prop_skip_06a",
    "prop_skip_05a",
    "prop_skip_03",
    "prop_skip_10a"
}

local GetPlayers = function()
    local players = {}
    for _, player in ipairs(GetActivePlayers()) do
        local ped = GetPlayerPed(player)
        if DoesEntityExist(ped) then
            table.insert(players, player)
        end
    end
    return players
end

local GetPlayersFromCoords = function(coords, distance)
    local players = GetPlayers()
    local closePlayers = {}
    if coords == nil then
		coords = GetEntityCoords(PlayerPedId())
    end
    if distance == nil then
        distance = 5.0
    end
    for _, player in pairs(players) do
		local target = GetPlayerPed(player)
		local targetCoords = GetEntityCoords(target)
		local targetdistance = #(targetCoords - coords)
		if targetdistance <= distance then
			table.insert(closePlayers, player)
		end
    end
    return closePlayers
end

local GetClosestPlayer = function(coords)
	if coords == nil then
        coords = GetEntityCoords(PlayerPedId())
	end
	local closestPlayers = GetPlayersFromCoords(coords)
    local closestDistance = -1
    local closestPlayer = -1
    for i=1, #closestPlayers, 1 do
        if closestPlayers[i] ~= PlayerId() and closestPlayers[i] ~= -1 then
            local pos = GetEntityCoords(GetPlayerPed(closestPlayers[i]))

            local distance = #(pos - coords)
            if closestDistance == -1 or closestDistance > distance then
                closestPlayer = closestPlayers[i]
                closestDistance = distance
            end
        end
	end
	return closestPlayer, closestDistance
end

Citizen.CreateThread(function()
    exports["qb-polyzone"]:AddBoxZone("garbage_start", vector3(-322.24060058594, -1545.8980712891, 31.019908905029), 2.5, 5, {
        name="garbage_start",
        heading=0,
        debugPoly=false
    })
end)

exports["qb-polytarget"]:AddCircleZone(
    "garbagehomie",
    vector3(-355.31, -1546.01, 27.72), 1.35,{
        useZ = true,
        debugPoly = false
    }
);

--[[exports["qb-interact"]:AddPeekEntryByPolyTarget({ "garbagehomie" }, {{
    id = "garbagehomie",
    event = "qb-garbage:invite",
    icon = "fas fa-circle",
    label = "Check Group",
    parameters = {},
  }} , { distance = { radius = 5.5 } })]]
  exports['qb-interact']:AddPeekEntryByPolyTarget('garbagehomie', {{
    event = "qb-garbage:invite",
    id = "garbagehomie",
    icon = "fas fa-user",
    label = "Check Group",
    parameters = {}
}}, {distance = {radius = 3.5}})






RegisterNetEvent('qb-polyzone:enter')
AddEventHandler('qb-polyzone:enter', function(name)
    if name == "garbage_start" then
        AtGarbageSpot = true     
    end
end)

RegisterNetEvent('qb-polyzone:exit')
AddEventHandler('qb-polyzone:exit', function(name)
    if name == "garbage_start" then
        AtGarbageSpot = false     
    end
end)

RegisterNetEvent('qb-garbage:set:workerID')
AddEventHandler('qb-garbage:set:workerID', function(ID, data)
    workerId = ID
    Groups = data
end)

RegisterNetEvent('qb-garbage:client:start:SyncGroups')
AddEventHandler('qb-garbage:client:start:SyncGroups', function(groupId)
    local cid = exports["isPed"]:isPed("cid")
    print(groupId, workerId)
    if Groups[groupId] and Groups[groupId].workers[workerId].cid == cid then
        print('job started')
        TriggerEvent('qb-garbage:starting', groupId)
    end
end)

RegisterNetEvent('qb-garbage:checkGroup')
AddEventHandler('qb-garbage:checkGroup', function()
    local cid = exports["isPed"]:isPed("cid")
    if Groups[globalId] and Groups[globalId].owner == cid then
        TriggerServerEvent('qb-garbage:server:start:SyncGroups', globalId)
    elseif Groups[globalId] and Groups[globalId].owner ~= cid then
        TriggerEvent('DoShortHudText', 'you can\'t start the work because you are not group owner, leave the group to start solo!', 2)
    else
        TriggerEvent('qb-garbage:starting', 'solo')
    end
end)


local waitData = true
RegisterNetEvent('qb-garbage:client:setData')
AddEventHandler('qb-garbage:client:setData', function(data)
    Groups = data
    waitData = false
end)

RegisterNetEvent('qb-garbage:starting')
AddEventHandler('qb-garbage:starting', function(mode)
   -- if AtGarbageSpot then
        if not truckTaken then
            local cid = exports["isPed"]:isPed("cid")
            if Groups[mode] and Groups[mode].owner == cid then 
                truckTaken = true
                local random = math.random(1, #JobCoords)
                local coordVec = vector3(JobCoords[random].x, JobCoords[random].y, JobCoords[random].z)
                local engine = not GetIsVehicleEngineRunning(veh)
                local car = GetHashKey('trash')
                RequestModel(car)
                while not HasModelLoaded(car) do
                    Citizen.Wait(0)
                end
                vehicle = CreateVehicle(car, -323.53, -1523.58, 27.00, 269.7, true, false)
                truckplate = GetVehicleNumberPlateText(vehicle)
                TriggerEvent('qb-phone:JobNotifyCloseNotFully')
                TriggerEvent('qb-phone:JobNotifyStable', 'Garbage Job', "GPS Location marked")
                NetworkRegisterEntityAsNetworked(vehicle)		
		        local netid = NetworkGetNetworkIdFromEntity(vehicle)
		        SetNetworkIdExistsOnAllMachines(netid, true)
		        SetNetworkIdCanMigrate(netid, true)
               -- TaskWarpPedIntoVehicle(PlayerPedId(), vehicle, -1) 
                TriggerEvent("keys:addNew", vehicle, truckplate)
                SetVehicleEngineOn(vehicle, engine, false, true)
                TriggerServerEvent('qb-garbage:server:setData', mode, coordVec, vehicle, netid)
                waitData = true
                while waitData do Wait(0) end
                missionStart(Groups[mode].coords, Groups[mode].vehicle, Groups[mode].maxRun, mode)
            elseif Groups[mode] and Groups[mode].workers[workerId].cid == cid then
                TriggerEvent('qb-phone:JobNotifyCloseNotFully')
                TriggerEvent('qb-phone:JobNotifyStable', 'Garbage Job', "GPS Location marked")
                waitData = true
                while waitData do Wait(0) end
                missionStart(Groups[mode].coords, Groups[mode].vehicle, Groups[mode].maxRun, mode)
            elseif mode == 'solo' then
                truckTaken = true
                local random = math.random(1, #JobCoords)
                local coordVec = vector3(JobCoords[random].x, JobCoords[random].y, JobCoords[random].z)
                local engine = not GetIsVehicleEngineRunning(veh)
                local car = GetHashKey('trash')
                RequestModel(car)
                while not HasModelLoaded(car) do
                    Citizen.Wait(0)
                end
                vehicle = CreateVehicle(car, -323.53, -1523.58, 27.00, 269.7, true, false)
                truckplate = GetVehicleNumberPlateText(vehicle)
                TriggerEvent('qb-phone:JobNotifyCloseNotFully')
                TriggerEvent('qb-phone:JobNotifyStable', 'Garbage Job', "GPS Location marked")
                SetEntityAsMissionEntity(vehicle, true, true)
               -- TaskWarpPedIntoVehicle(PlayerPedId(), vehicle, -1) 
                TriggerEvent("keys:addNew", vehicle, truckplate)
                SetVehicleEngineOn(vehicle, engine, false, true)
                Citizen.Wait(1000)
                missionStart(coordVec,vehicle, 15, 0)
            end
        else
            TriggerEvent('DoShortHudText', 'You already taken a truck for the job!', 2)
        end
    --end
end)

RegisterNetEvent('qb-garbage:invite')
AddEventHandler('qb-garbage:invite', function()
    TriggerEvent('qb-context:sendMenu', {
        {
            id = 1,
            header = "<b style='color:skyblue;'>Group Settings</b>",
            txt = '',
        },
        {
            id = 2,
            header = "<b style='color:skyblue;'>Create Group</b>",
            txt = 'Grab some buddies and tackle jobs together',
            params = {
                event = "qb-garbage:createGroup",
            }
        },
        {
            id = 3,
            header = "<b style='color:skyblue;'>View Groups</b>",
            txt = 'Displays a list of all current active groups',
            params = {
                event = "qb-garbage:getGroups",
            }
        },
    })
end)

RegisterNetEvent('qb-garbage:getGroups')
AddEventHandler('qb-garbage:getGroups', function()
    Groups = RPC.execute("qb-garbage:getGroups") 
    for i=1 , #Groups do
        TriggerEvent('qb-context:sendMenu', {
            {
                id = 1,
                header = "<b style='color:skyblue;'>Group #"..i.." | Name: "..Groups[i].name.."</b>",
                txt = 'Click for more info!',
                params = {
                    event = "qb-garbage:groupInfo",
                    args = {
                        id = i
                    }
                }
            },
        })
    end
end)

RegisterNetEvent('qb-garbage:groupInfo')
AddEventHandler('qb-garbage:groupInfo', function(data)
    local cid = exports["isPed"]:isPed("cid")
    local id = data.id
    local private = 'No'
    if id and Groups[id].private == true then
        private = 'Yes'
    end

    if globalId == id then
        if Groups[id].private and Groups[id].owner == cid then
            TriggerEvent('qb-context:sendMenu', {
                {
                    id = 1,
                    header = "<b style='color:skyblue;'>Group #"..id.." | Name: "..Groups[id].name.."</b>",
                    txt = 'Workers: '..#Groups[id].workers..'  | Private: '..private,
                },
                {
                    id = 2,
                    header = "<b style='color:skyblue;'>Leave</b>",
                    txt = 'Leave group',
                    params = {
                        event = "qb-garbage:leftGroup",
                        args = {
                            id = id
                        }
                    }
                },
                {
                    id = 3,
                    header = "<b style='color:skyblue;'>Invite</b>",
                    txt = 'invite closest people',
                    params = {
                        event = "qb-garbage:inviteClose",
                        args = {
                            id = id
                        }
                    }
                },
                {
                    id = 4,
                    header = "<b style='color:skyblue;'>Delete</b>",
                    txt = 'Delete Group',
                    params = {
                        event = "qb-garbage:deleteGroup",
                        args = {
                            id = id
                        }
                    }
                },
            })
            return
        elseif Groups[id].owner == cid and not Groups[id].private then
            TriggerEvent('qb-context:sendMenu', {
                {
                   id = 1,
                   header = "<b style='color:skyblue;'>Group #"..id.." | Name: "..Groups[id].name.."</b>",
                   txt = 'Workers: '..#Groups[id].workers..'  | Private: '..private,
                },
                {
                   id = 2,
                   header = "<b style='color:skyblue;'>Leave</b>",
                   txt = 'Leave group',
                   params = {
                       event = "qb-garbage:leftGroup",
                       args = {
                           id = id
                       }
                   }
                },
                {
                    id = 3,
                    header = "<b style='color:skyblue;'>Delete</b>",
                    txt = 'Delete Group',
                    params = {
                        event = "qb-garbage:deleteGroup",
                        args = {
                            id = id
                        }
                    }
                },
           })
           return
        end
        TriggerEvent('qb-context:sendMenu', {
            {
                id = 1,
                header = "<b style='color:skyblue;'>Group #"..id.." | Name: "..Groups[id].name.."</b>",
                txt = 'Workers: '..#Groups[id].workers..'  | Private: '..private,
            },
            {
                id = 2,
                header = "<b style='color:skyblue;'>Leave</b>",
                txt = 'Leave group',
                params = {
                    event = "qb-garbage:leftGroup",
                    args = {
                        id = id
                    }
                }
            },
        })
        return
    end

    if Groups[id].private and Groups[id].owner == cid then
        TriggerEvent('qb-context:sendMenu', {
            {
                id = 1,
                header = "<b style='color:skyblue;'>Group #"..id.." | Name: "..Groups[id].name.."</b>",
                txt = 'Workers: '..#Groups[id].workers..'  | Private: '..private,
            },
            {
                id = 2,
                header = "<b style='color:skyblue;'>Join</b>",
                txt = 'join group',
                params = {
                    event = "qb-garbage:enterGroup",
                    args = {
                        id = id
                    }
                }
            },
            {
                id = 3,
                header = "<b style='color:skyblue;'>Invite</b>",
                txt = 'invite closest people',
                params = {
                    event = "qb-garbage:inviteClose",
                    args = {
                        id = id
                    }
                }
            },
            {
                id = 4,
                header = "<b style='color:skyblue;'>Delete</b>",
                txt = 'Delete Group',
                params = {
                    event = "qb-garbage:deleteGroup",
                    args = {
                        id = id
                    }
                }
            },
        })
        return 
    end
    if not Groups[id].private then
        TriggerEvent('qb-context:sendMenu', {
            {
                id = 1,
                header = "<b style='color:skyblue;'>Group #"..id.." | Name: "..Groups[id].name.."</b>",
                txt = 'Workers: '..#Groups[id].workers..'  | Private: '..private,
            },
            {
                id = 2,
                header = "<b style='color:skyblue;'>Join</b>",
                txt = 'join group',
                params = {
                    event = "qb-garbage:enterGroup",
                    args = {
                        id = id
                    }
                }
            },
        })
        return
    end
    TriggerEvent('qb-context:sendMenu', {
        {
            id = 1,
            header = "<b style='color:skyblue;'>Group #"..id.." | Name: "..Groups[id].name.."</b>",
            txt = 'Workers: '..#Groups[id].workers..'  | Private: '..private,
        }
    })
end)

RegisterNetEvent('qb-garbage:deleteGroup')
AddEventHandler('qb-garbage:deleteGroup', function(data)
    local id = data.id
    TriggerServerEvent('qb-garbage:server:deleteGroup', id)
end)

RegisterNetEvent('qb-garbage:inviteClose')
AddEventHandler('qb-garbage:inviteClose', function(data)
    local id = data.id
    local cid = exports["isPed"]:isPed("cid")
    local PlayerSrc, Distance = GetClosestPlayer()
    if PlayerSrc ~= -1 and Distance < 1.5 then
        local player = RPC.execute("qb-garbage:getPlayer", GetPlayerServerId(PlayerSrc))
        if not player then return end
        TriggerServerEvent('qb-garbage:enterGroup', id, player)
        globalId = id
    else
        TriggerEvent("DoLongHudText", "Nobody found?", 1)
    end
end)

RegisterNetEvent('qb-garbage:leftGroup')
AddEventHandler('qb-garbage:leftGroup', function(data)
    local id = data.id
    local cid = exports["isPed"]:isPed("cid")
    for i=1, #Groups[id].workers do
        if Groups[id].workers[i].cid == cid then
            TriggerServerEvent('qb-garbage:leftGroup', id, i)
        end
    end
    globalId = 0
end)

RegisterNetEvent('qb-garbage:enterGroup')
AddEventHandler('qb-garbage:enterGroup', function(data)
    local id = data.id
    if Groups[id].private == true then  TriggerEvent('DoShortHudText', 'This group is private you need a invitation to enter!', 2) return end
    TriggerServerEvent('qb-garbage:enterGroup', id)
    globalId = id
end)

RegisterNetEvent('qb-garbage:createGroup')
AddEventHandler('qb-garbage:createGroup', function()
    local cid = exports["isPed"]:isPed("cid")
    local url = exports["qb-applications"]:KeyboardInput({
        header = "Group Details",
        rows = {
            {
                id = 0,
                icon = "fas fa-user",
                txt = "Group name (one word)"
            },
            {
                id = 1,
                icon = "fas fa-keyboard",
                txt = "Private (yes/no)"
            },
        }
    })

    if url then
        local groupId = RPC.execute("qb-garbage:createGroup", url[1].input, url[2].input)
        TriggerServerEvent('qb-garbage:enterGroup', groupId)
        globalId = groupId
    end
end)

RegisterNetEvent('qb-garbage:client:endJob')
AddEventHandler('qb-garbage:client:endJob', function(id)
    local cid = exports["isPed"]:isPed("cid")
    print(id, workerId)
    if Groups[id] and Groups[id].workers[workerId].cid == cid then
        print('get payed')
        TriggerServerEvent('qb-garbage:pay', true, id, workerId)
    end
end)

RegisterNetEvent('qb-garbage:client:endMission')
AddEventHandler('qb-garbage:client:endMission', function(id)
    local cid = exports["isPed"]:isPed("cid")
    if Groups[id] and Groups[id].workers[workerId].cid == cid then
        print('mission end\'s')
        submit(id)
        doingGarbage = false
        TriggerEvent('qb-phone:JobNotifyCloseNotFully')
        TriggerEvent('qb-phone:JobNotifyStable', 'Garbage Job', "Job done! Return to HQ")
        RemoveBlip(jobBlip)
        submitBlip = AddBlipForCoord(submitCoords)
        SetBlipColour(submitBlip, 25)
    end
end)

function submit(id)
    Citizen.CreateThread(function()
        local pressed = false
        local wait = 100
        while true do
            Citizen.Wait(wait)
            local playerPed = PlayerPedId()
            local plyCoords = GetEntityCoords(playerPed)
            local distance = GetDistanceBetweenCoords(plyCoords,submitCoords, true) 
            if distance < 20 then
                wait = 5
                if IsPedInAnyVehicle(playerPed) then
                    DrawMarker(2, submitCoords+vector3(0.0,0.0,2.0), 0.0, 0.0, 0.0, 0, 0.0, 0.0, 1.0, 1.0, 1.0, 255, 0, 0, 150, false, true, 2, false, false, false, false)
                    local truck = GetVehiclePedIsIn(playerPed, false)
                    local plate = GetVehicleNumberPlateText(truck)
                    if distance < 2.0 then
                       -- ShowHelpNotification("Press ~INPUT_CONTEXT~ to drop off trash", true, true, 5000)
                      -- TriggerEvent('qb-textui:ShowUI', 'show', ("[E] %s"):format("to drop off trash")) 
                        if IsControlJustReleased(1,46) and not pressed then
                            truckTaken = false
                            pressed = true
                            RemoveBlip(submitBlip)
                            if plate == truckplate then
                                jobCompleted = true
                                local finished = exports["qb-taskbar"]:taskBar(5000,"Dropping off trash")
                                if finished == 100 then
                                    TriggerEvent('player:receiveItem', 'recyclablematerial', math.random(10, 35))
                                    if id == 0 then
                                        TriggerServerEvent('qb-garbage:pay', jobCompleted, id, workerId)
                                    else
                                        print('here!!!!!!!!!!!!')
                                        TriggerServerEvent('qb-garbage:group:end', id)
                                    end
                                    TriggerEvent('qb-phone:JobNotifyClose')
                                    jobCompleted = false
                                    DeleteVehicle(truck)
                                    for i=1,200,1 do 
                                        if DoesEntityExist(truck) then
                                            DeleteVehicle(truck)
                                        else
                                            truckplate = false
                                            truckTaken = false
                                            return
                                        end
                                    end
                                    truckplate = false
                                    Citizen.Wait(1000)
                                    pressed = false    
                                end
                     
                            else
                                TriggerEvent("DoLongHudText", "This is not our vehicle", 2)
                                Citizen.Wait(1000)
                                pressed = false
                            end
                            Citizen.Wait(1000)
                            pressed = false
                        end
                    end
                end
            else
                wait = 100
            end
        end
    end)
end

function missionStart(coordVec,xtruck, maxRuns, groupId)
    local vehicle = xtruck
    arrived = false
    missionBlip = AddBlipForCoord(coordVec)
    SetBlipRoute(missionBlip, true)
    SetBlipRouteColour(missionBlip, 25)
    SetBlipColour(missionBlip, 25)
    Citizen.CreateThread(function()
        local wait = 100
        while not arrived do
            Citizen.Wait(wait)
            local tempdist = #(GetEntityCoords(PlayerPedId()) - coordVec)
            if  tempdist < 50 then
                wait = 5
                DrawMarker(20, coordVec + vector3(0.0,0.0,3.5), 0.0, 0.0, 0.0, 0, 0.0, 0.0, 2.0, 2.0, 1.0, 0, 120, 0, 200, false, true, 2, false, false, false, false)
                if tempdist < 2 then
                    arrived = true
                    maxruns = maxRuns
                    Citizen.Wait(1000)
                    SetBlipRoute(missionBlip, false)
                    RemoveBlip(missionBlip)
                    findtrashbins(coordVec,vehicle,0, groupId)
                end
            else
                wait = 100
            end
        end
    end)      
end


RegisterNetEvent('qb-garbage:client:setRun')
AddEventHandler('qb-garbage:client:setRun', function(group, id)
    local cid = exports["isPed"]:isPed("cid")
    if group and group.workers[workerId].cid == cid and group.runs < group.maxRun then
        TriggerEvent('qb-phone:JobNotifyCloseNotFully')
        TriggerEvent('qb-phone:JobNotifyStable', 'Garbage Job', "(".. group.runs .. "/" .. group.maxRun ..") PICK UP THE TRASH " )
    end
end)

function findtrashbins(coordVec,xtruck,pickup, groupId)
    doingGarbage = true
    local location = coordVec
    local vehicle = xtruck
    local playerPed = PlayerPedId()
    local boneindex = GetPedBoneIndex(playerPed, 57005)
    runs = pickup
    if not HasAnimDictLoaded("anim@heists@narcotics@trash") then
        RequestAnimDict("anim@heists@narcotics@trash")
    end
    while not HasAnimDictLoaded("anim@heists@narcotics@trash") do
        Citizen.Wait(0)
    end
    if runs < maxruns then
        angle = math.random()*math.pi*2;
        r = math.sqrt(math.random());
        x = coordVec.x + r * math.cos(angle) * 100;     
        y = coordVec.y + r * math.sin(angle) * 100;
        for i = 0, #Dumpsters, 1 do 
            local NewBin = GetClosestObjectOfType(x, y, coordVec.z, 100.0, GetHashKey(Dumpsters[i]), false)
            if runs == 0 then
                TriggerEvent('qb-phone:JobNotifyCloseNotFully')
                TriggerEvent('qb-phone:JobNotifyStable', 'Garbage Job', "(0/" .. maxruns ..") PICK UP THE TRASH " )
            end
            if groupId == 0 then
               TriggerEvent('qb-phone:JobNotifyCloseNotFully')
               TriggerEvent('qb-phone:JobNotifyStable', 'Garbage Job', "(".. runs .. "/" .. maxruns ..") PICK UP THE TRASH " )
            end
            if NewBin ~= 0 then
                local dumpCoords = GetEntityCoords(NewBin)
                jobBlip = AddBlipForCoord(dumpCoords)
                SetBlipSprite(jobBlip, 420)
                SetBlipScale (jobBlip, 0.8)
                SetBlipColour(jobBlip, 25)
                while true do
                    Wait(5) 
                    local userDist = GetDistanceBetweenCoords(dumpCoords,GetEntityCoords(PlayerPedId()),true) 
                    if userDist < 20 then
                        DrawMarker(20, dumpCoords + vector3(0.0,0.0,2.5), 0.0, 0.0, 0.0, 0, 0.0, 0.0, 2.0, 2.0, 1.0, 0, 120, 0, 200, false, true, 2, false, false, false, false)
                        if userDist < 2 then
                            TriggerEvent('qb-textui:ShowUI', 'show', ("[E] %s"):format("to collect trash")) 
                            if IsControlJustReleased(1,46) then
                                local geeky = CreateObject(GetHashKey("hei_prop_heist_binbag"), 0, 0, 0, true, true, true)
                                AttachEntityToEntity(geeky, playerPed, boneindex, 0.12, 0.0, 0.00, 25.0, 270.0, 180.0, true, true, false, true, 1, true)
                                TaskPlayAnim(PlayerPedId(-1), 'anim@heists@narcotics@trash', 'walk', 1.0, -1.0,-1,49,0,0, 0,0)
                                RemoveBlip(jobBlip)
                                TriggerEvent('qb-textui:HideUI')
                                collectedtrash(geeky,vehicle,location,runs, groupId)
                                return
                            end
                        end
                    end
                end
                return
            end
        end
    else
        if groupId ~= 0 then return end
        submit(groupId)
        doingGarbage = false
        TriggerEvent('qb-phone:JobNotifyCloseNotFully')
        TriggerEvent('qb-phone:JobNotifyStable', 'Garbage Job', "Job done! Return to HQ")
        submitBlip = AddBlipForCoord(submitCoords)
        SetBlipColour(submitBlip, 25)
    end
end


RegisterNetEvent("stopgarbagelol")
AddEventHandler("stopgarbagelol",function()
    doingGarbage = false
    truckTaken = false
    TriggerEvent('qb-phone:JobNotifyClose')
end)

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(5)
        if havingGarbageJob then
            if not IsPedInAnyVehicle(PlayerPedId()) then
                if doingGarbage then
                    DisplayRadar(true)
                else
                    DisplayRadar(false)
                end
            end
        end
    end
end)

function collectedtrash(geeky,vehicle,location,pickup, groupId)
    local wait = 100
    local trashbag = geeky
    local pressed = false
    while true do
        Wait(wait)
        local trunkcoord = GetWorldPositionOfEntityBone(NetToVeh(Groups[groupId].netId), GetEntityBoneIndexByName(NetToVeh(Groups[groupId].netId), "platelight"))
        local tdistance = #(GetEntityCoords(PlayerPedId()) - trunkcoord)
        local runs = pickup
        if tdistance < 20 then
            wait = 5
            DrawMarker(20, trunkcoord + vector3(0.0,0.0,0.5), 0.0, 0.0, 0.0, 0, 0.0, 0.0, 1.0, 1.0, 1.0, 0, 120, 0, 200, false, true, 2, false, false, false, false)
            if tdistance < 2 then
               -- ShowHelpNotification("Press ~INPUT_CONTEXT~ to throw trash", true, true, 5000)
                TriggerEvent('qb-textui:ShowUI', 'show', ("[E] Throw trash bag in back of truck"):format("")) 
                if IsControlJustReleased(1, 46) and not pressed then
                    pressed = true
                    TriggerServerEvent('qb-garbage:reward', true)
                    ClearPedTasksImmediately(PlayerPedId())
                    TaskPlayAnim(PlayerPedId(), 'anim@heists@narcotics@trash', 'throw_b', 1.0, -1.0,-1,2,0,0, 0,0)
                    Citizen.Wait(100)
                    DeleteObject(trashbag)
                    Citizen.Wait(2000)
                    ClearPedTasksImmediately(PlayerPedId())
                    TriggerEvent('qb-textui:HideUI')
                    local total = runs+1
                    TriggerServerEvent('qb-garbage:addRun', groupId)
                    findtrashbins(location, NetToVeh(Groups[groupId].netId),total, groupId)
                    pressed = false
                    return
                end
            end
        end
    end
end


function DrawText3Ds(x,y,z, text)
    local onScreen,_x,_y=World3dToScreen2d(x,y,z)
    local px,py,pz=table.unpack(GetGameplayCamCoords())
    SetTextScale(0.35, 0.35)
    SetTextFont(4)
    SetTextProportional(1)
    SetTextColour(255, 255, 255, 215)
    SetTextEntry("STRING")
    SetTextCentre(1)
    AddTextComponentString(text)
    DrawText(_x,_y)
    local factor = (string.len(text)) / 370
    DrawRect(_x,_y+0.0125, 0.015+ factor, 0.03, 41, 11, 41, 68)
end

RegisterNetEvent('truck')
AddEventHandler('truck', function()
    Citizen.Wait(0)
    local closest = GetClosestVehicle(-321.61740112305, -1524.6469726562, 27.547359466553, 3.000, 0, 70)
    if DoesEntityExist(closest) then
        TriggerEvent("DoLongHudText", "The area is crowded, you have been refunded!",2)
        return
    end

    if lastPlate ~= nil then
        TriggerEvent("keys:remove",lastPlate)
    end
   

    local myPed = PlayerPedId()
    local player = PlayerId()
    local vehicle = `trash`
    RequestModel(vehicle)
    while not HasModelLoaded(vehicle) do
        Wait(1)
    end

  local plate = "GARBAGE ".. GetRandomIntInRange(1000, 9000)
    local spawned_car = CreateVehicle(vehicle, -321.61740112305, -1524.6469726562, 27.547359466553, -20.0, true, false)

    SetVehicleOnGroundProperly(spawned_car)
    SetVehicleNumberPlateText(spawned_car, plate)
    TriggerEvent("keys:addNew",spawned_car,plate)
    TriggerServerEvent('garages:addJobPlate', plate)
    SetPedIntoVehicle(myPed, spawned_car, - 1)
    lastPlate = plate
   
   
  Wait(250)
  TriggerEvent('car:engine')
end)