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
        elseif v.Value == "YOU THINK YOU CAN STOP THE UNIVERSAL CHAMPION?" then
            v.Parent.Parent.Name = "Quest_5"
        elseif v.Value == "You know, I heard there's a floating platform above Korin's Tower" then
            v.Parent.Parent.Name = "Quest_6"
        elseif v.Value == "I'm interested in joining the ranked matches at the tournament arena!" then
            v.Parent.Parent.Name = "Quest_7"
        elseif v.Value == "I have a packge for Master Roshi" then
            v.Parent.Parent.Name = "Quest_8"
        end;
    end
end

function quest_remotes(x,y,z,v)
        lplr.Backpack.ServerTraits.ChatStart:FireServer(workspace.FriendlyNPCs[x])
        task.wait(.1)
        lplr.Backpack.ServerTraits.ChatAdvance:FireServer({y})
        task.wait(.75)
        lplr.Backpack.ServerTraits.ChatAdvance:FireServer({y})
        task.wait(.75)
        lplr.Backpack.ServerTraits.ChatAdvance:FireServer({z})
        task.wait(.75)
        lplr.Backpack.ServerTraits.ChatAdvance:FireServer({y})
        task.wait(.75)
        lplr.Backpack.ServerTraits.ChatStart:FireServer(workspace.FriendlyNPCs:FindFirstChild(tostring(v)) or 'nil');
        task.wait(.5)
    end
    quest_remotes('Quest_1','k','Yes','NamekianShip')
    quest_remotes('Quest_2','k','Yes','TimeMachine')
    quest_remotes('Quest_3','k','Yes','SpaceShip')
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
    task.wait(1);
    quest_remotes('Quest_6','k','Yes','Popo')
    lplr.Backpack.ServerTraits.ChatAdvance:FireServer({'k'})
    task.wait(.5);
    quest_remotes('Quest_7','k','Yes','Help Center');
    lplr.Backpack.ServerTraits.ChatAdvance:FireServer({'k'})
    task.wait(.5);
    quest_remotes('Quest_8','k','Yes','Roshi')
    lplr.Backpack.ServerTraits.ChatAdvance:FireServer({'k'})
    task.wait(.5)
    quest_remotes('Future Trunks','k','Alright');

    function distance(vect1,vect2)
        return (vect1 - vect2).Magnitude;
    end;

    function npc_autofarm(Npc)
    while task.wait() do
            for i,v in pairs(game.Workspace.Live:GetChildren()) do
                if v.Name:lower():find(Npc:lower()) and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health ~= 0 then
                    step = game:GetService("RunService").Stepped:Connect(function()
                        local dist = distance(v.HumanoidRootPart.Position, game.Players.LocalPlayer.Character.HumanoidRootPart.Position);
                        game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(dist/5000),{CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0,0,2)}):Play()
                    end);
                    repeat task.wait(.33);
                        game.Players.LocalPlayer.Backpack.ServerTraits.Input:FireServer({"md"}, "")
                    until not v:FindFirstChild("HumanoidRootPart") or not v:FindFirstChild("Humanoid") or v.Humanoid.Health == 0;
                    step:Disconnect();
                end;
            end
            if not game.Players.LocalPlayer.PlayerGui.HUD.FullSize.Quests:FindFirstChild("Copy") then
                break;
            end;
        end
    end;

    npc_autofarm('Imperfect Cell');
