RegisterServerEvent('qb-vehicles:ApplyNitrous')
AddEventHandler('qb-vehicles:ApplyNitrous', function()
     TriggerClientEvent("qb-nitro:client:placeNitro", source)
end) 

RegisterServerEvent('qb-nitro:server:particlefx')
AddEventHandler('qb-nitro:server:particlefx', function(veh)
     TriggerClientEvent('qb-nitro:client:particlefx', -1, veh)
end)

RegisterServerEvent('qb-nitro:server:particlefisfis')
AddEventHandler('qb-nitro:server:particlefisfis', function(type, veh)
     if type == 'fisfisacc' then
          TriggerClientEvent('qb-nitro:client:particlefisfis', -1, 'fisfisac', veh)
     elseif type == 'fisfiskapatt' then
          TriggerClientEvent('qb-nitro:client:particlefisfis', -1, 'fisfiskapat', veh)
     end
end)