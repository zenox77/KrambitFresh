Citizen.CreateThread(function()
    Citizen.Wait(1000)
    local NPCdata = {
        id = "weed_buy",
        name = "weed_buy",
        pedType = 4,
        model = "a_f_y_hippie_01",
        networked = false,
        distance = 50.0,
        position = {
          coords = vector3(1175.7839355469, -437.48831176758, 66.926574707031 - 1),
          heading = 256.32238769531,
          random = false
        },
        appearance = nil,
        settings = {
            { mode = "invincible", active = true },
            { mode = "ignore", active = true },
            { mode = "freeze", active = true },
        },
        flags = {
            ['isNPC'] = true,
            ['isWeedBuy'] = true
        },
        scenario = "WORLD_HUMAN_AA_SMOKE"
    }
    exports["qb-npcs"]:RegisterNPC(NPCdata , 'qb-weed:junkieHippie')


    local group = { "isWeedBuy" }

    local data = {
        {
            id = "weed_buy",
            label = "Smoke on the Water",
            icon = "cannabis",
            event = "qb-weed:shop",
            parameters = {},
        }
    }

    local options = {
        distance = { radius = 2.5 }
    }

    exports["qb-interact"]:AddPeekEntryByFlag(group, data, options)
end)

AddEventHandler("qb-weed:shop", function()
    TriggerEvent("server-inventory-open", "420", "Shop")
end)

