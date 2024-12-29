-- Lấy thông tin người chơi
local player = game.Players.LocalPlayer
local screenGui = Instance.new("ScreenGui")
screenGui.Parent = player:WaitForChild("PlayerGui")

-- Tạo Frame cho menu
local menuFrame = Instance.new("Frame")
menuFrame.Size = UDim2.new(0, 500, 0, 300)
menuFrame.Position = UDim2.new(0.5, -250, 0.5, -150)
menuFrame.BackgroundColor3 = Color3.fromRGB(255, 0, 0) -- Màu nền menu là đỏ
menuFrame.BorderSizePixel = 5
menuFrame.BorderColor3 = Color3.fromRGB(0, 255, 0) -- Viền xanh lá cây
menuFrame.Visible = false -- Ẩn menu lúc ban đầu
menuFrame.Parent = screenGui

-- Tạo phần tiêu đề menu (Thông tin tên người chơi)
local headerFrame = Instance.new("Frame")
headerFrame.Size = UDim2.new(1, 0, 0, 40)
headerFrame.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
headerFrame.Parent = menuFrame

local playerNameLabel = Instance.new("TextLabel")
playerNameLabel.Size = UDim2.new(0, 200, 1, 0)
playerNameLabel.Position = UDim2.new(0, 10, 0, 0)
playerNameLabel.Text = "Player: " .. player.Name
playerNameLabel.TextSize = 18
playerNameLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
playerNameLabel.BackgroundTransparency = 1
playerNameLabel.Parent = headerFrame

-- Tạo nút ẩn và đóng menu phía bên phải
local closeButton = Instance.new("TextButton")
closeButton.Size = UDim2.new(0, 50, 0, 30)
closeButton.Position = UDim2.new(1, -60, 0, 5)
closeButton.Text = "Close"
closeButton.TextSize = 14
closeButton.TextColor3 = Color3.fromRGB(255, 255, 255)
closeButton.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
closeButton.Parent = headerFrame

local hideButton = Instance.new("TextButton")
hideButton.Size = UDim2.new(0, 50, 0, 30)
hideButton.Position = UDim2.new(1, -120, 0, 5)
hideButton.Text = "Hide"
hideButton.TextSize = 14
hideButton.TextColor3 = Color3.fromRGB(255, 255, 255)
hideButton.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
hideButton.Parent = headerFrame

-- Tạo phần chức năng chính bên trái và nút sử dụng bên phải
local leftFrame = Instance.new("Frame")
leftFrame.Size = UDim2.new(0, 200, 1, -40)  -- Chiếm phần bên trái của menu
leftFrame.Position = UDim2.new(0, 0, 0, 40)
leftFrame.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
leftFrame.Parent = menuFrame

local rightFrame = Instance.new("Frame")
rightFrame.Size = UDim2.new(0, 200, 1, -40)  -- Chiếm phần bên phải của menu
rightFrame.Position = UDim2.new(0, 200, 0, 40)
rightFrame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
rightFrame.Parent = menuFrame

-- Tạo các nút chức năng bên trái
local function createFunctionButton(name, position, callback)
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, 0, 0, 50)
    button.Position = position
    button.Text = name
    button.TextSize = 18
    button.BackgroundColor3 = Color3.fromRGB(80, 80, 80)
    button.TextColor3 = Color3.fromRGB(255, 255, 255)
    button.Parent = leftFrame

    button.MouseButton1Click:Connect(callback)
end

createFunctionButton("Bring Mob", UDim2.new(0, 0, 0, 0), function()
    print("Bring Mob activated!")
    -- Thêm code thực hiện Bring Mob ở đây
end)

createFunctionButton("Fast Attack", UDim2.new(0, 0, 0, 60), function()
    print("Fast Attack activated!")
    -- Thêm code thực hiện Fast Attack ở đây
end)

createFunctionButton("Teleport", UDim2.new(0, 0, 0, 120), function()
    print("Teleport activated!")
    -- Thêm code thực hiện Teleport ở đây
end)

-- Tạo các nút sử dụng chức năng bên phải
local function createUseButton(name, position, callback)
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, 0, 0, 50)
    button.Position = position
    button.Text = name
    button.TextSize = 18
    button.BackgroundColor3 = Color3.fromRGB(100, 100, 100)
    button.TextColor3 = Color3.fromRGB(255, 255, 255)
    button.Parent = rightFrame

    button.MouseButton1Click:Connect(callback)
end

createUseButton("Activate", UDim2.new(0, 0, 0, 0), function()
    print("Use function activated!")
    -- Thêm code thực hiện chức năng tại đây
end)

createUseButton("De-Activate", UDim2.new(0, 0, 0, 60), function()
    print("De-Activate function!")
    -- Thêm code tắt chức năng tại đây
end)

-- Tạo nút mở menu (dùng hình ảnh)
local openButton = Instance.new("ImageButton")
openButton.Size = UDim2.new(0, 50, 0, 50)
openButton.Position = UDim2.new(0, 10, 0, 10)
openButton.Image = "rbxassetid://1234567890"  -- Thay ID hình ảnh của bạn ở đây
openButton.BackgroundTransparency = 1
openButton.Parent = screenGui

openButton.MouseButton1Click:Connect(function()
    menuFrame.Visible = true  -- Hiện menu khi nhấn nút mở menu
end)

-- Nút ẩn menu
hideButton.MouseButton1Click:Connect(function()
    menuFrame.Visible = false
end)

-- Nút đóng menu
closeButton.MouseButton1Click:Connect(function()
    menuFrame:Destroy()  -- Đóng hoàn toàn menu khi nhấn đóng
end)
