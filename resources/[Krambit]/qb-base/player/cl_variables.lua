--[[

    Variables

]]

local PlayerVars = PlayerVars or {}

local DefaultVars = {
    ["dead"] = false,
    ["handcuffed"] = false,
    ["recentcuff"] = 0,
    ["trunk"] = false,
    ["call"] = false,
}

--[[

    Functions

]]

function setVar(var, data)
    PlayerVars[var] = data
end

function getVar(var)
    return PlayerVars[var]
end

function setChar(var, data)
    if not PlayerVars["char"] then return end

    PlayerVars["char"][var] = data
end

function getChar(var)
    if PlayerVars["char"] then
        if var then
            return PlayerVars["char"][var]
        end

        return PlayerVars["char"]
    else
        return
    end
end

function resetVars()
    for k, v in pairs(DefaultVars) do
        PlayerVars[k] = v
    end
end

--[[

    Exports

]]

exports("setVar", setVar)
exports("getVar", getVar)
exports("setChar", setChar)
exports("getChar", getChar)
exports("resetVars", resetVars)

--[[

    Events

]]

RegisterNetEvent("qb-base:setVar")
AddEventHandler("qb-base:setVar", setVar)

RegisterNetEvent("qb-base:setChar")
AddEventHandler("qb-base:setChar", setChar)

RegisterNetEvent("qb-base:resetVars")
AddEventHandler("qb-base:resetVars", resetVars)

--[[

    Threads

]]

Citizen.CreateThread(function()
    resetVars()
end)