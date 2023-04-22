RegisterServerEvent('admin:revivePlayer')
AddEventHandler('admin:revivePlayer', function(target)
	if target ~= nil then
		TriggerClientEvent('admin:revivePlayerClient', target)
		TriggerClientEvent('qb-hospital:client:RemoveBleed', target) 
        TriggerClientEvent('qb-hospital:client:ResetLimbs', target)
	end
end)

RegisterServerEvent('qb-ems:heal')
AddEventHandler('qb-ems:heal', function(target)
	TriggerClientEvent('qb-ems:heal', target) 	
end)

RegisterServerEvent('qb-ems:heal2')
AddEventHandler('qb-ems:heal2', function(target)
	TriggerClientEvent('qb-ems:big', target)
end)