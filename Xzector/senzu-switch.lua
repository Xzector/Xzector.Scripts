-- need robux to use this
local senzu_switcher = function(type, color)
    if (type == 'Beans' or type == 'Jars') and (color == 'Red' or color == 'Blue' or color == 'Green' or color == 'Yellow') then
        game.Players.LocalPlayer.Backpack.ServerTraits.ChatStart:FireServer(workspace.FriendlyNPCs["Korin BEANS"]);
        task.wait(0.3);
        game.Players.LocalPlayer.Backpack.ServerTraits.ChatAdvance:FireServer({"k"});
        task.wait(0.3);
        game.Players.LocalPlayer.Backpack.ServerTraits.ChatAdvance:FireServer({"k"});
        task.wait(0.3);
        game.Players.LocalPlayer.Backpack.ServerTraits.ChatAdvance:FireServer({type});
        task.wait(0.3);
        game.Players.LocalPlayer.Backpack.ServerTraits.ChatAdvance:FireServer({"k"});
        task.wait(0.3);
        game.Players.LocalPlayer.Backpack.ServerTraits.ChatAdvance:FireServer({"8"});
        task.wait(0.3);
        game.Players.LocalPlayer.Backpack.ServerTraits.ChatAdvance:FireServer({"k"});
        task.wait(0.3);
        game.Players.LocalPlayer.Backpack.ServerTraits.ChatAdvance:FireServer({color});
        task.wait(0.3);
        game.Players.LocalPlayer.Backpack.ServerTraits.ChatAdvance:FireServer({"k"});
        task.wait(0.3);
        game.Players.LocalPlayer.Backpack.ServerTraits.ChatAdvance:FireServer({"Use Robux"});
        task.wait(0.3);
        game.Players.LocalPlayer.Backpack.ServerTraits.ChatAdvance:FireServer({"k"});
        task.wait(0.3);
        game.Players.LocalPlayer.Backpack.ServerTraits.ChatAdvance:FireServer({"Yes"});
        task.wait(0.3);
        game.Players.LocalPlayer.Backpack.ServerTraits.ChatAdvance:FireServer({"k"});
    end;
end;
senzu_switcher('Beans', 'Blue')