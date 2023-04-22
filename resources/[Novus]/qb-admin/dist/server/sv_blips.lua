RegisterNetEvent('qb-admin:ToggleBlips', function()
    local src = source
    print('ID '..src.. ' ' .. 'Is attempting to enable ^1 PLAYER BLIPS')
    if exports['qb-admin']:isAdministrator(src) then
        CancelEvent()
        TriggerClientEvent('showBlips', src)
    else
        TriggerClientEvent('DoShortHudText',src,'You don"t have permission for this..',2)
    end
end)

RegisterNetEvent('qb-admin:ToggleNames', function()
    local src = source
    print('ID '..src.. ' ' .. 'Is attempting to enable ^2 PLAYER NAMES')
    if exports['qb-admin']:isAdministrator(src) then
        CancelEvent()
        TriggerClientEvent('showNames', src)
    else
        TriggerClientEvent('DoShortHudText',src,'You don"t have permission for this..',2)
    end
end)
