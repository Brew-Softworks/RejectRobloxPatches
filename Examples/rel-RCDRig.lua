--[[
    Remote Control Dummy
        Create a Dummy with your accessories,
        uses RCD Death Bypass
    @dex4tw - Discord & Roblox

    [ Required Accessories ]
        https://www.roblox.com/catalog/13290917810/Seated-Legs-For-Go-Kart
        https://www.roblox.com/catalog/4819740796/Robox
        https://www.roblox.com/catalog/13425773387/Classic-Zombie-Arms
        https://www.roblox.com/catalog/10715310646/Faceless-Head-Skin-Color

    [ Dummy Controls ]
        WASD - Movement
        Space - Jump
        C - Sit
        Z - Tween Teleport

    You are encouraged to change the accessories used, aslong as you know how to,
    the accessories CFraming is found at the end of the script.

    btw, theres alot of "jitter" or "shaking" most likely due to the way i use
    cframe, so while it wont look shaky 2u, other people will see it shaking.
    you can most likely fix this by modifying my code. that's y it's open source

    don't be a skid (unless your learning) <3
]]--

-------------------------------------------------[ Variables & Functions ]-------------------------------------------------
plr = game:GetService("Players").LocalPlayer
character = plr.Character
uis = game:GetService("UserInputService")

-------------------------------------------------[ Reanimate Dummy ]-------------------------------------------------
fakeroot = Instance.new("Part", workspace)
fakeroot.Size = character["HumanoidRootPart"].Size
fakeroot.CFrame = character["HumanoidRootPart"].CFrame
fakeroot.Name = "dRoot"
fakeroot.CanCollide = false
fakeroot.Transparency = .5
fakeroot.Anchored = true
workspace.CurrentCamera.CameraSubject = character['Faceless Head'].Handle
loadstring(game:HttpGet("https://raw.githubusercontent.com/dex4tw/RejectCharacterDeletions/main/RCDBypass.lua"))()

-------------------------------------------------[ Dummy Control ]-------------------------------------------------
holdingw = false -- Checks if your holding a key, allows for movement of Dummy
holdinga = false
holdings = false
holdingd = false
jumping = false
sitting = false
uis.InputBegan:Connect(function(key, typing)
    if not typing then
        if key.KeyCode == Enum.KeyCode.W and not sitting then
            holdingw = true
            while holdingw == true do
                fakeroot.Position = fakeroot.Position + workspace.CurrentCamera.CFrame.LookVector * .5
                wait()
            end
        elseif key.KeyCode == Enum.KeyCode.S and not sitting then
                holdings = true
            while holdings == true do 
                fakeroot.Position = fakeroot.Position - workspace.CurrentCamera.CFrame.LookVector * .5
                fakeroot.CFrame = CFrame.new(fakeroot.Position) * CFrame.Angles(0,math.atan2(workspace.CurrentCamera.CFrame.LookVector.X, workspace.CurrentCamera.CFrame.LookVector.Z),0)
                wait()
            end
        elseif key.KeyCode == Enum.KeyCode.A and not sitting then
                holdinga = true
            while holdinga == true do 
                fakeroot.Position = fakeroot.Position - workspace.CurrentCamera.CFrame.RightVector * .5
                wait()
            end
        elseif key.KeyCode == Enum.KeyCode.D and not sitting then
                holdingd = true
            while holdingd == true do 
                fakeroot.Position = fakeroot.Position + workspace.CurrentCamera.CFrame.RightVector * .5
                wait()
            end
        elseif key.KeyCode == Enum.KeyCode.C then
            if not sitting then
                sitting = true
            else
                sitting = false
            end
        elseif key.KeyCode == Enum.KeyCode.Z then
            local tweenInfo = TweenInfo.new(1, Enum.EasingStyle.Linear)
            local tween = game:GetService("TweenService"):Create(fakeroot, tweenInfo, {Position = game.Players.LocalPlayer:GetMouse().Hit.p})
            tween:Play()
        elseif key.KeyCode == Enum.KeyCode.Space then -- Really bad jump method
            coroutine.resume(coroutine.create(function()
                jumping = true
                sitting = false
                fakeroot.Position = fakeroot.Position + Vector3.new(0,1,0)
                wait(.01)
                fakeroot.Position = fakeroot.Position + Vector3.new(0,1,0)
                wait(.01)
                fakeroot.Position = fakeroot.Position + Vector3.new(0,1,0)
                wait(.01)
                fakeroot.Position = fakeroot.Position + Vector3.new(0,1,0)
                wait(.01)
                fakeroot.Position = fakeroot.Position + Vector3.new(0,1,0)
                wait(.01)
                fakeroot.Position = fakeroot.Position + Vector3.new(0,1,0)
                wait(.01)
                fakeroot.Position = fakeroot.Position + Vector3.new(0,-1,0)
                wait(.01)
                fakeroot.Position = fakeroot.Position + Vector3.new(0,-1,0)
                wait(.01)
                fakeroot.Position = fakeroot.Position + Vector3.new(0,-1,0)
                wait(0.1)
                fakeroot.Position = fakeroot.Position + Vector3.new(0,-1,0)
                wait(.01)
                fakeroot.Position = fakeroot.Position + Vector3.new(0,-1,0)
                wait(.01)
                fakeroot.Position = fakeroot.Position + Vector3.new(0,-1,0)
                jumping = false
            end))
        end
    end
end)

uis.InputEnded:Connect(function(key)
    if key.KeyCode == Enum.KeyCode.W then
        holdingw = false
    elseif key.KeyCode == Enum.KeyCode.A then
        holdinga = false
    elseif key.KeyCode == Enum.KeyCode.S then
        holdings = false
    elseif key.KeyCode == Enum.KeyCode.D then
        holdingd = false
    end
end)

-------------------------------------------------[ Dummy Commands ]-------------------------------------------------
game.Players.LocalPlayer.Chatted:Connect(function(message)
    if message:lower() == ".end" then
        
    end
end)

-------------------------------------------------[ Patch Dummy ]-------------------------------------------------
initialY = fakeroot.Position.Y
game:GetService("RunService").Heartbeat:Connect(function()
    if not jumping then
        fakeroot.CFrame = CFrame.new(fakeroot.Position) * CFrame.Angles(0, math.atan2(-workspace.CurrentCamera.CFrame.LookVector.X, -workspace.CurrentCamera.CFrame.LookVector.Z), 0)
        fakeroot.Position = Vector3.new(fakeroot.Position.X, initialY, fakeroot.Position.Z)
    else
        character['ZombieArms'].Handle.CFrame = fakeroot.CFrame:ToWorldSpace(CFrame.new(0,1.5,-.325)) * CFrame.Angles(0,4.71,0) -- Arms
    end
    character['Faceless Head'].Handle.CFrame = fakeroot.CFrame:ToWorldSpace(CFrame.new(0,1.5,0)) -- Head
    character['Seated Legs (For Go Kart)'].Handle.CFrame = fakeroot.CFrame:ToWorldSpace(CFrame.new(0,-1.95,0)) * CFrame.Angles(7.86,4.71,0) -- Legs
    character['MeshPartAccessory'].Handle.CFrame = fakeroot.CFrame:ToWorldSpace(CFrame.new(0,0,0)) * CFrame.Angles(0,0,-8.1) -- Torso
    if not sitting then
        if holdingw or holdinga or holdings or holdingd then 
            character['ZombieArms'].Handle.CFrame = fakeroot.CFrame:ToWorldSpace(CFrame.new(0,.5,-.325)) * CFrame.Angles(0,4.71,0) -- Arms
        else
            character['ZombieArms'].Handle.CFrame = fakeroot.CFrame:ToWorldSpace(CFrame.new(0,0,0)) * CFrame.Angles(7.86,4.71,0) -- Arms
        end
    else
        holdingw = false
        holdinga = false
        holdings = false
        holdingd = false
        fakeroot.Position = fakeroot.Position + Vector3.new(0,-1,0)
        character['Faceless Head'].Handle.CFrame = fakeroot.CFrame:ToWorldSpace(CFrame.new(0,1.5,0)) -- Head
        character['MeshPartAccessory'].Handle.CFrame = fakeroot.CFrame:ToWorldSpace(CFrame.new(0,0,0)) * CFrame.Angles(0,0,-8.1) -- Torso
        character['ZombieArms'].Handle.CFrame = fakeroot.CFrame:ToWorldSpace(CFrame.new(0,.5,-.325)) * CFrame.Angles(0,4.71,0) -- Arms
        character['Seated Legs (For Go Kart)'].Handle.CFrame = fakeroot.CFrame:ToWorldSpace(CFrame.new(0,-1.5,-.45)) * CFrame.Angles(0,4.71,0) -- Legs
    end
end)
