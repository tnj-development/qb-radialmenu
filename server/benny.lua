local QBCore = exports['qb-core']:GetCoreObject()
local Pay = true
local Price = 200
local Pay = true
local Price = 200

print([[
     ____.              ___________.__                _____   
    |    |____  ___.__. \_   _____/|__|__  __ ____   /     \  
    |    \__  \<   |  |  |    __)  |  \  \/ // __ \ /  \ /  \ 
/\__|    |/ __ \\___  |  |     \   |  |\   /\  ___//    Y    \
\________(____  / ____|  \___  /   |__| \_/  \___  >____|__  /
              \/\/           \/                  \/        \/ 
https://jay-fivem.tebex.io/ | https://github.com/jay-fivem
]])

RegisterNetEvent("qb-benny:server:repair", function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local bank = Player.Functions.GetMoney("bank")
    local cash = Player.Functions.GetMoney("cash")
    if Pay then
        if bank >= Price then
            if Player.Functions.RemoveMoney("bank", Price, "bennys") then
                TriggerClientEvent("qb-benny:client:repair", src)
            end
        elseif cash >= Price then
            if Player.Functions.RemoveMoney("cash", Price) then
                TriggerClientEvent("qb-benny:client:repair", src)
            end
        else
            TriggerClientEvent("QBCore:Notify", src, "You don't have enough money", "error")
        end
    else
        TriggerClientEvent("qb-benny:client:repair", src)
    end
end)

RegisterNetEvent("qb-benny:server:repair", function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local bank = Player.Functions.GetMoney("bank")
    local cash = Player.Functions.GetMoney("cash")
    if Pay then
        if bank >= Price then
            if Player.Functions.RemoveMoney("bank", Price, "bennys") then
                TriggerClientEvent("qb-benny:client:repair", src)
            end
        elseif cash >= Price then
            if Player.Functions.RemoveMoney("cash", Price) then
                TriggerClientEvent("qb-benny:client:repair", src)
            end
        else
            TriggerClientEvent("QBCore:Notify", src, "You don't have enough money", "error")
        end
    else
        TriggerClientEvent("qb-benny:client:repair", src)
    end
end)