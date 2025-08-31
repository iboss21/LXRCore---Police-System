-- 911/telegram, panic button, RedM map waypoints, unit assignment

RegisterNetEvent("lxr-police:dispatch:call")
AddEventHandler("lxr-police:dispatch:call", function(callData)
    -- Add to dispatch queue
    -- Play RedM native notification sound/tone
    -- Flash on map
end)

RegisterNetEvent("lxr-police:dispatch:panic")
AddEventHandler("lxr-police:dispatch:panic", function(location)
    -- Set RedM waypoint for all officers
    -- Play panic sound
end)