RegisterServerEvent('qb-keys:attemptLockSV')
AddEventHandler('qb-keys:attemptLockSV', function(targetVehicle, plate)
    TriggerClientEvent('qb-keys:attemptLock', source, targetVehicle, plate)
end)