-- press j
-- Variables
local person = -- put the players username here
local player = game.Players.LocalPlayer
local mouse = player:GetMouse()

-- Settings

local SizeChange = 0
local Camera = -30
bind = "j"

mouse.KeyDown:connect(function(key)
    if key == bind then
        SizeChange = SizeChange - 100
    end
end)
for i,v in pairs(game.Players.person.Character:GetChildren()) do
    if v:IsA("MeshPart") then
        v.Transparency = 1
    end
    if v:IsA("Part") then
        v.Transparency = 1
    end
    if v:IsA("Accessory") then
        v:Destroy()
    end
    game.Players.person.Character.Head.face.Transparency = 1
end
local Con = game:GetService("RunService").RenderStepped:Connect(function()
    game.Workspace.CurrentCamera.CFrame = (game.Players.person.Character.Head.CFrame * CFrame.Angles(math.rad(Camera),0,0)) * CFrame.new(0,SizeChange,0)
end)
