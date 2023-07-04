--[[
    Dex Dummy [ About ]
        Create a Dummy with your accessories
	*       please try to keep this script somewhat "silent"
	*       i do not want anybody over-using it
    *       this is a NOT a special-edition anymore since its on github (enjoy the cframe interpolation)
        PS: Too much netless MAY lag you.
    
    Dex Dummy [ Controls ]
    1 - 4 : Inventory Keys
    E : Enable / Disable Inventory Orbit

    @dex4tw - Discord & Roblox
]]--

-------------------------------------------------[ Variables & Functions ]-------------------------------------------------

-- Default Variables --
plr = game:GetService("Players").LocalPlayer
character = plr.Character
uis = game:GetService("UserInputService")

-- Rig Variables --
torso = character['LongStraightHair'];torso.Handle.Mesh:Destroy()
head = character['SidePonytail'];head.Handle.Mesh:Destroy()
leftarm = character["MessyHair"];leftarm.Handle.Mesh:Destroy()
rightarm = character["Pal Hair"];rightarm.Handle.Mesh:Destroy()
leftleg = character["Pink Hair"];leftleg.Handle.Mesh:Destroy()
rightleg = character["LavanderHair"];rightleg.Handle.Mesh:Destroy()
orbitRadius = 15
orbitSpeed = .35
orbitDistance = 5
angle = 0
distanceOffset = 0
equip = false
orbit = false
item = 0

tools = {
    [1] = character['WiseMysticalTree'],
    [2] = character["WeaponAccessory"],
    [3] = character['MeshPartAccessory'],
    [4] = character['PointyTowerHat']
}

-- General Functions --
function cLerp(part, targetCFrame, duration)
    return coroutine.wrap(function()
        local startTime = tick()
        local startCFrame = part.CFrame
        while tick() - startTime < duration do
            local elapsedTime = tick() - startTime
            local t = elapsedTime / duration
            local lerpedCFrame = startCFrame:Lerp(targetCFrame, t)
            local slerpedCFrame = CFrame.new(
                lerpedCFrame.Position,
                targetCFrame.Position
            ):lerp(lerpedCFrame, math.sin(t * math.pi * 0.5))

            part.CFrame = slerpedCFrame
            game:GetService("RunService").Heartbeat:Wait()
        end
        part.CFrame = targetCFrame
    end)
end

function orbitItem(item, angle)
    if orbit then
        local offset = Vector3.new(math.cos(angle) * orbitRadius, math.sin(angle) * orbitDistance, math.sin(angle) * orbitRadius)
        cLerp(item.Handle, character.HumanoidRootPart.CFrame:ToWorldSpace(CFrame.new(offset)), 0.15)()
    else
        cLerp(item.Handle, character.HumanoidRootPart.CFrame:ToWorldSpace(CFrame.new(0,-15,0)), 0.15)()
    end
end

-------------------------------------------------[ Patch Character ]-------------------------------------------------
if workspace:FindFirstChild("nilly") then workspace.nilly:Destroy() end
local me = Instance.new("Part", workspace)
me.Name = "nilly"
me.Size = Vector3.new(2,500,2)
me.Anchored = true
me.CanCollide = false
me.Transparency = .5
me.CFrame = character.HumanoidRootPart.CFrame
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



-------------------------------------------------[ Patch Accessories ]-------------------------------------------------
loadstring(game:HttpGet("https://raw.githubusercontent.com/dex4tw/RejectCharacterDeletions/main/AcessoryNetless.lua"))()
for i,v in pairs(character:GetChildren()) do
    if v:IsA("Accessory") then
        v.Handle:BreakJoints()
    end
end

-------------------------------------------------[ Dummy Controls ]-------------------------------------------------
uis.InputBegan:Connect(function(key, typing)
    if key.KeyCode == Enum.KeyCode.One and not typing then orbit = true wait(.4)
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
        wait(.5)
        orbit = false
    elseif key.KeyCode == Enum.KeyCode.Two and not typing then orbit = true wait(.4)
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
        wait(.5)
        orbit = false
    elseif key.KeyCode == Enum.KeyCode.Three and not typing then orbit = true wait(.4)
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
        wait(.5)
        orbit = false
    elseif key.KeyCode == Enum.KeyCode.Four and not typing then orbit = true wait(.4)
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
        wait(.5)
        orbit = false
    elseif key.KeyCode == Enum.KeyCode.E and not typing then
        if orbit == true then
            orbit = false
        else
            orbit = true
        end
    end
end)

-------------------------------------------------[ CFrame Interpolation ]-------------------------------------------------
game:GetService("RunService").Heartbeat:Connect(function(deltaTime)
    -- Orbit Variables --
    angle = angle + (orbitSpeed * deltaTime)
    distanceOffset = distanceOffset + (orbitSpeed * deltaTime)
    local distance = math.sin(distanceOffset) * orbitDistance

    -- Main Body Lerping --
    cLerp(head.Handle, character.Head.CFrame, 0)()
    cLerp(torso.Handle, character.Torso.CFrame * CFrame.Angles(0, 17.28, 0), 0)()
    cLerp(leftarm.Handle, character["Left Arm"].CFrame * CFrame.Angles(17.28, 0, 0), 0)()
    cLerp(leftleg.Handle, character["Left Leg"].CFrame * CFrame.Angles(17.28, 0, 0), 0)()
    cLerp(rightleg.Handle, character["Right Leg"].CFrame * CFrame.Angles(17.28, 0, 0), 0)()

    -- Inventory Lerping --
    if not equip then
        cLerp(rightarm.Handle, character["Right Arm"].CFrame * CFrame.Angles(17.28, 0, 0), 0)()
        cLerp(tools[4].Handle, character.Torso.CFrame:ToWorldSpace(CFrame.new(0, -15, 0)), 0.25)()
        cLerp(tools[3].Handle, character.Torso.CFrame:ToWorldSpace(CFrame.new(0, -15, 0)), 0.25)()
        cLerp(tools[2].Handle, character.Torso.CFrame:ToWorldSpace(CFrame.new(0, -15, 0)), 0.25)()
        cLerp(tools[1].Handle, character.Torso.CFrame:ToWorldSpace(CFrame.new(0, -15, 0)), 0.25)()
        for i, tool in ipairs(tools) do
            if i ~= item then
                local toolAngle = angle + (i * (2 * math.pi) / 4) -- Distribute the items evenly around the character
                orbitItem(tool, toolAngle)
            end
        end
    else
        cLerp(rightarm.Handle, character.Torso.CFrame:ToWorldSpace(CFrame.new(1.4, .5, -.5)), 0)()
        for i, tool in ipairs(tools) do
            if i ~= item then
                local toolAngle = angle + (i * (2 * math.pi) / 4)
                orbitItem(tool, toolAngle)
            end
        end

        local equippedTool = tools[item]
        if equippedTool then
            equipLerp = true
            if equipLerp then
                cLerp(equippedTool.Handle, character.HumanoidRootPart.CFrame:ToWorldSpace(CFrame.new(1.4, .5, -2)) * CFrame.Angles(0,0,0), 0.1)()
                wait(0.35)
                equipLerp = false
            else
                equippedTool.Handle.CFrame = character.HumanoidRootPart.CFrame:ToWorldSpace(CFrame.new(1.4, .5, -2))
            end
        else
            equipLerp = false
        end
    end
end)
