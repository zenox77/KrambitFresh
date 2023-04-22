

local vehicleModes = {}
local pursuitmode = 0

Citizen.CreateThread(function() 
    Wait(150)
    vehicleModes = RPC.execute("pursuit:getJSON")
    DecorRegister('pursuitLevel', 1)
    DecorRegister('hasVehicleEditedByPursuit', false)
end)

local currentLevel = 1 

function dump(o)
	if type(o) == 'table' then
	   local s = '{ '
	   for k,v in pairs(o) do
		  if type(k) ~= 'number' then k = '"'..k..'"' end
		  s = s .. '['..k..'] = ' .. dump(v) .. ','
	   end
	   return s .. '} '
	else
	   return tostring(o)
	end
 end

RegisterCommand("pursuit", function(source, args)
    local ped = PlayerPedId()
    local vehicle = GetVehiclePedIsIn(ped, false)
    local vehicleName = string.lower(GetDisplayNameFromVehicleModel(GetEntityModel(vehicle)))
    local vehiclePresetName = nil
    local vehiclePresetMods = {}
    for k, v in pairs(vehicleModes["client"]["global"]["vehicles"]) do
        if v.model == vehicleName then
            vehiclePresetName = v.preset
            for x, y in pairs(vehicleModes["client"]["global"]["presets"]) do
                if y.id == vehiclePresetName then
                    vehiclePresetMods = y.modes
                    
                    break
                end
            end
            break
        end
    end
	if not vehiclePresetName then 
		return 
	end

	if vehiclePresetName == "generic" and currentLevel == 4 then 
		currentLevel = 0 
	end

	if vehiclePresetName == "motorbike" and currentLevel == 3 then 
		currentLevel = 0 
	end

	if vehiclePresetName == "cruiser" and currentLevel == 2 then 
		currentLevel = 0 
	end

	currentLevel = currentLevel + 1

	local modLevel = vehiclePresetMods[currentLevel]
	SetVehicleXenonLightsColour(vehicle, modLevel.appearance.colors.xenon)
	ToggleVehicleMod(vehicle, modLevel.mods.Turbo)
	ToggleVehicleMod(vehicle, 18, modLevel.mods.Turbo)
	
	SetVehicleMod(vehicle, 11, modLevel.mods.Engine, false)
	SetVehicleMod(vehicle, 12, modLevel.mods.Brakes, false)
	SetVehicleMod(vehicle, 13, modLevel.mods.Transmission, false)
	SetVehicleMod(vehicle, 22, modLevel.mods.XenonHeadlights, false)
	for i = 1, #modLevel.handling do
		if not DecorIsRegisteredAsType(modLevel.handling[i].field, 3) then 
			DecorRegister(modLevel.handling[i].field, 3)
		end
		Citizen.Wait(100)
		local defaultValue = DecorGetFloat(vehicle, modLevel.handling[i].field)
		if defaultValue == 0 then
			defaultValue = GetVehicleHandlingFloat(vehicle, 'CHandlingData', modLevel.handling[i].field)
			DecorSetFloat(vehicle, modLevel.handling[i].field, defaultValue)
		end
	end
	for i = 1, #modLevel.handling do 
		print('Before',GetVehicleHandlingFloat(vehicle, 'CHandlingData', modLevel.handling[i].field))
		SetVehicleHandlingFloat(vehicle, 'CHandlingData', modLevel.handling[i].field, DecorGetFloat(vehicle, modLevel.handling[i].field)*modLevel.handling[i].multiplier)
		print('After',GetVehicleHandlingFloat(vehicle, 'CHandlingData', modLevel.handling[i].field))
	end
	if source then
		if modLevel.name == "Default" then 
			TriggerEvent("qb-hud:pursuit_values", 0)
			pursuitmode = 0
			SendNUIMessage({action = "pursuitmode", pursuitmode = 0})
		end 
		if modLevel.name == "A+" then 
			TriggerEvent("qb-hud:pursuit_values", 33)
			pursuitmode = 33
			SendNUIMessage({action = "pursuitmode", pursuitmode = 33})
		end
		if modLevel.name == "S" then 
			TriggerEvent("qb-hud:pursuit_values", 66)
			pursuitmode = 66
			SendNUIMessage({action = "pursuitmode", pursuitmode = 66})
		end
		if modLevel.name == "S+" then 
			TriggerEvent("qb-hud:pursuit_values", 100)
			pursuitmode = 100
			SendNUIMessage({action = "pursuitmode", pursuitmode = 100})
		end
		if modLevel.name ~= "Default" then 
			TriggerEvent("DoLongHudText","Pursuit Mode: " ..modLevel.name ,1 )
		else
			TriggerEvent("DoLongHudText","Pursuit Mode: Disabled" ,2 )
		end
		
	end
end)



--[[ SelectedPursuitMode = 0

TriggerEvent("qb-hud:pursuit_values", SelectedPursuitMode)
SendNUIMessage({action = "pursuitmode", pursuitmode = SelectedPursuitMode})

 ]]
Citizen.CreateThread(function()
    exports["qb-keybinds"]:registerKeyMapping("", "Pursuit Modes", "Change Mode", "pursuit", "")
end)

exports('pursuitmode', function()
	return pursuitmode
end)