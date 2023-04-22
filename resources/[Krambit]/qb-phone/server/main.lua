local serverstockvalues = {
    [1] = { ["name"] = "Shung", ["value"] = 100.0, ["identifier"] = "Shungite", ["lastchange"] = 0.00, ["amountavailable"] = math.random(200,350) },
    [2] = { ["name"] = "Guinea", ["value"] = 50.0, ["identifier"] = "Guinea", ["lastchange"] = 0.00, ["amountavailable"] = math.random(400,500) },
  }

Citizen.CreateThread(function()
  --TriggerEvent('deleteAllTweets')
  TriggerEvent('deleteAllYP')
end)

function getMessagesBetweenUsers(sender, recipient, callback)
  exports.oxmysql:execute("SELECT id, sender, receiver, message, date FROM user_messages WHERE (receiver = @from OR sender = @from) and (receiver = @to or sender = @to)", {
  ['from'] = sender,
  ['to'] = recipient
  }, function(result) callback(result) end)
end

function saveSMS(receiver, sender, message, callback)
  exports.oxmysql:execute("INSERT INTO user_messages (`receiver`, `sender`, `message`) VALUES (@receiver, @sender, @msg)",
  {['receiver'] = tonumber(receiver), ['sender'] = tonumber(sender), ['msg'] = message}, function(rowsChanged)
      exports.oxmysql:execute("SELECT id FROM user_messages WHERE receiver = @receiver AND sender = @sender AND message = @msg",
  {['receiver'] = tonumber(receiver), ['sender'] = tonumber(sender), ['msg'] = message}, function(result) if callback then callback(result) end end)
  end)
end

RPC.register("qb-phone:getPhoneNumber", function(pSource)
    local user = exports['qb-base']:getModule("Player"):GetUser(pSource)
    local char = user:getCurrentCharacter()
    local pn = char.phone_number
    -- local hasBurnerNumber = SQL.execute(SELECT FROM character burner_number)
    return pn
end)


function getCIDFromPhoneNumber(phoneNumber)
    local char = MySQL.query.await([[
        SELECT * FROM characters WHERE phone_number = ?
    ]], {phoneNumber})

    return char[1].id
end

exports('getCIDFromPhoneNumber',getCIDFromPhoneNumber)


function getSIDFromStateID(cid)
    for k,v in pairs(GetPlayers()) do
        local user = exports['qb-base']:getModule("Player"):GetUser(tonumber(v))
        local char = user:getCurrentCharacter()
        local cid_user = char.id
        if tonumber(cid) == tonumber(cid_user) then 
            print(v)
            return v
        end
    end
end

RPC.register("qb-phone:sendThePM", function(src, msg)
    TriggerClientEvent("phone:sendThePM", -1, "The PM", msg)
end)

RPC.register("GetAlias", function(pSource)
    local user = exports['qb-base']:getModule("Player"):GetUser(pSource)
    local char = user:getCurrentCharacter()
    local character = MySQL.query.await([[
        SELECT * FROM characters WHERE id = ?
    ]], {char.id})
    print(character[1].alias)
    return character[1].alias
end)


RPC.register("acceptBusinessCharge", function(pSource, pBID, pAmt, pCID)
    local SID = getSIDFromStateID(pCID)
    local user = exports['qb-base']:getModule("Player"):GetUser(SID)
    local char = user:getCurrentCharacter()
    local bankooo = myBank(char.id)
    print(pAmt, user:getBalance())

    if user:getBalance() >= tonumber(pAmt) then
        print('yup')
        user:removeBank(tonumber(pAmt))
        local business = MySQL.query.await([[
            SELECT * FROM businesses
            WHERE business_id = ?
        ]],
        { pBID })
        local business = MySQL.query.await([[
            UPDATE businesses SET 
            bank = ? WHERE business_id = ?
        ]],
        { business[1].bank + tonumber(pAmt), pBID })
        return true, "Payment successful.", 1
    end
    return false, "You don't have enough money to complete this transaction.", 2
end)

RegisterNetEvent("qb-phone:h-Lock:sv", function(hid, status)
    print("lock house ? " ..hid .. " " ..status)
    exports.oxmysql:execute("UPDATE housing SET status = ? WHERE hid = ?",{status,hid})
end)

RPC.register("qb-financials:getCurrentBank", function(pSource)
    local user = exports['qb-base']:getModule("Player"):GetUser(pSource)
    local char = user:getCurrentCharacter()
    local cid = char.id

    local bank = MySQL.query.await([[
        SELECT * FROM _account
        WHERE id = ?
    ]],
    { cid })

    return bank[1].account_balance

end)

RPC.register("qb-apartments:getCurrentApartment", function(src)
    local user = exports["qb-base"]:getModule("Player"):GetUser(src)
    local char = user:getCurrentCharacter()
    local apttype = MySQL.query.await([[
        SELECT * FROM character_motel
        WHERE cid = ?
    ]],
    { char.id })

    local apartmentInfo = {}

    if tonumber(apttype[1].building_type) == 3 then
        apartmentInfo = {
            apartmentType = "Pill Box Swiss St",
            apartmentNumber = apttype[1].id
        }
    elseif tonumber(apttype[1].building_type) == 2 then
        apartmentInfo = {
            apartmentType = "Prosperity",
            apartmentNumber = apttype[1].id
        }
    elseif tonumber(apttype[1].building_type) == 1 then
        apartmentInfo = {
            apartmentType = "Alta ST",
            apartmentNumber = apttype[1].id
        }
    end
    print(json.encode(apartmentInfo))
    return apartmentInfo
end)


--[[ Phone calling stuff ]]

function getNumberPhone(cid, val)
  local penis
  exports.oxmysql:execute("SELECT phone_number FROM characters WHERE id = @id", {
      ['id'] = cid
  }, function(result)
      if result[1] ~= nil then
          penis = result[1].phone_number
      else
          penis = nil
      end
  end)
  Wait(200)
  if val ~= nil then return val end
  if penis ~= nil then
      return penis
  else
      return nil
  end
end

function getIdentifierByPhoneNumber(phone_number)
  local prick
  exports.oxmysql:execute("SELECT id FROM characters WHERE phone_number = @phone_number", {
      ['phone_number'] = phone_number
  }, function(result)
      if result[1] ~= nil then
          prick = result[1].id
      else
          prick = nil
      end
  end)
  Wait(200)
  if prick ~= nil then
      return prick
  else
      return nil
  end
end

-- RegisterServerEvent('ReturnHouseKeys')
-- AddEventHandler('ReturnHouseKeys', function(cid)
--   local src = source
--   local houses = {}
--   local shared = {}
--   exports.oxmysql:execute("SELECT * FROM __housedata WHERE cid= ? ", {cid}, function(chicken)
--       for k, v in pairs(chicken) do
--           if v ~= nil then
--               if v.housename ~= nil then
--                   local random = math.random(1111,9999)
--                   houses[random] = {}
--                   table.insert(houses[random], {["house_name"] = v.housename, ["house_model"] = v.house_model, ["house_id"] = v.house_id, ["days"]= v.days, ["overall"] = v.overall, ["payments"] = v.payments, ["amountdue"] = v.due})
--                   TriggerClientEvent('returnPlayerKeys', src, houses, shared)
--               end
--           end
--       end
--   end)
--   exports.oxmysql:execute('SELECT * FROM __housekeys WHERE `cid`= ?', {cid}, function(returnData)
--       for k, r in pairs(returnData) do
--           if r ~= nil then
--               if r.housename ~= nil then
--                   local random = math.random(1111,9999)
--                   shared[random] = {}
--                   table.insert(shared[random], {["house_name"] = r.housename, ["house_model"] = r.house_model, ["house_id"] = r.house_id})
--                  TriggerClientEvent('returnPlayerKeys', src, houses, shared)
--               end
--           end
--       end
--   end)
-- end)

RegisterNetEvent('phone:messageSeen')
AddEventHandler('phone:messageSeen', function(id)
  id = tonumber(id)
  if id ~= nil then
      exports.oxmysql:execute("UPDATE user_messages SET isRead = 1 WHERE id = @id", {['id'] = tonumber(id)})
  end
end)

function ReverseTable(t)
  local reversedTable = {}
  local itemCount = #t
  for k, v in ipairs(t) do
      reversedTable[itemCount + 1 - k] = v
  end
  return reversedTable
end

RegisterServerEvent('phone:getServerTime')
AddEventHandler('phone:getServerTime', function()
  local src= source
  TriggerClientEvent('phone:setServerTime', src, os.date('%H:%M:%S', os.time()))
end)

function getPlayerID(source)
  local identifiers = GetPlayerIdentifiers(source)
  local player = getIdentifiant(identifiers)
  return player
end
function getIdentifiant(id)
  for _, v in ipairs(id) do
      return v
  end
end

AddEventHandler('playerSpawned',function(source)
  local sourcePlayer = tonumber(source)
  local identifier = getPlayerID(source)
  getOrGeneratePhoneNumber(sourcePlayer, identifier, function (myPhoneNumber)
  end)
end)

function getOrGeneratePhoneNumber (sourcePlayer, identifier, cb)
  local sourcePlayer = sourcePlayer
  local identifier = identifier
  local user = exports["qb-base"]:getModule("Player"):GetUser(sourcePlayer)
  local char = user:getVar("character")
  local myPhoneNumber = getNumberPhone(char.id)
  if myPhoneNumber == '0' or myPhoneNumber == nil then
      repeat
          myPhoneNumber = getPhoneRandomNumber()
          local id = getIdentifierByPhoneNumber(myPhoneNumber)
      until id == nil
      exports.oxmysql:execute("UPDATE users SET phone_number = @myPhoneNumber WHERE identifier = @identifier", {
          ['myPhoneNumber'] = myPhoneNumber,
          ['identifier'] = identifier
      }, function ()
          cb(myPhoneNumber)
      end)
  else
      cb(myPhoneNumber)
  end
end

function getPhoneRandomNumber()
  local numBase0 = 4
  local numBase1 = 15
  local numBase2 = math.random(100,999)
  local numBase3 = math.random(1000,9999)
  local num = string.format(numBase0 .. "" .. numBase1 .. "" .. numBase2 .. "" .. numBase3)
  return num
end

RegisterNetEvent('phone:getServerTime')
AddEventHandler('phone:getServerTime', function()
  local hours, minutes, seconds = Citizen.InvokeNative(0x50C7A99057A69748, Citizen.PointerValueInt(), Citizen.PointerValueInt(), Citizen.PointerValueInt())
  TriggerClientEvent('timeheader', -1, tonumber(hours), tonumber(minutes))
end)

RegisterNetEvent('deleteAllYP')
AddEventHandler('deleteAllYP', function()
  local src = source
  exports.oxmysql:execute('DELETE FROM phone_yp', {}, function (result) end)
end)

RegisterNetEvent('deleteContactssss')
AddEventHandler('deleteContactssss', function()
  local src = source
  exports.oxmysql:execute('DELETE FROM user_contacts', {}, function (result) end)
end)

RegisterNetEvent('deleteAllTweets')
AddEventHandler('deleteAllTweets', function()
  local src = source
  exports.oxmysql:execute('DELETE FROM tweets', {}, function (result) end)
end)

RegisterServerEvent('phone:RemovePayPhoneMoney')
AddEventHandler('phone:RemovePayPhoneMoney', function()
  local src = source
local user = exports["qb-base"]:getModule("Player"):GetUser(src)
  user:removeMoney(25)
end)

RegisterServerEvent("stocks:clientvalueupdate")
AddEventHandler("stocks:clientvalueupdate", function(table)
    serverstockvalues = table
end)

-- RegisterServerEvent("stocks:retrieve")
-- AddEventHandler("stocks:retrieve", function()
--     local src = source
--     local user = exports["qb-base"]:getModule("Player"):GetUser(src)
--     local char = user:getCurrentCharacter()

--     exports.oxmysql:execute("SELECT stocks FROM characters WHERE id = @id", {['id'] = char.id}, function(result)
--         if result[1].stocks then
--         TriggerClientEvent("stocks:clientvalueupdate", src, json.decode(result[1].stocks))
--         end
--     end)
-- end)

-- RegisterServerEvent("phone:stockTradeAttempt")
-- AddEventHandler("phone:stockTradeAttempt", function(index, id, sending)
--     local src = source
--     local user = exports["qb-base"]:getModule("Player"):GetUser(tonumber(id))
--     local char = user:getCurrentCharacter()

--     if user ~= nil then
--         TriggerClientEvent("Crypto:GivePixerium", id, sending)
--     end
-- end)

RegisterServerEvent('phone:triggerPager')
AddEventHandler('phone:triggerPager', function()
  TriggerClientEvent('phone:triggerPager', -1)
end)

RegisterNetEvent('message:tome')
AddEventHandler('message:tome', function(messagehueifh)
  local src = source		
  local first = messagehueifh:sub(1, 3)
  local second = messagehueifh:sub(4, 6)
  local third = messagehueifh:sub(7, 11)

  local msg = first .. "-" .. second .. "-" .. third
  TriggerClientEvent('chatMessage', src, 'Phone Number ', 4, msg)
end)

RegisterNetEvent('message:inDistanceZone')
AddEventHandler('message:inDistanceZone', function(somethingsomething, messagehueifh)
  local src = source		
  local first = messagehueifh:sub(1, 3)
  local second = messagehueifh:sub(4, 6)
  local third = messagehueifh:sub(7, 11)

  local msg = first .. "-" .. second .. "-" .. third
  TriggerClientEvent('chatMessage', somethingsomething, 'Phone Number ', 4, msg)
end)


RegisterNetEvent('account:information:sv')
AddEventHandler('account:information:sv', function(cid)
    local src = source
    local licenceTable = {}
    exports.oxmysql:execute("SELECT * FROM user_licenses WHERE cid = @id AND status = @status",{['id'] = cid, ['status'] = 1}, function(result)
        for k,v in pairs(result) do
            table.insert(licenceTable,{
                type = v.type,
                status = v.status,
            })
            
        end        
    end)

    exports.oxmysql:execute("SELECT `paycheck` FROM characters WHERE id = @id",{['id'] = cid}, function(data)
        payslips = data[1].paycheck
    end)
    -- exports.oxmysql:execute("SELECT `casino` FROM characters WHERE id = @id",{['id'] = cid}, function(data)
    --     pChips = data[1].casino
    -- end)
    exports.oxmysql:execute("SELECT `phone_number` FROM characters WHERE id = @id",{['id'] = cid}, function(data)
        pNumber = data[1].phone_number
    end)
    
    Citizen.Wait(100)
    TriggerClientEvent('account:information:cl', src, licenceTable, payslips, pNumber)
end)

RegisterServerEvent('server:currentpasses')
AddEventHandler('server:currentpasses', function()
  local src = source
  local user = exports["qb-base"]:getModule("Player"):GetUser(src)
  local ply = user:getCurrentCharacter()
  exports.oxmysql:execute("SELECT * FROM character_passes WHERE cid = @cid", {['cid'] = ply.id}, function(result)
      if result[1] ~= nil then
          TriggerClientEvent("client:passes", src, result)
          if result[1].pass_type == "police" or result[1].pass_type == "ems" then
          else
              TriggerClientEvent("qb-jobmanager:playerBecameJob", src, result[1].pass_type, result[1].pass_type, false)
          end
      end
  end)
end)

RegisterServerEvent('server:givepass')
AddEventHandler('server:givepass', function(pass_type, rank, cid)
  local src = source
  local user = exports["qb-base"]:getModule("Player"):GetUser(src)
  local ply = user:getCurrentCharacter()
  local SrcName = ply.first_name .. " " ..ply.last_name
--   print("SHIT",pass_type, rank, cid)
  exports.oxmysql:execute("SELECT * FROM character_passes WHERE pass_type = ? AND cid = ?", {pass_type, cid}, function(data)
      if not data[1] then
          exports.oxmysql:execute("SELECT * FROM characters WHERE id = ?", {cid}, function(name)
              if name[1] then
                
                  local name = name[1].first_name.. ' ' ..name[1].last_name
                  exports.oxmysql:execute('INSERT INTO character_passes (cid, rank, name, giver, pass_type, business_name) VALUES (@cid, @rank, @name, @giver, @pass_type, @business_name)', {
                      ['cid'] = cid,
                      ['rank'] = rank,
                      ['name'] = name,
                      ['giver'] = SrcName,
                      ['pass_type'] = pass_type,
                      ['business_name'] = pass_type
                  })
                  exports.oxmysql:execute("SELECT * FROM characters WHERE id = ?", {cid}, function(data2)
                      if data2[1] then
                          local pSteam = data2[1].owner
                          exports.oxmysql:execute('INSERT INTO jobs_whitelist (owner, cid, job, rank) VALUES (@owner, @cid, @job, @rank)', {
                              ['owner'] = pSteam,
                              ['cid'] = cid,
                              ['job'] = pass_type,
                              ['rank'] = rank
                          })

                      end
                  end)
                  TriggerClientEvent("notification", src, "You hired " ..name.. " !")
                  TriggerClientEvent("Passes:RequestUpdate", -1, cid)
              else
                  TriggerClientEvent("notification", src, "CID does not exist!")
              end
          end)
      else
          exports.oxmysql:execute("UPDATE character_passes SET `rank` = ? WHERE cid = ? AND pass_type = ?", {rank, cid, pass_type})
          TriggerClientEvent("notification", src, "You have updated their rank!")
          TriggerClientEvent("Passes:RequestUpdate", -1, cid)
      end
  end)
end)


RegisterServerEvent('server:givepayGroup')
AddEventHandler('server:givepayGroup', function(groupname, amount, cid)
  local src = source
  exports.oxmysql:execute("SELECT * FROM group_banking WHERE group_type = @id", {['id'] = groupname}, function(data)
      if data[1].bank >= tonumber(amount) then
          exports.oxmysql:execute("SELECT paycheck FROM characters WHERE id = @id", {['id'] = cid}, function(result)
              exports.oxmysql:execute("UPDATE characters SET `paycheck` = @paycheck WHERE id = @id", { ['id'] = cid, ['paycheck'] = result[1].paycheck + tonumber(amount)})
              TriggerClientEvent("Yougotpaid", -1, cid)
              exports.oxmysql:execute("UPDATE group_banking SET `bank` = @bank WHERE group_type = @group_type", { ['group_type'] = groupname, ['bank'] = data[1].bank - tonumber(amount)})
          end)
      else
      TriggerClientEvent('notification', src, 'You do not have enough money in your account to perform this transaction', 2)
      end
  end)
end)

-- RegisterServerEvent('server:gankGroup')
-- AddEventHandler('server:gankGroup', function(groupid, amount)
--   local src = source
--   local user = exports["qb-base"]:getModule("Player"):GetUser(src)
--   if btnTaskGroups >= tonumber(amount) then
--       user:removeMoney(tonumber(amount))
--       exports.oxmysql:execute("SELECT * FROM group_banking WHERE group_type = @id", {['id'] = groupid}, function(result)
--           exports.oxmysql:execute("UPDATE group_banking SET `bank` = @bank WHERE `group_type` = @id", { ['id'] = groupid, ['bank'] = result[1].bank + amount})
--       end)
--   end
-- end)

RegisterServerEvent("get:vehicle:coords")
AddEventHandler("get:vehicle:coords", function(plate)
  local src = source
  local vehPlate = plate
  exports.oxmysql:execute("SELECT `coords` FROM characters_cars WHERE license_plate = @license_plate", {['license_plate'] = plate}, function(result)
      if result[1] then
          TriggerClientEvent("pass:coords:vehicle", src,vehPlate, json.decode(result[1].coords))
      end
  end)
end)

RegisterServerEvent("vehicle:coords")
AddEventHandler("vehicle:coords", function(plate, coords)
  local updatecoords = json.encode(coords)
  exports.oxmysql:execute("UPDATE characters_cars SET `coords` = @coords WHERE `license_plate` = @license_plate", { ['license_plate'] = plate, ['coords'] = updatecoords})
end)

RegisterServerEvent("car:Outstanding")
AddEventHandler("car:Outstanding", function()
  local src = source
  exports.oxmysql:execute("SELECT * FROM characters_cars WHERE payments_left = ? AND payments_left >= ? AND repoed = ?", {
      "0",
      "1", 
      "0"
    }, function(result)
      local FinalResult = {}
      for _, v in pairs(result) do
          local vname = v.name
          local plate = v.license_plate
          local finance = v.financed
          local payments = v.payments_left
          owner = v.cid
          exports.oxmysql:execute('SELECT * FROM characters WHERE `id`= ?', {owner}, function(data)
              for _, d in pairs(data) do
                  phonenum = d.phone_number
                  local name = d.first_name .. ' ' .. d.last_name
                  local string = {
                      Plate = ('Vehicle: %s (%s)'):format(vname, plate),
                      AmountDue = ('Amount Due: $%s'):format(math.floor(finance/payments)),
                      cid = ('CID: %s'):format(owner),
                      Info = ('%s | %s'):format(phonenum, name)
                  }
                  
                  table.insert(FinalResult, string)
                  TriggerClientEvent("phone:listunpaid", src, FinalResult)
              end
          end) 
      end
  end)
end)

RegisterServerEvent("phone:saveWallpaper")
AddEventHandler("phone:saveWallpaper", function(cid, wall)
    exports.oxmysql:execute("UPDATE characters SET `wallpaper` = @wallpaper WHERE `id` = @cid", { ['cid'] = cid, ['wallpaper'] = wall})
end)

RegisterServerEvent('checkingLicense')
AddEventHandler('checkingLicense', function()
    --TriggerClientEvent('checkingLicense',-1)
end)

RegisterServerEvent("qb-phone:grabWallpaper")
AddEventHandler("qb-phone:grabWallpaper", function()
    -- print("GRABING WALLPAPER")
  local src = source
  local player = exports["qb-base"]:getModule("Player"):GetUser(src)
  local char = player:getCurrentCharacter()
  local cid = char.id
    exports.oxmysql:execute("SELECT `wallpaper` FROM characters WHERE id = @id",{['id'] = cid}, function(data)
      if data[1].wallpaper ~= nil then
          TriggerClientEvent('qb-phone:grabBackground', src, data[1].wallpaper)
        --   print('Grabbbing',data[1].wallpaper)
      else
          TriggerClientEvent('qb-phone:grabBackground', src, "https://i.imgur.com/JVPavDg.jpg")
        --   print('Not Grabbbing')
      end
    end)
end)

RegisterServerEvent("qb-phone:GiveCrypto")
AddEventHandler("qb-phone:GiveCrypto", function(type,amount)
    local src = source
    local user = exports["qb-base"]:getModule("Player"):GetUser(src)
    local char = user:getVar("character")
    local id = char.id
    if type == 1 then
        local myShungite = getShungiteAmount(id)
        TriggerClientEvent("chatMessage", src, "EMAIL", 8,  "You have recieved " .. amount .. " Shungite")
        exports.oxmysql:execute("UPDATE characters SET Shungite = @Shungite WHERE id = @id", {["Shungite"] = myShungite+amount ,['id'] = id})
    elseif type == 2 then
        local myTGB = getTgbAmount(id)
        TriggerClientEvent("chatMessage", src, "EMAIL", 8,  "You have recieved " .. amount .. " GNE")
        exports.oxmysql:execute("UPDATE boosting_users SET gne = @gne WHERE identifier = @identifier", {["gne"] = myTGB+amount ,['identifier'] = id})
    elseif type == 3 then
        local myDvd = getDvdAmount(id)
        TriggerClientEvent("chatMessage", src, "EMAIL", 8,  "You have recieved " .. amount .. " TGB")
        exports.oxmysql:execute("UPDATE characters SET dvd = @dvd WHERE id = @id", {["dvd"] = myDvd+amount ,['id'] = id})
    end
end)

RPC.register("phone:getMyBG", function(pSource)
    local src = source
    local user = exports["qb-base"]:getModule("Player"):GetUser(src)
    local char = user:getVar("character")
    local id = char.id

    exports.oxmysql:execute("SELECT `wallpaper` FROM characters WHERE id = @id",{['id'] = id}, function(data)
        background = data[1].wallpaper
    end)
    Wait(100)
    return background
end)

RPC.register("qb-phone:getGroupSanitation", function(pSource)
    local src = source
    -- local user = exports["qb-base"]:getModule("Player"):GetUser(src)
    -- local char = user:getVar("character")
    -- local id = char.id
    local datas
    local members

    exports.oxmysql:execute("SELECT * FROM job_groups WHERE job = @job",{['job'] = 'garbage'}, function(data)
        datas = data
        -- print("DATa",json.encode(data))
    end)
    exports.oxmysql:execute("SELECT * FROM job_groups WHERE job = @job AND leader = @leader",{['job'] = 'garbage', ['leader'] = 0}, function(member)
        members = member
        -- print("DATa",json.encode(data))
    end)
    Wait(300)
    -- print("DATaSS",json.encode(datas))
    return datas,members
end)

RPC.register("qb-phone:incomingCrypto", function(pSource)
    local src = source
    local user = exports["qb-base"]:getModule("Player"):GetUser(src)
    
    return serverstockvalues
end)

local BPid = math.random(1,6)
RPC.register("qb-phone:blueprintid", function(pSource)
    return BPid
end)

RPC.register("qb-phone:exchangeCrypto", function(pSource,type,amount)
    local src = source
    local user = exports["qb-base"]:getModule("Player"):GetUser(src)
    local char = user:getVar("character")
    local id = char.id
    local myShungite = getShungiteAmount(id)
    local myTgb = getTgbAmount(id)
    local myDvd = getDvdAmount(id)
    local amount = amount
    if type == 1 then
        if tonumber(myShungite) >= tonumber(amount) then
            TriggerClientEvent("chatMessage", src, "Bank", 8,  "You exchanged " .. amount .. " Shungite")
            serverstockvalues[1]["amountavailable"] = serverstockvalues[1]["amountavailable"] + amount
            exports.oxmysql:execute("UPDATE characters SET Shungite = @Shungite WHERE id = @id", {["Shungite"] = myShungite-amount ,['id'] = id})
            user:addBank(amount * 100)
        else
            TriggerClientEvent("chatMessage", src, "Bank", 8,  "Transaction failed. There isnt enough in your bank")
        end
    elseif type == 2 then
        if tonumber(myTgb) >= tonumber(amount) then
            TriggerClientEvent("chatMessage", src, "Bank", 8,  "You exchanged " .. amount .. " GNE")
            serverstockvalues[2]["amountavailable"] = serverstockvalues[2]["amountavailable"] + amount
            exports.oxmysql:execute("UPDATE boosting_users SET gne = @gne WHERE identifier = @identifier", {["gne"] = myTgb-amount ,['identifier'] = id})
            user:addBank(amount * 50)
            return true
        else
            TriggerClientEvent("chatMessage", src, "Bank", 8,  "Transaction failed. There isnt enough in your bank")
        end
    elseif type == 3 then
        if tonumber(myDvd) >= tonumber(amount) then
            TriggerClientEvent("chatMessage", src, "Bank", 8,  "You exchanged " .. amount .. " Davadam Prime")
            serverstockvalues[3]["amountavailable"] = serverstockvalues[3]["amountavailable"] + amount
            exports.oxmysql:execute("UPDATE characters SET dvd = @dvd WHERE id = @id", {["dvd"] = myDvd-amount ,['id'] = id})
            user:addBank(amount * 1000)
            return true
        else
            TriggerClientEvent("chatMessage", src, "Bank", 8,  "Transaction failed. There isnt enough in your bank")
        end
    end
end)

RPC.register("qb-phone:transferCrypto", function(pSource,type,amount,target)
    local src = source
    local user = exports["qb-base"]:getModule("Player"):GetUser(src)
    local char = user:getVar("character")
    local id = char.id
    local myShungite = getShungiteAmount(id)
    local myTgb = getTgbAmount(id)
    local myDvd = getDvdAmount(id)
    local amount = amount
    local target = getCIDFromPhoneNumber(target)
    print(target)
    local targetShungite = getShungiteAmount(target)
    local targetTgb = getTgbAmount(target)
    local targetDvd = getDvdAmount(target)
    if type == 1 then
        if tonumber(myShungite) >= tonumber(amount) then
            TriggerClientEvent("chatMessage", src, "Bank", 8,  "You transfered " .. amount .. " Shungite")
            exports.oxmysql:execute("UPDATE characters SET Shungite = @Shungite WHERE id = @id", {["Shungite"] = myShungite-amount ,['id'] = id})
            exports.oxmysql:execute("UPDATE characters SET Shungite = @Shungite WHERE id = @id", {["Shungite"] = targetShungite+amount ,['id'] = target})
        else
            TriggerClientEvent("chatMessage", src, "Bank", 8,  "Transaction failed. There isnt enough in your bank")
        end
    elseif type == 2 then
        if tonumber(myTgb) >= tonumber(amount) then
            TriggerClientEvent("chatMessage", src, "Bank", 8,  "You transfered " .. amount .. " GNE")
            exports.oxmysql:execute("UPDATE boosting_users SET gne = @gne WHERE identifier = @identifier", {["gne"] = myTgb-amount ,['identifier'] = id})
            exports.oxmysql:execute("UPDATE boosting_users SET gne = @gne WHERE identifier = @identifier", {["gne"] = targetTgb+amount ,['identifier'] = target})
        else
            TriggerClientEvent("chatMessage", src, "Bank", 8,  "Transaction failed. There isnt enough in your bank")
        end
    elseif type == 3 then
        if tonumber(myDvd) >= tonumber(amount) then
            TriggerClientEvent("chatMessage", src, "Bank", 8,  "You transfered " .. amount .. " TGB")
            exports.oxmysql:execute("UPDATE characters SET dvd = @dvd WHERE id = @id", {["dvd"] = myDvd-amount ,['id'] = id})
            exports.oxmysql:execute("UPDATE characters SET dvd = @dvd WHERE id = @id", {["dvd"] = targetDvd+amount ,['id'] = target})
        else
            TriggerClientEvent("chatMessage", src, "Bank", 8,  "Transaction failed. There isnt enough in your bank")
        end
    end
end)

RPC.register("qb-phone:GetShungite", function (pSource)
    local src = source
    local user = exports["qb-base"]:getModule("Player"):GetUser(src)
    local char = user:getVar("character")
    local id = char.id
    local Shungite = getShungiteAmount(id)
    return Shungite
end)

RPC.register("qb-phone:GetTgb", function (pSource)
    local src = source
    local user = exports["qb-base"]:getModule("Player"):GetUser(src)
    local char = user:getVar("character")
    local id = char.id
    local tgb = getTgbAmount(id)
    return tgb
end)

RPC.register("qb-phone:GetDvd", function (pSource)
    local src = source
    local user = exports["qb-base"]:getModule("Player"):GetUser(src)
    local char = user:getVar("character")
    local id = char.id
    local dvd = getDvdAmount(id)
    return dvd
end)

RPC.register("qb-phone:buyCrypto", function (pSource,ctype,amount)
    local src = source
    local amount = amount
    local user = exports["qb-base"]:getModule("Player"):GetUser(src)
    local char = user:getVar("character")
    local id = char.id
    local myShungite = getShungiteAmount(id)
    local myTgb = getTgbAmount(id)
    local myDvd = getDvdAmount(id)
    local banko = myBank(id)
    if ctype == 1 then
        local price = (amount*100)
        if banko < price then
            TriggerClientEvent("chatMessage", src, "Bank", 8,  "You do not have the funds to recieve " .. amount .. " Shungite")
            return false
        else
            user:removeBank(price)
            exports.oxmysql:execute("UPDATE characters SET Shungite = @Shungite WHERE id = @id", {["Shungite"] = myShungite+amount ,['id'] = id})
            TriggerClientEvent("chatMessage", src, "Bank", 8,  "You have recieved " .. amount .. " Shungite")
            return true
        end
    elseif type == 2 then
        local price = (amount*50)
        if banko < price then
            TriggerClientEvent("chatMessage", src, "Bank", 8,  "You do not have the funds to recieve " .. amount .. " TGB")
            return false
        else
            user:removeBank(price)
            exports.oxmysql:execute("UPDATE boosting_users SET gne = @gne WHERE identifier = @identifier", {["gne"] = myTgb+amount ,['identifier'] = id})
            TriggerClientEvent("chatMessage", src, "Bank", 8,  "You have recieved " .. amount .. " TGB")
            return true
        end
    elseif type == 3 then
        local price = (amount*1000)
        if banko < price then
            TriggerClientEvent("chatMessage", src, "Bank", 8,  "You do not have the funds to recieve " .. amount .. " Davadam Prime")
            return false
        else
            user:removeBank(price)
            exports.oxmysql:execute("UPDATE characters SET dvd = @dvd WHERE id = @id", {["dvd"] = myDvd+amount ,['id'] = id})
            TriggerClientEvent("chatMessage", src, "Bank", 8,  "You have recieved " .. amount .. " Davadam Prime")
            return true
        end
    end
end)

RPC.register("qb-phone:purchaseDarkMarket", function (pSource,type,price)
    local src = source
    local user = exports["qb-base"]:getModule("Player"):GetUser(src)
    local char = user:getCurrentCharacter()
    local id = char.id
    local price = tonumber(price)
    local myShungite = getShungiteAmount(id)
    local myTgb = getTgbAmount(id)
    local myDvd = getDvdAmount(id)
    if type == 1 then
        if tonumber(myShungite) < price then
            value = false
        else
            exports.oxmysql:execute("UPDATE characters SET Shungite = @Shungite WHERE id = @id", {["Shungite"] = myShungite-price ,['id'] = id})
            value = true
        end
    elseif type == 2 then
        if tonumber(myTgb) < price then
            value = false
        else
            exports.oxmysql:execute("UPDATE boosting_users SET gne = @gne WHERE identifier = @identifier", {["gne"] = myTgb-price ,['identifier'] = id})
            value = true
        end
    elseif type == 3 then
        if myDvd < price then
            value = false
        else
            exports.oxmysql:execute("UPDATE characters SET dvd = @dvd WHERE id = @id", {["dvd"] = myDvd-price ,['id'] = id})
            value = true
        end
    end
    Wait(500)
    print(value)
    return value
end)

function getShungiteAmount(id)
    exports.oxmysql:execute('SELECT * FROM characters WHERE id = @id', {['id'] = id}, function(result)
        Shungite = result[1].Shungite
    end)
    Wait(100)
    
    return Shungite
end

function getTgbAmount(id) -- REDO check if they have any first
    exports.oxmysql:execute('SELECT * FROM characters WHERE id = @id', {['id'] = id}, function(result)
        tbg = result[1].tbg
    end)
    return tbg or 0
end

function getDvdAmount(id)
    exports.oxmysql:execute('SELECT * FROM characters WHERE id = @id', {['id'] = id}, function(result)
        dvd = result[1].dvd
    end)
    Wait(100)
    
    return dvd
end

function myBank(id)
    exports.oxmysql:execute('SELECT * FROM characters WHERE id = @id', {['id'] = id}, function(result)
        banko = result[1].bank
    end)
    Wait(100)
    return banko
end

------TEBEX-----
RPC.register("tebex-supporter:tier", function (pSource)
    local src = source
    local steamIdentifier = GetPlayerIdentifiers(src)[1]
    -- print(steamIdentifier)
    exports.oxmysql:execute('SELECT * FROM tebex_supporters WHERE steamid = @steamid', {['steamid'] = steamIdentifier}, function(result)
        if not result[1] then
            amountOut = 10
        else
            if result.tier == 1 then
                amountOut = 15
            elseif result.tier == 2 then
                amountOut = 25
            else
                amountOut = 35
            end
        end
    end)
    Wait(100)
    return amountOut
end)

RPC.register('qb-phone:getMyGroup', function(cid)
    exports.oxmysql:execute('SELECT * FROM job_groups WHERE cid = @cid', {['cid'] = cid}, function(result)
        if result[1] then
            crew = result[1].crew_name
        end
    end)
    Wait(100)
    return crew
end)

RPC.register('qb-phone:getHouses', function(src)
     exports.oxmysql:execute('SELECT * FROM __housedata', {}, function(result)
         if result[1] then
             house = result[1]
         end
     end)
     Wait(100)
    return nil
end)


RPC.register('qb-phone:apt', function(source)
    local src = source
    local user = exports["qb-base"]:getModule("Player"):GetUser(src)
    local cid = user:getCurrentCharacter().id

    exports.oxmysql:execute('SELECT * FROM character_motel WHERE cid = @cid', {['cid'] = cid}, function(result)
        if result[1] then
            apt = result[1]
        end
    end)
    Wait(100)
    return apt
end)

RPC.register('qb-phone:getCurrentOwned', function(source)
    local src = source
    local user = exports["qb-base"]:getModule("Player"):GetUser(src)
    local cid = user:getCurrentCharacter().id
    local house
    exports.ghmattimysql:execute('SELECT * FROM housing WHERE cid = @cid', {['cid'] = cid}, function(result)
        if result ~= nil then
            house = {}
            for i,k in pairs(result) do
                -- print("MESSAGE",k.message)
                -- local msg = json.decode(k.message)
                -- print(msg.text,msg.attachment)
                table.insert(house, {
                    ['hid'] = k.hid,
                    ['cid'] = cid,
                    ['category'] = "",
                    ['status'] = k.status
                })
            end
            return
        end
        house = false
    end)
    Wait(100)
    return house
end)

RegisterNetEvent('qb-phone:house:status')
AddEventHandler('qb-phone:house:status', function(hid,status)
     local src = source
     exports.oxmysql:execute('UPDATE housing SET status = @status WHERE hid = @hid',{
         ['status'] = status,
         ['hid'] = hid
     }, function()
     end)
end)

RPC.register("qb-housing:getKeyHolderz", function(src,hid)
    print(src,hid)
    local myKeyz = {}
    local keys = MySQL.query.await([[
        SELECT * FROM housing_keys
        WHERE hid = ?
    ]],
    { hid })


    if keys ~= nil then
        for k,v in pairs(keys) do
            local cid = v.cid
            table.insert(myKeyz, {
                name = getNameFromCid(cid),
                cid = cid,
                hid = v.hid
            })
        end
        return myKeyz
    end
    return "{}"
end)

RPC.register("qb-housing:removeKey:phone", function(src,cid,hid)
    local keys = MySQL.query.await([[
        DELETE FROM housing_keys
        WHERE hid = ? AND cid = ?
    ]],
    { hid, cid })

    return true, "Successfully revoked key!"
end)

function getNameFromCid(cid)
    local keys = MySQL.query.await([[
        SELECT * FROM characters
        WHERE id = ?
    ]],
    { cid })

    if keys ~= nil then 
        return keys[1].first_name .. " " .. keys[1].last_name
    end
end

RPC.register('qb-phone:getHousePrice', function(source,hid)
    local src = source
    local user = exports["qb-base"]:getModule("Player"):GetUser(src)
    local hIds = hid
    local houseInfo = exports['qb-housing']:getCurrentOwned(src)
    local amount = houseInfo[hid]['house_price'] / 2
    TriggerClientEvent('DoLongHudText', src, "You received $"..amount.." for selling property.")
    deleteProperty(src,hIds)
    user:addMoney(amount)
    print('PLY ' ..src.. ' ' .. ' Just sold their home for ' .. '$ ' .. amount)
    return amount
end)

function deleteProperty(src,hid)
    exports.oxmysql:execute('DELETE FROM housing WHERE hid = @hid LIMIT 1', {
        ['hid'] = hid,
    }, function (result)
        TriggerClientEvent('updateHousing', src)
    end)
end

RPC.register('qb-phone:GiveAccess', function(source,hid,cid)
    local src = source
    local hIds = hid
    local cid = cid
    local access
    exports.oxmysql:execute('SELECT * FROM housing_keys WHERE hid = @hid AND cid = @cid', {['hid'] = hIds, ['cid'] = cid}, function(result)
        if result[1] then
            access = false
        else
            exports.oxmysql:execute('INSERT INTO housing_keys (hid, cid) VALUES (@hid, @cid)', {
                ['hid'] = hIds,
                ['cid'] = cid,
              }, 
              function(key)
              if key[1] then
                
              end
            end)
            access = true
        end
    end)
    Wait(200)
    return access
end)

-- RPC.register('qb-phone:getAccessHouse', function(source)
--     local src = source
--     local user = exports["qb-base"]:getModule("Player"):GetUser(src)
--     local cid = user:getCurrentCharacter().id
--     local house
--     exports.oxmysql:execute('SELECT * FROM housing_keys WHERE cid = @cid', {['cid'] = cid}, function(result)
--         if result ~= nil then
--             house = {}
--             for i,k in pairs(result) do
--                 print("MESSAGE",k.hid)
--                 -- local msg = json.decode(k.message)
--                 -- print(msg.text,msg.attachment)
--                 -- table.insert(house, {
--                 --     ['hid'] = k.hid,
--                 --     ['cid'] = cid,
--                 --     ['category'] = "",
--                 --     ['status'] = k.status
--                 -- })
--             end
--             return
--         end
--         house = false
--     end)
-- end)

RPC.register('qb-phone:getAccessHouse', function(source,house)
    local src = source
    local user = exports["qb-base"]:getModule("Player"):GetUser(src)
    local cid = user:getCurrentCharacter().id
    local hid = house
    local person

    local q = [[ SELECT k.hid as house_id, k.cid AS player_cid, CONCAT(c.first_name," ",c.last_name) as player_name
    FROM housing_keys k
    INNER JOIN characters c ON c.id = k.cid
    WHERE k.hid = @hid ]]
    local v = {["hid"] = hid}
    exports.oxmysql:execute(q, v, function(results)
        person = {}
        for i,k in pairs(results) do
            table.insert(person, {
                ['name'] = k.player_name,
                ['cid'] = k.player_cid,
                ['house'] = k.house_id
            })
        end
    end)
    Wait(500)

    return person
end)

RPC.register('qb-phone:getAccessHouse_2', function(house)
    local src = source
    local user = exports["qb-base"]:getModule("Player"):GetUser(src)
    local cid = user:getCurrentCharacter().id
    local hid = house
    local personforce_locked
    local person = {}

    local results = MySQL.query.await([[
        SELECT * FROM housing_keys WHERE cid = ?
    ]],
    {cid})
 
    if results ~= nil then
        print('getAccessHouse_2')
        for i,k in pairs(results) do
            table.insert(person, {
                -- ['name'] = k.player_name,
                ['cid'] = k.cid,
                ['house'] = k.hid,
                ['category'] = k.id
            })
        end
    end
    return person

end)



local availableDOJ = {}

RPC.register("qb-phone:addDOJ", function(pSource, pJob)
    local user = exports['qb-base']:getModule("Player"):GetUser(pSource)
    local char = user:getCurrentCharacter()
    local cid = char.id
    local phonenumber = char.phone_number
    availableDOJ[cid.."-"..pJob] = {
        name = char.first_name .. " " .. char.last_name,
        type = pJob,
        phonenumber = phonenumber
    }
end)

RPC.register("qb-phone:removeDOJ", function(pSource, pJob)
    local user = exports['qb-base']:getModule("Player"):GetUser(pSource)
    local char = user:getCurrentCharacter()
    local cid = char.id

    for k,v in pairs(availableDOJ) do
        if k == cid.."-"..pJob then
            table.remove(availableDOJ, k)
        end
    end
end)

RPC.register("qb-phone:getDOJ", function(src)
    return availableDOJ
end)

local availableDrivers = {}

RPC.register("qb-phone:addAbdulTaxi", function(src)
    local user = exports['qb-base']:getModule("Player"):GetUser(src)
    local char = user:getCurrentCharacter()
    local cid = char.id
    local phonenumber = char.phone_number
    availableDrivers[cid] = {
        name = char.first_name .. " " .. char.last_name,
        cid = cid,
        phonenumber = phonenumber
    } 
end)

RPC.register("qb-phone:getAbdulTaxies", function(src)
    return availableDrivers
end)

RegisterNetEvent("qb-phone:getAbdulTaxies", function()
    TriggerClientEvent("qb-phone:manualUpdateAbdulTaxies", source)
end)

RPC.register("qb-phone:removeAbdulTaxi", function(src)
    local user = exports['qb-base']:getModule("Player"):GetUser(src)
    local char = user:getCurrentCharacter()
    local cid = char.id
    availableDrivers[cid] = nil
end)

RPC.register("qb-phone:removeKeys", function(src, pHouseId, pPlayerId)
    local src = source
    local user = exports["qb-base"]:getModule("Player"):GetUser(src)
    local cider = user:getCurrentCharacter().id
    local cid = pPlayerId
    local hid = pHouseId

   if tonumber(cider) ~= tonumber(cid) then
    -- local removeKey = MySQL.query.await([[
    --     DELETE FROM housing_keys WHERE hid = ? AND cid = ?
    -- ]],{
    --     hid, cid
    -- })
    exports.oxmysql:execute('DELETE FROM housing_keys WHERE hid = @hid AND cid = @cid', {
        ['hid'] = hid,
        ['cid'] = cid,
      },function(results)
        TriggerClientEvent('DoLongHudText', src, "You successfully removed key!",1)
            if results[1] then
                TriggerClientEvent('DoLongHudText', src, "You successfully removed key!",1)
            end
        end)
    return
   end
   TriggerClientEvent('DoLongHudText', src, "You can't removed yourself in your house idiot!",2)
--    end
   return true
end)


RPC.register('phone:attempt:sv', function(source, data)
    local src = source
    local plate = data

    local car = MySQL.query.await([[
        SELECT * FROM characters_cars
        WHERE license_plate = ?
    ]],
    { plate })
    local coords = json.decode(car[1].coords)
    return car[1], coords
end)

-- RPC.register("qb-garages:states",function(pSource,state,plate,curGarage,fuel)
--     local src = source
--     local user = exports["qb-base"]:getModule("Player"):GetUser(src)
--     local char = user:getCurrentCharacter()
--       for k,v in pairs(curGarage) do
--           garage = v
--     end
--   	if curGarage == "Police Department" then
--         exports.oxmysql:execute('SELECT * FROM characters_cars WHERE license_plate = @plate', { ['@plate'] = plate }, function(pIsValid)
-- 			if pIsValid[1] then
-- 				pExist = true
-- 				exports.oxmysql:execute("UPDATE characters_cars SET vehicle_state = @state, current_garage = @garage, fuel = @fuel, job = @job WHERE license_plate = @plate",  {['garage'] = curGarage, ['state'] = state, ['fuel'] = fuel, ['plate'] = plate,['job']='police'})
-- 			else
-- 				pExist = false
-- 			end
-- 		end)
--     else
--         exports.oxmysql:execute('SELECT * FROM characters_cars WHERE license_plate = @plate', { ['@plate'] = plate }, function(pIsValid)
-- 			if pIsValid[1] then
-- 				pExist = true
-- 				exports.oxmysql:execute("UPDATE characters_cars SET vehicle_state = @state, current_garage = @garage, fuel = @fuel, job = @job WHERE license_plate = @plate",  {['garage'] = curGarage, ['state'] = state, ['fuel'] = fuel, ['plate'] = plate,['job']='(NULL)'})
--         	else
-- 				pExist = false
-- 			end
-- 		end)
--     end
--     Citizen.Wait(100)
-- 	return pExist
-- end)

-- RPC.register("qb-phone:Groups", function(source,gIp)
--     local src = source
--   exports.oxmysql:execute("SELECT * FROM character_passes WHERE pass_type = @groupid and rank > 0 ORDER BY rank DESC", {['groupid'] = groupid}, function(results)
--       if results ~= nil then
--           exports.oxmysql:execute("SELECT bank FROM group_banking WHERE group_type = @groupid", {['groupid'] = groupid}, function(result)
--               local bank = 0
--               if result[1] ~= nil then
--                   bank = result[1].bank
--               end
--               TriggerClientEvent("group:fullList", src, results, bank, groupid)
--           end)
--       else
--           TriggerClientEvent("phone:error", src)
--       end
--   end) 
-- end)

RegisterNetEvent('setEyeColor')
AddEventHandler('setEyeColor', function(color)
    local src = source
    TriggerClientEvent('setEyeColor', src,color)
end)
RegisterServerEvent('qb-phone:sendVehBill')
AddEventHandler('qb-phone:sendVehBill', function(paypal,plate,amount)
    src = source
    TriggerClientEvent('qb-phone:sellCar', paypal, plate, amount,src)
end)


RPC.register('qb-phone:sellVehicle', function(pSource,pl,py,am)
    local src = pSource
    local plate = pl
    local paypal = py
    local amount = am
    local user = exports["qb-base"]:getModule("Player"):GetUser(src)
    local char = user:getCurrentCharacter()
    local player = exports["qb-base"]:getModule("Player"):GetUser(paypal)
    local ply = user:getCurrentCharacter()
    local playerSteam = ply.owner

    local affectedRows = MySQL.update.await([[
        UPDATE characters_cars
        SET rank = ?
        WHERE cid = ? AND pass_type = ?
    ]],
    { rank, cid, bId })
end)

RegisterServerEvent('qb-phone:purchasedCar')
AddEventHandler('qb-phone:purchasedCar', function(plate,amount,sellerID)
    local src = source
    local user = exports["qb-base"]:getModule("Player"):GetUser(src)
    local char = user:getCurrentCharacter()
    local player = exports["qb-base"]:getModule("Player"):GetUser(sellerID)
    local zchar = player:getCurrentCharacter()
    local cid = tonumber(char.id)
    local price = tonumber(amount)

    if tonumber(char.bank) > tonumber(amount) then
        exports.oxmysql:execute('UPDATE characters_cars SET cid = @cid  WHERE license_plate = @license_plate',{
            ['cid'] = cid,
            ['license_plate'] = plate
        }, function()
        end)
        user:removeBank(price)
        player:addBank(price)
    else
        TriggerClientEvent('DoLongHudText', sID, "Transaction Failed.",2)
        TriggerClientEvent('DoLongHudText', src, "You don't have enough money.",2)
    end
end)

RegisterNetEvent('qb-phone:send_gas_bill')
AddEventHandler('qb-phone:send_gas_bill', function(targetId, pFuelCost)
    local pSrc = source
    
	if targetId ~= nil then
        TriggerClientEvent('qb-hud:send_fuel_bill', targetId, pFuelCost, pSrc)
    end
end)

AddEventHandler('playerDropped', function(reason)
    local src = source
    local user = exports['qb-base']:getModule("Player"):GetUser(src)
    local char = user:getCurrentCharacter()
    if not char or char == nil then return end
    local cid = char.id
    for k,v in pairs(availableDOJ) do
        if string.find(k,cid) then
            table.remove(availableDOJ,k)
        end
    end

    for j,s in pairs(availableDrivers) do
        if j == cid then
            table.remove(availableDrivers, j)
        end
    end
end)

AddEventHandler('onResourceStart', function(resource)    
	if resource == GetCurrentResourceName() then
        exports.oxmysql:execute('DELETE FROM tweets', {}, function (result) end)
	end
end)