local pRan = false

function Login.playerLoaded() end

function Login.characterLoaded()
  -- Main events leave alone 
  TriggerEvent("qb-base:playerSpawned")
  TriggerEvent("playerSpawned")
  TriggerServerEvent('character:loadspawns')
  TriggerEvent("qb-base:initialSpawnModelLoaded")
  -- Main events leave alone 

  -- Everything that should trigger on character load 
  TriggerServerEvent('checkTypes')
  TriggerServerEvent('isVip')
  TriggerEvent("fx:clear")
  TriggerServerEvent("raid_clothes:retrieve_tats")
  TriggerEvent('qb-bankrobbery:client:CreateTrollysEvent')
  TriggerServerEvent("currentconvictions")
  TriggerServerEvent("Evidence:checkDna")
  TriggerEvent("banking:viewBalance")
  TriggerServerEvent('qb-doors:requestlatest')
  TriggerServerEvent("item:UpdateItemWeight")
  TriggerServerEvent("ReturnHouseKeys")
  TriggerServerEvent("requestOffices")
  Wait(500)
  TriggerServerEvent("police:getAnimData")
  TriggerServerEvent("server:currentpasses")
  TriggerEvent("qb-hud:SetValues", exports['isPed']:isPed('cid'))
  TriggerServerEvent("police:getEmoteData")
  TriggerServerEvent("police:SetMeta")
  TriggerServerEvent('qb-scoreboard:AddPlayer')
  TriggerServerEvent("qb-base:PolyZoneUpdate")
  TriggerEvent("qb-housing:loadHousingClient")
  TriggerServerEvent("qb-housing:getGarages")
  TriggerServerEvent("qb-phone:getAbdulTaxies")
  TriggerServerEvent("retreive:jail",exports["isPed"]:isPed("cid"))
  TriggerServerEvent("qb-phone:checkForNonDocumentedLicenses", exports['isPed']:isPed("cid"))
  -- TriggerServerEvent("weapon:general:check")
  -- Anything that might need to wait for the client to get information, do it here.
  TriggerServerEvent("login:get:keys")

  --Sync Whiteboards
  TriggerServerEvent("SpawnEventsServer")

  -- // New Clothing Menu // --
  --TriggerServerEvent("np_clothing:retrieve_tats")
  --TriggerServerEvent('np_clothing:get_character_current')
  --TriggerServerEvent('np_clothing:get_character_face')
  TriggerEvent("qb-spawn:phonerefresh")
  TriggerServerEvent("qb-weapons:getAmmo")
  Wait(4000)
  TriggerServerEvent("bank:getLogs")
end

RegisterNetEvent('qb-spawn:spawnCharacter')
AddEventHandler('qb-spawn:spawnCharacter', function()
  if not pRan then
    pRan = true
    isNear = false
    TriggerServerEvent('qb-base:sv:player_control')
    TriggerServerEvent('qb-base:sv:player_settings')
    TriggerEvent("spawning", false)
    TriggerServerEvent("request-dropped-items")
    TriggerEvent('qb-hud:EnableHud', true)
    if Spawn.isNew then
      Wait(1000)
      TriggerEvent('qb-hud:ChangeThirst', 100)
        TriggerEvent('qb-hud:ChangeHunger', 100)
        -- TriggerServerEvent('qb-spawn:licenses')
        -- commands to make sure player is alive and full food/water/health/no injuries
        local src = GetPlayerServerId(PlayerId())
        TriggerServerEvent("reviveGranted", src)
        TriggerEvent("Hospital:HealInjuries", src, true)
        TriggerServerEvent("ems:healplayer", src)
        TriggerEvent("heal", src)
        TriggerEvent("status:needs:restore", src) 
      end
  end
  SetPedMaxHealth(PlayerPedId(), 200)
  runGameplay()
  Spawn.isNew = false
  -- TriggerServerEvent("server-request-update", exports["isPed"]:isPed("cid"))
end)