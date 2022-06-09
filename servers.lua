local maxplayers = math.huge
local serversmaxplayer
local goodserver
local gamelink = "https://games.roblox.com/v1/games/" .. game.PlaceId .. "/servers/Public?sortOrder=Asc&limit=100"

function serversearch()
    for _, v in pairs(game:GetService("HttpService"):JSONDecode(game:HttpGetAsync(gamelink)).data) do
        if type(v) == "table" and maxplayers > v.playing then
            serversmaxplayer = v.maxPlayers
            maxplayers = v.playing
            goodserver = v.id
        end
    end
end

function getservers()
    serversearch()
    for i, v in pairs(game:GetService("HttpService"):JSONDecode(game:HttpGetAsync(gamelink))) do
        if i == "nextPageCursor" then
            if gamelink:find("&cursor=") then
                local a = gamelink:find("&cursor=")
                local b = gamelink:sub(a)
                gamelink = gamelink:gsub(b, "")
            end
            gamelink = gamelink .. "&cursor=" .. v
        end
    end
end
getservers()

if true then
    if true then
        if #game:GetService("Players"):GetPlayers() - 1 == maxplayers then
            return
        elseif goodserver == game.JobId then
            return
        end
    end
    game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, goodserver)
end
