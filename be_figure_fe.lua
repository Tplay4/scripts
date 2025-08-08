local figure = workspace:FindFirstChild("FigureRig", true)

if not figure and not figure:FindFirstChild("Root") and not isnetworkowner(figure.Root) then return end

game.Players.LocalPlayer.Character = figure
workspace.Camera:Destroy()

local RS = game:GetService("RunService")
local UIS = game:GetService("UserInputService")
local KC = Enum.KeyCode
local root = figure.Root
local GC = figure.ControllerManager.GroundController
local camattach = Instance.new("Attachment", root)
camattach.Name = "CamAttach"
local camera = workspace:WaitForChild("Camera")
local w,r,l

local lv = Instance.new("LinearVelocity", root)
local bav = Instance.new("BodyAngularVelocity", root)
lv.Enabled = false
lv.ForceLimitMode = "PerAxis"
lv.MaxAxesForce = Vector3.new(1000000,0,1000000)
lv.RelativeTo = "Attachment0"
lv.VectorVelocity = Vector3.new(0,0,-10)
lv.Attachment0 = root.Attachment
lv.Attachment1 = root.CharAttach
bav.MaxTorque = Vector3.new(0,4000,0)
bav.AngularVelocity = Vector3.zero

RS.RenderStepped:Connect(function()
    local rootcframe = root.CFrame
    rootcframe *= CFrame.new(0,0,12)
    camera.CFrame = rootcframe
    GC.MoveSpeedFactor = 0
    GC.TurnSpeedFactor = 0
end)

UIS.InputBegan:Connect(function(input)
    if input.KeyCode == KC.W then
        w = true
        while w do
            lv.Enabled = true
            RS.RenderStepped:Wait()
        end
    end
    if input.KeyCode == KC.Right then
        r = true
        while r do
            bav.AngularVelocity = Vector3.new(0,-2.5,0)
            RS.RenderStepped:Wait()
        end
    end
    if input.KeyCode == KC.Left then
        l = true
        while l do
            bav.AngularVelocity = Vector3.new(0,2.5,0)
            RS.RenderStepped:Wait()
        end
    end
    if input.KeyCode == KC.Space then
        root.AssemblyLinearVelocity = Vector3.new(root.AssemblyLinearVelocity.X, 30, root.AssemblyLinearVelocity.Z)
    end
    if input.KeyCode == KC.RightShift then
        lv.VectorVelocity = Vector3.new(0,0,-17.5)
    end
end)

UIS.InputEnded:Connect(function(input)
    if input.KeyCode == KC.W then
        w = false
        RS.RenderStepped:Wait()
        lv.Enabled = false
    end
    if input.KeyCode == KC.Right then
        r = false
        RS.RenderStepped:Wait()
        bav.AngularVelocity = Vector3.new(0,0,0)
    end
    if input.KeyCode == KC.Left then
        l = false
        RS.RenderStepped:Wait()
        bav.AngularVelocity = Vector3.new(0,0,0)
    end
    if input.KeyCode == KC.RightShift then
        lv.VectorVelocity = Vector3.new(0,0,-10)
    end
end)