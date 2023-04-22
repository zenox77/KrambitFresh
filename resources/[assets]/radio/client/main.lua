-- Disable controls while GUI open

local GuiOpened = false
local pRadioChannel = false

function pChannelActive()
  return pRadioChannel
end

exports('pChannel', function()
  return pChannelActive()
end)


RegisterNetEvent('radioGui')
AddEventHandler('radioGui', function()
  openGui()
end)

RegisterNetEvent('ChannelSet1')
AddEventHandler('ChannelSet1', function()
  pRadioChannel = true
  SendNUIMessage({set = true, setChannel = "1"})
  exports["qb-voice"]:setVoiceProperty("radioEnabled", true)
  exports['qb-voice']:addPlayerToRadio(1)
  PlaySound(-1, "NAV_UP_DOWN", "HUD_FRONTEND_DEFAULT_SOUNDSET", 0, 0, 1)
  TriggerEvent('DoLongHudText', 'New Frequency: 1')
end)

RegisterNetEvent('ChannelSet2')
AddEventHandler('ChannelSet2', function()
  pRadioChannel = true
  SendNUIMessage({set = true, setChannel = "2"})
  exports["qb-voice"]:setVoiceProperty("radioEnabled", true)
  exports['qb-voice']:addPlayerToRadio(2)
  PlaySound(-1, "NAV_UP_DOWN", "HUD_FRONTEND_DEFAULT_SOUNDSET", 0, 0, 1)
  TriggerEvent('DoLongHudText', 'New Frequency: 2')
end)

RegisterNetEvent('ChannelSet3')
AddEventHandler('ChannelSet3', function()
  pRadioChannel = true
  SendNUIMessage({set = true, setChannel = "3"})
  exports["qb-voice"]:setVoiceProperty("radioEnabled", true)
  exports['qb-voice']:addPlayerToRadio(3)
  PlaySound(-1, "NAV_UP_DOWN", "HUD_FRONTEND_DEFAULT_SOUNDSET", 0, 0, 1)
  TriggerEvent('DoLongHudText', 'New Frequency: 3')
end)

RegisterNetEvent('ChannelSet4')
AddEventHandler('ChannelSet4', function()
  pRadioChannel = true
  SendNUIMessage({set = true, setChannel = "4"})
  exports["qb-voice"]:setVoiceProperty("radioEnabled", true)
  exports['qb-voice']:addPlayerToRadio(4)
  PlaySound(-1, "NAV_UP_DOWN", "HUD_FRONTEND_DEFAULT_SOUNDSET", 0, 0, 1)
  TriggerEvent('DoLongHudText', 'New Frequency: 4')
end)

RegisterNetEvent('ChannelSet5')
AddEventHandler('ChannelSet5', function()
  pRadioChannel = true
  SendNUIMessage({set = true, setChannel = "5"})
  exports["qb-voice"]:setVoiceProperty("radioEnabled", true)
  exports['qb-voice']:addPlayerToRadio(5)
  PlaySound(-1, "NAV_UP_DOWN", "HUD_FRONTEND_DEFAULT_SOUNDSET", 0, 0, 1)
  TriggerEvent('DoLongHudText', 'New Frequency: 5')
end)

local function formattedChannelNumber(number)
  local power = 10 ^ 1
  return math.floor(number * power) / power
end

RegisterNetEvent('radio:resetNuiCommand')
AddEventHandler('radio:resetNuiCommand', function()
    SendNUIMessage({reset = true})
end)

function openGui()
  local radio = hasRadio()
  local job = exports["isPed"]:isPed("myjob")
  local Emergency = false
  if job == "police" then
    Emergency = true
  elseif job == "ems" then
    Emergency = true
  elseif exports["qb-inventory"]:hasEnoughOfItem("scanner",1,false) then
    Emergency = true
  end
  
  if not GuiOpened and radio then
    GuiOpened = true
    SetNuiFocus(false,false)
    SetNuiFocus(true,true)
    SendNUIMessage({open = true, jobType = Emergency})
  else
    GuiOpened = false
    SetNuiFocus(false,false)
    SendNUIMessage({open = false, jobType = Emergency})
  end
  TriggerEvent("animation:radio",GuiOpened)
end

local function handleConnectionEvent(pChannel)
  local newChannel = formattedChannelNumber(pChannel)

  if newChannel < 1.0 then
    pRadioChannel = false
    exports['qb-voice']:removePlayerFromRadio()
    exports["qb-voice"]:setVoiceProperty("radioEnabled", false)
  else
    pRadioChannel = true
    exports["qb-voice"]:setVoiceProperty("radioEnabled", true)
    exports['qb-voice']:addPlayerToRadio(newChannel)
  end
end
local radioVolume = 0.5


function hasRadio()
    if exports["qb-inventory"]:hasEnoughOfItem("radio", 1, false, true) or exports["qb-inventory"]:hasEnoughOfItem("civradio", 1, false, true)then
      return true
    else
      return false
    end
end
RegisterNUICallback('click', function(data, cb)
  PlaySound(-1, "NAV_UP_DOWN", "HUD_FRONTEND_DEFAULT_SOUNDSET", 0, 0, 1)
end)

RegisterNUICallback('volumeUp', function(data, cb)
  radioVolume = radioVolume + 0.1
  if radioVolume >= 1.0 then
    radioVolume = 1.0
  end
  TriggerEvent('qb-voice:SetRadioVolume', radioVolume)
  TriggerEvent('DoLongHudText',"New volume +"..radioVolume)
end)

RegisterNUICallback('volumeDown', function(data, cb)
  radioVolume = radioVolume - 0.1
  if radioVolume < 0.1 then
    radioVolume = 0.0
  end
  TriggerEvent('qb-voice:SetRadioVolume', radioVolume)
  TriggerEvent('DoLongHudText',"New volume - "..radioVolume)
end)

RegisterNUICallback('cleanClose', function(data, cb)
  TriggerEvent("InteractSound_CL:PlayOnOne","radioclick",0.6)
  GuiOpened = false
  SetNuiFocus(false,false)
  SendNUIMessage({open = false})
  TriggerEvent("animation:radio",GuiOpened)
end)

RegisterNUICallback('poweredOn', function(data, cb)
  cb("ok")
end)

RegisterNUICallback('poweredOff', function(data, cb)
  pRadioChannel = false
  exports['qb-voice']:removePlayerFromRadio()
  exports["qb-voice"]:setVoiceProperty("radioEnabled", false)
end)

function closeGui()
  TriggerEvent("InteractSound_CL:PlayOnOne","radioclick",0.6)
  GuiOpened = false
  SetNuiFocus(false,false)
  SendNUIMessage({open = false})
  TriggerEvent("animation:radio",GuiOpened)
end

RegisterNUICallback('close', function(data, cb)
  handleConnectionEvent(data.channel)
  closeGui()
  cb('ok')
end)


RegisterNetEvent('animation:radio')
AddEventHandler('animation:radio', function(enable)
  TriggerEvent("destroyPropRadio")
  local lPed = PlayerPedId()
  inPhone = enable

  RequestAnimDict("cellphone@")
  while not HasAnimDictLoaded("cellphone@") do
    Citizen.Wait(0)
  end

  local intrunk = exports["isPed"]:isPed("intrunk")
  if not intrunk then
    TaskPlayAnim(lPed, "cellphone@", "cellphone_text_in", 2.0, 3.0, -1, 49, 0, 0, 0, 0)
  end
  Citizen.Wait(300)
  if inPhone then
    TriggerEvent("attachItemRadio","radio01")
    Citizen.Wait(150)
    while inPhone do

      local dead = exports["isPed"]:isPed("dead")
      if dead then
        closeGui()
        inPhone = false
      end
      local intrunk = exports["isPed"]:isPed("intrunk")
      if not intrunk and not IsEntityPlayingAnim(lPed, "cellphone@", "cellphone_text_read_base", 3) and not IsEntityPlayingAnim(lPed, "cellphone@", "cellphone_swipe_screen", 3) then
        TaskPlayAnim(lPed, "cellphone@", "cellphone_text_read_base", 2.0, 3.0, -1, 49, 0, 0, 0, 0)
      end    
      Citizen.Wait(1)
    end
    local intrunk = exports["isPed"]:isPed("intrunk")
    if not intrunk then
      ClearPedTasks(PlayerPedId())
    end
  else
    local intrunk = exports["isPed"]:isPed("intrunk")
    if not intrunk then
      Citizen.Wait(100)
      ClearPedTasks(PlayerPedId())
      TaskPlayAnim(lPed, "cellphone@", "cellphone_text_out", 2.0, 1.0, 5.0, 49, 0, 0, 0, 0)
      Citizen.Wait(400)
      TriggerEvent("destroyPropRadio")
      Citizen.Wait(400)
      ClearPedTasks(PlayerPedId())
    else
      TriggerEvent("destroyPropRadio")
    end
  end
  TriggerEvent("destroyPropRadio")
end)


Citizen.CreateThread(function()

  while true do
    if GuiOpened then
      Citizen.Wait(1)
      DisableControlAction(0, 1, GuiOpened) -- LookLeftRight
      DisableControlAction(0, 2, GuiOpened) -- LookUpDown
      DisableControlAction(0, 14, GuiOpened) -- INPUT_WEAPON_WHEEL_NEXT
      DisableControlAction(0, 15, GuiOpened) -- INPUT_WEAPON_WHEEL_PREV
      DisableControlAction(0, 16, GuiOpened) -- INPUT_SELECT_NEXT_WEAPON
      DisableControlAction(0, 17, GuiOpened) -- INPUT_SELECT_PREV_WEAPON
      DisableControlAction(0, 99, GuiOpened) -- INPUT_VEH_SELECT_NEXT_WEAPON
      DisableControlAction(0, 100, GuiOpened) -- INPUT_VEH_SELECT_PREV_WEAPON
      DisableControlAction(0, 115, GuiOpened) -- INPUT_VEH_FLY_SELECT_NEXT_WEAPON
      DisableControlAction(0, 116, GuiOpened) -- INPUT_VEH_FLY_SELECT_PREV_WEAPON
      DisableControlAction(0, 142, GuiOpened) -- MeleeAttackAlternate
      DisableControlAction(0, 106, GuiOpened) -- VehicleMouseControlOverride
    else
      Citizen.Wait(20)
    end    
  end
end)

RegisterNetEvent('radio:SetRadioStatus')
AddEventHandler('radio:SetRadioStatus', function(status)
    pRadioChannel = status
end)

RegisterNetEvent('qb-inventory:itemCheck')
AddEventHandler('qb-inventory:itemCheck', function (item, state, quantity)
    if item ~= "civradio" and item ~= "radio" and item ~="scanner" then return end
    if state or quantity > 0 then return end
    exports["qb-voice"]:removePlayerFromRadio(false)
    exports["qb-ui"]:sendAppEvent("radio", { value = 0, state = false })
    TriggerEvent("DoLongHudText", "You have been disconnected from the radio.")
end)

