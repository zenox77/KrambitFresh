AddEventHandler("explosionEvent", function(sender, ev)
    TriggerClientEvent('qb-vaultrob:lower:vaultdoor', sender)
end)