
local ScreenGui = Instance.new("ScreenGui")
local keyFrame = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local TextLabel = Instance.new("TextLabel")
local Frame = Instance.new("Frame")
local UICorner_2 = Instance.new("UICorner")
local keyText = Instance.new("TextBox")
local UICorner_3 = Instance.new("UICorner")
local Check = Instance.new("TextButton")
local UICorner_4 = Instance.new("UICorner")
local TextLabel_2 = Instance.new("TextLabel")
local Frame_2 = Instance.new("Frame")
local UICorner_5 = Instance.new("UICorner")

--Properties:

ScreenGui.Parent = game.CoreGui
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

keyFrame.Name = "keyFrame"
keyFrame.Parent = ScreenGui
keyFrame.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
keyFrame.Position = UDim2.new(0.239892185, 0, 0.253411293, 0)
keyFrame.Size = UDim2.new(0.51886791, 0, 0.493177384, 0)
keyFrame.BackgroundTransparency = 1
keyFrame.Visible = false
keyFrame.Active = true
keyFrame.Draggable = true

UICorner.Parent = keyFrame

TextLabel.Parent = keyFrame
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.Size = UDim2.new(1, 0, 0.5, 0)
TextLabel.Font = Enum.Font.Kalam
TextLabel.Text = "R^SE"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextScaled = true
TextLabel.TextSize = 14.000
TextLabel.TextWrapped = true

Frame.Parent = keyFrame
Frame.BackgroundColor3 = Color3.fromRGB(85, 255, 127)
Frame.Position = UDim2.new(-0.00166625972, 0, 0.972778797, 0)
Frame.Size = UDim2.new(1.00166619, 0, 0.0267741736, 0)

UICorner_2.Parent = Frame

keyText.Name = "keyText"
keyText.Parent = keyFrame
keyText.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
keyText.Position = UDim2.new(0.0363636352, 0, 0.664031625, 0)
keyText.Size = UDim2.new(0.581818163, 0, 0.150197625, 0)
keyText.Font = Enum.Font.Kalam
keyText.PlaceholderText = "Key (Get From Owner)"
keyText.Text = ""
keyText.TextColor3 = Color3.fromRGB(255, 255, 255)
keyText.TextScaled = true
keyText.TextSize = 14.000
keyText.TextWrapped = true

UICorner_3.Parent = keyText

Check.Name = "Check"
Check.Parent = keyFrame
Check.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
Check.Position = UDim2.new(0.649350643, 0, 0.664031625, 0)
Check.Size = UDim2.new(0.303896099, 0, 0.150197625, 0)
Check.Font = Enum.Font.Kalam
Check.Text = "Check"
Check.TextColor3 = Color3.fromRGB(255, 255, 255)
Check.TextScaled = true
Check.TextSize = 14.000
Check.TextWrapped = true

UICorner_4.Parent = Check

TextLabel_2.Parent = keyFrame
TextLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.BackgroundTransparency = 1.000
TextLabel_2.Position = UDim2.new(-0.00259740255, 0, 0.296442688, 0)
TextLabel_2.Size = UDim2.new(1, 0, 0.203557312, 0)
TextLabel_2.Font = Enum.Font.Kalam
TextLabel_2.Text = "Key System"
TextLabel_2.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.TextScaled = true
TextLabel_2.TextSize = 14.000
TextLabel_2.TextWrapped = true

Frame_2.Parent = keyFrame
Frame_2.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
Frame_2.BackgroundTransparency = 1.000
Frame_2.Size = UDim2.new(1, 0, 1, 0)
Frame_2.ZIndex = 0

UICorner_5.Parent = Frame_2
keyFrame.Visible = true
game:GetService("TweenService"):Create(keyFrame,TweenInfo.new(2,Enum.EasingStyle.Sine,Enum.EasingDirection.Out),{BackgroundTransparency = 0}):Play(0)
wait(2)
if _G.RISEKey == nil then
	Check.MouseButton1Down:Connect(function()
		local key = keyText.Text
		if key then
			_G.RISEKey = keyText.Text
			loadstring(game:HttpGet('https://raw.githubusercontent.com/JBxSlash/Roblox_RISE_Beta/main/R%5ESE.lua'))()
			keyFrame.Visible = false
			wait(1)
			keyFrame.Visible = true
			if game.CoreGui:FindFirstChild("_R^SE") == nil then
				_G.RISEKey = nil
				keyText.Text = "Incorrect Key!"
			else
				TextLabel.Text = "Correct Key!"
				Check:Destroy()
				keyText:Destroy()
				game:GetService("TweenService"):Create(keyFrame,TweenInfo.new(2,Enum.EasingStyle.Sine,Enum.EasingDirection.Out),{BackgroundTransparency = 1}):Play(0)
				wait(2)
				ScreenGui:Destroy()
			end
		end
	end)
end
