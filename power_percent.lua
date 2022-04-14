repeat wait() until game:IsLoaded()
library=loadstring(game:HttpGet("https://raw.githubusercontent.com/Ohammad-Kz/Projects/main/free_powermeter.lua",true))()
main=library:CreateWindow"Power Percentage"
lplr=game.Players.LocalPlayer
back=lplr.Backpack

main:AddButton({text="Increase",callback=function()
    lplr=game.Players.LocalPlayer
    back=lplr.Backpack
    back.ServerTraits.Input:FireServer({[1]="increase"},true)
end})
    
main:AddButton({text ="Decrease",callback=function()
    back.ServerTraits.Input:FireServer({[1]="decrease"},true)
end})
library:Init()