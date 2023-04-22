local status = false
RegisterNUICallback('importados', function()
  SendNUIMessage({ openSection = "importados", showCarPaymentsOwed = showCarPayments, vehicleData = parsedVehicleData})
end)

RegisterNUICallback('job-center', function(data, cb)
  -- local idle = RPC.execute("qb-phone:getIdleGroup")
  -- local myG = RPC.execute("qb-phone:getMyGroup")
  -- local data, members = RPC.execute("qb-phone:getGroupSanitation")
  -- -- print(json.encode(data),data)
  -- local myGroup = RPC.execute('qb-phone:getMyGroup',exports['isPed']:isPed('cid'))
  -- local members = RPC.execute("qb-phone:get_groupsMem")
  print("IDLE GROUP", json.encode(idle))
  print("MY GROUP", json.encode(myG))
  print("MEMBERS", json.encode(members))
  SendNUIMessage({
    openSection = "job-center",
    idle = idle,
    myG = myG,
    members = members,
    mysrc = GetPlayerServerId(PlayerId())
  })
end)

RegisterNetEvent('refreshJobCenter')
AddEventHandler('refreshJobCenter', function()
  -- local idle = RPC.execute("qb-phone:getIdleGroup")
  -- local myG = RPC.execute("qb-phone:getMyGroup")
  -- local data, members = RPC.execute("qb-phone:getGroupSanitation")
  -- -- print(json.encode(data),data)
  -- local myGroup = RPC.execute('qb-phone:getMyGroup',exports['isPed']:isPed('cid'))
  -- local members = RPC.execute("qb-phone:get_groupsMem")
  -- print("IDLE GROUP", json.encode(idle))
  -- print("MY GROUP", json.encode(myG))
  -- print("MEMBERS", json.encode(members))
  SendNUIMessage({
    openSection = "job-center",
    -- idle = idle,
    -- myG = myG,
    -- members = members,
    mysrc = GetPlayerServerId(PlayerId())
  })
end)

RegisterNUICallback('setwaypointImpound', function()
  SetNewWaypoint(1587.6922607422, 3841.8198242188)
end)

RegisterNUICallback('c_group', function()
  local create = RPC.execute("qb-phone:c_group")
end)

RegisterNUICallback('j_group', function(data)
  local gId = data.gId
  print("Group ID:",gId)
  RPC.execute("qb-phone:j_group", gId)
end)

RegisterNUICallback('group_status', function(data)
  print("STATUS", data.status)
  status = data.status
  local gId = data.gid
  RPC.execute("qb-phone:g_ready",status,id)
end)

RegisterNUICallback('leave_group', function(data)
  local gId = data.gid
  RPC.execute('qb-phone:leave_group', gId)
end)

RegisterCommand('group', function()
  local members = RPC.execute("qb-phone:get_groupsMem")
  print('GROUPS', json.encode(members))
end)