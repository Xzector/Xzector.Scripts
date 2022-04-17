-- credit to Z-Shuko#8287 on discord for making this, lets you freeze ur double exp and heaven time (not autoexe) compatible.
local double = function(x)
    game.Players.LocalPlayer.Character['True']:Destroy();
    game.Players.LocalPlayer.CharacterAdded:Connect(function(x)
       x:WaitForChild(x);
       x.True:Remove();
    end); 
end;
double('True');
