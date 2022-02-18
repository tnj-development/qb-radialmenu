--      ____.              ___________.__                _____   
--     |    |____  ___.__. \_   _____/|__|__  __ ____   /     \  
--     |    \__  \<   |  |  |    __)  |  \  \/ // __ \ /  \ /  \ 
-- /\__|    |/ __ \\___  |  |     \   |  |\   /\  ___//    Y    \
-- \________(____  / ____|  \___  /   |__| \_/  \___  >____|__  /
--               \/\/           \/                  \/        \/ 
-- https://jay-fivem.tebex.io/ | https://github.com/jay-fivem
local QBCore = exports['qb-core']:GetCoreObject()
inRange = false
local itemdata = #Config.MenuItems[3].items+1
local event = nil
local data = nil

CreateThread(function()
    while true do
        Wait(1000)
        if not IsPedInAnyVehicle(PlayerPedId()) and inRange and Config.MenuItems[3].items[itemdata] then 
            Config.MenuItems[3].items[itemdata] = nil
        elseif IsPedInAnyVehicle(PlayerPedId()) and inRange and data then
            Config.MenuItems[3].items[itemdata] = data
        end
    end
end)

local benny = PolyZone:Create({
    vector2(-50.17, -1067.12),
    vector2(-37.61, -1031.66),
    vector2(-8.56, -1038.22),
    vector2(-21.38, -1077.61),
  }, {
    name="benny",
    minZ = 25.0,
    maxZ = 35.0,
    debugPoly = false
})

benny:onPlayerInOut(function(isPointInside)
    if isPointInside then
        inRange = true
        if IsPedInAnyVehicle(PlayerPedId()) then 
            data = {
                id = 'benny',
                title = 'Repair',
                icon = 'car-crash',
                type = 'server',
                event = 'qb-benny:server:repair',
                shouldClose = true
            }
            event = RegisterNetEvent("qb-benny:client:repair", function()
                TriggerServerEvent("InteractSound_SV:PlayOnSource", "airwrench", 0.1)
                if inRange then
                    SendNUIMessage({sound = "wrench", volume = 1.0})
                    QBCore.Functions.Progressbar("repair_car", "Repairing Vehicle...", 3000, false, true, {
                        disableMovement = true,
                        disableCarMovement = true,
                        disableMouse = false,
                        disableCombat = true,
                    }, {}, {}, {}, function() -- Done
                        TriggerEvent('iens:repaira')
                        TriggerEvent('vehiclemod:client:fixEverything')
                    end)
                end
                RemoveEventHandler(event)
            end)
        end
    else
        if event then
            RemoveEventHandler(event)
        end
        inRange = false
        data = nil
        Config.MenuItems[3].items[itemdata] = nil
    end
end)