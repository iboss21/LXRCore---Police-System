-- Open NUI for citation, select statute, amount, sign

RegisterCommand("issuecitation", function(source, args)
    local target = tonumber(args[1])
    SetNuiFocus(true, true)
    SendNUIMessage({type="openCitation", target=target})
end)

RegisterNUICallback("submitCitation", function(data)
    TriggerServerEvent("lxr-police:citations:issue", data.target, data.statute, data.amount)
end)