-- GUI Variables
local ScreenGui = Instance.new("ScreenGui")
local ToggleButton = Instance.new("TextButton")
local MainFrame = Instance.new("Frame")
local UICorner = Instance.new("UICorner")

-- Parent GUI to Player's Screen
ScreenGui.Parent = game.CoreGui

-- Toggle Button (Logo)
ToggleButton.Parent = ScreenGui
ToggleButton.Text = "🔧"
ToggleButton.Size = UDim2.new(0, 50, 0, 50)
ToggleButton.Position = UDim2.new(0.05, 0, 0.1, 0)
ToggleButton.BackgroundColor3 = Color3.fromRGB(255, 170, 0)
ToggleButton.TextScaled = true

-- Main Menu (Frame)
MainFrame.Parent = ScreenGui
MainFrame.Size = UDim2.new(0, 300, 0, 400)
MainFrame.Position = UDim2.new(0.3, 0, 0.2, 0)
MainFrame.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
MainFrame.Visible = false

-- Corner Styling for MainFrame
UICorner.Parent = MainFrame
UICorner.CornerRadius = UDim.new(0, 15)

-- Toggle Menu Visibility
local isVisible = false
ToggleButton.MouseButton1Click:Connect(function()
    isVisible = not isVisible
    MainFrame.Visible = isVisible
end)

-- Example of Adding Buttons to MainFrame
for i = 1, 5 do
    local Button = Instance.new("TextButton")
    Button.Parent = MainFrame
    Button.Size = UDim2.new(0.8, 0, 0.1, 0)
    Button.Position = UDim2.new(0.1, 0, 0.1 * (i - 1), 0)
    Button.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
    Button.TextColor3 = Color3.fromRGB(255, 255, 255)
    Button.Text = "Option " .. i
    Button.TextScaled = true
end
