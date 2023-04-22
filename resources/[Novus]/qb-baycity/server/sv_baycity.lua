local doorCheckbaycity = false -- False : 'Door Close' || True : 'Door Open'

RegisterServerEvent("qb-baycity:getGetDoorStateSV")
AddEventHandler("qb-baycity:getGetDoorStateSV", function()
    TriggerClientEvent('qb-baycity:getDoorCheckCL', -1, doorCheckbaycity)
end)

RegisterServerEvent("qb-baycity:changeDoorState:SV")
AddEventHandler("qb-baycity:changeDoorState:SV", function(state)
    doorCheckbaycity = state
end)

RegisterServerEvent("qb-particleserverbaycity")
AddEventHandler("qb-particleserverbaycity", function()
    TriggerClientEvent("qb-ptfxparticlebaycity", -1)
end)

RegisterServerEvent("qb-particleserverbaycity1")
AddEventHandler("qb-particleserverbaycity1", function()
    TriggerClientEvent("qb-ptfxparticlebaycity1", -1)
end)
