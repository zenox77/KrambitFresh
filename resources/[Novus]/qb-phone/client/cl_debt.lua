RegisterNUICallback('btnDebt', function()
    local cars, debt = RPC.execute('qb-phone:debt')
    SendNUIMessage({
        openSection = "debt",
        cars = cars,
        debt = debt
    })
end)

function housing(house)
    local houses = {}
    for i,v in pairs(house) do
        local lastPaid = v.last_payment
        if lastPaid <= 7 then
            table.insert(houses, {
                house_id = v.house_id,
                house_name = v.house_name,
                price = v.price,
                last_payment = lastPaid
            })
        end
    end
    return houses
end

RegisterNUICallback('car_paid', function(data)
    local plate = data.plate
    local payment = data.payment
    local complete = RPC.execute('qb-phone:car_payment', plate,payment)
    if complete then
        phoneNotification("email","You made a payment of $"..payment,"Finance")
    end
    TriggerEvent('DoLongHudText', "You don't have enough money in your bank.",2)
end)

RegisterNUICallback('h_paid', function(data)
    local id = data.hid
    local payment = data.payment
    local complete = RPC.execute('qb-phone:h_payment', id,payment)
    if complete then
        phoneNotification("email","You made a payment of $"..payment,"Housing")
        return
    end
    TriggerEvent('DoLongHudText', "You don't have enough money in your bank.",2)
end)

RegisterNUICallback('p_paid', function(data)
    local id = data.pid
    local payment = data.payment
    local did = data.did
    local complete = RPC.execute('qb-phone:p_payment',id,payment,did)
    if complete then
        phoneNotification("email","You made a payment of $"..payment,"Debt")
        return
    end
    TriggerEvent('DoLongHudText', "You don't have enough money in your bank.",2)
end)


RegisterNetEvent("qb-carscrap:FirstEmail")
AddEventHandler("qb-carscrap:FirstEmail", function()
    TriggerEvent("chatMessage", "Car Scrapping", 8, "Head to the car location , GPS is set for you")

end)

RegisterNetEvent("qb-boosting:SendEmail")
AddEventHandler("qb-boosting:SendEmail", function(subject, message)
    TriggerEvent("chatMessage", subject, 8, message)
end)

RegisterNetEvent("qb-carscrap:SecondEmail")
AddEventHandler("qb-carscrap:SecondEmail", function()
    TriggerEvent("chatMessage", "Car Scrapping", 8, "Head to the hangar , GPS is set for you")
end)
RegisterNetEvent("qb-carscrap:ThirdEmail")
AddEventHandler("qb-carscrap:ThirdEmail", function()
    TriggerEvent("chatMessage", "Car Scrapping", 8, "Great job , make sure you come back for some other work")
end)

RegisterNetEvent('qb-phone:MakeBill', function()
    local input = exports["qb-ui"]:showInput({
        {
            icon = "id-card",
            label = "CID",
            name = "cid",
        },
        {
            icon = "dollar-sign",
            label = "Amount",
            name = "amount",
        },
        {
            icon = "pen-square",
            label = "Type: Ex. Finance",
            name = "type",
        },
        {
            icon = "clipboard",
            label = "Comment",
            name = "comment",
        },
    })
    if input["cid"] ~= nil and input["amount"] ~= nil then
        local cid = input["cid"]
        local amount = input["amount"]
        local comment = input["comment"]
        local type = input["type"]

        local complete = RPC.execute("qb-phone:addBill",cid,amount,type,comment)
        if complete then
            TriggerEvent('DoLongHudText', "Successfully adding player bill.")
            return
        end
    end
end)