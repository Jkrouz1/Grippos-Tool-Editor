local LocalPlayer = game:GetService("Players").LocalPlayer
local UserInputService = game:GetService("UserInputService")

local screenGui = Instance.new("ScreenGui")
screenGui.Parent = game.Players.LocalPlayer.PlayerGui
screenGui.Name = "ToolGripEditor"
screenGui.ResetOnSpawn = false

local ui = Instance.new("Frame")
ui.Parent = screenGui
ui.Name = "uitop"
ui.Size = UDim2.new(0, 260, 0, 20)
ui.Position = UDim2.new(0.5, 96, 0.200000003, -11)
ui.AnchorPoint = Vector2.new(0.5, 0.5)
ui.BackgroundColor3 = Color3.new(0.15, 0.15, 0.15)
ui.BorderColor3 = Color3.new(0.3, 0.3, 0.3)
ui.BorderSizePixel = 2
ui.Active = true
ui.Draggable = true
ui.ZIndex = 1

UICorner = Instance.new("UICorner")
UICorner.Parent = ui
UICorner.CornerRadius = UDim.new(0, 8)

UIC = Instance.new("UIStroke")
UIC.Parent = ui
UIC.ApplyStrokeMode = "Border"
UIC.Color = Color3.new(77, 77, 77)
UIC.LineJoinMode = "Round"
UIC.Thickness = 1
UIC.Transparency = 0

local Close = Instance.new("TextButton")
Close.Parent = ui
Close.Name = "XXX"
Close.Size = UDim2.new(0.150000006, 0, 0.899999976, 0)
Close.Position = UDim2.new(0.999000013, 0, 0.5, 0)
Close.AnchorPoint = Vector2.new(1, 0.5)
Close.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
Close.BorderColor3 = Color3.new(0.4, 0.4, 0.4)
Close.BorderSizePixel = 2
Close.TextColor3 = Color3.new(1, 1, 1)
Close.TextSize = 16
Close.Font = Enum.Font.GothamBold
Close.Text = "X"
Close.MouseButton1Click:Connect(function()
	screenGui:Destroy()
end)


UICorner = Instance.new("UICorner")
UICorner.Parent = Close
UICorner.CornerRadius = UDim.new(0, 8)

UIC = Instance.new("UIStroke")
UIC.Parent = Close
UIC.ApplyStrokeMode = "Border"
UIC.Color = Color3.new(77, 77, 77)
UIC.LineJoinMode = "Round"
UIC.Thickness = 1
UIC.Transparency = 0

local tlab = Instance.new("TextLabel")
tlab.Parent = ui
tlab.Name = "tlab"
tlab.Size = UDim2.new(1, 0, 1, 0)
tlab.Position = UDim2.new(-0.1, 0, 0, 0)
tlab.BackgroundColor3 = Color3.new(0, 0, 0)
tlab.BackgroundTransparency = 1
tlab.BorderColor3 = Color3.new(0, 0, 0)
tlab.BorderSizePixel = 1
tlab.TextColor3 = Color3.new(1, 1, 1)
tlab.TextScaled = true
tlab.Font = Enum.Font.Cartoon
tlab.Text = "Tool Grip Editor"
tlab.TextXAlignment = Enum.TextXAlignment.Center
tlab.TextYAlignment = Enum.TextYAlignment.Center

local gui = Instance.new("Frame")
gui.Parent = ui
gui.Name = "gui"
gui.Size = UDim2.new(1.00999999, 0, 10.9000015, 0)
gui.Position = UDim2.new(0.5, 0, 5.39999962, 0)
gui.AnchorPoint = Vector2.new(0.5, 0.5)
gui.BackgroundColor3 = Color3.new(0.15, 0.15, 0.15)
gui.BorderColor3 = Color3.new(0.3, 0.3, 0.3)
gui.BorderSizePixel = 2
gui.ZIndex = 0

UICorner = Instance.new("UICorner")
UICorner.Parent = gui
UICorner.CornerRadius = UDim.new(0, 17)

clf = false
local Clo = Instance.new("TextButton")
Clo.Parent = ui
Clo.Name = "---"
Clo.Size = UDim2.new(0.150000006, 0, 0.899999976, 0)
Clo.Position = UDim2.new(0.839999914, 0, 0.5, 0)
Clo.AnchorPoint = Vector2.new(1, 0.5)
Clo.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
Clo.BorderColor3 = Color3.new(0.4, 0.4, 0.4)
Clo.BorderSizePixel = 2
Clo.TextColor3 = Color3.new(1, 1, 1)
Clo.TextSize = 24
Clo.Font = Enum.Font.GothamBold
Clo.Text = "-"
Clo.MouseButton1Click:Connect(function()
	if clf == false then
		gui.Visible = true
		Clo.Text = "-"
		clf = true
	else
		gui.Visible = false
		Clo.Text = "+"
		clf = false
	end
end)

UICorner = Instance.new("UICorner")
UICorner.Parent = Clo
UICorner.CornerRadius = UDim.new(0, 8)

UIC = Instance.new("UIStroke")
UIC.Parent = Clo
UIC.ApplyStrokeMode = "Border"
UIC.Color = Color3.new(77, 77, 77)
UIC.LineJoinMode = "Round"
UIC.Thickness = 1
UIC.Transparency = 0

local posLabel = Instance.new("TextLabel")
posLabel.Parent = gui
posLabel.Name = "posLabel"
posLabel.Size = UDim2.new(1, 0, 0.08, 0)
posLabel.Position = UDim2.new(0, 0, 0.1, 0)
posLabel.BackgroundColor3 = Color3.new(0, 0, 0)
posLabel.BackgroundTransparency = 1
posLabel.BorderColor3 = Color3.new(0, 0, 0)
posLabel.BorderSizePixel = 1
posLabel.TextColor3 = Color3.new(0.8, 0.8, 0.8)
posLabel.TextScaled = true
posLabel.Font = Enum.Font.SourceSansBold
posLabel.Text = "Position (XYZ)"
posLabel.TextXAlignment = Enum.TextXAlignment.Left
posLabel.TextYAlignment = Enum.TextYAlignment.Center

local Xpos = Instance.new("TextBox")
Xpos.Parent = gui
Xpos.Name = "Xpos"
Xpos.Size = UDim2.new(0.3, 0, 0.08, 0)
Xpos.Position = UDim2.new(0.05, 0, 0.18, 0)
Xpos.BackgroundColor3 = Color3.new(0.9, 0.9, 0.9)
Xpos.BorderColor3 = Color3.new(0.2, 0.2, 0.2)
Xpos.BorderSizePixel = 1
Xpos.TextColor3 = Color3.new(0, 0, 0)
Xpos.TextScaled = true
Xpos.TextSize = 12
Xpos.PlaceholderText = "X"
Xpos.Font = Enum.Font.SourceSans
Xpos.TextXAlignment = Enum.TextXAlignment.Center
Xpos.TextYAlignment = Enum.TextYAlignment.Center

local XupButton = Instance.new("TextButton")
XupButton.Parent = gui
XupButton.Name = "XupButton"
XupButton.Size = UDim2.new(0.1, 0, 0.08, 0)
XupButton.Position = UDim2.new(0.35, 0, 0.18, 0)
XupButton.BackgroundColor3 = Color3.new(0.25, 0.25, 0.25)
XupButton.TextColor3 = Color3.new(1, 1, 1)
XupButton.TextScaled = true
XupButton.Font = Enum.Font.SourceSansBold
XupButton.Text = "+"

local XdownButton = Instance.new("TextButton")
XdownButton.Parent = gui
XdownButton.Name = "XdownButton"
XdownButton.Size = UDim2.new(0.1, 0, 0.08, 0)
XdownButton.Position = UDim2.new(0.45, 0, 0.18, 0)
XdownButton.BackgroundColor3 = Color3.new(0.25, 0.25, 0.25)
XdownButton.TextColor3 = Color3.new(1, 1, 1)
XdownButton.TextScaled = true
XdownButton.Font = Enum.Font.SourceSansBold
XdownButton.Text = "-"

local Ypos = Instance.new("TextBox")
Ypos.Parent = gui
Ypos.Name = "Ypos"
Ypos.Size = UDim2.new(0.3, 0, 0.08, 0)
Ypos.Position = UDim2.new(0.05, 0, 0.26, 0)
Ypos.BackgroundColor3 = Color3.new(0.9, 0.9, 0.9)
Ypos.BorderColor3 = Color3.new(0.2, 0.2, 0.2)
Ypos.BorderSizePixel = 1
Ypos.TextColor3 = Color3.new(0, 0, 0)
Ypos.TextScaled = true
Ypos.TextSize = 12
Ypos.PlaceholderText = "Y"
Ypos.Font = Enum.Font.SourceSans
Ypos.TextXAlignment = Enum.TextXAlignment.Center
Ypos.TextYAlignment = Enum.TextYAlignment.Center

local YupButton = Instance.new("TextButton")
YupButton.Parent = gui
YupButton.Name = "YupButton"
YupButton.Size = UDim2.new(0.1, 0, 0.08, 0)
YupButton.Position = UDim2.new(0.35, 0, 0.26, 0)
YupButton.BackgroundColor3 = Color3.new(0.25, 0.25, 0.25)
YupButton.TextColor3 = Color3.new(1, 1, 1)
YupButton.TextScaled = true
YupButton.Font = Enum.Font.SourceSansBold
YupButton.Text = "+"

local YdownButton = Instance.new("TextButton")
YdownButton.Parent = gui
YdownButton.Name = "YdownButton"
YdownButton.Size = UDim2.new(0.1, 0, 0.08, 0)
YdownButton.Position = UDim2.new(0.45, 0, 0.26, 0)
YdownButton.BackgroundColor3 = Color3.new(0.25, 0.25, 0.25)
YdownButton.TextColor3 = Color3.new(1, 1, 1)
YdownButton.TextScaled = true
YdownButton.Font = Enum.Font.SourceSansBold
YdownButton.Text = "-"

local Zpos = Instance.new("TextBox")
Zpos.Parent = gui
Zpos.Name = "Zpos"
Zpos.Size = UDim2.new(0.3, 0, 0.08, 0)
Zpos.Position = UDim2.new(0.05, 0, 0.34, 0)
Zpos.BackgroundColor3 = Color3.new(0.9, 0.9, 0.9)
Zpos.BorderColor3 = Color3.new(0.2, 0.2, 0.2)
Zpos.BorderSizePixel = 1
Zpos.TextColor3 = Color3.new(0, 0, 0)
Zpos.TextScaled = true
Zpos.TextSize = 12
Zpos.PlaceholderText = "Z"
Zpos.Font = Enum.Font.SourceSans
Zpos.TextXAlignment = Enum.TextXAlignment.Center
Zpos.TextYAlignment = Enum.TextYAlignment.Center

local ZupButton = Instance.new("TextButton")
ZupButton.Parent = gui
ZupButton.Name = "ZupButton"
ZupButton.Size = UDim2.new(0.1, 0, 0.08, 0)
ZupButton.Position = UDim2.new(0.35, 0, 0.34, 0)
ZupButton.BackgroundColor3 = Color3.new(0.25, 0.25, 0.25)
ZupButton.TextColor3 = Color3.new(1, 1, 1)
ZupButton.TextScaled = true
ZupButton.Font = Enum.Font.SourceSansBold
ZupButton.Text = "+"

local ZdownButton = Instance.new("TextButton")
ZdownButton.Parent = gui
ZdownButton.Name = "ZdownButton"
ZdownButton.Size = UDim2.new(0.1, 0, 0.08, 0)
ZdownButton.Position = UDim2.new(0.45, 0, 0.34, 0)
ZdownButton.BackgroundColor3 = Color3.new(0.25, 0.25, 0.25)
ZdownButton.TextColor3 = Color3.new(1, 1, 1)
ZdownButton.TextScaled = true
ZdownButton.Font = Enum.Font.SourceSansBold
ZdownButton.Text = "-"

local rotLabel = Instance.new("TextLabel")
rotLabel.Parent = gui
rotLabel.Name = "rotLabel"
rotLabel.Size = UDim2.new(1, 0, 0.08, 0)
rotLabel.Position = UDim2.new(0, 0, 0.42, 0)
rotLabel.BackgroundColor3 = Color3.new(0, 0, 0)
rotLabel.BackgroundTransparency = 1
rotLabel.BorderColor3 = Color3.new(0, 0, 0)
rotLabel.BorderSizePixel = 1
rotLabel.TextColor3 = Color3.new(0.8, 0.8, 0.8)
rotLabel.TextScaled = true
rotLabel.Font = Enum.Font.SourceSansBold
rotLabel.Text = "Orientation (XYZ)"
rotLabel.TextXAlignment = Enum.TextXAlignment.Left
rotLabel.TextYAlignment = Enum.TextYAlignment.Center

local RXpos = Instance.new("TextBox")
RXpos.Parent = gui
RXpos.Name = "RXpos"
RXpos.Size = UDim2.new(0.3, 0, 0.08, 0)
RXpos.Position = UDim2.new(0.05, 0, 0.5, 0)
RXpos.BackgroundColor3 = Color3.new(0.9, 0.9, 0.9)
RXpos.BorderColor3 = Color3.new(0.2, 0.2, 0.2)
RXpos.BorderSizePixel = 1
RXpos.TextColor3 = Color3.new(0, 0, 0)
RXpos.TextScaled = true
RXpos.TextSize = 12
RXpos.PlaceholderText = "X"
RXpos.Font = Enum.Font.SourceSans
RXpos.TextXAlignment = Enum.TextXAlignment.Center
RXpos.TextYAlignment = Enum.TextYAlignment.Center

local RXupButton = Instance.new("TextButton")
RXupButton.Parent = gui
RXupButton.Name = "RXupButton"
RXupButton.Size = UDim2.new(0.1, 0, 0.08, 0)
RXupButton.Position = UDim2.new(0.35, 0, 0.5, 0)
RXupButton.BackgroundColor3 = Color3.new(0.25, 0.25, 0.25)
RXupButton.TextColor3 = Color3.new(1, 1, 1)
RXupButton.TextScaled = true
RXupButton.Font = Enum.Font.SourceSansBold
RXupButton.Text = "+"

local RXdownButton = Instance.new("TextButton")
RXdownButton.Parent = gui
RXdownButton.Name = "RXdownButton"
RXdownButton.Size = UDim2.new(0.1, 0, 0.08, 0)
RXdownButton.Position = UDim2.new(0.45, 0, 0.5, 0)
RXdownButton.BackgroundColor3 = Color3.new(0.25, 0.25, 0.25)
RXdownButton.TextColor3 = Color3.new(1, 1, 1)
RXdownButton.TextScaled = true
RXdownButton.Font = Enum.Font.SourceSansBold
RXdownButton.Text = "-"

local RYpos = Instance.new("TextBox")
RYpos.Parent = gui
RYpos.Name = "RYpos"
RYpos.Size = UDim2.new(0.3, 0, 0.08, 0)
RYpos.Position = UDim2.new(0.05, 0, 0.58, 0)
RYpos.BackgroundColor3 = Color3.new(0.9, 0.9, 0.9)
RYpos.BorderColor3 = Color3.new(0.2, 0.2, 0.2)
RYpos.BorderSizePixel = 1
RYpos.TextColor3 = Color3.new(0, 0, 0)
RYpos.TextScaled = true
RYpos.TextSize = 12
RYpos.PlaceholderText = "Y"
RYpos.Font = Enum.Font.SourceSans
RYpos.TextXAlignment = Enum.TextXAlignment.Center
RYpos.TextYAlignment = Enum.TextYAlignment.Center

local RYupButton = Instance.new("TextButton")
RYupButton.Parent = gui
RYupButton.Name = "RYupButton"
RYupButton.Size = UDim2.new(0.1, 0, 0.08, 0)
RYupButton.Position = UDim2.new(0.35, 0, 0.58, 0)
RYupButton.BackgroundColor3 = Color3.new(0.25, 0.25, 0.25)
RYupButton.TextColor3 = Color3.new(1, 1, 1)
RYupButton.TextScaled = true
RYupButton.Font = Enum.Font.SourceSansBold
RYupButton.Text = "+"

local RYdownButton = Instance.new("TextButton")
RYdownButton.Parent = gui
RYdownButton.Name = "RYdownButton"
RYdownButton.Size = UDim2.new(0.1, 0, 0.08, 0)
RYdownButton.Position = UDim2.new(0.45, 0, 0.58, 0)
RYdownButton.BackgroundColor3 = Color3.new(0.25, 0.25, 0.25)
RYdownButton.TextColor3 = Color3.new(1, 1, 1)
RYdownButton.TextScaled = true
RYdownButton.Font = Enum.Font.SourceSansBold
RYdownButton.Text = "-"

local RZpos = Instance.new("TextBox")
RZpos.Parent = gui
RZpos.Name = "RZpos"
RZpos.Size = UDim2.new(0.3, 0, 0.08, 0)
RZpos.Position = UDim2.new(0.05, 0, 0.66, 0)
RZpos.BackgroundColor3 = Color3.new(0.9, 0.9, 0.9)
RZpos.BorderColor3 = Color3.new(0.2, 0.2, 0.2)
RZpos.BorderSizePixel = 1
RZpos.TextColor3 = Color3.new(0, 0, 0)
RZpos.TextScaled = true
RZpos.TextSize = 12
RZpos.PlaceholderText = "Z"
RZpos.Font = Enum.Font.SourceSans
RZpos.TextXAlignment = Enum.TextXAlignment.Center
RZpos.TextYAlignment = Enum.TextYAlignment.Center

local RZupButton = Instance.new("TextButton")
RZupButton.Parent = gui
RZupButton.Name = "RZupButton"
RZupButton.Size = UDim2.new(0.1, 0, 0.08, 0)
RZupButton.Position = UDim2.new(0.35, 0, 0.66, 0)
RZupButton.BackgroundColor3 = Color3.new(0.25, 0.25, 0.25)
RZupButton.TextColor3 = Color3.new(1, 1, 1)
RZupButton.TextScaled = true
RZupButton.Font = Enum.Font.SourceSansBold
RZupButton.Text = "+"

local RZdownButton = Instance.new("TextButton")
RZdownButton.Parent = gui
RZdownButton.Name = "RZdownButton"
RZdownButton.Size = UDim2.new(0.1, 0, 0.08, 0)
RZdownButton.Position = UDim2.new(0.45, 0, 0.66, 0)
RZdownButton.BackgroundColor3 = Color3.new(0.25, 0.25, 0.25)
RZdownButton.TextColor3 = Color3.new(1, 1, 1)
RZdownButton.TextScaled = true
RZdownButton.Font = Enum.Font.SourceSansBold
RZdownButton.Text = "-"

local Change = Instance.new("TextButton")
Change.Parent = gui
Change.Name = "Change"
Change.Size = UDim2.new(0.4, 0, 0.08, 0)
Change.Position = UDim2.new(0.5, 0, 0.820000112, 0)
Change.AnchorPoint = Vector2.new(0.5, 0)
Change.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
Change.BorderColor3 = Color3.new(0.4, 0.4, 0.4)
Change.BorderSizePixel = 2
Change.TextColor3 = Color3.new(1, 1, 1)
Change.TextScaled = true
Change.Font = Enum.Font.SourceSansBold
Change.Text = "Apply Grip"

local sample1 = Instance.new("TextButton")
sample1.Parent = gui
sample1.Name = "Sample1"
sample1.Size = UDim2.new(0.300000012, 0, 0.0799999982, 0)
sample1.Position = UDim2.new(0.80000025, 0, 0.180000007, 0)
sample1.AnchorPoint = Vector2.new(0.5, 0)
sample1.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
sample1.BorderColor3 = Color3.new(0.4, 0.4, 0.4)
sample1.BorderSizePixel = 2
sample1.TextColor3 = Color3.new(1, 1, 1)
sample1.TextScaled = true
sample1.Font = Enum.Font.SourceSansBold
sample1.Text = "Small PP"
sample1.Visible = true
sample1.MouseButton1Click:Connect(function()
Xpos.Text = "0"
Ypos.Text = "1.5"
Zpos.Text = "1.5"
end)

local sample2 = Instance.new("TextButton")
sample2.Parent = gui
sample2.Name = "sample2"
sample2.Size = UDim2.new(0.300000012, 0, 0.0799999982, 0)
sample2.Position = UDim2.new(0.80000025, 0, 0.310000007, 0)
sample2.AnchorPoint = Vector2.new(0.5, 0)
sample2.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
sample2.BorderColor3 = Color3.new(0.4, 0.4, 0.4)
sample2.BorderSizePixel = 2
sample2.TextColor3 = Color3.new(1, 1, 1)
sample2.TextScaled = true
sample2.Font = Enum.Font.SourceSansBold
sample2.Text = "Long PP"
sample2.Visible = true
sample2.MouseButton1Click:Connect(function()
Xpos.Text = "0"
Ypos.Text = "1.5"
Zpos.Text = "1.5"
end)

local sample3 = Instance.new("TextButton")
sample3.Parent = gui
sample3.Name = "sample3"
sample3.Size = UDim2.new(0.300000012, 0, 0.0799999982, 0)
sample3.Position = UDim2.new(0.80000025, 0, 0.440000007, 0)
sample3.AnchorPoint = Vector2.new(0.5, 0)
sample3.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
sample3.BorderColor3 = Color3.new(0.4, 0.4, 0.4)
sample3.BorderSizePixel = 2
sample3.TextColor3 = Color3.new(1, 1, 1)
sample3.TextScaled = true
sample3.Font = Enum.Font.SourceSansBold
sample3.Text = "Back"
sample3.Visible = true
sample3.MouseButton1Click:Connect(function()
Xpos.Text = "-1"
Ypos.Text = "2"
Zpos.Text = "-1"
RXpos.Text = "90"
RYpos.Text = "0"
RZpos.Text = "220"
end)

local sample4 = Instance.new("TextButton")
sample4.Parent = gui
sample4.Name = "sample4"
sample4.Size = UDim2.new(0.300000012, 0, 0.0799999982, 0)
sample4.Position = UDim2.new(0.80000025, 0, 0.570000007, 0)
sample4.AnchorPoint = Vector2.new(0.5, 0)
sample4.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
sample4.BorderColor3 = Color3.new(0.4, 0.4, 0.4)
sample4.BorderSizePixel = 2
sample4.TextColor3 = Color3.new(1, 1, 1)
sample4.TextScaled = true
sample4.Font = Enum.Font.SourceSansBold
sample4.Text = "Hat"
sample4.Visible = true
sample4.MouseButton1Click:Connect(function()
Xpos.Text = "1.5"
Ypos.Text = "-1.7"
Zpos.Text = "0"
end)

local sample5x = Instance.new("TextBox")
sample5x.Parent = gui
sample5x.Name = "Sample5x"
sample5x.Size = UDim2.new(0.1, 0, 0.0799999982, 0)
sample5x.Position = UDim2.new(0.70000025, 0, 0.180000007, 0)
sample5x.AnchorPoint = Vector2.new(0.5, 0)
sample5x.BackgroundColor3 = Color3.new(2, 2, 2)
sample5x.BorderColor3 = Color3.new(0.4, 0.4, 0.4)
sample5x.BorderSizePixel = 2
sample5x.TextColor3 = Color3.new(0, 0, 0)
sample5x.TextScaled = true
sample5x.Font = Enum.Font.SourceSansBold
sample5x.Text = "X"
sample5x.PlaceholderText = "X Pos..."
sample5x.Visible = false

local sample5y = Instance.new("TextBox")
sample5y.Parent = gui
sample5y.Name = "Sample5y"
sample5y.Size = UDim2.new(0.1, 0, 0.0799999982, 0)
sample5y.Position = UDim2.new(0.80000025, 0, 0.180000007, 0)
sample5y.AnchorPoint = Vector2.new(0.5, 0)
sample5y.BackgroundColor3 = Color3.new(2, 2, 2)
sample5y.BorderColor3 = Color3.new(0.4, 0.4, 0.4)
sample5y.BorderSizePixel = 2
sample5y.TextColor3 = Color3.new(0, 0, 0)
sample5y.TextScaled = true
sample5y.Font = Enum.Font.SourceSansBold
sample5y.Text = "Y"
sample5y.PlaceholderText = "Y Pos..."
sample5y.Visible = false

local sample5z = Instance.new("TextBox")
sample5z.Parent = gui
sample5z.Name = "Sample5z"
sample5z.Size = UDim2.new(0.1, 0, 0.0799999982, 0)
sample5z.Position = UDim2.new(0.90000025, 0, 0.180000007, 0)
sample5z.AnchorPoint = Vector2.new(0.5, 0)
sample5z.BackgroundColor3 = Color3.new(2, 2, 2)
sample5z.BorderColor3 = Color3.new(0.4, 0.4, 0.4)
sample5z.BorderSizePixel = 2
sample5z.TextColor3 = Color3.new(0, 0, 0)
sample5z.TextScaled = true
sample5z.Font = Enum.Font.SourceSansBold
sample5z.Text = "Z"
sample5z.PlaceholderText = "Z Pos..."
sample5z.Visible = false

local sample6 = Instance.new("TextButton")
sample6.Parent = gui
sample6.Name = "sample2"
sample6.Size = UDim2.new(0.300000012, 0, 0.0799999982, 0)
sample6.Position = UDim2.new(0.80000025, 0, 0.310000007, 0)
sample6.AnchorPoint = Vector2.new(0.5, 0)
sample6.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
sample6.BorderColor3 = Color3.new(0.4, 0.4, 0.4)
sample6.BorderSizePixel = 2
sample6.TextColor3 = Color3.new(1, 1, 1)
sample6.TextScaled = true
sample6.Font = Enum.Font.SourceSansBold
sample6.Text = "Load Custom Pos"
sample6.Visible = false
sample6.MouseButton1Click:Connect(function()
Xpos.Text = sample5x.Text
Ypos.Text = sample5y.Text
Zpos.Text = sample5z.Text
end)

local sample7x = Instance.new("TextBox")
sample7x.Parent = gui
sample7x.Name = "Sample7x"
sample7x.Size = UDim2.new(0.1, 0, 0.0799999982, 0)
sample7x.Position = UDim2.new(0.70000025, 0, 0.440000007, 0)
sample7x.AnchorPoint = Vector2.new(0.5, 0)
sample7x.BackgroundColor3 = Color3.new(2, 2, 2)
sample7x.BorderColor3 = Color3.new(0.4, 0.4, 0.4)
sample7x.BorderSizePixel = 2
sample7x.TextColor3 = Color3.new(0, 0, 0)
sample7x.TextScaled = true
sample7x.Font = Enum.Font.SourceSansBold
sample7x.Text = "X"
sample7x.PlaceholderText = "X Orientation..."
sample7x.Visible = false

local sample7y = Instance.new("TextBox")
sample7y.Parent = gui
sample7y.Name = "Sample7y"
sample7y.Size = UDim2.new(0.1, 0, 0.0799999982, 0)
sample7y.Position = UDim2.new(0.8, 0, 0.440000007, 0)
sample7y.AnchorPoint = Vector2.new(0.5, 0)
sample7y.BackgroundColor3 = Color3.new(2, 2, 2)
sample7y.BorderColor3 = Color3.new(0.4, 0.4, 0.4)
sample7y.BorderSizePixel = 2
sample7y.TextColor3 = Color3.new(0, 0, 0)
sample7y.TextScaled = true
sample7y.Font = Enum.Font.SourceSansBold
sample7y.Text = "Y"
sample7y.PlaceholderText = "Y Orientation..."
sample7y.Visible = false

local sample7z = Instance.new("TextBox")
sample7z.Parent = gui
sample7z.Name = "Sample7z"
sample7z.Size = UDim2.new(0.1, 0, 0.0799999982, 0)
sample7z.Position = UDim2.new(0.9, 0, 0.440000007, 0)
sample7z.AnchorPoint = Vector2.new(0.5, 0)
sample7z.BackgroundColor3 = Color3.new(2, 2, 2)
sample7z.BorderColor3 = Color3.new(0.4, 0.4, 0.4)
sample7z.BorderSizePixel = 2
sample7z.TextColor3 = Color3.new(0, 0, 0)
sample7z.TextScaled = true
sample7z.Font = Enum.Font.SourceSansBold
sample7z.Text = "Z"
sample7z.PlaceholderText = "Z Orientation..."
sample7z.Visible = false

local sample8 = Instance.new("TextButton")
sample8.Parent = gui
sample8.Name = "sample8"
sample8.Size = UDim2.new(0.300000012, 0, 0.0799999982, 0)
sample8.Position = UDim2.new(0.80000025, 0, 0.570000007, 0)
sample8.AnchorPoint = Vector2.new(0.5, 0)
sample8.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
sample8.BorderColor3 = Color3.new(0.4, 0.4, 0.4)
sample8.BorderSizePixel = 2
sample8.TextColor3 = Color3.new(1, 1, 1)
sample8.TextScaled = true
sample8.Font = Enum.Font.SourceSansBold
sample8.Text = "Load Custom Ori"
sample8.Visible = false
sample8.MouseButton1Click:Connect(function()
RXpos.Text = sample7x.Text
RYpos.Text = sample7y.Text
RZpos.Text = sample7z.Text
end)

local next = Instance.new("TextButton")
next.Parent = gui
next.Name = "next"
next.Size = UDim2.new(0.100000012, 0, 0.0799999982, 0)
next.Position = UDim2.new(0.900000215, 0, 0.690000057, 0)
next.AnchorPoint = Vector2.new(0.5, 0)
next.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
next.BorderColor3 = Color3.new(0.4, 0.4, 0.4)
next.BorderSizePixel = 2
next.TextColor3 = Color3.new(1, 1, 1)
next.TextScaled = true
next.Font = Enum.Font.SourceSansBold
next.Text = ">"
next.Visible = true

local back = Instance.new("TextButton")
back.Parent = gui
back.Name = "back"
back.Size = UDim2.new(0.100000012, 0, 0.0799999982, 0)
back.Position = UDim2.new(0.700000215, 0, 0.690000057, 0)
back.AnchorPoint = Vector2.new(0.5, 0)
back.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
back.BorderColor3 = Color3.new(0.4, 0.4, 0.4)
back.BorderSizePixel = 2
back.TextColor3 = Color3.new(1, 1, 1)
back.TextScaled = true
back.Font = Enum.Font.SourceSansBold
back.Text = "<"
back.Visible = false
back.MouseButton1Click:Connect(function()
sample1.Visible = true
sample2.Visible = true
sample3.Visible = true
sample4.Visible = true
sample5x.Visible = false
sample5y.Visible = false
sample5z.Visible = false
sample6.Visible = false
sample7x.Visible = false
sample7y.Visible = false
sample7z.Visible = false
sample8.Visible = false
next.Visible = true
back.Visible = false
end)

next.MouseButton1Click:Connect(function()
sample1.Visible = false
sample2.Visible = false
sample3.Visible = false
sample4.Visible = false
sample5x.Visible = true
sample5y.Visible = true
sample5z.Visible = true
sample6.Visible = true
sample7x.Visible = true
sample7y.Visible = true
sample7z.Visible = true
sample8.Visible = true
next.Visible = false
back.Visible = true
end)

local function TexbV(textBox, increment)
	local currentValue = tonumber(textBox.Text) or 0
	textBox.Text = tostring(currentValue + increment)
end

XupButton.MouseButton1Click:Connect(function()
	TexbV(Xpos, 1)
end)

XdownButton.MouseButton1Click:Connect(function()
	TexbV(Xpos, -1)
end)

YupButton.MouseButton1Click:Connect(function()
	TexbV(Ypos, 1)
end)

YdownButton.MouseButton1Click:Connect(function()
	TexbV(Ypos, -1)
end)

ZupButton.MouseButton1Click:Connect(function()
	TexbV(Zpos, 1)
end)

ZdownButton.MouseButton1Click:Connect(function()
	TexbV(Zpos, -1)
end)

RXupButton.MouseButton1Click:Connect(function()
	TexbV(RXpos, 1)
end)

RXdownButton.MouseButton1Click:Connect(function()
	TexbV(RXpos, -1)
end)

RYupButton.MouseButton1Click:Connect(function()
	TexbV(RYpos, 1)
end)

RYdownButton.MouseButton1Click:Connect(function()
	TexbV(RYpos, -1)
end)

RZupButton.MouseButton1Click:Connect(function()
	TexbV(RZpos, 1)
end)

RZdownButton.MouseButton1Click:Connect(function()
	TexbV(RZpos, -1)
end)

Change.MouseButton1Click:Connect(function()
	local character = LocalPlayer.Character
	if character then
		for _, item in pairs(character:GetChildren()) do
			if item:IsA("Tool") then
				local xPosValue = tonumber(Xpos.Text)
				local yPosValue = tonumber(Ypos.Text)
				local zPosValue = tonumber(Zpos.Text)
				local rxValue = tonumber(RXpos.Text)
				local ryValue = tonumber(RYpos.Text)
				local rzValue = tonumber(RZpos.Text)

				if typeof(xPosValue) == "number" and typeof(yPosValue) == "number" and typeof(zPosValue) == "number" and
				   typeof(rxValue) == "number" and typeof(ryValue) == "number" and typeof(rzValue) == "number" then
					local position = Vector3.new(xPosValue, yPosValue, zPosValue)
					local orientation = CFrame.Angles(math.rad(rxValue), math.rad(ryValue), math.rad(rzValue))
					item.Grip = orientation + position
					print("Tool '" .. item.Name .. "' Grip changed to:", item.Grip)
				else
					warn("Please enter valid numbers for Position (XYZ) and Orientation (XYZ).")
				end
				return
			end
		end
		print("No tool is currently equipped.")
	else
		warn("LocalPlayer's Character not found.")
	end
end)

local function onCharacterAdded(character)
	local function onEquipped(tool)
		if tool and tool:IsA("Tool") then
			local grip = tool.Grip
			Xpos.Text = string.format("%.3f", grip.X)
			Ypos.Text = string.format("%.3f", grip.Y)
			Zpos.Text = string.format("%.3f", grip.Z)

			local xAngle, yAngle, zAngle = grip:ToEulerAnglesXYZ()
			RXpos.Text = string.format("%.1f", math.deg(xAngle))
			RYpos.Text = string.format("%.1f", math.deg(yAngle))
			RZpos.Text = string.format("%.1f", math.deg(zAngle))
		end
	end

	character.ChildAdded:Connect(function(child)
		if child:IsA("Tool") then
			onEquipped(child)
			child.Equipped:Connect(function()
				onEquipped(child)
			end)
		end
	end)

	for _, child in pairs(character:GetChildren()) do
		if child:IsA("Tool") then
			onEquipped(child)
			child.Equipped:Connect(function()
				onEquipped(child)
			end)
		end
	end
end

LocalPlayer.CharacterAdded:Connect(onCharacterAdded)

if LocalPlayer.Character then
	onCharacterAdded(LocalPlayer.Character)
end 