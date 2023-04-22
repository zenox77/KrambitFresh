blockspawn = false
CurrentDisplayVehicle, ParkingSpot = nil, nil

function getGarageData(pGarageName)
    return Garages[pGarageName] or nil
end

function SpawnVehicle(vehicle, pGarage, Fuel, customized, plate, IsViewing)
    exports['qb-garages']:DeleteViewedCar()
    local car = GetHashKey(vehicle)
    local job = exports["isPed"]:isPed("myJob")
    -- local characterPasses = RPC.execute("getCharacterPasses")
    local customized = json.decode(customized)
    local selectedGarage = Garages[pGarage]

    -- if pGarage == "Impound Lot" or pGarage == "Repo" then
    --     ParkingSpot = selectedGarage.spawns[1]
    if exports['qb-menu']:houseGarageCoords() ~= nil and exports['qb-menu']:NearHouseGarage() and exports['qb-menu']:NearHouseGarage2() then
        HousingSpawn = exports['qb-menu']:houseGarageCoords()
        ParkingSpot = HousingSpawn
    else
        for i = 1, #selectedGarage.spawns do
            local RunSpawnCheck = false
            local distance = #(vector3(selectedGarage.spawns[i].x, selectedGarage.spawns[i].y,
                selectedGarage.spawns[i].z) - GetEntityCoords(PlayerPedId()))
            if distance < 1.6 then
                RunSpawnCheck = true
            elseif distance < 1.8 and not RunSpawnCheck then
                RunSpawnCheck = true
            elseif distance < 2.0 and not RunSpawnCheck then
                RunSpawnCheck = true
            elseif distance < 2.4 and not RunSpawnCheck then
                RunSpawnCheck = true
            elseif distance < 3.0 and not RunSpawnCheck then
                RunSpawnCheck = true
            elseif distance < 3.5 and not RunSpawnCheck then
                RunSpawnCheck = true
            end

            if RunSpawnCheck then
                local vehicle = GetClosestVehicle(selectedGarage.spawns[i].x, selectedGarage.spawns[i].y,
                    selectedGarage.spawns[i].z, 2.0, 0, 127)
                if not DoesEntityExist(vehicle) then
                    blockspawn = false
                    ParkingSpot = selectedGarage.spawns[i]
                    break
                else
                    blockspawn = true
                    TriggerEvent("DoLongHudText", "There is a vehicle in the spot!", 2)
                    break
                end
            end
        end
    end

	Citizen.CreateThread(function()			
		Citizen.Wait(100)

        if not ParkingSpot then
            exports['qb-garages']:DeleteViewedCar()
            TriggerEvent("DoLongHudText", "You need to be near a parking spot!")
            return
        end

        if blockspawn then
            return
        end

        RequestModel(car)
        while not HasModelLoaded(car) do
            Citizen.Wait(0)
        end
  
        veh = CreateVehicle(car, ParkingSpot.x, ParkingSpot.y, ParkingSpot.z, ParkingSpot.h, true, false)
        CurrentDisplayVehicle = veh
                  
        SetModelAsNoLongerNeeded(car)
        DecorSetInt(veh, "CurrentFuel", Fuel)
        DecorSetBool(veh, "PlayerVehicle", true)
        SetVehicleOnGroundProperly(veh)
        SetEntityCollision(veh, false, true)
        FreezeEntityPosition(veh, true)
        SetVehicleDirtLevel(veh, 0.0)
        SetEntityInvincible(veh, false) 
        SetVehicleNumberPlateText(veh, plate)
        SetVehicleProps(veh, customized)
        TriggerEvent("keys:addNew",veh, plate)
        --RPC.execute("qb-wheelfitment_sv:getfuckingdata",veh, plate)
        SetVehicleHasBeenOwnedByPlayer(veh,true)
        local id = GetEntityModel(veh)
        SetNetworkIdCanMigrate(id, true)
        local pUpdatedFuel = GetVehicleFuelLevel(veh)
        if not IsViewing then   
            exports['qb-vehicles']:SetVehicleIdentifier(veh, id)
            CurrentDisplayVehicle = nil
            RPC.execute("qb-garages:states", "Out", plate, exports['qb-menu']:currentGarage(), pUpdatedFuel)
            SetEntityCollision(veh, true, true)
            FreezeEntityPosition(veh, false)
            if pGarage == "Impound Lot" or pGarage == "Repo" then
                TriggerEvent("DoLongHudText", "Vehicle Is Parked Outside!")
            end
        end
    end)
end





function SetVehicleProps(veh, customized)
    SetVehicleModKit(veh, 0)
    if customized then
				
        SetVehicleWheelType(veh, customized.wheeltype)
        SetVehicleNumberPlateTextIndex(veh, 3)
        if customized.mods ~= nil then
            for i = 0, 16 do
                SetVehicleMod(veh, i, customized.mods[tostring(i)])
            end
        end

        if customized.mods ~= nil then
            for i = 17, 22 do
                ToggleVehicleMod(veh, i, customized.mods[tostring(i)])
            end
        end


        if customized.mods ~= nil then
            for i = 23, 24 do
                local isCustom = customized.mods[tostring(i)]
                if (isCustom == nil or isCustom == "-1" or isCustom == false or isCustom == 0) then
                    isSet = false
                else
                    isSet = true
                end
                SetVehicleMod(veh, i, customized.mods[tostring(i)], isCustom)
            end
        end

        if customized.mods ~= nil then
            for i = 23, 48 do
                SetVehicleMod(veh, i, customized.mods[tostring(i)])
            end
        end

        if customized.neon ~= nil then
            for i = 0, 3 do
                SetVehicleNeonLightEnabled(veh, i, customized.neon[tostring(i)])
            end
        end

        if customized.extras ~= nil then
            for i = 1, 12 do
                local onoff = tonumber(customized.extras[i])
                if onoff == 1 then
                    SetVehicleExtra(veh, i, 0)
                else
                    SetVehicleExtra(veh, i, 1)
                end
            end
        end

        if customized.oldLiveries ~= nil and customized.oldLiveries ~= 24  then
            SetVehicleLivery(veh, customized.oldLiveries)
        end

        if customized.plateIndex ~= nil and customized.plateIndex ~= 4 then
            SetVehicleNumberPlateTextIndex(veh, customized.plateIndex)
        end

        -- Xenon Colors
        if rawequal(next(customized), nil) then
            SetVehicleColours(veh, 0, 0)
            SetVehicleExtraColours(veh, 0, 0)
            return
        end
        SetVehicleXenonLightsColour(veh, (customized.xenonColor or -1))
        SetVehicleColours(veh, customized.colors[1], customized.colors[2])
        SetVehicleExtraColours(veh, customized.extracolors[1], customized.extracolors[2])
        SetVehicleNeonLightsColour(veh, customized.lights[1], customized.lights[2], customized.lights[3])
        SetVehicleTyreSmokeColor(veh, customized.smokecolor[1], customized.smokecolor[2], customized.smokecolor[3])
        SetVehicleWindowTint(veh, customized.tint)
        SetVehicleInteriorColour(veh, customized.dashColour)
        SetVehicleDashboardColour(veh, customized.interColour)
    else
        SetVehicleColours(veh, 0, 0)
        SetVehicleExtraColours(veh, 0, 0)
    end
end

exports("DeleteViewedCar", function()
    if DoesEntityExist(CurrentDisplayVehicle) then
		SetEntityAsMissionEntity(CurrentDisplayVehicle, true, true)
		DeleteVehicle(CurrentDisplayVehicle)
		DeleteEntity(CurrentDisplayVehicle)
		CurrentDisplayVehicle = nil
	end
end)

exports("getGarageData", getGarageData)
