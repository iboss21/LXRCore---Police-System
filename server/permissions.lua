function HasPermission(src, perm)
    local player = exports["lxr-police"]:GetPlayer(src)
    if not player then return false end
    return player.permissions and player.permissions[perm] == true
end

exports("HasPermission", HasPermission)