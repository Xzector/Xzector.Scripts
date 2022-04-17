-- credit to Z-Shuko#8287 auto easy quest, this lets you do all the easy quest without having to do anything.
-- this is rather old and can be made 100% better
if game.PlaceId == 536102540 then
    local lplr = game:GetService('Players').LocalPlayer
    for i,v in pairs(workspace.FriendlyNPCs:GetDescendants()) do
        if v.Name == 'Chat' and v.ClassName ~= 'Folder' then
            if v.Value == "I heard there's a spaceship in Yunzabit Heights" then
                v.Parent.Parent.Name = 'Quest_1'
                elseif v.Value == "We need your help in the future!" then
                v.Parent.Parent.Name = 'Quest_2'
                elseif v.Value == "Hey want to explore the galaxy?" then
                v.Parent.Parent.Name = 'Quest_3'
                elseif v.Value == "Whatup" then
                v.Parent.Parent.Name = 'Quest_4'
            end
        end
    end
    
    function quest_remotes(x,y,z,v)
        lplr.Backpack.ServerTraits.ChatStart:FireServer(workspace.FriendlyNPCs[x])
        lplr.Backpack.ServerTraits.ChatAdvance:FireServer({y}) 
        task.wait(.75)
        lplr.Backpack.ServerTraits.ChatAdvance:FireServer({y}) 
        task.wait(.75)
        lplr.Backpack.ServerTraits.ChatAdvance:FireServer({z}) 
        task.wait(.75)
        lplr.Backpack.ServerTraits.ChatAdvance:FireServer({y}) 
        task.wait(.75)
        lplr.Backpack.ServerTraits.ChatStart:FireServer(workspace.FriendlyNPCs[v]) 
        task.wait(.75)
    end
    
    quest_remotes('Quest_1','k','Yes','NamekianShip')
    quest_remotes('Quest_2','k','Yes','TimeMachine')
    quest_remotes('Quest_3','k','Yes','SpaceShip')
    quest_remotes('Quest_4','k','Yes','Krillin')
    quest_remotes('Quest_4','k','Yes','Krillin')
    
    lplr.Backpack.ServerTraits.ChatAdvance:FireServer({"No"}) 
    task.wait(.75)
    lplr.Backpack.ServerTraits.ChatAdvance:FireServer({"k"}) 
    task.wait(.75)
    lplr.Backpack.ServerTraits.ChatStart:FireServer(workspace.FriendlyNPCs["Elder Kai"])
    task.wait(.75)
    lplr.Backpack.ServerTraits.ChatAdvance:FireServer({'k'}) 
    task.wait(.75)
    lplr.Backpack.ServerTraits.ChatAdvance:FireServer({'Yes'}) 
    task.wait(.75)
    lplr.Backpack.ServerTraits.ChatAdvance:FireServer({'k'}) 
    task.wait(.75)
    lplr.Backpack.ServerTraits.ChatAdvance:FireServer({'k'}) 
end
