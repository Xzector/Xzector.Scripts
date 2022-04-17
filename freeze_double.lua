local new_thred = function(self)
    game.Players.LocalPlayer.Character:WaitForChild('True').Parent = nil
    game.Players.LocalPlayer.CharacterAdded:connect(new_thred)
end;
local oldnc
local isloaded = false;
oldnc = hookmetamethod(game, '__namecall', function(self, n, ...)
    if (n == 'ZZXX' and not isloaded and getnamecallmethod() == 'findFirstChild') then
        coroutine.wrap(new_thred)(self); 
    end;
    return oldnc(self, n, ...);
end);
