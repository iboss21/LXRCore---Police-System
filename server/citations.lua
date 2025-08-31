-- Server: Statute check, DB insert, audit

RegisterNetEvent("lxr-police:citations:issue")
AddEventHandler("lxr-police:citations:issue", function(target, statute, amount)
    local src = source
    if not exports["lxr-police"]:HasPermission(src, "citation") then
        exports["lxr-police"]:logAudit(src, "unauthorized_citation", "player", target, "Denied")
        return
    end
    MySQL.Async.execute("INSERT INTO leo_citations (citizen_id, statute, amount, issued_by) VALUES (@cid, @stat, @amt, @off)", {
        ["@cid"] = target, ["@stat"] = statute, ["@amt"] = amount, ["@off"] = src
    })
    exports["lxr-police"]:logAudit(src, "citation", "player", target, "Issued")
    TriggerClientEvent("lxr-police:notifyCitation", src)
end)