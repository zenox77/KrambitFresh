

RegisterNetEvent('banking:updateBalance')
AddEventHandler('banking:updateBalance', function(balance, show)
	SendNUIMessage({
		updateBalance = true,
		balance = balance,
    name = "",
    show = show
	})
end)

RegisterNetEvent('banking:updateCash')
AddEventHandler('banking:updateCash', function(balance, show)
  local id = PlayerId()
  TriggerEvent('isPed:UpdateCash', balance)
	SendNUIMessage({
		updateCash = true,
		cash = balance,
    show = show
	})
end)

RegisterNetEvent("banking:viewBalance")
AddEventHandler("banking:viewBalance", function()
  SendNUIMessage({
    viewBalance = true
  })
end)


-- Send NUI Message to display add balance popup
RegisterNetEvent("banking:addBalance")
AddEventHandler("banking:addBalance", function(amount)
	SendNUIMessage({
		addBalance = true,
		amount = amount
	})
end)

RegisterNetEvent("banking:removeBalance")
AddEventHandler("banking:removeBalance", function(amount)
	SendNUIMessage({
		removeBalance = true,
		amount = amount
	})
end)

RegisterNetEvent("banking:addCash")
AddEventHandler("banking:addCash", function(amount)
	SendNUIMessage({
		addCash = true,
		amount = amount
	})
end)

-- Send NUI Message to display remove balance popup
RegisterNetEvent("banking:removeCash")
AddEventHandler("banking:removeCash", function(amount)
	SendNUIMessage({
		removeCash = true,
		amount = amount
	})
end)

RegisterNetEvent("qb-base:addedMoney")
AddEventHandler("qb-base:addedMoney", function(amt, total)
  TriggerEvent("banking:updateCash", total)
  TriggerEvent("banking:addCash", amt)
end)

RegisterNetEvent("qb-base:removedMoney")
AddEventHandler("qb-base:removedMoney", function(amt, total)
  TriggerEvent("banking:updateCash", total)
  TriggerEvent("banking:removeCash", amt)
end)

RegisterNetEvent("qb-financials:cash")
AddEventHandler("qb-financials:cash", function(pCash, pChange)
    if not pCash then return false, "No cash" end
    exports["qb-ui"]:cashFlash(pCash, pChange)
end)


RegisterCommand("cashh", function()
    TriggerServerEvent("qb-financials:cash:get")
end)
