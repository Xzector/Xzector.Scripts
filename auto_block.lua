local oldindex 
oldindex = hookmetamethod(game, '__index',function(self, b)
    if b == 'Value' and self.Name == 'Block' then
        return false;
    end;
    return oldindex(self, b)
end);
