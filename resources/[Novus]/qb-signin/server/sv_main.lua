local activepolice = 0
local activeEMS = 0

RegisterServerEvent("qb-signin:duty")
AddEventHandler("qb-signin:duty", function(pJobType, pSrc)
    local src = source
    local user = exports["qb-base"]:getModule("Player"):GetUser(src)
    local character = user:getCurrentCharacter()
    local jobs = exports["qb-base"]:getModule("JobManager")
    if pJobType == nil then pJobType = "police" end
    jobs:SetJob(user, pJobType, false, function()
        if pJobType == "police" then
            exports['qb-dispatch']:callsign_command()
            exports.ghmattimysql:execute('SELECT * FROM jobs_whitelist WHERE cid = ?', {character.id}, function(result)

                TriggerClientEvent("DoLongHudText", src, "10-41 and Restocked.", 1)
                TriggerClientEvent("startSpeedo", src)
                TriggerClientEvent("nowCopGarage", src, pJobType)
                TriggerEvent('badBlips:server:registerPlayerBlipGroup', src, 'police')
                if result[1].callsign == nil then
                    TriggerEvent("badBlips:server:registerSourceName", src, character.first_name .. " " ..character.last_name.. " | NO CALLSIGN")
                else
                    TriggerEvent("badBlips:server:registerSourceName", src, character.first_name .. " " ..character.last_name.. " | " .. result[1].callsign)
                end
                activepolice = activepolice + 1
                TriggerClientEvent("job:counts", -1, activepolice)
            end)

        elseif pJobType == "doc" then
            TriggerClientEvent("DoLongHudText", src, "10-41, Signed in as DOC.", 1)
            TriggerClientEvent("nowCopGarage", src, pJobType)
        elseif pJobType == "ems" then
            TriggerClientEvent("DoLongHudText", src, "10-41, Signed in as EMS.", 1)
            TriggerClientEvent("hasSignedOnEms", src)
            TriggerClientEvent('police:officerOnDuty', src)
            activeEMS = activeEMS + 1
			TriggerClientEvent("job:emscount", -1, activeEMS)
        elseif pJobType == "judge" then
            TriggerClientEvent("isJudge", src)
            Wait(1000)
            TriggerEvent("isJudge", src)
        elseif pJobType == "doctor" then
            TriggerClientEvent("isDoctor", src)
            Wait(1000)
            TriggerEvent("isDoctor",src)
        elseif pJobType == "therapist" then
            TriggerClientEvent("isTherapist", src)
            Wait(1000)
            TriggerEvent("isTherapist", src)
        else
            TriggerClientEvent("DoLongHudText", src, ("You are now signed in as %s"):format(pJobType), 1)
        end
    end)
end)


RegisterServerEvent("qb-signoff:duty")
AddEventHandler("qb-signoff:duty", function(job)
	local src = source
    if job == 'police' then
        if activepolice <= 0 then return end
        activepolice = activepolice - 1
        TriggerClientEvent("job:counts", -1, activepolice)
        TriggerEvent('badBlips:server:removePlayerBlipGroup', src, 'police')
    elseif job == 'ems' then
        TriggerEvent('badBlips:server:removePlayerBlipGroup', src, 'ems')
        activeEMS = activeEMS - 1 
        if activeEMS <= 0 then activeEMS = 0 end
        TriggerClientEvent("job:emscount", -1, activeEMS)
    end
end)
