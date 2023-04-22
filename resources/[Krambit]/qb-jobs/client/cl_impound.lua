local pPlate = nil

RegisterNetEvent('qb-jobs:impound')
AddEventHandler('qb-jobs:impound', function()
    local ImpoundMenu = {
		{
      title = "Release Vehicle",
      description = "Release a vehicle from the impound lot",
      key = "ReleaseVehicle",
      children = {
          {
            title = "Browse by Plate",
            description = "Release a vehicle from impound by plate",
            action = "qb-jobs:browse_plate",
          },
        },
      }
    }
    exports["qb-interface"]:showContextMenu(ImpoundMenu)
end)

RegisterInterfaceCallback('qb-jobs:browse_plate', function(data, cb)
  cb({ data = {}, meta = { ok = true, message = '' } })
    exports['qb-interface']:openApplication('textbox', {
        callbackUrl = 'qb-jobs:pPlateBrowse',
        key = 1,
        items = {
          {
            icon = "car",
            label = "Vehicle Plate.",
            name = "pVehPlate",
          },
        },
      show = true,
    })
end)

RegisterInterfaceCallback('qb-jobs:pPlateBrowse', function(data, cb)
  cb({ data = {}, meta = { ok = true, message = '' } })
  pPlate = data.values.pVehPlate
  
  TriggerServerEvent('qb-impound:select_plate', pPlate)
end)

RegisterNetEvent('qb-impound:show_car')
AddEventHandler('qb-impound:show_car', function(pVehicleModel, pVehiclePlate, pState)
    local pVehicle = {
		  {
        title = "Vehicle Model: "..pVehicleModel,
        description = "Vehicle Plate: "..pVehiclePlate,
      },
      {
        title = "Release Vehicle",
        disabled = pState,
        action= "qb-jobs:release_vehicle",
      }
    }
    exports["qb-interface"]:showContextMenu(pVehicle)
end)

RegisterInterfaceCallback('qb-jobs:release_vehicle', function(data, cb)
  cb({ data = {}, meta = { ok = true, message = '' } })
  print(pPlate)
  TriggerServerEvent('qb-impound:release_car', pPlate)
end)

-- Police --

RegisterNetEvent('qb-jobs:normal-impound')
AddEventHandler('qb-jobs:normal-impound', function()
	playerped = PlayerPedId()
    coordA = GetEntityCoords(playerped, 1)
    coordB = GetOffsetFromEntityInWorldCoords(playerped, 0.0, 100.0, 0.0)
   	targetVehicle = getVehicleInDirection(coordA, coordB)
	licensePlate = GetVehicleNumberPlateText(targetVehicle)
  FreezeEntityPosition(PlayerPedId(), true)
  local finished = exports['qb-taskbar']:taskBar(5000, "Impounding Vehicle...")
  if finished == 100 then
    FreezeEntityPosition(PlayerPedId(), false)
    TriggerServerEvent("qb-imp:NormalImpound",licensePlate)
    TriggerEvent('DoLongHudText', 'Impounded with retrieval price of $1000', 1)
    deleteVeh(targetVehicle)
  end
end)

RegisterNetEvent('qb-jobs:scuff_impound')
AddEventHandler('qb-jobs:scuff_impound', function()
	playerped = PlayerPedId()
    coordA = GetEntityCoords(playerped, 1)
    coordB = GetOffsetFromEntityInWorldCoords(playerped, 0.0, 100.0, 0.0)
    targetVehicle = getVehicleInDirection(coordA, coordB)
	licensePlate = GetVehicleNumberPlateText(targetVehicle)
  FreezeEntityPosition(PlayerPedId(), true)
  local finished = exports['qb-taskbar']:taskBar(5000, "Impounding Vehicle...")
  if finished == 100 then
    FreezeEntityPosition(PlayerPedId(), false)
    TriggerServerEvent("qb-imp:ScuffImpound",licensePlate)
    deleteVeh(targetVehicle)
  end
end)

RegisterNetEvent('qb-jobs:full_impound')
AddEventHandler('qb-jobs:full_impound', function()
	playerped = PlayerPedId()
    coordA = GetEntityCoords(playerped, 1)
    coordB = GetOffsetFromEntityInWorldCoords(playerped, 0.0, 100.0, 0.0)
   	targetVehicle = getVehicleInDirection(coordA, coordB)
	licensePlate = GetVehicleNumberPlateText(targetVehicle)
  FreezeEntityPosition(PlayerPedId(), true)
  local finished = exports['qb-taskbar']:taskBar(5000, "Impounding Vehicle...")
  if finished == 100 then
    FreezeEntityPosition(PlayerPedId(), false)
    TriggerServerEvent("qb-imp:FullImpound",licensePlate)
    TriggerEvent('DoLongHudText', 'Impounded with retrieval price of $5000', 1)
    deleteVeh(targetVehicle)
  end
end)

RegisterNetEvent('qb-jobs:police_impound_menu')
AddEventHandler('qb-jobs:police_impound_menu', function()
    local ImpoundMenu = {
		{
            title = "Full Impound",
            description = "A full impound will cost the owner $5000 to retrieve the vehicle at any time from the impound lot.",
            action = "qb-jobs:full-impound",
        },
        {
            title = "Normal Impound",
            description = "A full impound will cost the owner $1000 to retrieve the vehicle at any time from the impound lot.",
            action = "qb-jobs:normal-impound",
        },
        {
            title = "Scuff Impound",
            description = "A scuff impound will put the owners vehicle back into the last garage it was in.",
            action = "qb-jobs:scuff-impound",
        },
      }
    exports["qb-interface"]:showContextMenu(ImpoundMenu)
end)

RegisterInterfaceCallback('qb-jobs:full-impound', function(data, cb)
    cb({ data = {}, meta = { ok = true, message = '' } })
    TriggerEvent('qb-jobs:full_impound')
end)

RegisterInterfaceCallback('qb-jobs:normal-impound', function(data, cb)
    cb({ data = {}, meta = { ok = true, message = '' } })
    TriggerEvent('qb-jobs:normal-impound')
end)

RegisterInterfaceCallback('qb-jobs:scuff-impound', function(data, cb)
    cb({ data = {}, meta = { ok = true, message = '' } })
    TriggerEvent('qb-jobs:scuff_impound')
end)

-- Functions --

function getVehicleInDirection(coordFrom, coordTo)
	local offset = 0
	local rayHandle
	local vehicle

	for i = 0, 100 do
		rayHandle = CastRayPointToPoint(coordFrom.x, coordFrom.y, coordFrom.z, coordTo.x, coordTo.y, coordTo.z + offset, 10, PlayerPedId(), 0)	
		a, b, c, d, vehicle = GetRaycastResult(rayHandle)
		
		offset = offset - 1

		if vehicle ~= 0 then break end
	end
	
	local distance = Vdist2(coordFrom, GetEntityCoords(vehicle))
	
	if distance > 25 then vehicle = nil end

    return vehicle ~= nil and vehicle or 0
end

function deleteVeh(ent)
	SetVehicleHasBeenOwnedByPlayer(ent, true)
	NetworkRequestControlOfEntity(ent)
	local finished = exports["qb-taskbar"]:taskBar(1000,"Impounding",false,true)	
	Citizen.InvokeNative(0xEA386986E786A54F, Citizen.PointerValueIntInitialized(ent))
	DeleteEntity(ent)
	DeleteVehicle(ent)
	SetEntityAsNoLongerNeeded(ent)
end

-- Polyzone Shit --

exports["qb-polytarget"]:AddCircleZone("np_impound_retrieve",  vector3(-192.43, -1161.93, 23.52), 0.25, {
    useZ = true
})

exports["qb-interact"]:AddPeekEntryByPolyTarget("np_impound_retrieve", {{
    event = "qb-jobs:impound",
    id = "np_impound_retrieve",
    icon = "car",
    label = "View Personal Impounded Vehicles !",
    parameters = {},
}}, {
    distance = { radius = 1.5 },
});