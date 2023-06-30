--[[
    RCD Bypass Rewrite
    original by @ficello
    rewritten by @dex4tw
    (on github) - hi 6/30/23

    I encourage you to edit the code
    to see if theres a faster, or better
    way to work-around RCD
]]--

-------------------------------------------------[ Variables & Functions ]-------------------------------------------------
local plr = game:GetService("Players").LocalPlayer
local character = plr.Character

-------------------------------------------------[ Patch Welds ]-------------------------------------------------
plr.Character = nil
plr.Character = character

local hrp = character:FindFirstChild("HumanoidRootPart") 
if hrp == nil then return end 

hrp:Destroy() 
wait(6)
if character.Humanoid.RigType == Enum.HumanoidRigType.R6 then
    protectedWelds = Instance.new("Part", workspace)
    protectedWelds.Name = plr.Name .. " Protected Welds"
    protectedWelds.Anchored = true
    protectedWelds.CFrame = character.Torso.CFrame
    protectedWelds.CanCollide = false
    protectedWelds.Transparency = 1
    protectedWelds.Size = Vector3.new(9e9,9e9,9e9)
else
    protectedWelds = Instance.new("Part", workspace)
    protectedWelds.Name = plr.Name .. " Protected Welds"
    protectedWelds.Anchored = true
    protectedWelds.CFrame = character.UpperTorso.CFrame
    protectedWelds.CanCollide = false
    protectedWelds.Transparency = 1
    protectedWelds.Size = Vector3.new(9e9,9e9,9e9)
end
wait(3)
character:BreakJoints()

-------------------------------------------------[ Netless ]-------------------------------------------------
coroutine.resume(coroutine.create(function()
    for i,v in pairs(character:GetChildren()) do
        if v:IsA("Accessory") then

            -- Add Attachments & Stuff --
            local AlignPosition = Instance.new("AlignPosition", v.Handle)
            local AlignOrientation = Instance.new("AlignOrientation", v.Handle)
            local Attachment1 = Instance.new("Attachment", v.Handle)
            local Attachment2 = Instance.new("Attachment", protectedWelds)
            AlignPosition.Attachment0 = Attachment1
            AlignOrientation.Attachment0 = Attachment1
            AlignPosition.Attachment1 = Attachment2
            AlignOrientation.Attachment1 = Attachment2
            AlignPosition.Responsiveness = 300
            AlignPosition.MaxForce = 5e9
            AlignOrientation.MaxTorque = 5e9
            AlignOrientation.Responsiveness = 300
            AlignOrientation.ReactionTorqueEnabled = false
            Attachment1.Position = protectedWelds.Position
            Attachment1.Orientation = protectedWelds.Orientation

            -- Add Velocity --
            game:GetService("RunService").Heartbeat:Connect(function()
                protectedWelds.Velocity = Vector3.new(0, 35, 0)
            end)
        end
    end
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
