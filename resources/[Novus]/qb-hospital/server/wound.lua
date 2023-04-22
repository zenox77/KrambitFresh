local playerInjury = {}

function GetCharsInjuries(source)
    return playerInjury[source]
end

RegisterServerEvent('qb-hospital:server:SyncInjuries')
AddEventHandler('qb-hospital:server:SyncInjuries', function(data)
    playerInjury[source] = data
end)