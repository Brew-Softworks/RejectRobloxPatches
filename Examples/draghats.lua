--[[
    Untitled Scrispt [ About ]
]]--

-------------------------------------------------[ Variables & Functions ]-------------------------------------------------

-- Default Variables --
plr = game:GetService("Players").LocalPlayer
character = plr.Character
uis = game:GetService("UserInputService")

hats = {}

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
hatFolder = Instance.new("Folder", workspace)
hatFolder.Name = "hatFolder"
loadstring(game:HttpGet("https://raw.githubusercontent.com/dex4tw/RejectCharacterDeletions/main/AccessoryNetless.lua"))()
index= 0
for i,v in pairs(character:GetChildren()) do
    if v:IsA("Accessory") then
        index=index+1
        v.Handle:BreakJoints()
        local part = v.Handle:Clone()
        part.Size = part.Size * 3
        part:ClearAllChildren()
        part.Parent = hatFolder
        part.Name = v.Name
        part.Transparency = 1
        part.CanCollide = true
        part.Massless = true
        part.CFrame = plr.Character.HumanoidRootPart.CFrame:ToWorldSpace(CFrame.new(0,0,-5))
        local wl = Instance.new("StringValue", part)
        wl.Name = "isHat"
        table.insert(hats, index, v)
    end
end
plr.Character.Humanoid.Died:Connect(function()
    if hatFolder then hatFolder:Destroy() end
    toHandle:Disconnect()
end)

getPart = nil

plr:GetMouse().Button1Down:Connect(function()
    getPart = plr:GetMouse().Target
    if getPart:FindFirstChild('isHat') then
        partHighlight = Instance.new("Highlight", getPart)
        partHighlight.Adornee = getPart
        partHighlight.OutlineColor = Color3.fromRGB(42, 163, 179)
        partHighlight.OutlineTransparency = 0
        partHighlight.FillTransparency = 1
        plr:GetMouse().TargetFilter = getPart
        movePart = game:GetService("RunService").Stepped:Connect(function()
            getPart.CFrame = CFrame.new(plr:GetMouse().Hit.p) * CFrame.new(0,1,0)
        end)
    end
end)

plr:GetMouse().Button1Up:Connect(function()
	plr:GetMouse().TargetFilter = nil
    if movePart then movePart:Disconnect() end
    if partHighlight then partHighlight:Destroy() end
end)

-------------------------------------------------[ CFrame Interpolation ]-------------------------------------------------
toHandle = game:GetService("RunService").Heartbeat:Connect(function(deltaTime)
    for index, hat in pairs(hats) do
        cLerp(hat.Handle, hatFolder[hat.Name].CFrame, 0.2)()
    end
end)
