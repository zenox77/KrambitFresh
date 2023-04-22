SPRAYS = {
}

FastBlacklist = {}

Citizen.CreateThread(function()
    if Config.Blacklist then
        for _, word in pairs(Config.Blacklist) do
            FastBlacklist[word] = word
        end
    end
end)

function GetSprayAtCoords(pos)
    for _, spray in pairs(SPRAYS) do
        if spray.location == pos then
            return spray
        end
    end
end

RegisterNetEvent('ghost_spray:addSpray')
AddEventHandler('ghost_spray:addSpray', function(spray)
    local Source = source
    local bypass = true
    if bypass then
        print('Remove spray_remover 2')
        local i = 1
        while true do
            if not SPRAYS[i] then
                SPRAYS[i] = spray
                break
            else
                i = i + 1
            end
        end
        addSpray(spray)
        TriggerEvent('ghost_sprays:addSpray', Source, spray.text, spray.location)
        TriggerClientEvent('ghost_spray:setSprays', -1, SPRAYS)
    else
        TriggerClientEvent('chat:addMessage', Source, {
            template = '<div style="background: rgb(180, 136, 29); color: rgb(255, 255, 255); padding: 5px;">{0}</div>',
            args = {'You do not have any spray to spray with'}
        })
    end
end)

function addSpray(spray)
    MySQL.Async.execute([[
        INSERT sprays
        (`x`, `y`, `z`, `rx`, `ry`, `rz`, `scale`, `text`, `font`, `color`, `interior`)
        VALUES
        (@x, @y, @z, @rx, @ry, @rz, @scale, @text, @font, @color, @interior)
    ]], {
        ['@x'] = spray.location.x,
        ['@y'] = spray.location.y,
        ['@z'] = spray.location.z,
        ['@rx'] = spray.realRotation.x,
        ['@ry'] = spray.realRotation.y,
        ['@rz'] = spray.realRotation.z,
        ['@scale'] = spray.scale,
        ['@text'] = spray.text,
        ['@font'] = spray.font,
        ['@color'] = spray.originalColor,
        ['@interior'] = spray.interior,
    })
end

Citizen.CreateThread(function()
    MySQL.Sync.execute([[
        DELETE FROM sprays 
        WHERE DATEDIFF(NOW(), created_at) >= @days
    ]], {['days'] = Config.SPRAY_PERSIST_DAYS})

    local results = MySQL.Sync.fetchAll([[
        SELECT x, y, z, rx, ry, rz, scale, text, font, color, created_at, interior
        FROM sprays
    ]])

    for _, s in pairs(results) do
        table.insert(SPRAYS, {
            location = vector3(s.x + 0.0, s.y + 0.0, s.z + 0.0),
            realRotation = vector3(s.rx + 0.0, s.ry + 0.0, s.rz + 0.0),
            scale = tonumber(s.scale) + 0.0,
            text = s.text,
            font = s.font,
            originalColor = s.color,
            interior = (s.interior == 1) and true or false,
        })
    end

    TriggerClientEvent('ghost_spray:setSprays', -1, SPRAYS) -- Already being handled on playerSpawed ?
end)

RegisterNetEvent('ghost_spray:playerSpawned') -- qb-nase:playerSpawed
AddEventHandler('ghost_spray:playerSpawned', function()
    local Source = source
    print('[qb-sprays] Syncing')
    TriggerClientEvent('ghost_spray:setSprays', Source, SPRAYS)
end)

RegisterNetEvent('ghost-spray:beginSpray', function(pInput)
    local source = source
    local test = 1
    if test > 0 then
        local sprayText = pInput

        if FastBlacklist[sprayText] then
            TriggerClientEvent('chat:addMessage', source, {
                template = '<div style="background: rgb(180, 136, 29); color: rgb(255, 255, 255); padding: 5px;">{0}</div>',
                args = {Config.Text.BLACKLISTED}
            })
        else
            if sprayText then
                if sprayText:len() <= 9 then
                    TriggerClientEvent("inventory:removeItem",source, "spraycan", 1)
                    TriggerClientEvent('ghost_spray:spray', source, pInput)
                else
                    TriggerClientEvent('chat:addMessage', source, {
                        template = '<div style="background: rgb(180, 136, 29); color: rgb(255, 255, 255); padding: 5px;">{0}</div>',
                        args = {Config.Text.WORD_LONG}
                    })
                end
            else
                TriggerClientEvent('chat:addMessage', source, {
                    template = '<div style="background: rgb(180, 136, 29); color: rgb(255, 255, 255); padding: 5px;">{0}</div>',
                    args = {Config.Text.USAGE}
                })
            end
        end
    else
        TriggerClientEvent('chat:addMessage', source, {
            template = '<div style="background: rgb(180, 136, 29); color: rgb(255, 255, 255); padding: 5px;">{0}</div>',
            args = {Config.Text.NEED_SPRAY}
        })
    end
end, false)
