local stations = Config.Stations

Citizen.CreateThread(function()
    for k, v in pairs(stations) do
        while true do
            Citizen.Wait(1)
            local playerCoords = GetEntityCoords(PlayerPedId())
            if #(playerCoords - v.coords) < 2.0 then
                -- Show interaction prompt using RedM natives
                if IsControlJustReleased(0, 38) then -- E
                    TriggerServerEvent("lxr-police:duty:clockin", k)
                end
            end
        end
    end
end)

RegisterNetEvent("lxr-police:duty:setState")
AddEventHandler("lxr-police:duty:setState", function(isOnDuty, dept, grade)
    -- Change outfit via RedM native scenario
end)