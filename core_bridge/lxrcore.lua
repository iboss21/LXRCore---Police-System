local M = {}

function M.GetPlayer(src)
    return exports["lxrcore"]:GetPlayer(src)
end

function M.IsOfficer(src)
    local player = M.GetPlayer(src)
    return player and (player.job == "police" or player.job == "sheriff" or player.job == "ranger")
end

function M.HasPermission(src, perm)
    local player = M.GetPlayer(src)
    return player and player.permissions and player.permissions[perm]
end

function M.SetPlayerControl(src, enabled)
    TriggerClientEvent("lxr-police:control:set", src, enabled)
end

function M.logAudit(src, action, target_type, target_id, details)
    TriggerServerEvent("lxr-police:audit:log", src, action, target_type, target_id, details)
end

-- Implement other bridge functions as above
return M