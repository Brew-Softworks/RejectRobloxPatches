--[[
    Drop Hats [ About ]
	drops yoru characters accessories
]]--

-------------------------------------------------[ Variables & Functions ]-------------------------------------------------

-- Default Variables --
plr = game:GetService("Players").LocalPlayer
character = plr.Character

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
loadstring(game:HttpGet("https://raw.githubusercontent.com/dex4tw/RejectCharacterDeletions/main/AccessoryNetless.lua"))()
index= 0
for i,v in pairs(character:GetChildren()) do
    if v:IsA("Accessory") then
        index=index+1
        v.Handle:BreakJoints()
        local part = Instance.new("Part", workspace)
        part.Name = v.Name
        part.Size = Vector3.new(5,5,5)
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
    for i,v in pairs(workspace:GetChildren()) do
        if v:IsA("Part") and v:FindFirstChild('isHat') then
            v:Destroy()
        end
    end
end)

-------------------------------------------------[ CFrame Interpolation ]-------------------------------------------------
game:GetService("RunService").Heartbeat:Connect(function(deltaTime)
    for index, hat in pairs(hats) do
        cLerp(hat.Handle, workspace[hat.Name].CFrame, 0)()
    end
end)
