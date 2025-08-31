-- Dispatch & Calls: Handles 911/telegram, panic, officer down, unit pings, waypoint drops, assignment

RegisterNetEvent("lxr-police:dispatch:call")
AddEventHandler("lxr-police:dispatch:call", function(callData)
    -- Insert into dispatch queue with priority, log event, notify units
end)

RegisterNetEvent("lxr-police:dispatch:panic")
AddEventHandler("lxr-police:dispatch:panic", function(src, location)
    -- Alert all units, log audit, drop waypoint
end)

-- More events: unit assignment, on-scene, clear, notes