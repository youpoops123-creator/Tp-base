local player = game.Players.LocalPlayer

local base1 = workspace:WaitForChild("Base1")
local base2 = workspace:WaitForChild("Base2")

local function teleport(part)
    local char = player.Character or player.CharacterAdded:Wait()
    local hrp = char:WaitForChild("HumanoidRootPart")
    hrp.CFrame = part.CFrame + Vector3.new(0,3,0)
end

script.Parent.Base1Btn.MouseButton1Click:Connect(function()
    teleport(base1)
end)

script.Parent.Base2Btn.MouseButton1Click:Connect(function()
    teleport(base2)
end)
