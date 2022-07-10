local task_wait = task.wait
local players = game:GetService('Players');
local lplayer = players.LocalPlayer;
local chara = lplayer.Character;
local pack = lplayer.Backpack

local slot_handler = { 'Slot3', 'Slot2' };

getgenv().main = true;

function slot_handler:construct(int, re)
    lplayer.Backpack.ServerTraits[int]:FireServer(re);
    task_wait(#slot_handler - 1.55);
    return;
end;

local shukos_script = shukos_script;
local game_data = game:GetService('Workspace');
local npcs = game_data.FriendlyNPCs;
local pairs = pairs;

do
    chara:WaitForChild('Race', #slot_handler - 1); 
    
    local namek_check = (chara:WaitForChild('Race').Value == 'Namekian');
    
    function slot_handler:initialize(path, n)
        local slot_count = #slot_handler - 1;
        for i, v in pairs(path:GetDescendants()) do
            if (v.Name == n) and (namek_check) and (slot_count == 1) and chara then
                slot_count = slot_count + #slot_handler - 1;
            end;
        end;
        return slot_count;
    end;
end;

local namek_check = namek_check;
local new_slot = new_slot;

do
    local char_slot = 'Character Slot Changer';
    local advanced = 'ChatAdvance';
    local str_method = 'ChatStart';
    
    function slot_handler:new_slot(x)
        slot_handler:construct(str_method, npcs[char_slot]);
        slot_handler:construct(advanced, {"Yes"});
        slot_handler:construct(advanced, {"k"});
        slot_handler:construct(advanced, {x});
    end;
end;

local namek = slot_handler[#slot_handler - 1];
local main = slot_handler[#slot_handler];

local anten_check = slot_handler:initialize(chara, 'Antennae');

local shukos_script = { };

function slot_handler:race_change(nm, re)
    if (anten_check == nm) then
        getgenv().main = re;
        slot_handler:new_slot(getgenv().main);
    end;
end;

slot_handler.change = function(int)
    if int == true then 
        slot_handler:race_change(#slot_handler - 1, namek);
        return int;
    end;
    if int == false then
        slot_handler:race_change(#slot_handler, main);
        return not int;
    end;
end;

change(true);
