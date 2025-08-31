RegisterCommand("mdt", function()
    SetNuiFocus(true, true)
    SendNUIMessage({type="openMDT", player=exports["lxr-police"]:GetPlayerId()})
end)

RegisterNUICallback("searchCitizen", function(data, cb)
    TriggerServerEvent("lxr-police:mdt:searchCitizen", data.query)
    cb({})
end)