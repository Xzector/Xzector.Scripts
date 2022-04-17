-- this method is better than all the other shit methods. 
-- credit to shuko for making this, lets you block without restriction, (autoexe) compatible.
local oldindex 
oldindex = hookmetamethod(game, '__index',function(self, b)
    if b == 'Value' and self.Name == 'Block' then
        return false;
    end;
    return oldindex(self, b)
end);
