-- Tạo GUI Menu
local player = game.Players.LocalPlayer
local screenGui = Instance.new("ScreenGui")
screenGui.Parent = player:WaitForChild("PlayerGui")

-- Cấu hình menu
local menuFrame = Instance.new("Frame")
menuFrame.Size = UDim2.new(0, 300, 0, 400)
menuFrame.Position = UDim2.new(0.5, -150, 0.5, -200)
menuFrame.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
menuFrame.BorderSizePixel = 0
menuFrame.Parent = screenGui

-- Tạo header cho menu
local menuHeader = Instance.new("TextLabel")
menuHeader.Size = UDim2.new(1, 0, 0, 50)
menuHeader.Text = "Blox Fruits Hub"
menuHeader.TextColor3 = Color3.fromRGB(255, 255, 255)
menuHeader.TextSize = 24
menuHeader.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
menuHeader.TextAlign = Enum.TextAlign.Center
menuHeader.Parent = menuFrame

-- Tạo các nút trong menu
local function createButton(name, position, callback)
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, 0, 0, 50)
    button.Position = position
    button.Text = name
    button.TextSize = 18
    button.BackgroundColor3 = Color3.fromRGB(80, 80, 80)
    button.TextColor3 = Color3.fromRGB(255, 255, 255)
    button.Parent = menuFrame

    button.MouseButton1Click:Connect(callback)
end

-- Tạo các nút chức năng
createButton("Bring Mob", UDim2.new(0, 0, 0, 60), function()
    -- Thêm code cho tính năng Bring Mob
    print("Bring Mob Activated")
end)

createButton("Fast Attack", UDim2.new(0, 0, 0, 120), function()
    -- Thêm code cho tính năng Fast Attack
    print("Fast Attack Activated")
end)

createButton("Close Menu", UDim2.new(0, 0, 0, 180), function()
    screenGui:Destroy() -- Đóng menu
end)

-- Tạo hiệu ứng hover cho nút
for _, button in pairs(menuFrame:GetChildren()) do
    if button:IsA("TextButton") then
        button.MouseEnter:Connect(function()
            button.BackgroundColor3 = Color3.fromRGB(100, 100, 100)
        end)
        button.MouseLeave:Connect(function()
            button.BackgroundColor3 = Color3.fromRGB(80, 80, 80)
        end)
    end
end
