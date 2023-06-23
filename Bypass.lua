--[[
    RCD Bypass Rewrite
    original by @ficello
    rewritten by @dex4tw
    (on github) - prototype 1
]]--

-------------------------------------------------[ Variables & Functions ]-------------------------------------------------
local plr = game:GetService("Players").LocalPlayer
local character = plr.Character
local uis = game:GetService("UserInputService")

-- Replace HumanoidRootPart --
local hrpReplacement = Instance.new("Part", character)
hrpReplacement.CFrame = character.HumanoidRootPart.CFrame
hrpReplacement.Transparency = 1
hrpReplacement.Anchored = true
hrpReplacement.CanCollide = false

-------------------------------------------------[ Patch Welds ]-------------------------------------------------
plr.Character = nil
plr.Character = character

local hrp = character:FindFirstChild("HumanoidRootPart") 
if hrp == nil then return end 

hrp:Destroy() 
wait(6)
local protectedWelds = Instance.new("Part", workspace)
protectedWelds.Name = plr.Name .. " Protected Welds"
protectedWelds.Anchored = true
protectedWelds.CFrame = character.Torso.CFrame
protectedWelds.CanCollide = false
protectedWelds.Transparency = 1
wait(3)

-------------------------------------------------[ Netless ]-------------------------------------------------
coroutine.resume(coroutine.create(function()
    game:GetService("RunService").Heartbeat:Connect(function()
        for i,v in next, workspace[game.Players.LocalPlayer.Name]:GetChildren() do
            if v:IsA("BasePart") then 
                v.Velocity = Vector3.new(0,-32.5,0)
            elseif v:IsA("Accessory") then 
                v.Handle.Velocity = Vector3.new(0,-32.5,0)
            end
        end
    end)
end))

-------------------------------------------------[ Source ]-------------------------------------------------
-- your code here
