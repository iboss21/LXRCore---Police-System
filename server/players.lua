-- Server: Duty roster, last-seen, audit log

RegisterNetEvent("lxr-police:duty:clockin")
AddEventHandler("lxr-police:duty:clockin", function(station)
    local src = source
    local player = exports["lxr-police"]:GetPlayer(src)
    if player and exports["lxr-police"]:IsOfficer(src) then
        local dept, grade = player.job, player.job_grade
        MySQL.Async.execute("UPDATE leo_roster SET last_seen=NOW(), department=@dept, grade=@grade WHERE officer_id=@id", {
            ["@id"] = player.identifier, ["@dept"] = dept, ["@grade"] = grade
        })
        exports["lxr-police"]:logAudit(src, "clockin", "station", station, "Duty start")
        TriggerClientEvent("lxr-police:duty:setState", src, true, dept, grade)
    else
        DropPlayer(src, "Unauthorized duty attempt")
    end
end)