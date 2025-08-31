RegisterNetEvent("lxr-police:mdt:searchCitizen")
AddEventHandler("lxr-police:mdt:searchCitizen", function(query)
    local src = source
    if not exports["lxr-police"]:HasPermission(src, "mdt_view") then
        exports["lxr-police"]:logAudit(src, "unauthorized_mdt", "mdt", 0, "View denied")
        return
    end
    MySQL.Async.fetchAll("SELECT * FROM mdt_citizens WHERE name LIKE @q LIMIT 50", {["@q"] = "%" .. query .. "%"}, function(results)
        TriggerClientEvent("lxr-police:mdt:searchResult", src, results)
    end)
    exports["lxr-police"]:logAudit(src, "mdt_search", "mdt", 0, "Query: " .. query)
end)