-- credit to shuko#8287 on discord for making this, lets xbox users see your chat (autoexe) compatible.
xbox__commnicaton = function()
    repeat wait() until shared.startup
    task.wait(1.85)
    game.Players.LocalPlayer.CharacterAdded:connect(xbox__commnicaton)
    game.ReplicatedStorage.Xbox:FireServer()
end;
xbox__commnicaton()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:remove()
game.Players.LocalPlayer.Chatted:connect(function(msg, self)
    game.ReplicatedStorage.Talk:FireServer(tostring(msg))
end)
