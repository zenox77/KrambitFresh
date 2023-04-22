DPX.SpawnManager = {}

RegisterServerEvent('qb-base:spawnInitialized')
AddEventHandler('qb-base:spawnInitialized', function()
    local src = source
    TriggerClientEvent('qb-base:spawnInitialized', src)
end)