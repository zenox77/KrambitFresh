RegisterNetEvent("qb-npcs:set:ped")
AddEventHandler("qb-npcs:set:ped", function(pNPCs)
  if type(pNPCs) == "table" then
    for _, ped in ipairs(pNPCs) do
      RegisterNPC(ped, 'qb-npcs')
      EnableNPC(ped.id)
    end
  else
    RegisterNPC(ped, 'qb-npcs')
    EnableNPC(ped.id)
  end
end)

RegisterNetEvent("qb-npcs:ped:giveStolenItems")
AddEventHandler("qb-npcs:ped:giveStolenItems", function(pArgs, pEntity, pEntityFlags, pEntityCoords)
 -- local npcCoords = GetEntityCoords(pEntity)
  local finished = exports["qb-taskbar"]:taskBar(15000, "Preparing to receive goods, don't move.")
  if finished == 100 then
   -- if #(GetEntityCoords(PlayerPedId()) - npcCoords) < 2.0 then
      TriggerEvent("server-inventory-open", "1", "Stolen-Goods-1")
    else
      TriggerEvent("DoLongHudText", "You moved too far you idiot.", 105)
    end
  end)

RegisterNetEvent("qb-npcs:ped:exchangeRecycleMaterial")
AddEventHandler("qb-npcs:ped:exchangeRecycleMaterial", function(pArgs, pEntity, pEntityFlags, pEntityCoords)
 -- local npcCoords = GetEntityCoords(pEntity)
  local finished = exports["qb-taskbar"]:taskBar(3000, "Preparing to exchange material, don't move.")
  if finished == 100 then
   -- if #(GetEntityCoords(PlayerPedId()) - npcCoords) < 2.0 then
      TriggerEvent("server-inventory-open", "103", "Craft");
    else
      TriggerEvent("DoLongHudText", "You moved too far you idiot.", 105)
    end
end)

RegisterNetEvent("qb-npcs:ped:signInJob")
AddEventHandler("qb-npcs:ped:signInJob", function(pArgs, pEntity, pEntityFlags, pEntityCoords)
  if #pArgs == 0 then
    local npcId = DecorGetInt(pEntity, 'NPC_ID')
    if npcId == `news_reporter` then
      TriggerServerEvent("jobssystem:jobs", "news")
    elseif npcId == `head_stripper` then
      TriggerServerEvent("jobssystem:jobs", "entertainer")
    end
  else
    TriggerServerEvent("jobssystem:jobs", "unemployed")
  end
end)

RegisterNetEvent("qb-npcs:ped:paycheckCollect")
AddEventHandler("qb-npcs:ped:paycheckCollect", function(pArgs, pEntity, pEntityFlags, pEntityCoords)
  TriggerServerEvent("server:paySlipPickup")
end)

RegisterNetEvent("qb-npcs:ped:receiptTradeIn")
AddEventHandler("qb-npcs:ped:receiptTradeIn", function(pArgs, pEntity, pEntityFlags, pEntityCoords)
  local cid = exports["isPed"]:isPed("cid")
  local accountStatus, accountTarget = RPC.execute("GetDefaultBankAccount", cid)
  if not accountStatus then return end
  RPC.execute("qb-inventory:tradeInReceipts", cid, accountTarget)
end)

RegisterNetEvent("qb-npcs:ped:sellStolenItems")
AddEventHandler("qb-npcs:ped:sellStolenItems", function()
  RPC.execute("qb-inventory:sellStolenItems")
end)

RegisterNetEvent("qb-npcs:ped:keeper")
AddEventHandler("qb-npcs:ped:keeper", function(pArgs, pEntity, pEntityFlags, pEntityCoords)
  TriggerEvent("server-inventory-open", pArgs[1], "Shop");
end)


TriggerServerEvent("qb-npcs:location:fetch")

AddEventHandler("qb-npcs:ped:weedSales", function(pArgs, pEntity, pEntityFlags, pEntityCoords)
  local result, message = RPC.execute("qb-npcs:weedShopOpen")
  if not result then
    TriggerEvent("DoLongHudText", message, 2)
    return
  end
  TriggerEvent("server-inventory-open", "44", "Shop");
end)

AddEventHandler("qb-npcs:ped:licenseKeeper", function()
  RPC.execute("qb-npcs:purchaseDriversLicense")
end)

