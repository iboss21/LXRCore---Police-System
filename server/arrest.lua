local function sendWebhook(action, officer, target, details)
    if Config.Logging.Webhook and Config.Logging.Webhook ~= "" then
        PerformHttpRequest(Config.Logging.Webhook, function() end, "POST", json.encode({
            action = action,
            officer = officer,
            target = target,
            details = details,
            timestamp = os.date('%Y-%m-%d %H:%M:%S')
        }), {["Content-Type"]="application/json"})
    end
end

RegisterNetEvent("lxr-police:arrest:softCuff")
AddEventHandler("lxr-police:arrest:softCuff", function(targetNetId)
    local src = source
    if not exports["lxr-police"]:HasPermission(src, "arrest") then
        sendWebhook("unauthorized_arrest", src, targetNetId, "Attempted soft cuff")
        DropPlayer(src, "Unauthorized police action.")
        return
    end
    TriggerClientEvent("lxr-police:arrest:softCuff", targetNetId, src)
    sendWebhook("arrest_softCuff", src, targetNetId, "Soft cuff applied")
    exports["lxr-police"]:logAudit(src, "arrest_softCuff", "player", targetNetId, "Soft cuff applied")
end)

RegisterNetEvent("lxr-police:arrest:uncuff")
AddEventHandler("lxr-police:arrest:uncuff", function(targetNetId)
    local src = source
    if not exports["lxr-police"]:HasPermission(src, "arrest") then
        sendWebhook("unauthorized_uncuff", src, targetNetId, "Attempted uncuff")
        DropPlayer(src, "Unauthorized police action.")
        return
    end
    TriggerClientEvent("lxr-police:arrest:uncuff", targetNetId)
    sendWebhook("arrest_uncuff", src, targetNetId, "Uncuffed")
    exports["lxr-police"]:logAudit(src, "arrest_uncuff", "player", targetNetId, "Uncuffed")
end)