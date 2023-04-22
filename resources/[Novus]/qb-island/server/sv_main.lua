local islandState = true

RegisterNetEvent("qb-island:checkIslandSwapping")
AddEventHandler("qb-island:checkIslandSwapping", function()
  local src = source
  if islandState then 
    TriggerClientEvent('qb-island:enableSwapping',src,true)
  else 
    return
  end
end)

RegisterNetEvent("qb-island:changeIslandState")
AddEventHandler("qb-island:changeIslandState", function(pState)
  local src = source
  TriggerClientEvent('qb-island:enableSwapping',src,pState)
end)