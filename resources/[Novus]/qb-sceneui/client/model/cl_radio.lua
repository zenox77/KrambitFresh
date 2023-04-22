--[[RegisterNUICallback("qb-ui:hudUpdateRadioSettings", function(data, cb)
    exports["qb-base"]:getModule("SettingsData"):setSettingsTableGlobal({ ["tokovoip"] = data.settings }, true)
    cb({ data = {}, meta = { ok = true, message = 'done' } })
end)

RegisterNUICallback("qb-ui:hudUpdateKeybindSettings", function(data, cb)
    exports["qb-base"]:getModule("DataControls"):encodeSetBindTable(data.controls)
    cb({ data = {}, meta = { ok = true, message = 'done' } })
end)]]