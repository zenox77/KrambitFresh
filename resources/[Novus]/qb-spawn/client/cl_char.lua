



--[[
    Functions below: Ped spawning / clothing attachment 
    Description: function spawns and skins the peds acourding to the players chars , this is also where the start of the train spawn takes place 
    along with fetching players char data from DB , clothing data is done before this function.
    This also determains the model for the spawning peds be it the one based on char clothing or a empty ped slot
]]


function Login.CreatePlayerCharacterPeds(characterModelData,isReset)
    if Login.actionsBlocked and not isReset then return end
    Login.actionsBlocked = true
    if not isReset then
        Wait(1000)
        Login.LoadFinished = false
        Login.ClearSpawnedPeds()
        CleanUpArea()
        Wait(1000)
        CleanUpArea()

        while Login.isTrainMoving do
            Wait(10)
        end

        while Login.HasTransistionFinished do
            Wait(10)
        end


    end



    Login.CurrentClothing = characterModelData

    TriggerEvent("qb-weathersync:client:DisableSyncSpawn")

    local events = exports["qb-base"]:getModule("Events")
    events:Trigger("qb-base:fetchPlayerCharacters", nil, function(data)
        if data.err then
            return
        end

        local pedCoords = GetEntityCoords(PlayerPedId())
       
        if isReset then
            Login.ClearSpawnedPeds()
        end
        Login.CreatedPeds = {}
        local PlusOneEmpty = false
		
        local noCharacters = true
        local chars = getCharLimit()

        
        local extraCharData = {}
        if #data > 8 then
            for idx = 9, #data do
                extraCharData[#extraCharData+1] = data[idx]
            end
        end
		
        for i=1, chars do 
            local isCustom = false
            local character = nil
            local cid = 0


            local cModelHash = GetHashKey("np_m_character_select")
            if data[i] ~= nil then 
                character = data[i]

                local gender = `mp_male`

                if character.gender == 1 then
                    cModelHash = GetHashKey("mp_f_freemode_01")
                    gender = `mp_female`
                else
                    cModelHash = GetHashKey("mp_m_freemode_01")
                    
                end
                
                cid = character.id

                if characterModelData[cid] ~= nil then cModelHash = tonumber(characterModelData[cid].model) end
				noCharacters = false
            else
                if math.random(2) == 1 then
                    cModelHash = GetHashKey("np_f_character_select")
                end
            end

            for i,v in ipairs(Login.custompeds) do
                if cModelHash == GetHashKey(v) then
                    cModelHash = GetHashKey("np_m_character_select")
                    isCustom = true
                end
            end
            
            if character == nil and not PlusOneEmpty then
                PlusOneEmpty = i
            end

            Login.RequestModel(cModelHash, function(loaded, model, modelHash)
                if loaded then

                    local newPed = nil 
                    
                    if character ~= nil then
                        newPed = CreatePed(3, modelHash,Login.spawnLoc[i].x, Login.spawnLoc[i].y, Login.spawnLoc[i].z, 0.72, false, false)
                        DecorSetBool(newPed, 'ScriptedPed', true)
                        
                    else
                        if PlusOneEmpty == i then 
                            newPed = CreatePed(3, modelHash,Login.spawnLoc[i].x, Login.spawnLoc[i].y, Login.spawnLoc[i].z, 0.72, false, false)
                            DecorSetBool(newPed, 'ScriptedPed', true)
                        end
                    end
                    
                    
                    
                    if newPed == nil then
                        goto skip_to_next
                    end

                    SetEntityHeading(newPed, Login.spawnLoc[i].w)
                    if character ~= nil and characterModelData[cid] ~= nil and characterModelData[cid] ~= {} and not isCustom then
                        Login.LoadPed(newPed, characterModelData[cid], modelHash)
                    end

                    if not isCustom then
                        if modelHash == GetHashKey("np_f_character_select") or modelHash == GetHashKey("np_m_character_select") then
                            if character ~= nil then
                                SetEntityAlpha(newPed,200,false)
                            else
                                SetEntityAlpha(newPed,0.9,false)
                            end
                        end
                    end

                    TaskLookAtCoord(newPed, vector3(-3968.05, 2015.41, 502.3 ),-1, 0, 2)
                    FreezeEntityPosition(newPed, true)
                    SetEntityInvincible(newPed, true)
                    SetBlockingOfNonTemporaryEvents(newPed, true)

                    Login.currentProtected[newPed] = true

                    if character ~= nil then
                        Login.CreatedPeds[i] = {
                            pedObject = newPed,
                            charId = cid,
                            posId = i
                        }
                    else
                        Login.CreatedPeds[i] = {
                            pedObject = newPed,
                            charId = 0,
                            posId = i
                        }
                    end

                    ::skip_to_next::
                end
            end)
        end


        Wait(600)
        SetNuiFocus(true, true)
        SendNUIMessage({
            open = true,
            chars = data,
            extraCharData = extraCharData,
         })
		
		--If no characters, open Creation menu
        if noCharacters then
            SendNUIMessage({ firstOpen = true })
        end
    end)

    Login.actionsBlocked = false
end

RegisterNetEvent("login:CreatePlayerCharacterPeds")
AddEventHandler("login:CreatePlayerCharacterPeds", Login.CreatePlayerCharacterPeds)


--[[
    Functions below: base attachment
    Description: dealing with qb-base functionality in order to set/get the correct information for chars
]]



function Login.getCharacters(isReset)
    local events = exports["qb-base"]:getModule("Events")
    
    if not isReset then
        TransitionFromBlurred(500)
        events:Trigger("qb-base:loginPlayer", nil, function(data)
            if type(data) == "table" and data.err then
                return
            end
        end)
    end

    events:Trigger("qb-base:fetchPlayerCharacters", nil, function(data)
        if data.err then
            print("Found error in getting player Char")
            return
        end

        local charIds = {}

        for k,v in ipairs(data) do
            charIds[#charIds + 1] = v.id
        end

        TriggerServerEvent("login:getCharModels", charIds, isReset)
    end)
end




--[[
	Functions below: character handlers 
	Description: dealing with finding information about characters 
]]

function Login.SelectedChar(data)

	Login.ClearSpawnedPeds()
	TriggerEvent("character:PlayerSelectedCharacter")
	local events = exports["qb-base"]:getModule("Events")
	events:Trigger("qb-base:selectCharacter", data.actionData, function(returnData)
       
        if not returnData.loggedin or not returnData.chardata then sendMessage({err = {err = true, msg = "There was a problem logging in as that character, if the problem persists, contact an administrator <br/> Cid: " .. tostring(data.selectcharacter)}}) return end

        local LocalPlayer = exports["qb-base"]:getModule("LocalPlayer")
        LocalPlayer:setCurrentCharacter(returnData.chardata)
       	
        if Login.CurrentClothing[data.actionData] == nil then
        	Login.setClothingForChar()
        else
            deleteTrain()
	       -- SetPlayerInvincible(PlayerPedId(), true)
           TriggerServerEvent('commands:player:login')
	       TriggerEvent("qb-base:firstSpawn")
	    end
    end)
end


--[[
	Functions below: Clothing handlers
	Description: Attachted to raid_clothes this deals with new chars or chars without clothes being selected and giveing the clothes
]]


function Login.setClothingForChar()
    Login.actionsBlocked = true

    SendNUIMessage({
      close = true
    })
    SetEntityVisible(PlayerPedId(), true)

    SetEntityCoords(PlayerPedId(),-3963.54,2013.95, 499.92)
    SetEntityHeading(PlayerPedId(),64.71)

    SetGameplayCamRelativeHeading(180.0)
    SetGameplayCamRelativePitch(1.0, 1.0)

    Wait(800)

    for i=1,25 do
      local posoffset = GetCamCoord(LoginSafe.Cam)
      local setpos = VecLerp(posoffset.x,posoffset.y,posoffset.z, -3965.88,2014.55, 501.6, i/30, true)
      SetCamCoord(LoginSafe.Cam, setpos)
      Wait(15)
    end

    Login.Open = false
    local LocalPlayer = exports["qb-base"]:getModule("LocalPlayer")
    local gender = LocalPlayer:getCurrentCharacter().gender

    if gender ~= 0 then
        SetSkin(GetHashKey("mp_f_freemode_01"), true)
    else
        SetSkin(GetHashKey("mp_m_freemode_01"), true)
    end

    TriggerServerEvent('qb-spawn:SetNewRouting', math.random(1, 999))
    --TriggerEvent('np_clothing:setclothes', {}, nil, true)
    TriggerEvent("raid_clothes:openClothing")
    TriggerEvent("raid_clothes:inSpawn", true)

    SetEntityHeading(PlayerPedId(),64.71)

    SetGameplayCamRelativeHeading(180.0)

    SetGameplayCamRelativePitch(4.0, 1.0)
end


RegisterNetEvent("qb-spawn:finishedClothing")
AddEventHandler("qb-spawn:finishedClothing", function(endType)
    local playerped = PlayerPedId()
    local playerCoords = GetEntityCoords(playerped)
    local pos = vector3(-3965.88,2014.55, 501.6)
    local distance = #(playerCoords - pos)
    
    TriggerEvent("raid_clothes:inSpawn", false)

    if distance <= 10 then
        SetEntityVisible(PlayerPedId(), false)
    	if endType == "Finished" then
            TriggerServerEvent("qb-spawn:SetOldRouting")
            DoScreenFadeOut(2)
    		spawnChar()
            TriggerServerEvent("qb-spawn:licenses")
    	else
    		backToMenu()
    	end
    end	
end)


function backToMenu()
    Login.actionsBlocked = false
	SetCamActive(LoginSafe.Cam, true)
	RenderScriptCams(true, false, 0, true, true)
	Login.nativeStart(true)
end

function spawnChar()
    Login.actionsBlocked = false
    deleteTrain()
    -- SetPlayerInvincible(PlayerPedId(), true)
    TriggerEvent("qb-base:firstSpawn")

    SendNUIMessage({
        default = true
    })

    Login.Selected = false
    Login.CurrentPedInfo = nil
    Login.CurrentPed = nil
    Login.CreatedPeds = {}
end


RegisterNetEvent("character:finishedLoadingChar")
AddEventHandler("character:finishedLoadingChar", function()
    Login.characterLoaded()
end)

-- Error spawn error --

exports["qb-polyzone"]:AddBoxZone("scuff_shit", vector3(-3.17, 1.97, 1.47), 15, 15, {
    heading=0,
    debugPoly=false,
    minZ=0.07,
    maxZ=4.07
})

RegisterNetEvent('qb-polyzone:enter')
AddEventHandler('qb-polyzone:enter', function(name)
    if name == "scuff_shit" then
        pInZone = true
        exports["qb-interface"]:showInteraction("[E] Information")
        teleport_to_coords()
    end
end)

RegisterNetEvent('qb-polyzone:exit')
AddEventHandler('qb-polyzone:exit', function(name)
    if name == "scuff_shit" then
        pInZone = false
        exports["qb-interface"]:hideInteraction()
    end
end)

function teleport_to_coords()
    Citizen.CreateThread(function()
      while pInZone do
        Citizen.Wait(5)
        if IsControlJustReleased(0, 38) then
            SetEntityCoords(PlayerPedId(), -266.72, -969.84, 31.23)
            TriggerEvent('DoLongHudText', 'Really sorry about this. An unexpected error occured... You may need to relog maybe not..', 2)
        end
      end
    end)
  end
  