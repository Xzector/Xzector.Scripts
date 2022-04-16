local next = next;
local connect = connect;
local io = rconsoleprint;
local _info = _info;

repeat wait() until game:IsLoaded();
local chat = {
    _info = function(plr, msg)
    	rconsoleprint(plr.Name .. ": " .. msg..'\n')
    	return
    end
};
for i,v in next, game.Players:GetChildren() do
	v.Chatted:connect(function(msg)
		chat._info(v, msg)
	end)
end

game.Players.ChildAdded:connect(function(plr)
	if plr:IsA("Player") then
		plr.Chatted:connect(function(msg)
			chat._info(plr, msg)
		end)
	end
end)