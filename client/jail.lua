-- Jail/Prison system, cell assignment, RedM entity locking, parole logic

function SendToJail(target, cellCoords, sentence)
    -- Teleport to cellCoords, lock doors via RedM natives
    -- Show timer, restrict controls
end

function ReleaseFromJail(target)
    -- Unlock cell, teleport to gate, return property
end

RegisterNetEvent("lxr-police:jail:sentence")
RegisterNetEvent("lxr-police:jail:release")