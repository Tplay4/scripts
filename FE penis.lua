local character = game.Players.LocalPlayer.Character
local backpack = game.Players.LocalPlayer.Backpack
local dontchangethisvalue = 0.5
local number = #game.Players.LocalPlayer.Backpack:GetChildren()
local items = {}
for _,tool in ipairs(character:GetChildren()) do
    if tool:IsA("Tool") then
        tool.Parent = backpack
    end
end
for i,v in ipairs(backpack:GetChildren()) do
    if #backpack:GetChildren() < number then
        return error("You don't have "..tostring(number).." item(s) in your backpack")
    end
    if #items < number then
        table.insert(items,v)
    end
end
for _,tool in ipairs(items) do
    items[table.find(items,tool)].Grip = CFrame.new(1.5, dontchangethisvalue, 1.25, 1, 0, -0, 0, 0, -1, 0, 1, -0)
    dontchangethisvalue = dontchangethisvalue-1
end
task.wait(0.25)
for _,tool in ipairs(items) do
    tool.Parent = character
end
while wait() do
    for _,tool in ipairs(items) do
        if tool.Parent ~= character then
            tool.Parent = character
        end
    end
    if character.Humanoid.Health == 0 then
        break
    end
end
