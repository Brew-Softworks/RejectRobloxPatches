--[[
    Hat Orbit [ About ]
        Orbit your accessories
            * bleh
        PS: Too much netless MAY lag you.
    
    Hat Orbit [ Controls ]
        + : Add a number to the orbitAngle value
        - : Remove a number to the orbitAngle value

        chat '.angle [int]' to change the orbitAngle value

    @dex4tw - Discord & Roblox
]]--

-------------------------------------------------[ Variables & Functions ]-------------------------------------------------

-- Default Variables --
plr = game:GetService("Players").LocalPlayer
character = plr.Character
uis = game:GetService("UserInputService")

-- Rig Variables --
orbitRadius = 15
orbitSpeed = .35
orbitDistance = 0
angle = 0
distanceOffset = 33

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
    local offset = Vector3.new(math.cos(angle) * orbitRadius, math.sin(angle) * orbitDistance, math.sin(angle) * orbitRadius)
    cLerp(item.Handle, character.HumanoidRootPart.CFrame:ToWorldSpace(CFrame.new(offset)), 0.15)()
end

-------------------------------------------------[ Patch Character ]-------------------------------------------------
uis.InputBegan:Connect(function(key, typing)
    if key.KeyCode == Enum.KeyCode.Equals and not typing then
        orbitAngle = orbitAngle + 1
    elseif key.KeyCode == Enum.KeyCode.Minus and not typing then
        orbitAngle = orbitAngle - 1
    end
end)

-------------------------------------------------[ Patch Accessories ]-------------------------------------------------
loadstring(game:HttpGet("https://raw.githubusercontent.com/dex4tw/RejectCharacterDeletions/main/AccessoryNetless.lua"))()
for i,v in pairs(character:GetChildren()) do
    if v:IsA("Accessory") then
        v.Handle:BreakJoints()
    end
end
amount = 0
for i, tool in ipairs(character:GetChildren()) do
    if tool:IsA("Accessory") then
        amount = amount + 1
    end
end

plr.Character.humanoid.Died:Connect(function()
    hatOrbit:Disconnect()
end)

game:GetService("TextChatService").MessageReceived:Connect(function(msg)
    local message = msg.Text
	local author = msg.TextSource
	
    if author.UserId == plr.UserId then
        if string.find(message:lower(), '.angle') then
            orbitAngle = tonumber(string.split(message, ' ')[2])
        end
    end
end)

-------------------------------------------------[ CFrame Interpolation ]-------------------------------------------------
orbitAngle = 2
hatOrbit = game:GetService("RunService").Stepped:Connect(function(deltaTime, Step)
    angle = angle + (orbitSpeed * Step)
    distanceOffset = distanceOffset + (orbitSpeed * Step)
    local distance = math.sin(distanceOffset) * orbitDistance

    for i, tool in ipairs(character:GetChildren()) do
        if tool:IsA("Accessory") then
            local toolAngle = angle + (i * (orbitAngle * math.pi) / amount) -- Distribute the items evenly around the character
            orbitItem(tool, toolAngle)
        end
    end
end)
