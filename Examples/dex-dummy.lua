--[[
    Dex Dummy [ NO RCD ]
        Create a Dummy with your accessories,
	-- please try to keep this script somewhat "silent"
	-- i do not want anybody over-using it
    @dex4tw - Discord & Roblox
]]--
-- ooo you somehow heard of this repo
-- congrats on asking for the script

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
tools = {
    [1] = character['WiseMysticalTree'],
    [2] = character["WeaponAccessory"],
    [3] = character['MeshPartAccessory'],
    [4] = character['PointyTowerHat']
}

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
        Attachment1.Position = torso.Handle.Position
        Attachment1.Orientation = torso.Handle.Orientation

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

local me = Instance.new("Part", workspace)
me.Size = Vector3.new(2,500,2)
me.Anchored = true
me.CanCollide = false
me.Transparency = .5
me.CFrame = character.HumanoidRootPart.CFrame
character.Humanoid.Died:Connect(function()
    me:Destroy()
end)

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
end

-------------------------------------------------[ Dummy Inventory ]-------------------------------------------------
equip = false
orbit = true
item = 0
uis.InputBegan:Connect(function(key, typing)
    if key.KeyCode == Enum.KeyCode.One and not typing then
        if equip == false then
            item = 1
            equip = true
        elseif equip == true and item ~= 1 then
            equip = false
            item = 1
            equip = true
        else
            item = 0
            equip = false
        end
    elseif key.KeyCode == Enum.KeyCode.Two and not typing then
        if equip == false then
            item = 2
            equip = true
        elseif equip == true and item ~= 2 then
            equip = false
            item = 2
            equip = true
        else
            item = 0
            equip = false
        end
    elseif key.KeyCode == Enum.KeyCode.Three then
        if equip == false then
            item = 3
            equip = true
        elseif equip == true and item ~= 3 then
            equip = false
            item = 3
            equip = true
        else
            item = 0
            equip = false
        end
    elseif key.KeyCode == Enum.KeyCode.Four then
        if equip == false then
            item = 4
            equip = true
        elseif equip == true and item ~= 4 then
            equip = false
            item = 4
            equip = true
        else
            item = 0
            equip = false
        end
    elseif key.KeyCode == Enum.KeyCode.E then
        if orbit == true then
            orbit = false
        else
            orbit = true
        end
    end
end)

-------------------------------------------------[ Dummy Control ]-------------------------------------------------
local orbitRadius = 10 -- Adjust the radius of the orbit
local orbitSpeed = .5 -- Adjust the speed of the orbit

function orbitItem(item, angle)
    if orbit == true then
        local offset = Vector3.new(math.cos(angle) * orbitRadius, 0, math.sin(angle) * orbitRadius)
        item.Handle.CFrame = character.HumanoidRootPart.CFrame:ToWorldSpace(CFrame.new(offset))
    else
        item.Handle.CFrame = character.HumanoidRootPart.CFrame:ToWorldSpace(CFrame.new(0,-15,0))
    end
end

local angle = 0

game:GetService("RunService").Heartbeat:Connect(function(deltaTime)
    angle = angle + (orbitSpeed * deltaTime)

    pcall(loadstring("head.Handle.CFrame = character.Head.CFrame"))
    pcall(loadstring('torso.Handle.CFrame = character.Torso.CFrame * CFrame.Angles(0, 17.28, 0)'))
    pcall(loadstring('leftarm.Handle.CFrame = character["Left Arm"].CFrame * CFrame.Angles(17.28, 0, 0)'))
    pcall(loadstring('leftleg.Handle.CFrame = character["Left Leg"].CFrame * CFrame.Angles(17.28, 0, 0)'))
    pcall(loadstring('rightleg.Handle.CFrame = character["Right Leg"].CFrame * CFrame.Angles(17.28, 0, 0)'))

    if equip == false then
        pcall(loadstring('rightarm.Handle.CFrame = character["Right Arm"].CFrame * CFrame.Angles(17.28, 0, 0)'))
        for i, tool in ipairs(tools) do
            if i ~= item then
                local toolAngle = angle + (i * (2 * math.pi) / 4)
                orbitItem(tool, toolAngle)
            end
        end
    else
        pcall(loadstring('rightarm.Handle.CFrame = character.Torso.CFrame:ToWorldSpace(CFrame.new(1.4, .5, -.5))'))

        for i, tool in ipairs(tools) do
            if i ~= item then
                local toolAngle = angle + (i * (2 * math.pi) / 4)
                orbitItem(tool, toolAngle)
            end
        end

        if item == 1 then
            pcall(loadstring("tools[1].Handle.CFrame = character.Torso.CFrame:ToWorldSpace(CFrame.new(1.4, .5, -2))"))
        elseif item == 2 then
            pcall(loadstring("tools[2].Handle.CFrame = character.Torso.CFrame:ToWorldSpace(CFrame.new(1.4, .5, -2))"))
        elseif item == 3 then
            pcall(loadstring("tools[3].Handle.CFrame = character.Torso.CFrame:ToWorldSpace(CFrame.new(1.4, .5, -2))"))
        elseif item == 4 then
            pcall(loadstring("tools[4].Handle.CFrame = character.Torso.CFrame:ToWorldSpace(CFrame.new(1.4, .5, -2))"))
        end
    end
end)
