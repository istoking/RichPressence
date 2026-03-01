local function getMaxClients()
    local max = tonumber(GetConvar('sv_maxclients', '48')) or 48
    return max
end

local function broadcastPlayerCount()
    local players = GetPlayers()
    local count = players and #players or 0
    local maxClients = getMaxClients()

    TriggerClientEvent('rpc:client:SetPlayerCount', -1, count, maxClients)
end

CreateThread(function()
    Wait(2000)
    broadcastPlayerCount()

    while true do
        Wait(30000) -- every 30s (adjust if you want)
        broadcastPlayerCount()
    end
end)

AddEventHandler('playerJoining', function()
    broadcastPlayerCount()
end)

AddEventHandler('playerDropped', function()
    broadcastPlayerCount()
end)
