--[[
    Netless Bypass
        Allows your accessories to be moved
        without falling
    [ This is being used in the RCDBypass ]
    @dex4tw - Discord & Roblox
]]--
-- don't be a skid (unless your learning) <3

-------------------------------------------------[ Variables & Functions ]-------------------------------------------------
plr = game:GetService("Players").LocalPlayer
character = plr.Character

-------------------------------------------------[ Netless-ing ]-------------------------------------------------

                                                -- Aligning --
for i,v in pairs(character:GetChildren()) do
    if v:IsA("Accessory") then
        local AlignPosition = Instance.new("AlignPosition", v.Handle)
        local AlignOrientation = Instance.new("AlignOrientation", v.Handle)
        local Attachment1 = Instance.new("Attachment", v.Handle)
        local Attachment2 = Instance.new("Attachment", character['HumanoidRootPart'])
        AlignPosition.Attachment0 = Attachment1
        AlignOrientation.Attachment0 = Attachment1
        AlignPosition.Attachment1 = Attachment2
        AlignOrientation.Attachment1 = Attachment2
        AlignPosition.Responsiveness = 300
        AlignPosition.MaxForce = 5e9
        AlignOrientation.MaxTorque = 5e9
        AlignOrientation.Responsiveness = 300
        AlignOrientation.ReactionTorqueEnabled = false
        Attachment1.Position = character['HumanoidRootPart'].Position
        Attachment1.Orientation = character['HumanoidRootPart'].Orientation
        character['HumanoidRootPart'].Velocity = Vector3.new(0, 35, 0)
    end
end


                                                -- Add Velocity --
game:GetService("RunService").Heartbeat:Connect(function()
    for i,v in pairs(character:GetChildren()) do
        if v:IsA("Accessory") then
            v.Handle.Velocity = Vector3.new(0,35,0)
        end
    end    
end)
