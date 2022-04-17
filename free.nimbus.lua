local key_value;
game.Players.LocalPlayer.Chatted:connect(function(key)
    if key == ';nimbus' and key_value == nil then
        Instance.new("Part", game.Players.LocalPlayer.Character).Name = 'Nimbus';
        key_value = false;
    elseif key == ';nimbus' and not key_value then
        game.Players.LocalPlayer.Character.Nimbus:remove();
        key_value = nil;
    end;
end);
