local t = { };
local fol = { };
t.bored = function(x)
    t.value = {[x] = 0};
    t.hex = {game.Loaded};
end;

--[[
credit to, lIShukoIl
date by 5/12/2022
updated.
--]]

fol.loaded = 'Loaded';
local item = {
    ['sa'] = 'PowerOutput';
    ['sx'] = 'True';
};

t.bored('x');
local is_lo = game:IsLoaded();
local loadx = t.hex[1];

if not is_lo then
    loadx:wait();
end;
task.wait();

local out = item.sa;
local sv = game.RunService
local iso = item.sx;
local next = next;

function t:ch(xd, n, o)
    local count = t.value.x;
    for i,v in next, xd:GetChildren() do
        if (v.Name == n) and v then
            count = count + o;
        end;
    end;
    return count;
end;

local plrs = game.Players;
local lplr = plrs.LocalPlayer;
local add = lplr.CharacterAdded;
local gui = lplr.PlayerGui;
local Destroy = destroy;
local run = sv.stepped;

lplr:WaitForChild('Character')

t.free = function(tax, v)
    local char = lplr.Character;
    local b = gui:FindFirstChild('HUD')
    if t:ch(char, iso, 1) > v and b.Bottom:findFirstChild(tax) and b and char:FindFirstChild('Action') then
        char.Action:destroy();
        char.True:destroy();
        return;
    end;
end;

add:connect(t.free, fol.loaded, 0);
run:connect(function()
    t.free(fol.loaded, 0);
    return
end);
