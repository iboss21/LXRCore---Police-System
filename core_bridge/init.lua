local framework = nil

if Config.Framework == "auto" then
    if GetResourceState("lxrcore") == "started" then
        framework = "lxrcore"
    elseif GetResourceState("rsgcore") == "started" then
        framework = "rsgcore"
    elseif GetResourceState("vorp") == "started" then
        framework = "vorp"
    else
        print("[LXRCore Police] ERROR: No supported framework detected. Defaulting to lxrcore.")
        framework = "lxrcore"
    end
else
    framework = Config.Framework
end

local bridge = {}

if framework == "lxrcore" then
    bridge = require("core_bridge.lxrcore")
elseif framework == "rsgcore" then
    bridge = require("core_bridge.rsgcore")
elseif framework == "vorp" then
    bridge = require("core_bridge.vorp")
end

exports("GetPlayer", bridge.GetPlayer)
exports("IsOfficer", bridge.IsOfficer)
exports("Notify", bridge.Notify)
exports("HasPermission", bridge.HasPermission)
exports("GetJob", bridge.GetJob)
exports("GetGrade", bridge.GetGrade)
exports("SetPlayerControl", bridge.SetPlayerControl)
exports("AddMoney", bridge.AddMoney)
exports("RemoveMoney", bridge.RemoveMoney)
exports("GetInventory", bridge.GetInventory)
exports("Progress", bridge.Progress)
exports("Target", bridge.Target)
exports("Callback", bridge.Callback)
exports("Event", bridge.Event)
exports("ServerExport", bridge.ServerExport)
exports("GetOfficerDept", bridge.GetOfficerDept)
exports("logAudit", bridge.logAudit)