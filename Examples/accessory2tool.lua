--[[
    Accessory to Tool [ About ]
        Convert your accessory to a tool
	*       only use on game withs rejectcharacterdeletions off
        PS: Too much netless MAY lag you.
    
    Accessory to Tool [ Controls ]
        use your tools...

    @dex4tw - Discord & Roblox
]]--

-------------------------------------------------[ Variables & Functions ]-------------------------------------------------

-- Default Variables --
plr = game:GetService("Players").LocalPlayer
character = plr.Character
uis = game:GetService("UserInputService")

tools = {}

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

-------------------------------------------------[ Patch Accessories ]-------------------------------------------------
loadstring(game:HttpGet("https://raw.githubusercontent.com/dex4tw/RejectCharacterDeletions/main/AccessoryNetless.lua"))()
index = 0
for i,v in pairs(character:GetChildren()) do
    if v:IsA("Accessory") then
        index=index+1
        table.insert(tools, index, v)
    end
end

for index, tool in pairs(tools) do
    local newTool = Instance.new("Tool", game.Players.LocalPlayer.Backpack)
    newTool.Name = tool.Name
    newTool.CanBeDropped = false
    local Handle = Instance.new("Part", newTool)
    Handle.Name = "Handle"
    local toolIndex = Instance.new("IntValue", newTool)
    toolIndex.Value = index
    toolIndex.Name = "toolIndex"
    Handle.CanCollide = false
    Handle.Transparency = 1
    Handle.CFrame = CFrame.new(0,5,0)
end

for i,v in pairs(character:GetChildren()) do
    if v:IsA("Accessory") then
        v.Handle:BreakJoints()
    end
end

-------------------------------------------------[ CFrame Interpolation ]-------------------------------------------------
character.ChildAdded:Connect(function(child)
    if child:IsA("Tool") and child:FindFirstChild("toolIndex") then
        equip = game:GetService("RunService").Heartbeat:Connect(function(deltaTime)
            cLerp(tools[child.toolIndex.Value].Handle, character.HumanoidRootPart.CFrame:ToWorldSpace(CFrame.new(1.4, .5, -2)) * CFrame.Angles(0,0,0), 0)()
        end)
    end
end)

character.ChildRemoved:Connect(function(child)
    if child:IsA("Tool") and child:FindFirstChild("toolIndex") then
        if equip then equip:Disconnect() end
    end
end)
