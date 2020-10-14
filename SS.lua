-- Instances:

local ScreenGui = Instance.new("ScreenGui")
local Main = Instance.new("Frame")
local CodeBox = Instance.new("TextBox")
local Execute = Instance.new("TextButton")
local Clear = Instance.new("TextButton")

--Properties:

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Main.Name = "Main"
Main.Parent = ScreenGui
Main.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Main.Position = UDim2.new(0.356776565, 0, 0.319010407, 0)
Main.Size = UDim2.new(0, 391, 0, 277)
Main.ZIndex = 10
Main.Active = true
Main.Draggable = true

CodeBox.Name = "CodeBox"
CodeBox.Parent = Main
CodeBox.BackgroundColor3 = Color3.fromRGB(68, 68, 68)
CodeBox.Position = UDim2.new(0.0255754478, 0, 0.0288808662, 0)
CodeBox.Size = UDim2.new(0, 370, 0, 212)
CodeBox.ZIndex = 10
CodeBox.Font = Enum.Font.SourceSans
CodeBox.PlaceholderColor3 = Color3.fromRGB(198, 198, 198)
CodeBox.PlaceholderText = "SS Scripts Here!"
CodeBox.Text = ""
CodeBox.TextColor3 = Color3.fromRGB(25, 255, 0)
CodeBox.TextScaled = true
CodeBox.TextSize = 14.000
CodeBox.TextWrapped = true
CodeBox.TextXAlignment = Enum.TextXAlignment.Left
CodeBox.TextYAlignment = Enum.TextYAlignment.Top

Execute.Name = "Execute"
Execute.Parent = Main
Execute.BackgroundColor3 = Color3.fromRGB(67, 67, 67)
Execute.Position = UDim2.new(0.0255754478, 0, 0.819494605, 0)
Execute.Size = UDim2.new(0, 138, 0, 42)
Execute.ZIndex = 10
Execute.Font = Enum.Font.SourceSans
Execute.Text = "Execute"
Execute.TextColor3 = Color3.fromRGB(255, 255, 255)
Execute.TextScaled = true
Execute.TextSize = 14.000
Execute.TextWrapped = true

Clear.Name = "Clear"
Clear.Parent = Main
Clear.BackgroundColor3 = Color3.fromRGB(67, 67, 67)
Clear.Position = UDim2.new(0.618925869, 0, 0.819494605, 0)
Clear.Size = UDim2.new(0, 138, 0, 42)
Clear.ZIndex = 10
Clear.Font = Enum.Font.SourceSans
Clear.Text = "Clear"
Clear.TextColor3 = Color3.fromRGB(255, 255, 255)
Clear.TextScaled = true
Clear.TextSize = 14.000
Clear.TextWrapped = true

--Scripts:

Execute.MouseButton1Click:Connect(function()
	local Code = script.Parent.CodeBox
	game.Workspace.RemoteHandler.Remote:FireServer(Code)
end

Clear.MouseButton1Click:Connect(function()
	local Box = script.Parent.CodeBox
	Box.Text = ""
end