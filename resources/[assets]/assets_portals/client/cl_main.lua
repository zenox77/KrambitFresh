RegisterCommand("refreshcoords", function(source, args)
    TriggerServerEvent("asset_portals:get:coords")
end)


local entercoordsrecycle, leavecoordsrecycle = nil, nil
RegisterNetEvent('asset_portals:recieve:coords')
AddEventHandler('asset_portals:recieve:coords', function(coords1, coords2)
    entercoordsrecycle = coords1
    leavecoordsrecycle = coords2
    Citizen.Wait(1000)
end)   
 

RegisterNetEvent('hospital:roof')
AddEventHandler('hospital:roof', function()
	DoScreenFadeOut(1)
	Citizen.Wait(100)
	TriggerEvent('InteractSound_CL:PlayOnOne', 'elevator', 0.8)
	SetEntityCoords(PlayerPedId(), 338.64, -583.83, 74.17)
	DoScreenFadeIn(1000)
	Citizen.Wait(1000)
end)

RegisterNetEvent('hospital:lower')
AddEventHandler('hospital:lower', function()
	DoScreenFadeOut(1)
	Citizen.Wait(100)
	TriggerEvent('InteractSound_CL:PlayOnOne', 'elevator', 0.8)
	SetEntityCoords(PlayerPedId(), 344.42633056641, -586.25030517578, 28.79683303833)
	DoScreenFadeIn(1000)
	Citizen.Wait(1000)
end)

RegisterNetEvent('hospital:roofexit')
AddEventHandler('hospital:roofexit', function()
	DoScreenFadeOut(1)
	Citizen.Wait(100)
	TriggerEvent("dooranim")
	TriggerEvent('InteractSound_CL:PlayOnOne','DoorOpen', 0.7)
	SetEntityCoords(PlayerPedId(), 332.24652099609, -595.69305419922, 43.284049987793)
	DoScreenFadeIn(1000)
	Citizen.Wait(1000)
end)

RegisterNetEvent('hospital:elevatorup')
AddEventHandler('hospital:elevatorup', function()
	DoScreenFadeOut(1)
	Citizen.Wait(100)
	TriggerEvent('InteractSound_CL:PlayOnOne', 'elevator', 0.8)
	SetEntityCoords(PlayerPedId(), 330.39865112305, -601.16101074219, 43.284111022949)

	DoScreenFadeIn(1000)
	Citizen.Wait(1000)
end)

RegisterNetEvent('courthouse:enter')
AddEventHandler('courthouse:enter', function()
	DoScreenFadeOut(1)
	Citizen.Wait(100)
	TriggerEvent("dooranim")
	TriggerEvent('InteractSound_CL:PlayOnOne', 'DoorOpen', 0.8)
	SetEntityCoords(PlayerPedId(), 268.88739013672, -371.68246459961, -44.137741088867)
	SetEntityHeading(PlayerPedId(), 58.108573913574)
	DoScreenFadeIn(1000)
	Citizen.Wait(1000)
end)

RegisterNetEvent('courthouse:exit')
AddEventHandler('courthouse:exit', function()
	DoScreenFadeOut(1)
	Citizen.Wait(100)
	TriggerEvent("dooranim")
	TriggerEvent('InteractSound_CL:PlayOnOne', 'DoorOpen', 0.8)
	SetEntityCoords(PlayerPedId(), 232.89019775391, -411.29730224609, 48.111999511719)
	SetEntityHeading(PlayerPedId(), 355.73016357422)
	DoScreenFadeIn(1000)
	Citizen.Wait(1000)
end)

RegisterNetEvent('courtroom:enter')
AddEventHandler('courtroom:enter', function()
	DoScreenFadeOut(1)
	Citizen.Wait(100)
	TriggerEvent("dooranim")
	TriggerEvent('InteractSound_CL:PlayOnOne', 'DoorOpen', 0.8)
	SetEntityCoords(PlayerPedId(), 313.28521728516, -1611.4333496094, -66.78596496582)
	SetEntityHeading(PlayerPedId(), 223.73556518555)
	DoScreenFadeIn(1000)
	Citizen.Wait(1000)
end)

RegisterNetEvent('courtroom:exit')
AddEventHandler('courtroom:exit', function()
	DoScreenFadeOut(1)
	Citizen.Wait(100)
	TriggerEvent("dooranim")
	TriggerEvent('InteractSound_CL:PlayOnOne', 'DoorOpen', 0.8)
	SetEntityCoords(PlayerPedId(), 249.25679016113, -364.86428833008, -44.137630462646)
	SetEntityHeading(PlayerPedId(), 236.24726867676)
	DoScreenFadeIn(1000)
	Citizen.Wait(1000)
end)

RegisterNetEvent('hospital:morgexit')
AddEventHandler('hospital:morgexit', function()
	DoScreenFadeOut(1)
	Citizen.Wait(100)
	TriggerEvent("dooranim")
	TriggerEvent('InteractSound_CL:PlayOnOne','DoorOpen', 0.7)
	SetEntityCoords(PlayerPedId(), 327.06, -603.82, 43.28)
	DoScreenFadeIn(1000)
	Citizen.Wait(1000)
end)

RegisterNetEvent('hospital:morgue')
AddEventHandler('hospital:morgue', function()
	DoScreenFadeOut(1)
	Citizen.Wait(100)
	TriggerEvent('InteractSound_CL:PlayOnOne', 'elevator', 0.8)
	SetEntityCoords(PlayerPedId(), 275.78, -1361.49, 24.53)
	DoScreenFadeIn(1000)
	Citizen.Wait(1000)
end)

RegisterNetEvent('meth:enter')
AddEventHandler('meth:enter', function()
	if exports["qb-inventory"]:hasEnoughOfItem("methlabkey",1,false) then
		DoScreenFadeOut(1)
		Citizen.Wait(100)
		TriggerEvent("dooranim")
		TriggerEvent('InteractSound_CL:PlayOnOne', 'DoorOpen', 0.8)
		SetEntityCoords(PlayerPedId(), 996.85864257812, -3200.5432128906, -36.393745422363)
		SetEntityHeading(PlayerPedId(), 269.15567016602)
		DoScreenFadeIn(1000)
		Citizen.Wait(1000)
	else
		TriggerEvent("DoLongHudText", "I can't see your key!",2)
	end
end)

RegisterNetEvent('meth:exit')
AddEventHandler('meth:exit', function()
	DoScreenFadeOut(1)
	Citizen.Wait(100)
	TriggerEvent("dooranim")
	TriggerEvent('InteractSound_CL:PlayOnOne', 'DoorOpen', 0.8)
	SetEntityCoords(PlayerPedId(), -259.84, -1535.04, 31.97)
	SetEntityHeading(PlayerPedId(), 145.11)
	DoScreenFadeIn(1000)
	Citizen.Wait(1000)
	TriggerEvent("stopcooking")
end)

RegisterNetEvent("crack:enter")
AddEventHandler("crack:enter", function ()
	DoScreenFadeOut(1)
	Citizen.Wait(100)
	TriggerEvent("dooranim")
	TriggerEvent('InteractSound_CL:PlayOnOne', 'DoorOpen', 0.8)
	SetEntityCoords(PlayerPedId(), 1088.67578125, -3187.5104980469, -38.99348449707)
	SetEntityHeading(PlayerPedId(), 178.07557678223)
	DoScreenFadeIn(1000)
	Citizen.Wait(1000)
end)

RegisterNetEvent("crack:exit")
AddEventHandler("crack:exit", function ()
	DoScreenFadeOut(1)
	Citizen.Wait(100)
	TriggerEvent("dooranim")
	TriggerEvent('InteractSound_CL:PlayOnOne', 'DoorOpen', 0.8)
	SetEntityCoords(PlayerPedId(), -1147.4447021484, 4937.2734375, 222.27253723145)
	SetEntityHeading(PlayerPedId(), 155.24964904785)
	DoScreenFadeIn(1000)
	Citizen.Wait(1000)
	TriggerEvent("stopmixing")
end)

--[[RegisterNetEvent("meth:enter")
AddEventHandler("meth:enter", function ()
	DoScreenFadeOut(1)
	Citizen.Wait(100)
	TriggerEvent("dooranim")
	TriggerEvent('InteractSound_CL:PlayOnOne', 'DoorOpen', 0.8)
	SetEntityCoords(PlayerPedId(), 997.19738769531, -3200.7700195312, -36.399360656738)
	SetEntityHeading(PlayerPedId(), 264.86999511719)
	DoScreenFadeIn(1000)
	Citizen.Wait(1000)
end)

RegisterNetEvent("meth:exit")
AddEventHandler("meth:exit", function ()
	DoScreenFadeOut(1)
	Citizen.Wait(100)
	TriggerEvent("dooranim")
	TriggerEvent('InteractSound_CL:PlayOnOne', 'DoorOpen', 0.8)
	SetEntityCoords(PlayerPedId(), -1928.5805664062, 2059.8159179688, 140.83694458008)
	SetEntityHeading(PlayerPedId(), 347.72854614258)
	DoScreenFadeIn(1000)
	Citizen.Wait(1000)
	TriggerEvent("stopmixing")
end)]]


RegisterNetEvent('arcade:enter')
AddEventHandler('arcade:enter', function()
	DoScreenFadeOut(1)
	Citizen.Wait(100)
	TriggerEvent("dooranim")
	TriggerEvent('InteractSound_CL:PlayOnOne', 'DoorOpen', 0.8)
	SetEntityCoords(PlayerPedId(), 757.22076416016, -816.11041259766, 26.507074356079)
	SetEntityHeading(PlayerPedId(), 97.8193359375)
	DoScreenFadeIn(1000)
	Citizen.Wait(1000)
end)

RegisterNetEvent('arcade:exit')
AddEventHandler('arcade:exit', function()
	DoScreenFadeOut(1)
	Citizen.Wait(100)
	TriggerEvent("dooranim")
	TriggerEvent('InteractSound_CL:PlayOnOne', 'DoorOpen', 0.8)
	SetEntityCoords(PlayerPedId(), 758.64898681641, -816.02105712891, 26.293067932129)
	SetEntityHeading(PlayerPedId(), 264.00790405273)
	DoScreenFadeIn(1000)
	Citizen.Wait(1000)
end)

exports["qb-polytarget"]:AddBoxZone("roof_up", vector3(331.85, -597.17, 43.28), 0.2, 0.2, {
    heading=0
  })

  exports["qb-polytarget"]:AddBoxZone("roof_exit", vector3(338.62, -583.84, 74.16), 3.0, 1, {
    heading=0
  })

  exports["qb-polytarget"]:AddBoxZone("hos_lower", vector3(329.92, -602.65, 43.28), 0.6, 0.6, {
    heading=0
  })

  exports["qb-polytarget"]:AddBoxZone("hos_upper", vector3(344.71, -584.7, 28.8), 0.6, 1, {
    heading=0
  })