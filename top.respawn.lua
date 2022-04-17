-- this method is better than all the other shit methods. 
-- note improvements will be made in the future by shuko#8287.
-- credit to shuko for making this, lets you top respawn with less bugs slightly slower for better preformance, (autoexe) compatible.
top_respawn = function(char)
    task.wait(5.20)
    char.SuperAction:Destroy();
    while wait(0.3) do
        game.TweenService:Create(char.HumanoidRootPart,TweenInfo.new(1,  Enum.EasingStyle.Quad),{CFrame = CFrame.new(100, 100, 100)}):Play()
        break;
    end;
end;
local oldnc;
oldnc = hookmetamethod(game, '__namecall', function(self,...)
    if self.Name == 'ResetChar' and getnamecallmethod() == 'FireServer' then
        coroutine.wrap(top_respawn)(game.Players.LocalPlayer.Character);
        warn('[Humanoid MaxHealth] - Set to nil');
    end;
    return oldnc(self,...);
end);
