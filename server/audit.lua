RegisterNetEvent("lxr-police:audit:log")
AddEventHandler("lxr-police:audit:log", function(src, action, target_type, target_id, details)
    local user_id = exports["lxr-police"]:GetPlayer(src).identifier
    MySQL.Async.execute("INSERT INTO mdt_audit (user_id, action, target_type, target_id, details) VALUES (@uid, @act, @type, @tid, @det)", {
        ['@uid']=user_id, ['@act']=action, ['@type']=target_type, ['@tid']=target_id, ['@det']=details
    })
    -- Optionally send to webhook
end)