Citizen.CreateThread(function()
    while true do
        Citizen.Wait(10000)
        local cpu = GetResourceCPUUsage("lxr-police")
        local mem = GetResourceMemoryUsage("lxr-police") / 1024 / 1024
        print(string.format("[PROFILER] Arrest Module: CPU %.3f ms, Mem %.2f MB", cpu, mem))
    end
end)