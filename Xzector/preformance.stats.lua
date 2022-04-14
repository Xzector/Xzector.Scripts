--[[
    Z-Shukos Preformance Stats Check
    Made this because i was bored
--]]

local stats = function(x)
    shared.iso = math.huge;
    rconsolename('Preformance Tool')
    for i = 0, shared.iso do wait(x)
        local info = game.Stats.PerformanceStats;
        rconsoleprint('[preformance][%s]'..info.Memory:GetValue()..'   '..info.CPU:GetValue()..'   '..info.Ping:GetValue()..'\n')
    end;
end;
stats(0.5)