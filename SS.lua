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
Main.Position = UDim2.new(0.0846456587, 0, 0.55859375, 0)
Main.Size = UDim2.new(0, 276, 0, 191)
Main.Active = true
Main.Draggable = true

CodeBox.Name = "CodeBox"
CodeBox.Parent = Main
CodeBox.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
CodeBox.Position = UDim2.new(0.0471014492, 0, 0.0575916246, 0)
CodeBox.Size = UDim2.new(0, 252, 0, 134)
CodeBox.Font = Enum.Font.SourceSans
CodeBox.PlaceholderColor3 = Color3.fromRGB(255, 255, 255)
CodeBox.PlaceholderText = "--SS Script Here!"
CodeBox.Text = ""
CodeBox.TextColor3 = Color3.fromRGB(255, 255, 255)
CodeBox.TextScaled = true
CodeBox.TextSize = 14.000
CodeBox.TextWrapped = true

Execute.Name = "Execute"
Execute.Parent = Main
Execute.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
Execute.Position = UDim2.new(0.0471014492, 0, 0.816753924, 0)
Execute.Size = UDim2.new(0, 97, 0, 29)
Execute.Font = Enum.Font.SourceSans
Execute.Text = "Execute"
Execute.TextColor3 = Color3.fromRGB(255, 255, 255)
Execute.TextScaled = true
Execute.TextSize = 14.000
Execute.TextWrapped = true

Clear.Name = "Clear"
Clear.Parent = Main
Clear.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
Clear.Position = UDim2.new(0.608695626, 0, 0.816753924, 0)
Clear.Size = UDim2.new(0, 97, 0, 29)
Clear.Font = Enum.Font.SourceSans
Clear.Text = "Clear"
Clear.TextColor3 = Color3.fromRGB(255, 255, 255)
Clear.TextScaled = true
Clear.TextSize = 14.000
Clear.TextWrapped = true

-- Scripts:

local function WZDZZS_fake_script() -- Execute.LocalScript 
	local script = Instance.new('LocalScript', Execute)

	local Code = script.Parent.Parent.CodeBox
	
	script.Parent.MouseButton1Click:Connect(function()
		game.Workspace.RemoteHandler.Remote:FireServer(Code)
	end)
end
coroutine.wrap(WZDZZS_fake_script)()
local function RPHS_fake_script() -- Clear.LocalScript 
	local script = Instance.new('LocalScript', Clear)

	script.Parent.MouseButton1Click:Connect(function()
		script.Parent.Parent.CodeBox.Text = ""
	end)
end
coroutine.wrap(RPHS_fake_script)()