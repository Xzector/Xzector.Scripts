local double = function(x)
    game.Players.LocalPlayer.Character['True']:Destroy();
    game.Players.LocalPlayer.CharacterAdded:Connect(function(x)
       x:WaitForChild(x);
       x.True:Remove();
    end); 
end;
double('True');
