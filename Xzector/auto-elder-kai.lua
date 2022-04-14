getgenv().Buy = true
local money = game.Players.LocalPlayer.PlayerGui.HUD.FullSize.Money.Text
local first = string.sub(money, 2);
local second = string.gsub(first, ",", "");
local third = tonumber(second);

if third >= 10000 and getgenv().Buy then
getgenv().Test = true
while getgenv().Test == true and wait(1) do
    game.Players.LocalPlayer.Backpack.ServerTraits.ChatStart:FireServer(game.Workspace.FriendlyNPCs["Elder Kai"])
    wait(0.3)
    game.Players.LocalPlayer.Backpack.ServerTraits.ChatAdvance:FireServer({[1] = "k"})
    wait(0.3)
    game.Players.LocalPlayer.Backpack.ServerTraits.ChatAdvance:FireServer({[1] = "Yes"})
    wait(0.3)
    game.Players.LocalPlayer.Backpack.ServerTraits.ChatAdvance:FireServer({[1] = "k"})
    wait(0.3)
    game.Players.LocalPlayer.Backpack.ServerTraits.ChatAdvance:FireServer({[1] = "k"})
    wait(0.3)
end
elseif third <= 9999 then
    getgenv().Test = false
end