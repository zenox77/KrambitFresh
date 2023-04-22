RegisterServerEvent('qb-garages:FinalizedPur2')
AddEventHandler('qb-garages:FinalizedPur2', function(plate, name, vehicle, price, personalvehicle, financed)
    local src = source
    local user = exports["qb-base"]:getModule("Player"):GetUser(source)
    local char = user:getVar("character")
    local player = user:getVar("hexid")
    exports.ghmattimysql:execute('INSERT INTO characters_cars (character_name, cid, license_plate, model, data, purchase_price, last_payment, financed, payments_left, name, vehicle_state, current_garage) VALUES (@owner, @cid, @license_plate, @model, @data, @purchase_price, @last_payment, @financed, @payments_left, @name, @vehicle_state, @current_garage)',{
        ['@cid']   = char.id,
        ['@character_name']   = newname,
        ['@license_plate']  = plate,
        ['@model'] = vehicle,
        ['@data'] = json.encode(personalvehicle),
        ['@name'] = vehicle,
        ['@purchase_price'] = price,
        ['@financed'] = 0,
        ['@last_payment'] = 0,
        ['@payments_left'] = 0,
        ['@current_garage'] = "Ems Department",
        ['@vehicle_state'] = "Out",
    })
end)