local char = game.Players.LocalPlayer.Character
local root = char.HumanoidRootPart
local stairs = workspace.Stairs
local invis = Instance.new("Part")

-------- Load check --------
if root.Parent:FindFirstChild("Script Started") then
    val:remove()
    stop()
else
    _G.Enabled = true
    local checking = Instance.new("BoolValue")
    local val = Instance.new("IntValue")
    local vall = val.Value
    local screengui = Instance.new("ScreenGui")
    local button = Instance.new("TextButton")
    checking.Parent = root.Parent
    checking.Name = "Script Started"
    screengui.Parent = game.Players.LocalPlayer.PlayerGui
    button.Parent = screengui
    button.Position = UDim2.new(0.0100000007, 0, 0.939999998, 0)
    button.Size = UDim2.new(0, 200, 0, 50)
    button.BackgroundColor3 = Color3.new(1, 1, 1)
    button.BorderColor3 = Color3.new(0, 0, 0)
    button.TextColor3 = Color3.new(0, 0, 0)
    button.BorderSizePixel = 4
    button.TextScaled = true
    button.Text = "Disable script"

    local script = Instance.new('LocalScript', button)
    script.Parent.MouseButton1Click:Connect(function()
        if _G.Enabled == true then
            button.Text = "Enable script"
            _G.Enabled = false
        else
            button.Text = "Disable script"
            _G.Enabled = true
        end
    end)

    invis.Parent = workspace
    invis.Position = Vector3.new(0, 100000, 0)
    invis.Anchored = true
    invis.CanCollide = false
    invis.Transparency = 1

    game:GetService("StarterGui"):SetCore("SendNotification",{
    Title = "Stairs breaker is loaded!",
    Text = "Script by Tplay", 
    Duration = 3
    })
end
task.wait()
----------------------------

-------- Don't change this --------
vall = 52
root.CanCollide = false
-----------------------------------

-------- Script function --------
local function spawntpl()
    while true do
        vall = 52
        task.wait(0.02)
        root.CFrame = stairs[vall].CFrame
        task.wait(0.01)
        vall = 33
        task.wait(0.02)
        root.CFrame = stairs[vall].CFrame
        task.wait(0.02)
        vall = 30
        task.wait(0.02)
        root.CFrame = stairs[vall].CFrame
        task.wait(0.02)
        vall = 28
        task.wait(0.02)
        root.CFrame = stairs[vall].CFrame
        task.wait(0.02)
        vall = 22
        task.wait(0.02)
        root.CFrame = stairs[vall].CFrame
        task.wait(0.02)
        vall = 21
        task.wait(0.02)
        root.CFrame = stairs[vall].CFrame
        task.wait(0.02)
        vall = 20
        task.wait(0.02)
        root.CFrame = stairs[vall].CFrame
        task.wait(0.02)
        vall = 19
        task.wait(0.02)
        root.CFrame = stairs[vall].CFrame
        task.wait(0.02)
        vall = 18
        task.wait(0.02)
        root.CFrame = stairs[vall].CFrame
        task.wait(0.02)
        vall = 17
        task.wait(0.02)
        root.CFrame = stairs[vall].CFrame
        task.wait(0.02)
        vall = 16
        task.wait(0.02)
        root.CFrame = stairs[vall].CFrame
        task.wait(0.02)
        vall = 15
        task.wait(0.02)
        root.CFrame = stairs[vall].CFrame
        task.wait(0.02)
        vall = 14
        task.wait(0.02)
        root.CFrame = stairs[vall].CFrame
        task.wait(0.02)
        vall = 13
        task.wait(0.02)
        root.CFrame = stairs[vall].CFrame
        task.wait(0.02)
        vall = 12
        task.wait(0.02)
        root.CFrame = stairs[vall].CFrame
        task.wait(0.02)
        vall = 9
        task.wait(0.02)
        root.CFrame = stairs[vall].CFrame
        task.wait(0.02)
        vall = 8
        task.wait(0.02)
        root.CFrame = stairs[vall].CFrame
        task.wait(0.02)
        vall = 10
        task.wait(0.02)
        root.CFrame = stairs[vall].CFrame
        task.wait(0.02)
        vall = 3
        task.wait(0.02)
        root.CFrame = stairs[vall].CFrame
        task.wait(0.02)
        vall = 4
        task.wait(0.02)
        root.CFrame = stairs[vall].CFrame
        task.wait(0.02)
        vall = 5
        task.wait(0.02)
        root.CFrame = stairs[vall].CFrame
        task.wait(0.02)
        vall = 0
        task.wait(0.02)
        root.CFrame = stairs[vall].CFrame
        task.wait(0.02)
        vall = 1
        task.wait(0.02)
        root.CFrame = stairs[vall].CFrame
        task.wait(0.02)
        vall = 2
        task.wait(0.02)
        root.CFrame = stairs[vall].CFrame
        task.wait(0.02)
        vall = 7
        task.wait(0.02)
        root.CFrame = stairs[vall].CFrame
        task.wait(0.02)
        vall = 6
        task.wait(0.02)
        root.CFrame = stairs[vall].CFrame
        task.wait(0.02)
        vall = 11
        task.wait(0.02)
        root.CFrame = stairs[vall].CFrame
        task.wait(0.02)
        vall = 24
        task.wait(0.02)
        root.CFrame = stairs[vall].CFrame
        task.wait(0.02)
        vall = 23
        task.wait(0.02)
        root.CFrame = stairs[vall].CFrame
        task.wait(0.02)
        vall = 25
        task.wait(0.02)
        root.CFrame = stairs[vall].CFrame
        task.wait(0.02)
        vall = 26
        task.wait(0.02)
        root.CFrame = stairs[vall].CFrame
        task.wait(0.02)
        vall = 27
        task.wait(0.02)
        root.CFrame = stairs[vall].CFrame
        task.wait(0.02)
        vall = 29
        task.wait(0.02)
        root.CFrame = stairs[vall].CFrame
        task.wait(0.02)
        vall = 31
        task.wait(0.02)
        root.CFrame = stairs[vall].CFrame
        task.wait(0.02)
        vall = 32
        task.wait(0.02)
        root.CFrame = stairs[vall].CFrame
        task.wait(0.02)
        vall = 51
        task.wait(0.02)
        root.CFrame = stairs[vall].CFrame
        task.wait(0.02)
        vall = 72
        task.wait(0.02)
        root.CFrame = stairs[vall].CFrame
        task.wait(0.02)
        vall = 81
        task.wait(0.02)
        root.CFrame = stairs[vall].CFrame
        task.wait(0.02)
        vall = 91
        task.wait(0.02)
        root.CFrame = stairs[vall].CFrame
        task.wait(0.02)
        vall = 94
        task.wait(0.02)
        root.CFrame = stairs[vall].CFrame
        task.wait(0.02)
        vall = 102
        task.wait(0.02)
        root.CFrame = stairs[vall].CFrame
        task.wait(0.02)
        vall = 105
        task.wait(0.02)
        root.CFrame = stairs[vall].CFrame
        task.wait(0.02)
        vall = 106
        task.wait(0.02)
        root.CFrame = stairs[vall].CFrame
        while stairs["33"]:FindFirstChild("db") or stairs["30"]:FindFirstChild("db") or _G.Enabled == false do
            task.wait()
            root.CFrame = invis.CFrame
        end
        task.wait(0.065)
    end
end
---------------------------------

-------- Task spawn script --------
task.spawn(spawntpl)
-----------------------------------
