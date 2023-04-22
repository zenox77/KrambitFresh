--Coord Command
RegisterCommand('coords', function(source, args, rawCommand)
    print('/Coords')
	local coords = GetEntityCoords(PlayerPedId())
    local heading = GetEntityHeading(PlayerPedId())
    TriggerEvent('DoLongHudText', 'Your Coords and heading is copied to your clipboard.', 1)
    SendNUIMessage({
		coords = ""..coords.x..", "..coords.y..", "..coords.z.." Heading: "..heading
	})
end)

RegisterCommand("cid", function(source, args)
    local cid = exports["isPed"]:isPed("cid")
    TriggerEvent("DoLongHudText", "Your CID: "..cid)
end)


--Blind Fire
Citizen.CreateThread(function()
	while true do
		Citizen.Wait(5)
		local ped = PlayerPedId()
		if IsPedInCover(ped, 1) and not IsPedAimingFromCover(ped, 1) then 
			DisableControlAction(2, 24, true) 
			DisableControlAction(2, 142, true)
			DisableControlAction(2, 257, true)
		end		
	end
end)



--Basic Weapon Damage
--[[Citizen.CreateThread(function()
    while true do
        N_0x4757f00bc6323cfe(GetHashKey("WEAPON_UNARMED"), 0.2)
    	Wait(0)
        N_0x4757f00bc6323cfe(GetHashKey("WEAPON_KNIFE"), 0.4)
    	Wait(0)
        N_0x4757f00bc6323cfe(GetHashKey("WEAPON_BAT"), 0.4)
    	Wait(0)
        N_0x4757f00bc6323cfe(GetHashKey("WEAPON_KNIGHTSTICK"), 0.4)
    	Wait(0)
        N_0x4757f00bc6323cfe(GetHashKey("WEAPON_CROWBAR"), 0.4)
    	Wait(0)
        N_0x4757f00bc6323cfe(GetHashKey("WEAPON_HEAVYPISTOL"), 0.85)
    	Wait(0)
        N_0x4757f00bc6323cfe(GetHashKey("WEAPON_COMBATPISTOL"), 0.83)
    	Wait(0)
        N_0x4757f00bc6323cfe(GetHashKey("WEAPON_PISTOL_MK2"), 0.84)
    	Wait(0)
        N_0x4757f00bc6323cfe(GetHashKey("WEAPON_SNSPISTOL"), 0.80)
    	Wait(0)
        N_0x4757f00bc6323cfe(GetHashKey("WEAPON_PISTOl"), 0.81)
    	Wait(0)
        N_0x4757f00bc6323cfe(GetHashKey("WEAPON_CARBINERIFLE_MK2"), 0.83)
    	Wait(0)
        N_0x4757f00bc6323cfe(GetHashKey("WEAPON_ASSAULTRIFLE"), 0.83)
    	Wait(0)
        N_0x4757f00bc6323cfe(GetHashKey("WEAPON_ASSAULTRIFLE_MK2"), 0.83)
    	Wait(0)
        N_0x4757f00bc6323cfe(GetHashKey("WEAPON_MACHINEPISTOL"), 0.82)
    	Wait(0)
        N_0x4757f00bc6323cfe(GetHashKey("WEAPON_APPISTOl"), 0.83)
    	Wait(0)
        N_0x4757f00bc6323cfe(GetHashKey("WEAPON_SMG"), 0.83)
    	Wait(0)
    end
end)]]

-- Crosshair
local plyPed = PlayerPedId()
local xhairActive = false
local disableXhair = false

RegisterCommand("togglexhair", function()
    disableXhair = not disableXhair
end)

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(500)
        plyPed = PlayerPedId()
        isArmed = IsPedArmed(plyPed, 7)

        if isArmed then
            if IsPlayerFreeAiming(PlayerId()) then
                if not xhairActive then
                    SendNUIMessage("xhairShow")
                    xhairActive = true
                end
            elseif xhairActive then
                SendNUIMessage("xhairHide")
                xhairActive = false
            end
        elseif IsPedInAnyVehicle(plyPed, false) then
            if xhairActive then
                SendNUIMessage("xhairHide")
                xhairActive = false
            end
        else
            if xhairActive then
                SendNUIMessage("xhairHide")
                xhairActive = false
            end
        end
    end
end)

--- Disables wierd run after shooting
Citizen.CreateThread(function()
    while true do
        Citizen.Wait(500)
        ped = PlayerPedId()
        if not IsPedInAnyVehicle(ped, false) then
            if IsPedUsingActionMode(ped) then
                SetPedUsingActionMode(ped, -1, -1, 1)
            end
        else
            Citizen.Wait(3000)
        end
    end
end)

--[[Afk Kicker
 local afkTimeout = 1200
 local timer = 0
 local currentPosition  = nil
 local previousPosition = nil
 local currentHeading   = nil
 local previousHeading  = nil
 local disabled = false
 Citizen.CreateThread(function()
 	while true do
 		Citizen.Wait(1000)
         if not disabled then
            playerPed = PlayerPedId()
             if playerPed then
                 currentPosition = GetEntityCoords(playerPed, true)
                 currentHeading  = GetEntityHeading(playerPed)

                 if currentPosition == previousPosition and currentHeading == previousHeading then
                     if timer > 0 then
                         if timer == math.ceil(afkTimeout / 4) then
                             TriggerEvent("DoLongHudText", "Move around or else you'll be kicked for being AFK!")
                         end

                         timer = timer - 1
                     else
                         TriggerServerEvent('afk:kick')
                     end
                 else
                     timer = afkTimeout
                 end

                 previousPosition = currentPosition
                 previousHeading  = currentHeading
             end
         end
 	end
 end)

 RegisterNetEvent("erp:afk:update")
 AddEventHandler("erp:afk:update", function(status)
     disabled = status
 end)

-- No NPC Drops
Citizen.CreateThread(function()
	while true do
		Citizen.Wait(1)
		RemoveAllPickupsOfType(GetHashKey('PICKUP_WEAPON_CARBINERIFLE'))
		RemoveAllPickupsOfType(GetHashKey('PICKUP_WEAPON_PISTOL'))
		RemoveAllPickupsOfType(GetHashKey('PICKUP_WEAPON_PUMPSHOTGUN'))
	end
end)

--Disables Recharge Rate

local pedId, plyId = PlayerPedId(), PlayerId()

function GetPed()
    return pedId
end
function GetPlayer()
    return plyId
end

--Disables Recharge Rate
CreateThread(function()
    while true do
        if GetPed() ~= PlayerPedId() then
            pedId = PlayerPedId()
            SetPedMinGroundTimeForStungun(pedId, 5000)
        end
        if GetPlayer() ~= PlayerId() then
            plyId = PlayerId()
            SetPlayerHealthRechargeMultiplier(plyId, 0.0)
        end
        SetPedMinGroundTimeForStungun(pedId, 5000)
        SetPlayerHealthRechargeMultiplier(plyId, 0.0)
        SetRadarBigmapEnabled(false, false)
        Wait(2000)
    end
end)


HudStage = 1
RegisterNetEvent('DoLongHudText')
AddEventHandler('DoLongHudText', function(text,color,length)
    if HudStage > 2 then return end
    if not color then color = 1 end
    if not length then length = 12000 end
    TriggerEvent("tasknotify:guiupdate",color, text, 12000)
end)

RegisterNetEvent('DoShortHudText')
AddEventHandler('DoShortHudText', function(text,color,length)
    if not color then color = 1 end
    if not length then length = 10000 end
    if HudStage > 2 then return end
    TriggerEvent("tasknotify:guiupdate",color, text, 10000)
end)


local waitKeys = false
RegisterNetEvent('car:engineHasKeys')
AddEventHandler('car:engineHasKeys', function(targetVehicle, allow)
    if IsVehicleEngineOn(targetVehicle) then
        if not waitKeys then
            waitKeys = true
            SetVehicleEngineOn(targetVehicle,0,1,1)
            SetVehicleUndriveable(targetVehicle,true)
            --TriggerEvent("DoShortHudText", "Engine Halted",1)
            Citizen.Wait(300)
            waitKeys = false
        end
    else
        if not waitKeys then
            waitKeys = true
            TriggerEvent("keys:startvehicle")
            --TriggerEvent("DoShortHudText", "Engine Started",1)
            Citizen.Wait(300)
            waitKeys = false
        end
    end
end)

RegisterNetEvent('car:engine')
AddEventHandler('car:engine', function()
    local targetVehicle = GetVehiclePedIsUsing(PlayerPedId())
    TriggerEvent("keys:hasKeys", 'engine', targetVehicle)
end)



 -- Ai Agression
local relationshipTypes = {
        "PLAYER",
        "COP",
        "MISSION2",
        "MISSION3",
        "MISSION4",
        "MISSION5",
        "MISSION6",
        "MISSION7",
        "MISSION8",
    }
      
Citizen.CreateThread(function()
    while true do
    Wait(600)
    for _, group in ipairs(relationshipTypes) do
        if group == "COP" then
          SetRelationshipBetweenGroups(3, `PLAYER`,GetHashKey(group))
          SetRelationshipBetweenGroups(3, GetHashKey(group), `PLAYER`)
          SetRelationshipBetweenGroups(0, `MISSION2`,GetHashKey(group))
          SetRelationshipBetweenGroups(0, GetHashKey(group), `MISSION2`)

        else
          SetRelationshipBetweenGroups(0, `PLAYER`,GetHashKey(group))
          SetRelationshipBetweenGroups(0, GetHashKey(group), `PLAYER`)
          SetRelationshipBetweenGroups(0, `MISSION2`,GetHashKey(group))
          SetRelationshipBetweenGroups(0, GetHashKey(group), `MISSION2`)
        end  
      SetRelationshipBetweenGroups(5, GetHashKey(group), `MISSION8`)
    end
      
      
    SetRelationshipBetweenGroups(1, `PLAYER`, `AMBIENT_GANG_WEICHENG`)
    SetRelationshipBetweenGroups(1, `AMBIENT_GANG_WEICHENG`, `PLAYER`)
    SetRelationshipBetweenGroups(1, `PLAYER`, `AMBIENT_GANG_FAMILY`)
    SetRelationshipBetweenGroups(1, `AMBIENT_GANG_FAMILY`, `PLAYER`)
    SetRelationshipBetweenGroups(1, `PLAYER`, `AMBIENT_GANG_BALLAS`)
    SetRelationshipBetweenGroups(1, `AMBIENT_GANG_BALLAS`, `PLAYER`)

    SetRelationshipBetweenGroups(1, `PLAYER`, `AMBIENT_GANG_SALVA`)
    SetRelationshipBetweenGroups(1, `AMBIENT_GANG_SALVA`, `PLAYER`)
    SetRelationshipBetweenGroups(1, `PLAYER`, `AMBIENT_GANG_MEXICAN`)
    SetRelationshipBetweenGroups(1, `AMBIENT_GANG_MEXICAN`, `PLAYER`)



    SetRelationshipBetweenGroups(1, `AMBIENT_GANG_LOST`, `AMBIENT_GANG_WEICHENG`)
    SetRelationshipBetweenGroups(1, `AMBIENT_GANG_WEICHENG`, `AMBIENT_GANG_LOST`)
    SetRelationshipBetweenGroups(1, `AMBIENT_GANG_LOST`, `AMBIENT_GANG_FAMILY`)
    SetRelationshipBetweenGroups(1, `AMBIENT_GANG_FAMILY`, `AMBIENT_GANG_LOST`)
    SetRelationshipBetweenGroups(1, `AMBIENT_GANG_LOST`, `AMBIENT_GANG_BALLAS`)
    SetRelationshipBetweenGroups(1, `AMBIENT_GANG_BALLAS`, `AMBIENT_GANG_LOST`)

    SetRelationshipBetweenGroups(1, `AMBIENT_GANG_LOST`, `AMBIENT_GANG_SALVA`)
    SetRelationshipBetweenGroups(1, `AMBIENT_GANG_SALVA`, `AMBIENT_GANG_LOST`)
    SetRelationshipBetweenGroups(1, `AMBIENT_GANG_LOST`, `AMBIENT_GANG_MEXICAN`)
    SetRelationshipBetweenGroups(1, `AMBIENT_GANG_MEXICAN`, `AMBIENT_GANG_LOST`)



--WEST SIDE
    SetRelationshipBetweenGroups(1, `MISSION4`, `AMBIENT_GANG_WEICHENG`)
    SetRelationshipBetweenGroups(1, `AMBIENT_GANG_WEICHENG`, `MISSION4`)

-- MEDIC / POLICE WEST SIDE
    SetRelationshipBetweenGroups(1, `AMBIENT_GANG_WEICHENG`, `MISSION2`)
    SetRelationshipBetweenGroups(1, `MISSION2`, `AMBIENT_GANG_WEICHENG`)



--CENTRAL
    SetRelationshipBetweenGroups(1, `MISSION5`, `AMBIENT_GANG_FAMILY`)
    SetRelationshipBetweenGroups(1, `AMBIENT_GANG_FAMILY`, `MISSION5`)
    SetRelationshipBetweenGroups(1, `MISSION5`, `AMBIENT_GANG_BALLAS`)
    SetRelationshipBetweenGroups(1, `AMBIENT_GANG_BALLAS`, `MISSION5`)

-- MEDIC / POLICE CENTRAL
    SetRelationshipBetweenGroups(1, `AMBIENT_GANG_BALLAS`, `MISSION2`)
    SetRelationshipBetweenGroups(1, `MISSION2`, `AMBIENT_GANG_BALLAS`)
    SetRelationshipBetweenGroups(1, `AMBIENT_GANG_FAMILY`, `MISSION2`)
    SetRelationshipBetweenGroups(1, `MISSION2`, `AMBIENT_GANG_FAMILY`)






--EAST SIDE
    SetRelationshipBetweenGroups(1, `MISSION6`, `AMBIENT_GANG_SALVA`)
    SetRelationshipBetweenGroups(1, `AMBIENT_GANG_SALVA`, `MISSION6`)
    SetRelationshipBetweenGroups(1, `MISSION6`, `AMBIENT_GANG_MEXICAN`)
    SetRelationshipBetweenGroups(1, `AMBIENT_GANG_MEXICAN`, `MISSION6`)

-- MEDIC / POLICE EAST SIDE
    SetRelationshipBetweenGroups(1, `AMBIENT_GANG_SALVA`, `MISSION2`)
    SetRelationshipBetweenGroups(1, `MISSION2`, `AMBIENT_GANG_SALVA`)
    SetRelationshipBetweenGroups(1, `MISSION2`, `AMBIENT_GANG_MEXICAN`)
    SetRelationshipBetweenGroups(1, `AMBIENT_GANG_MEXICAN`, `MISSION2`)





    SetRelationshipBetweenGroups(1, -86095805, `MISSION2`)
    SetRelationshipBetweenGroups(1, `MISSION2`, -86095805)

    SetRelationshipBetweenGroups(1,1191392768, `MISSION2`)
    SetRelationshipBetweenGroups(1, `MISSION2`,1191392768)
    
    SetRelationshipBetweenGroups(1, `MISSION2`, 45677184)
    SetRelationshipBetweenGroups(1, 45677184, `MISSION2`)




    SetRelationshipBetweenGroups(3, `PLAYER`, `MISSION7`)
    SetRelationshipBetweenGroups(3, `MISSION7`, `PLAYER`)

    SetRelationshipBetweenGroups(0, `MISSION7`, `COP`)
    SetRelationshipBetweenGroups(0, `COP`, `MISSION7`)

    SetRelationshipBetweenGroups(0, `MISSION2`, `MISSION7`)
    SetRelationshipBetweenGroups(0, `MISSION7`, `MISSION2`)

    SetRelationshipBetweenGroups(0, `MISSION7`, `MISSION7`)

    SetRelationshipBetweenGroups(3, `COP`,`PLAYER`)
    SetRelationshipBetweenGroups(3, `PLAYER`, `COP`)

    SetRelationshipBetweenGroups(0, `PLAYER`, `MISSION3`)
    SetRelationshipBetweenGroups(0, `MISSION3`,`PLAYER`)

    -- LOST MC
    SetRelationshipBetweenGroups(1, `PLAYER`, `AMBIENT_GANG_LOST`)
    SetRelationshipBetweenGroups(1, `AMBIENT_GANG_LOST`, `PLAYER`)
    SetRelationshipBetweenGroups(1,  `COP`, `AMBIENT_GANG_LOST`)
    SetRelationshipBetweenGroups(1,  `AMBIENT_GANG_LOST`, `COP`)
      
    end
end)
      
RegisterNetEvent('gangs:setDefaultRelations')
AddEventHandler("gangs:setDefaultRelations",function() 
    Citizen.Wait(1000)
    for _, group in ipairs(relationshipTypes) do
        SetRelationshipBetweenGroups(0, `PLAYER`,GetHashKey(group))
        SetRelationshipBetweenGroups(0, GetHashKey(group), `PLAYER`)
        SetRelationshipBetweenGroups(0, `MISSION2`,GetHashKey(group))
        SetRelationshipBetweenGroups(0, GetHashKey(group), `MISSION2`)
        SetRelationshipBetweenGroups(5, GetHashKey(group), `MISSION8`)
    end
      -- mission 7 is guards at vinewood and security guards
      SetRelationshipBetweenGroups(3, `PLAYER`, `MISSION7`)
      SetRelationshipBetweenGroups(3, `MISSION7`, `PLAYER`)
  
      SetRelationshipBetweenGroups(0, `MISSION7`, `COP`)
      SetRelationshipBetweenGroups(0, `COP`, `MISSION7`)
  
      SetRelationshipBetweenGroups(0, `MISSION2`, `MISSION7`)
       SetRelationshipBetweenGroups(0, `MISSION7`, `MISSION2`)
  
      SetRelationshipBetweenGroups(0, `MISSION7`, `MISSION7`)
  
  
  
  
      -- players love each other even if full hatred
      SetRelationshipBetweenGroups(0, `PLAYER`, `MISSION8`)
  
      -- cops from scenarios love cops and ems logged in
      SetRelationshipBetweenGroups(0, `COP`, `MISSION2`)
  
      -- players love cops and ems
      SetRelationshipBetweenGroups(0, `PLAYER`, `MISSION2`)
  
      SetRelationshipBetweenGroups(0, `PLAYER`, `MISSION3`)
      SetRelationshipBetweenGroups(0, `MISSION3`,`PLAYER`)
end)


-- PlayerNumbers 
local hidden = {}
local showPlayerBlips = false
local ignorePlayerNameDistance = false
local disPlayerNames = 50
local playerSource = 0


function DrawText3D(x,y,z, text, textColor) -- some useful function, use it if you want!
    local color = { r = 255, g = 255, b = 255, alpha = 255 } -- Color of the text 
    if textColor ~= nil then 
        color = {r = textColor[1] or 255, g = textColor[2] or 255, b = textColor[3] or 255, alpha = textColor[4] or 255}
    end
    
    local onScreen,_x,_y=World3dToScreen2d(x,y,z)
    local px,py,pz=table.unpack(GetGameplayCamCoords())
    local dist = #(vector3(px,py,pz) - vector3(x,y,z))

    local scale = (1/dist)*2
    local fov = (1/GetGameplayCamFov())*100
    local scale = scale*fov
    
    if onScreen then
        SetTextScale(0.3,0.3)
        SetTextFont(0)
        SetTextProportional(1)
        SetTextColour(color.r, color.g, color.b, color.alpha)
        SetTextDropshadow(0, 0, 0, 0, 55)
        SetTextEdge(2, 0, 0, 0, 150)
        SetTextDropShadow()
        SetTextOutline()
        SetTextEntry("STRING")
        SetTextCentre(1)
        AddTextComponentString(text)
        DrawText(_x,_y)
    end
end

function DrawText3DTalking(x,y,z, text, textColor) -- some useful function, use it if you want!
    local color = { r = 220, g = 220, b = 220, alpha = 255 } -- Color of the text 
    if textColor ~= nil then 
        color = {r = textColor[1] or 22, g = textColor[2] or 55, b = textColor[3] or 155, alpha = textColor[4] or 255}
    end

    local onScreen,_x,_y=World3dToScreen2d(x,y,z)
    local px,py,pz=table.unpack(GetGameplayCamCoords())
    local dist = #(vector3(px,py,pz) - vector3(x,y,z))

    local scale = (1/dist)*2
    local fov = (1/GetGameplayCamFov())*100
    local scale = scale*fov
    
    if onScreen then
        SetTextScale(0.0*scale, 0.75*scale)
        SetTextFont(0)
        SetTextProportional(1)
        SetTextColour(color.r, color.g, color.b, color.alpha)
        SetTextDropshadow(0, 0, 0, 0, 55)
        SetTextEdge(2, 0, 0, 0, 150)
        SetTextDropShadow()
        SetTextOutline()
        SetTextEntry("STRING")
        SetTextCentre(1)
        AddTextComponentString(text)
        DrawText(_x,_y)
    end
end

RegisterNetEvent("hud:HidePlayer")
AddEventHandler("hud:HidePlayer", function(player, toggle)
    if type(player) == "table" then
        for k,v in pairs(player) do
            if DoesPlayerExist(k) then
                local id = GetPlayerFromServerId(k)
                hidden[id] = k
            end
        end
        return
    end
    if DoesPlayerExist(player) then
        local id = GetPlayerFromServerId(player)
        if toggle == true then
            hidden[id] = player
        else
            for k,v in pairs(hidden) do
                if v == player then hidden[k] = nil end
            end
        end
    end
end)

Controlkey = {["generalScoreboard"] = {303,"U"}} 
RegisterNetEvent('event:control:update')
AddEventHandler('event:control:update', function(table)
    Controlkey["generalScoreboard"] = table["generalScoreboard"]
end)


Citizen.CreateThread(function()
    while true do
        if IsControlPressed(0, Controlkey["generalScoreboard"][1]) then

            for i=0,255 do
                N_0x31698aa80e0223f8(i)
            end

            local playerped = PlayerPedId()
            local HeadBone = 0x796e

            for id = 0, 255 do
                if NetworkIsPlayerActive(id) then
                    local ped = GetPlayerPed(id)

                    local playerCoords = GetPedBoneCoords(playerped, HeadBone)

                    if ped == playerped then
                        DrawText3DTalking(playerCoords.x, playerCoords.y, playerCoords.z+0.5, " ".. GetPlayerServerId(id) .. " ", {152, 251, 152, 255})
                    else
                        local pedCoords = GetPedBoneCoords(ped, HeadBone)

                        local distance = math.floor(#(playerCoords - pedCoords))

                        local isDucking = IsPedDucking(ped)
                        local cansee = HasEntityClearLosToEntity(playerped, ped, 17 )
                        local isReadyToShoot = IsPedWeaponReadyToShoot(ped)
                        local isStealth = GetPedStealthMovement(ped)
                        local isDriveBy = IsPedDoingDriveby(ped)
                        local isInCover = IsPedInCover(ped,true)
                        if isStealth == nil then
                            isStealth = 0
                        end

                        if isDucking or isStealth == 1 or isDriveBy or isInCover then
                            cansee = false
                        end

                        if hidden[id] then cansee = false end

                        if (distance < disPlayerNames) then
                            if(NetworkIsPlayerTalking(id)) then                            
                                if cansee then
                                    DrawText3DTalking(pedCoords.x, pedCoords.y, pedCoords.z+0.5, " ".. GetPlayerServerId(id) .. " ", {22, 55, 155, 255})
                                end
                            else
                                if cansee then
                                    DrawText3D(pedCoords.x, pedCoords.y, pedCoords.z+0.5, " ".. GetPlayerServerId(id) .. " ", {255, 255, 255, 255})
                                end
                            end
                        end
                    end                        
                end
            end
            Citizen.Wait(1)
        else
            Citizen.Wait(2000)
        end        
    end
end)]]

-- BIKE
RegisterNetEvent('pickup:bike')
AddEventHandler('pickup:bike', function()
    local playerPed = PlayerPedId()
    local coords = GetEntityCoords(playerPed)
    local vehicle = GetClosestVehicle(coords, 5.0, 0, 71)
    local bone = GetPedBoneIndex(playerPed, 0xE5F3)
    local bike = false

    if GetEntityModel(vehicle) == GetHashKey("bmx") or GetEntityModel(vehicle) == GetHashKey("scorcher") or GetEntityModel(vehicle) == GetHashKey("cruiser") or GetEntityModel(vehicle) == GetHashKey("fixter") or GetEntityModel(vehicle) == GetHashKey("tribike") or GetEntityModel(vehicle) == GetHashKey("tribike2") or GetEntityModel(vehicle) == GetHashKey("tribike3") then

    AttachEntityToEntity(vehicle, playerPed, bone, 0.0, 0.24, 0.10, 340.0, 330.0, 330.0, true, true, false, true, 1, true)
    TriggerEvent("DoLongHudText","Press G to drop the bike.", 5000)

    RequestAnimDict("anim@heists@box_carry@")
    while (not HasAnimDictLoaded("anim@heists@box_carry@")) do Citizen.Wait(0) end
    TaskPlayAnim(playerPed, "anim@heists@box_carry@", "idle", 2.0, 2.0, 50000000, 51, 0, false, false, false)
    bike = true

    RegisterCommand('dropbike', function()
        if IsEntityAttached(vehicle) then
        DetachEntity(vehicle, nil, nil)
        SetVehicleOnGroundProperly(vehicle)
        ClearPedTasksImmediately(playerPed)
        bike = false
        end
    end, false)

        RegisterKeyMapping('dropbike', 'Drop Bike', 'keyboard', 'g')

                Citizen.CreateThread(function()
                while true do
                Citizen.Wait(0)
                if bike and IsEntityPlayingAnim(playerPed, "anim@heists@box_carry@", "idle", 3) ~= 1 then
                    RequestAnimDict("anim@heists@box_carry@")
                    while (not HasAnimDictLoaded("anim@heists@box_carry@")) do Citizen.Wait(0) end
                    TaskPlayAnim(playerPed, "anim@heists@box_carry@", "idle", 2.0, 2.0, 50000000, 51, 0, false, false, false)
                    if not IsEntityAttachedToEntity(playerPed, vehicle) then
                        bike = false
                        ClearPedTasksImmediately(playerPed)
                    end
                end
            end
        end)
    end
end)



-- No Driver Shooting
--[[local passengerDriveBy = true

Citizen.CreateThread(function()
	while true do
		Wait(1)

		playerPed = GetPlayerPed(-1)
		car = GetVehiclePedIsIn(playerPed, false)
		if car then
			if GetPedInVehicleSeat(car, -1) == playerPed then
				SetPlayerCanDoDriveBy(PlayerId(), false)
			elseif passengerDriveBy then
				SetPlayerCanDoDriveBy(PlayerId(), true)
			else
				SetPlayerCanDoDriveBy(PlayerId(), false)
			end
		end
	end
end)]]

myKeys = {}
latestveh = nil
whatthefuckisthisdoing = 0



local searchedVehs = {}
local hotwiredVehs = {}
local fuckingRETARDED = false
RegisterNetEvent('keys:addNew')
AddEventHandler('keys:addNew', function(veh, plate)
  if veh == nil then
    return
  end

  plate = plate or GetVehicleNumberPlateText(veh)
  if not hasKey(plate) then
    myKeys[#myKeys+1]= plate
  end

  SetVehRadioStation(veh, "OFF")
  SetVehicleDoorsLocked(veh, 1)
end)

RegisterNetEvent('keys:addNew:login')
AddEventHandler('keys:addNew:login', function(plate)
  if not hasKey(plate) then
    myKeys[#myKeys+1]= plate
  end
end)



RegisterCommand("idek", function(src, args, raw)
  TriggerServerEvent("login:get:keys", exports["isPed"]:isPed("cid"))	
end)

RegisterNetEvent('keys:loadKey')
AddEventHandler('keys:loadKey', function(plate)
  if plate == nil then
    return
  end
  if not hasKey(plate) then
    myKeys[#myKeys+1]= plate
  end
end)

RegisterNetEvent('keys:remove')
AddEventHandler('keys:remove', function(plate)
  if plate == nil then
    return
  end

  if hasKey(plate) then
    table.remove(myKeys, tablefind(myKeys, plate))
  end
end)

RegisterNetEvent('keys:reset')
AddEventHandler('keys:reset', function()
  myKeys = {}
  latestveh = nil
  whatthefuckisthisdoing = 0
  searchedVehs = {}
  hotwiredVehs = {}
  fuckingRETARDED = false
end)

RegisterNetEvent('keys:give')
AddEventHandler('keys:give', function()
  if #myKeys == 0 then
    TriggerEvent("DoLongHudText", "You have no keys to give!",2)
    return
  end
  local player = PlayerPedId()
  local veh = GetVehiclePedIsIn(player, false)

  for i=-1, GetVehicleMaxNumberOfPassengers(veh)-1 do
    local ped = GetPedInVehicleSeat(veh, i)
    if ped ~= player then
      for j,v in pairs(GetActivePlayers()) do
        if GetPlayerPed(v) == ped then
          TriggerServerEvent('keys:send',GetPlayerServerId(v), GetVehicleNumberPlateText(veh))
          TriggerEvent("DoLongHudText", "You just gave keys to your vehicles!",1)
        end
      end
    end
  end

  local coordA = GetEntityCoords(PlayerPedId(), 1)
  local coordB = GetOffsetFromEntityInWorldCoords(PlayerPedId(), 0.0, 100.0, 0.0)
  local latestveh = getVehicleInDirection(coordA, coordB)
  if not hasKey(GetVehicleNumberPlateText(latestveh)) and latestveh ~= 0 then
    TriggerEvent("DoLongHudText", "No keys for target vehicle!",2)
    return
  end

  if #(GetEntityCoords(latestveh) - GetEntityCoords(PlayerPedId(), 0)) > 5 and latestveh ~= 0 then
    TriggerEvent("DoLongHudText", "You are to far away from the vehicle!",2)
    return
  end

  t, distance = GetClosestPlayer()
  if(distance ~= -1 and distance < 5) then
    TriggerServerEvent('keys:send', GetPlayerServerId(t), GetVehicleNumberPlateText(latestveh))

    TriggerEvent("DoLongHudText", "You just gave keys to your vehicles!",1)
  else
    TriggerEvent("DoLongHudText", "No player near you!",2)
  end
end)

RegisterNetEvent('keys:received')
AddEventHandler('keys:received', function(plate, pNotify)
  if plate == nil then
    return
  end

  if not hasKey(plate) then
    myKeys[#myKeys+1]= plate
    TriggerEvent("DoLongHudText", "You just received keys to a vehicle!",1)
  else
    TriggerEvent("DoLongHudText", "You already have keys to that vehicle!",2)
  end
end)


RegisterNetEvent('keys:checkandgive')
AddEventHandler('keys:checkandgive', function(newplate,oldplate)
  if hasKey(oldplate) then
    myKeys[#myKeys+1]= newplate
  end
end)


RegisterNetEvent('keys:hasKeys')
AddEventHandler('keys:hasKeys', function(from, veh)
  if veh == nil then
    if from == 'engine' then
        TriggerEvent("car:engineHasKeys", veh, false)
    elseif from == 'doors' then
        TriggerEvent("keys:unlockDoor", veh, false)
    end
    return
  end

  local plate = GetVehicleNumberPlateText(veh)
  local allow = hasKey(plate)

  if from == 'engine' then
      TriggerEvent("car:engineHasKeys", veh, allow)
  elseif from == 'doors' then
      TriggerEvent("keys:unlockDoor", veh, allow)
  end
end)


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


RegisterNetEvent('unseatPlayerCiv')
AddEventHandler('unseatPlayerCiv', function()
    local playerped = PlayerPedId()
    coordA = GetEntityCoords(playerped, 1)
    coordB = GetOffsetFromEntityInWorldCoords(playerped, 0.0, 20.0, 0.0)
        
    targetVehicle = getVehicleInDirection(coordA, coordB)
    if(targetVehicle ~= nil) then

      local plate = GetVehicleNumberPlateText(targetVehicle)
      local allow = hasKey(plate)

      t, distance = GetClosestPlayer()
      if(distance ~= -1 and distance < 10 and allow ) then
          TriggerServerEvent('unseatAccepted',GetPlayerServerId(t))
          TriggerEvent("DoLongHudText", 'Unseating',1)
      else
          TriggerEvent("DoLongHudText", 'No Player Found or you have No Keys',2)
      end

    else
        TriggerEvent("DoLongHudText", 'Car doesnt exist',2)
    end

end)


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


local deadzones = {
  [1] = { ["x"] = -43.59, ["y"] = -1099.08, ["z"] = 26.43, ["h"] = 107.89 },
  [2] = { ["x"] = -83.51,["y"] = 80.27,["z"] = 71.55,["h"] = 335.08 },
  [3] =  { ['x'] = -47.84,['y'] = -1682.12,['z'] = 29.45,['h'] = 311.95 },

}
RegisterNetEvent("vehsearch:disable")
AddEventHandler("vehsearch:disable", function(veh)
    searchedVehs[veh] = true
end)

RegisterNetEvent('event:control:npkeys')
AddEventHandler('event:control:npkeys', function(useID)
    local playerped = PlayerPedId()      
    if IsPedInAnyVehicle(playerped, false) then
      local veh = GetVehiclePedIsUsing(playerped)
      local plate = GetVehicleNumberPlateText(veh)    
      if not searchedVehs[veh] and not hasKey(plate) and GetPedInVehicleSeat(veh, -1) == playerped  then  
        if useID == 1 then
          Citizen.Wait(1000)
          shutoffenginesearch()
        elseif useID == 2 then
          Citizen.Wait(1000)
          shutoffenginehotwire()
        end
      end
    end
end)

Controlkey = {["vehicleSearch"] = {47,"G"}}
RegisterNetEvent('event:control:update')
AddEventHandler('event:control:update', function(table)
  Controlkey["vehicleSearch"] = table["vehicleSearch"]
end)


local disableF = false
Citizen.CreateThread( function()
  local latestveh = 0
  while true do
    Citizen.Wait(1)
    if disableF then
      DisableControlAction(0,23,true)
    end
    ----- IS IN VEHICLE -----
      local playerped = PlayerPedId()      
      if IsPedInAnyVehicle(playerped, false) then        
          ----- IS DRIVER -----
          local veh = GetVehiclePedIsUsing(playerped) 
          local plate = GetVehicleNumberPlateText(veh)
          if GetPedInVehicleSeat(veh, -1) == playerped then           
              -- if (latestveh ~= veh) then
              --   TriggerEvent("tuner:setDriver")
              -- Moved to qb-oVehicleMod
              -- end
              if (latestveh ~= veh and not hasKey(plate)) or not hasKey(plate) then
                TriggerEvent("keys:shutoffengine")
              end

              if not searchedVehs[veh] and not hasKey(plate) then

                if whatthefuckisthisdoing > 0 then
                  local d1 = #(vector3(deadzones[1]["x"], deadzones[1]["y"], deadzones[1]["z"]) - GetEntityCoords(PlayerPedId()))
                  local d2 = #(vector3(deadzones[2]["x"], deadzones[2]["y"], deadzones[2]["z"]) - GetEntityCoords(PlayerPedId()))
                  local d3 = #(vector3(deadzones[3]["x"], deadzones[3]["y"], deadzones[3]["z"]) - GetEntityCoords(PlayerPedId()))
                  if d1 > 10.0 and d2 > 10.0 and d2 > 25.0 then
                    local pos = GetOffsetFromEntityInWorldCoords(veh, 0.0, 2.0, 1.0)
                    DrawText3Ds(pos["x"],pos["y"],pos["z"], "["..Controlkey["vehicleSearch"][2].."] Search" )
                  end
                end
              end

              latestveh = veh
          end
      else
        Wait(100)
      end
  end
end)



function DropItemPed()
  local veh = GetVehiclePedIsUsing(PlayerPedId())
  local d1,d2 = GetModelDimensions(GetEntityModel(veh))
  local pos = GetOffsetFromEntityInWorldCoords(veh, 0.0,d1["y"]-0.5,0.0)
  local chance = math.random(150)
  if chance == 2 then
      SetVehicleDoorOpen(veh, 5, 0, 0)
  elseif chance == 3 then
      SetVehicleDoorOpen(veh, 5, 0, 0)
  else
  --  TriggerServerEvent('mission:finished', "vehicle:search", math.random(30))
  end
end

function shutoffenginesearch()
     local veh = GetVehiclePedIsUsing(PlayerPedId())

    if not fuckingRETARDED then
       
        searchedVehs[veh] = true
       fuckingRETARDED = true
       
        TriggerEvent("keys:shutoffengine")

        if not IsPedInAnyVehicle(PlayerPedId(), false) then
          fuckingRETARDED = false
          return
        end
        local finished = exports["qb-taskbar"]:taskBar(5000,"Searching")
        Citizen.Wait(100)

        local luck = math.random(50,69)

        if not IsPedInAnyVehicle(PlayerPedId(), false) then
          fuckingRETARDED = false
          return
        end
        if luck == 69 and finished == 100 then
          local finished = exports["qb-taskbar"]:taskBar(2000,"Found and Using Keys")
          SetVehicleEngineOn(veh,0,1,1)
          SetVehicleUndriveable(veh,false)
          TriggerEvent("keys:addNew",veh,GetVehicleNumberPlateText(veh))
        end
        if not IsPedInAnyVehicle(PlayerPedId(), false) then
          fuckingRETARDED = false
          return
        end        
        luck = math.random(100)
        local finished = exports["qb-taskbar"]:taskBar(5000,"Searching Backseat")
        if luck > 75 and finished then
          if not IsPedInAnyVehicle(PlayerPedId(), false) then
            fuckingRETARDED = false
            return
          end

          local finished = exports["qb-taskbar"]:taskBar(2000,"Found Content")
          DropItemPed()
        end

        fuckingRETARDED = false


    end
 end



function shutoffenginehotwire()

    local veh = GetVehiclePedIsUsing(PlayerPedId())
    if hotwiredVehs[veh] then
      TriggerEvent("DoLongHudText","You can not work out this hotwire.",2)
      return
    end

    if not fuckingRETARDED then
        TriggerEvent("animation:lockpickinvtest",true)
       
        hotwiredVehs[veh] = true
        fuckingRETARDED = true
        TriggerEvent("keys:shutoffengine")
        Citizen.Wait(100)

        if not IsPedInAnyVehicle(PlayerPedId(), false) then
          fuckingRETARDED = false
          TriggerEvent("animation:lockpickinvtest",false)
          return
        end

          if not IsPedInAnyVehicle(PlayerPedId(), false) then
            fuckingRETARDED = false
      
            TriggerEvent("animation:lockpickinvtest",false)
            return
          end        

        fuckingRETARDED = false

        TriggerEvent("animation:lockpickinvtest",false)
    end
 end



RegisterNetEvent("timer:stolenvehicle")
AddEventHandler("timer:stolenvehicle", function(plate)
    Citizen.Wait(math.random(10000000))
    TriggerServerEvent("timer:addplate",plate)
end)

domsgnow = 0
Citizen.CreateThread( function()
    while true do
        Citizen.Wait(1)
        local doingsomething = false
        if GetVehiclePedIsTryingToEnter(PlayerPedId()) ~= nil and GetVehiclePedIsTryingToEnter(PlayerPedId()) ~= 0 then
          doingsomething = true
          local curveh = GetVehiclePedIsTryingToEnter(PlayerPedId())
          local plate1 = GetVehicleNumberPlateText(curveh)

          -- temporary fix for segway on / off to prevent denpc and anim bugs.
          if GetEntityModel(curveh) == `POLFEGWAY` then
              local targetCoords = GetEntityCoords(curveh, 0)
              local ply = PlayerPedId()
              local plyCoords = GetEntityCoords(ply, 0)
              local distance = #(vector3(targetCoords["x"], targetCoords["y"], targetCoords["z"]) - vector3(plyCoords["x"], plyCoords["y"], plyCoords["z"]))
              if distance < 2.5 then
                ClearPedTasksImmediately(PlayerPedId())
                SetPedIntoVehicle(PlayerPedId(), curveh, 0)
                SetPedIntoVehicle(PlayerPedId(), curveh, -1)
              end
          end

          if not hasKey(plate1) then

            local pedDriver = GetPedInVehicleSeat(curveh, -1)
            if pedDriver ~= 0 and (not IsPedAPlayer(pedDriver) or IsEntityDead(pedDriver)) then

              if IsEntityDead(pedDriver) then

  
                local finished = exports["qb-taskbar"]:taskBar(3000,"Taking Keys",false)
                if finished == 100 then
                 -- SetEntityAsMissionEntity(curveh,false,true)
                  TriggerEvent("keys:addNew",curveh,plate1)
                  TriggerEvent("timer:stolenvehicle",plate1)
                else
                  ClearPedTasksImmediately(PlayerPedId())
                end
              else
                local pedOwner = NetworkGetEntityOwner(pedDriver)

                if pedOwner == PlayerId() then
                    DecorSetBool(pedDriver, 'ScriptedPed', true)
                else
                    TriggerServerEvent('erp:peds:decor', GetPlayerServerId(pedOwner), PedToNet(pedDriver))
                end

                if GetEntityModel(curveh) ~= `taxi` then
                  
                  if math.random(100) > 95 then

            
                      local finished = exports["qb-taskbar"]:taskBar(3000,"Taking Keys")
                      if finished == 100 then
                       -- SetEntityAsMissionEntity(curveh,false,true)
                        TriggerEvent("keys:addNew",curveh,plate1)
                      else
                        ClearPedTasksImmediately(PlayerPedId())
                      end

                  else
                    SetVehicleDoorsLocked(curveh, 2)

                    Citizen.Wait(1000)
        
                    TaskReactAndFleePed(pedDriver, PlayerPedId())
                    SetPedKeepTask(pedDriver, true)
                    ClearPedTasksImmediately(PlayerPedId())
                    disableF = true
                    Citizen.Wait(2000)
                    disableF = false
                  end
                  
                else
                  TriggerEvent("startAITaxi",true)
                  
                  
                  SetPedIntoVehicle(PlayerPedId(), curveh, 2)
                  SetPedIntoVehicle(PlayerPedId(), curveh, 1)

                end
              end
            end
          end
        end

        if IsPedJacking(PlayerPedId()) then
          doingsomething = true
            local veh = GetVehiclePedIsUsing(PlayerPedId())
            local plate = GetVehicleNumberPlateText(veh)
            local stayhere = true

           while stayhere do

                local inCar = IsPedInAnyVehicle(PlayerPedId(), false)
                if not inCar then
                    stayhere = false
                end

                if IsVehicleEngineOn(veh) and not hasKey(plate) then
                    TriggerEvent("keys:shutoffengine")
                    stayhere = false
                end
                Citizen.Wait(1)
            end
        end   

        if domsgnow > 0 then
          domsgnow = domsgnow - 1
        end
        if not doingsomething then
          Wait(100)
        end
    end
end)

local bypass = false
local enforce = 0
local dele = 0

local function runningTick()
  local playerPed = PlayerPedId()
  local playerVehicle = GetVehiclePedIsUsing(playerPed)
  local isPlayerDriving = GetPedInVehicleSeat(playerVehicle, -1) == playerPed
  local plate = GetVehicleNumberPlateText(playerVehicle)

  if IsPedGettingIntoAVehicle(playerPed) then return 0 end

  if playerVehicle and isPlayerDriving then

    if IsControlJustReleased(1,96) and not IsThisModelAHeli(GetEntityModel(playerVehicle)) then
        TriggerEvent("car:engine")
    end
    
    CanShuffleSeat(playerPed, false)
    if (IsControlPressed(2, 75) or bypass) and IsVehicleDriveable(playerVehicle) then
      if enforce < 10 and hasKey(plate) then
        bypass = true
        SetVehicleEngineOn(playerVehicle, true, true)
        enforce = enforce + 1
        return 0
      end 

      if dele < 200 then
        dele = dele + 1
        return 0
      end

      if IsControlPressed(2, 75) and hasKey(plate) then
        SetVehicleEngineOn(playerVehicle, false, true)
      elseif IsVehicleDriveable(playerVehicle) then
        SetVehicleEngineOn(playerVehicle, true, true)
      end

      bypass = false
      dele = 0
      enforce = 0
    end
  else
    bypass = false
    dele = 0
    enforce = 0
    Wait(100)
  end
end

Citizen.CreateThread(function()
  while true do
    Citizen.Wait(1)
    runningTick()
  end
end)



RegisterNetEvent('keys:startvehicle')
AddEventHandler('keys:startvehicle', function()
  local veh = GetVehiclePedIsUsing(PlayerPedId())
    if GetVehicleEngineHealth(veh) > 199 then
      whatthefuckisthisdoing = 0
      SetVehicleEngineOn(veh,0,1,1)
      Citizen.Wait(100)

      SetVehicleUndriveable(veh,false)
      SetVehicleEngineOn(veh,1,0,1)
      Citizen.Wait(100) 
      
      if not Citizen.InvokeNative(0xAE31E7DF9B5B132E, veh) then
        SetVehicleEngineOn(veh,1,1,1)
      end
    else
       SetVehicleEngineOn(veh,0,0,1)
       SetVehicleUndriveable(veh,true)
    end
end)
local runningshutoff = false
 RegisterNetEvent('keys:shutoffengine')
 AddEventHandler('keys:shutoffengine', function()

      whatthefuckisthisdoing = 1000
      if runningshutoff then
        return
      end
      runningshutoff = true
      while whatthefuckisthisdoing > 0 do
          local veh = GetVehiclePedIsUsing(PlayerPedId())
           Citizen.Wait(1)
           SetVehicleEngineOn(veh,0,1,1)
          whatthefuckisthisdoing = whatthefuckisthisdoing - 1  
       end

       whatthefuckisthisdoing = 0
       runningshutoff = false
 end)




function tablefind(tab,el)
  for index, value in pairs(tab) do
    if value == el then
      return index
    end
  end
end

function hasKey(plate)
  local has = false
    for _,v in pairs(myKeys) do
    if v ~= nil and v == plate then
        has = true
    end
  end
  return has
end
exports('hasKey', hasKey);

function GetPlayers()
    local players = {}

    for i = 0, 255 do
        if NetworkIsPlayerActive(i) then
            players[#players+1]= i
        end
    end

    return players
end

function GetClosestPlayer()
    local players = GetPlayers()
    local closestDistance = -1
    local closestPlayer = -1
    local ply = PlayerPedId()
    local plyCoords = GetEntityCoords(ply, 0)
    
    for index,value in ipairs(players) do
        local target = GetPlayerPed(value)
        if(target ~= ply) then
            local targetCoords = GetEntityCoords(GetPlayerPed(value), 0)
            local distance = #(vector3(targetCoords["x"], targetCoords["y"], targetCoords["z"]) - vector3(plyCoords["x"], plyCoords["y"], plyCoords["z"]))
            if(closestDistance == -1 or closestDistance > distance) then
                closestPlayer = value
                closestDistance = distance
            end
        end
    end
    
    return closestPlayer, closestDistance
end


RegisterNetEvent('keys:unlockDoor')
AddEventHandler('keys:unlockDoor', function(targetVehicle, allow)
    if allow then
        local playerped = PlayerPedId()
        inveh = IsPedInAnyVehicle(playerped)
        lockStatus = GetVehicleDoorLockStatus(targetVehicle) 
        TriggerEvent("dooranim")
        if lockStatus == 1 or lockStatus == 0 then 
            
            lockStatus = SetVehicleDoorsLocked(targetVehicle, 2)

            SetVehicleDoorsLockedForPlayer(targetVehicle, PlayerId(), false)
      
            TriggerServerEvent('InteractSound_SV:PlayWithinDistance', 3.0, 'lock', 0.4)
            TriggerEvent('DoLongHudText', 'Vehicle Locked!', 1)
         
            
            if not inveh then
                SetVehicleLights(targetVehicle, 2)

                SetVehicleBrakeLights(targetVehicle, true)
                SetVehicleInteriorlight(targetVehicle, true)
                SetVehicleIndicatorLights(targetVehicle, 0, true)
                SetVehicleIndicatorLights(targetVehicle, 1, true)
                Citizen.Wait(450)

                SetVehicleIndicatorLights(targetVehicle, 0, false)
                SetVehicleIndicatorLights(targetVehicle, 1, false)
                Citizen.Wait(450)
                
                SetVehicleInteriorlight(targetVehicle, true)
                SetVehicleIndicatorLights(targetVehicle, 0, true)
                SetVehicleIndicatorLights(targetVehicle, 1, true)
                Citizen.Wait(450)

                SetVehicleLights(targetVehicle, 0)
                SetVehicleBrakeLights(targetVehicle, false)
                SetVehicleInteriorlight(targetVehicle, false)
                SetVehicleIndicatorLights(targetVehicle, 0, false)
                SetVehicleIndicatorLights(targetVehicle, 1, false)
            end




        else

            lockStatus = SetVehicleDoorsLocked(targetVehicle, 1)
            TriggerEvent('DoLongHudText', 'Vehicle Unlocked!', 1)
            TriggerServerEvent('InteractSound_SV:PlayWithinDistance', 5.0, 'unlock', 0.1)

            if not inveh then
                SetVehicleLights(targetVehicle, 2)
                SetVehicleFullbeam(targetVehicle, true)
                SetVehicleBrakeLights(targetVehicle, true)
                SetVehicleInteriorlight(targetVehicle, true)
                SetVehicleIndicatorLights(targetVehicle, 0, true)
                SetVehicleIndicatorLights(targetVehicle, 1, true)
                Citizen.Wait(450)

                SetVehicleIndicatorLights(targetVehicle, 0, false)
                SetVehicleIndicatorLights(targetVehicle, 1, false)
                Citizen.Wait(450)
                
                SetVehicleInteriorlight(targetVehicle, true)
                SetVehicleIndicatorLights(targetVehicle, 0, true)
                SetVehicleIndicatorLights(targetVehicle, 1, true)
                Citizen.Wait(450)

                SetVehicleLights(targetVehicle, 0)
                SetVehicleFullbeam(targetVehicle, false)
                SetVehicleBrakeLights(targetVehicle, false)
                SetVehicleInteriorlight(targetVehicle, false)
                SetVehicleIndicatorLights(targetVehicle, 0, false)
                SetVehicleIndicatorLights(targetVehicle, 1, false)
            end


        end



    end
end)

Citizen.CreateThread( function()
  while true do
      Citizen.Wait(10)
    if IsControlJustPressed(0, 182) and GetLastInputMethod(2) then
      local playerped = PlayerPedId()
      local targetVehicle = GetVehiclePedIsUsing(playerped)
  
      if not DoesEntityExist(targetVehicle) then
          local coordA = GetEntityCoords(playerped, 1)
          local coordB = GetOffsetFromEntityInWorldCoords(playerped, 0.0, 255.0, 0.0)
          targetVehicle = getVehicleInDirection(coordA, coordB)
      end
  
      if DoesEntityExist(targetVehicle) then
          TriggerEvent("keys:hasKeys", 'doors', targetVehicle)
      end
      Citizen.Wait(300)
  end
  end
end)


WeaponCheckerFullList = {
    [`WEAPON_STUNGUN`] = "WEAPON_STUNGUN",
 
    --[[ Small Caliber ]]--
    [`WEAPON_PISTOL`] = "WEAPON_PISTOL",
    [`WEAPON_COMBATPISTOL`] = "WEAPON_COMBATPISTOL",
    [`WEAPON_APPISTOL`] = "WEAPON_APPISTOL",
    [`WEAPON_COMBATPDW`] = "WEAPON_COMBATPDW",
    [`WEAPON_MACHINEPISTOL`] = "WEAPON_MACHINEPISTOL",
    [`WEAPON_MICROSMG`] = "WEAPON_MICROSMG",
    [`WEAPON_MINISMG`] = "WEAPON_MINISMG",
    [`WEAPON_PISTOL_MK2`] = "WEAPON_PISTOL_MK2",
    [`WEAPON_SNSPISTOL`] = "WEAPON_SNSPISTOL",
    [`WEAPON_SNSPISTOL_MK2`] = "WEAPON_SNSPISTOL_MK2",
    [`WEAPON_VINTAGEPISTOL`] = "WEAPON_VINTAGEPISTOL",
 
    --[[ Medium Caliber ]]--
    [`WEAPON_ADVANCEDRIFLE`] = "WEAPON_ADVANCEDRIFLE",
    [`WEAPON_ASSAULTSMG`] = "WEAPON_ASSAULTSMG",
    [`WEAPON_BULLPUPRIFLE`] = "WEAPON_BULLPUPRIFLE",
    [`WEAPON_BULLPUPRIFLE_MK2`] = "WEAPON_BULLPUPRIFLE_MK2",
    [`WEAPON_CARBINERIFLE`] = "WEAPON_CARBINERIFLE",
    [`WEAPON_CARBINERIFLE_MK2`] = "WEAPON_CARBINERIFLE_MK2",
    [`WEAPON_COMPACTRIFLE`] = "WEAPON_COMPACTRIFLE",
    [`WEAPON_DOUBLEACTION`] = "WEAPON_DOUBLEACTION",
    [`WEAPON_GUSENBERG`] = "WEAPON_GUSENBERG",
    [`WEAPON_HEAVYPISTOL`] = "WEAPON_HEAVYPISTOL",
    [`WEAPON_MARKSMANPISTOL`] = "WEAPON_MARKSMANPISTOL",
    [`WEAPON_PISTOL50`] = "WEAPON_PISTOL50",
    [`WEAPON_REVOLVER`] = "WEAPON_REVOLVER",
    [`WEAPON_REVOLVER_MK2`] = "WEAPON_REVOLVER_MK2",
    [`WEAPON_SMG`] = "WEAPON_SMG",
    [`WEAPON_SMG_MK2`] = "WEAPON_SMG_MK2",
    [`WEAPON_SPECIALCARBINE`] = "WEAPON_SPECIALCARBINE",
    [`WEAPON_SPECIALCARBINE_MK2`] = "WEAPON_SPECIALCARBINE_MK2",
 
    --[[ High Caliber ]]--
    [`WEAPON_ASSAULTRIFLE`] = "WEAPON_ASSAULTRIFLE",
    [`WEAPON_ASSAULTRIFLE_MK2`] = "WEAPON_ASSAULTRIFLE_MK2",
    [`WEAPON_COMBATMG`] = "WEAPON_COMBATMG",
    [`WEAPON_COMBATMG_MK2`] = "WEAPON_COMBATMG_MK2",
    [`WEAPON_HEAVYSNIPER`] = "WEAPON_HEAVYSNIPER",
    [`WEAPON_HEAVYSNIPER_MK2`] = "WEAPON_HEAVYSNIPER_MK2",
    [`WEAPON_MARKSMANRIFLE`] = "WEAPON_MARKSMANRIFLE",
    [`WEAPON_MARKSMANRIFLE_MK2`] = "WEAPON_MARKSMANRIFLE_MK2",
    [`WEAPON_MG`] = "WEAPON_MG",
    [`WEAPON_MINIGUN`] = "WEAPON_MINIGUN",
    [`WEAPON_MUSKET`] = "WEAPON_MUSKET",
    [`WEAPON_RAILGUN`] = "WEAPON_RAILGUN",
 
    --[[ Shotguns ]]--
    [`WEAPON_ASSAULTSHOTGUN`] = "WEAPON_ASSAULTSHOTGUN",
    [`WEAPON_BULLUPSHOTGUN`] = "WEAPON_BULLUPSHOTGUN",
    [`WEAPON_DBSHOTGUN`] = "WEAPON_DBSHOTGUN",
    [`WEAPON_HEAVYSHOTGUN`] = "WEAPON_HEAVYSHOTGUN",
    [`WEAPON_PUMPSHOTGUN`] = "WEAPON_PUMPSHOTGUN",
    [`WEAPON_PUMPSHOTGUN_MK2`] = "WEAPON_PUMPSHOTGUN_MK2",
    [`WEAPON_SAWNOFFSHOTGUN`] = "WEAPON_SAWNOFFSHOTGUN",
    [`WEAPON_SWEEPERSHOTGUN`] = "WEAPON_SWEEPERSHOTGUN",
 
    --[[ Cutting Weapons ]]--
    -- [`WEAPON_BATTLEAXE`] = "WEAPON_BATTLEAXE",
    -- [`WEAPON_BOTTLE`] = "WEAPON_BOTTLE",
    -- [`WEAPON_DAGGER`] = "WEAPON_DAGGER",
    -- [`WEAPON_HATCHET`] = "WEAPON_HATCHET",
    -- [`WEAPON_KNIFE`] = "WEAPON_KNIFE",
    -- [`WEAPON_MACHETE`] = "WEAPON_MACHETE",
    -- [`WEAPON_SWITCHBLADE`] = "WEAPON_SWITCHBLADE",
 
    --[[ Heavy Impact ]]--
    -- [`WEAPON_BAT`] = "WEAPON_BAT",
    -- [`WEAPON_CROWBAR`] = "WEAPON_CROWBAR",
    -- [`WEAPON_FIREEXTINGUISHER`] = "WEAPON_FIREEXTINGUISHER",
    -- [`WEAPON_FIRWORK`] = "WEAPON_FIRWORK",
    -- [`WEAPON_GOLFLCUB`] = "WEAPON_GOLFLCUB",
    -- [`WEAPON_HAMMER`] = "WEAPON_HAMMER",
    -- [`WEAPON_PETROLCAN`] = "WEAPON_PETROLCAN",
    -- [`WEAPON_POOLCUE`] = "WEAPON_POOLCUE",
    -- [`WEAPON_WRENCH`] = "WEAPON_WRENCH",
    [`WEAPON_RAMMED_BY_CAR`] = "WEAPON_RAMMED_BY_CAR",
    [`WEAPON_RUN_OVER_BY_CAR`] = "WEAPON_RUN_OVER_BY_CAR",
 
    --[[ Explosives ]]--
    [`WEAPON_EXPLOSION`] = "WEAPON_EXPLOSION",
    [`WEAPON_GRENADE`] = "WEAPON_GRENADE",
    [`WEAPON_COMPACTLAUNCHER`] = "WEAPON_COMPACTLAUNCHER",
    [`WEAPON_PIPEBOMB`] = "WEAPON_PIPEBOMB",
    [`WEAPON_PROXMINE`] = "WEAPON_PROXMINE",
    [`WEAPON_RPG`] = "WEAPON_RPG",
    [`WEAPON_STICKYBOMB`] = "WEAPON_STICKYBOMB",
 
    --[[ Other ]]--
    [`WEAPON_FALL`] = "WEAPON_FALL", -- Fall
}



AddEventHandler("gameEventTriggered", function(name, args)
    if name == "CEventNetworkEntityDamage" then
        local ped = PlayerPedId()

        local hit, bone = nil, nil
        hit, bone = GetPedLastDamageBone(ped)
        if bone ~= nil then
            local weapon = GetDamagingWeapon(ped)
            if weapon ~= nil then
                if IsPedAPlayer(args[1]) then
                    local attacker = GetPlayerServerId(NetworkGetPlayerIndexFromPed(args[2]))
                    local dmg = GetPlayerWeaponDamageModifier(GetPlayerFromServerId(attacker))
                    if dmg > 1.0 then
                        TriggerServerEvent("player:damage:multi", attacker, weapon, string.format("%.2f", dmg))
                    end
                end
            end
        end
    end
end) 

function GetDamagingWeapon(ped)
    for k, v in pairs(WeaponCheckerFullList) do
        if HasPedBeenDamagedByWeapon(ped, k, 0) then
            ClearEntityLastDamageEntity(ped)
            return v
        end
    end

    return nil
end
