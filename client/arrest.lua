local function playCuffAnim()
    local ped = PlayerPedId()
    RequestAnimDict("script_cuffed@male")
    while not HasAnimDictLoaded("script_cuffed@male") do Citizen.Wait(10) end
    TaskPlayAnim(ped, "script_cuffed@male", "cuffed_enter", 8.0, -8, -1, 49, 0, false, false, false)
end

RegisterNetEvent("lxr-police:arrest:softCuff")
AddEventHandler("lxr-police:arrest:softCuff", function(officerNetId)
    playCuffAnim()
    exports["lxr-police"]:SetPlayerControl(false)
end)

RegisterNetEvent("lxr-police:arrest:uncuff")
AddEventHandler("lxr-police:arrest:uncuff", function()
    ClearPedTasks(PlayerPedId())
    exports["lxr-police"]:SetPlayerControl(true)
end)

RegisterNetEvent("lxr-police:arrest:drag")
AddEventHandler("lxr-police:arrest:drag", function(officerNetId)
    local officer = NetworkGetEntityFromNetworkId(officerNetId)
    AttachEntityToEntity(PlayerPedId(), officer, 11816, 0.5, 0.0, 0.0, 0.0, 0.0, 0.0, false, false, false, false, 2, true)
end)

RegisterNetEvent("lxr-police:arrest:stopDrag")
AddEventHandler("lxr-police:arrest:stopDrag", function()
    DetachEntity(PlayerPedId(), true, true)
end)

RegisterNetEvent("lxr-police:arrest:pushIntoVehicle")
AddEventHandler("lxr-police:arrest:pushIntoVehicle", function(vehicleNetId)
    local vehicle = NetworkGetEntityFromNetworkId(vehicleNetId)
    TaskEnterVehicle(PlayerPedId(), vehicle, 10000, 2, 1.0, 1, 0)
end)