Config = {
    Framework = "auto", -- "lxrcore", "rsgcore", "vorp", "auto"
    UseTarget = true,
    Logging = {
        Webhook = "https://discord.com/api/webhooks/yourwebhookhere"
    },
    Stations = {
        ["valentine"] = {
            label = "Valentine Sheriff's Office",
            coords = vec3(-277.7, 805.0, 119.5),
            cells = {vec3(-272.4, 812.1, 118.0)},
            evidence = vec3(-280.0, 808.0, 119.5),
            armory = vec3(-278.0, 803.0, 119.5),
            garage = vec3(-282.0, 800.0, 119.5),
        },
        -- Add more stations as needed
    },
    Jail = {
        Location = vec3(-350.0, 800.0, 115.0),
        ParoleMin = 10,
    },
    Item = {
        EvidenceBag = "evidence_bag",
    }
}