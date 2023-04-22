Citizen.CreateThread(function()
    for id, zone in ipairs(HiveZones) do
        exports["qb-polyzone"]:AddCircleZone("qb-beekeeping:bee_zone", zone[1], zone[2],{
            zoneEvents={"qb-beekeeping:trigger_zone"},
            data = {
                id = id,
            },
        })
    end
end)