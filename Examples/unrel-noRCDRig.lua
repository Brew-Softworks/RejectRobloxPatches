--[[
    Remote Control Dummy [ NO RCD ]
        Create a Dummy with your accessories,
    @dex4tw - Discord & Roblox
]]--
-- don't be a skid (unless your learning) <3

-------------------------------------------------[ Variables & Functions ]-------------------------------------------------
plr = game:GetService("Players").LocalPlayer
character = plr.Character
uis = game:GetService("UserInputService")

torso = character['LongStraightHair']
head = character['SidePonytail']
leftarm = character["MessyHair"]
rightarm = character["Pal Hair"]
leftleg = character["Pink Hair"]
rightleg = character["LavanderHair"]
tool = character['BrownCharmerHair']

-------------------------------------------------[ Patch Accessories ]-------------------------------------------------
loadstring(game:HttpGet("https://raw.githubusercontent.com/dex4tw/RejectCharacterDeletions/main/AcessoryNetless.lua"))()
for i,v in pairs(character:GetChildren()) do
    if v:IsA("Accessory") then
        v.Handle:BreakJoints()
        v.Handle.CanCollide = true
        -- Add Attachments & Stuff --
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

        -- Add Velocity --
        game:GetService("RunService").Heartbeat:Connect(function()
            character['HumanoidRootPart'].Velocity = Vector3.new(0, 35, 0)
        end)

        if v == head or v == torso or v == leftarm or v == rightarm or v == leftleg or v== rightleg then
            if v.Handle:FindFirstChild('SpecialMesh') then 
                v.Handle.SpecialMesh:Destroy()
            elseif v.Handle:FindFirstChild("Mesh") then
                v.Handle.Mesh:Destroy()
            end
        end
    end
end

-------------------------------------------------[ Patch Character ]-------------------------------------------------
local OldPos = character["HumanoidRootPart"]
local Seat = Instance.new("Seat")
local Weld = Instance.new("Weld")
Seat.Transparency = 1
Seat.CanCollide = false
wait(.2);
character["HumanoidRootPart"].Anchored = true
Seat.Parent = workspace
Seat.CFrame = character["HumanoidRootPart"].CFrame
Seat.Anchored = false
Weld.Parent = Seat
Weld.Part0 = Seat
Weld.Part1 = character["HumanoidRootPart"]
character["HumanoidRootPart"].Anchored = false
Seat.CFrame = character["HumanoidRootPart"].CFrame

for i,v in pairs(character:GetChildren()) do
	if v:IsA("Part") then
		v.Transparency = 1
	end
	if v:IsA("Shirt") then
		v:Destroy()
	end
	if v:IsA("ShirtGraphic") then
		v:Destroy()
	end
	if v:IsA("Pants") then
		v:Destroy()
	end
end

for i,v in pairs(character:GetChildren()) do
    if v:IsA("Accessory") then
        if v == head or v == torso or v == leftarm or v == rightarm or v == leftleg or v== rightleg or v==tool then
            -- void
        else
            v:Destroy()
        end
    end
end

-------------------------------------------------[ Dummy Inventory ]-------------------------------------------------
equip = false

uis.InputBegan:Connect(function(key, typing)
    if key.KeyCode == Enum.KeyCode.One and not typing then
        if equip == false then
            equip = true
        else
            equip = false
        end    
    end
end)

-------------------------------------------------[ Dummy Control ]-------------------------------------------------
game:GetService("RunService").Heartbeat:Connect(function()
    pcall(loadstring("head.Handle.CFrame = character['Head'].CFrame"))
    pcall(loadstring('torso.Handle.CFrame = character["Torso"].CFrame * CFrame.Angles(0,17.28,0)'))
    pcall(loadstring('leftarm.Handle.CFrame = character["Left Arm"].CFrame * CFrame.Angles(17.28,0,0)'))
    pcall(loadstring('leftleg.Handle.CFrame = character["Left Leg"].CFrame * CFrame.Angles(17.28,0,0)'))
    pcall(loadstring('rightleg.Handle.CFrame = character["Right Leg"].CFrame * CFrame.Angles(17.28,0,0)'))

    if equip == false then
        pcall(loadstring('rightarm.Handle.CFrame = character["Right Arm"].CFrame * CFrame.Angles(17.28,0,0)'))
        pcall(loadstring("tool.Handle.CFrame = character['Torso'].CFrame:ToWorldSpace(CFrame.new(0,-5,0))"))
    else
        pcall(loadstring('rightarm.Handle.CFrame = character["Torso"].CFrame:ToWorldSpace(CFrame.new(1.4,.5,-.5))'))
        pcall(loadstring("tool.Handle.CFrame = character['Torso'].CFrame:ToWorldSpace(CFrame.new(1.4,.5,-2))"))
    end
end)
