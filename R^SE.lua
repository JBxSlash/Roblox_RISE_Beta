
--[[

R^SE R^SE R^SE R^SE R^SE R^SER^SE R^SE R^SE R^SE R^SE R^SE R^SE R^SE R^SE R^SE R^SE R^SE
R^SE R^SE R^SE R^SE R^SE R^SE    R^SE R^SE R^SE R^SE R^SE R^SE R^SE R^SE R^SE R^SE R^SE R^SE
R^SE R^SE R^SE R^SE R^SE R^SE        R^SE R^SE R^SE R^SE R^SE R^SE R^SE R^SE R^SE R^SE R^SE R^SE
R^SE R^SE R^SE R^SE R^SE R^SE     R^SE R^SE R^SE R^SE R^SE R^SE R^SE R^SE R^SE R^SE R^SE R^SE
R^SE R^SE R^SE R^SE R^SE R^SE R^SE R^SE R^SE R^SE R^SE R^SE R^SE R^SE R^SE R^SE R^SE R^SE
R^SE R^SE R^SE R^SE R^SE R^SE R^SE R^SE R^SE R^SE R^SE R^SE R^SE R^SE R^SE R^SE R^SE R^SE
R^SE R^SE R^SE R^SE R^SE R^SE     R^SE R^SE R^SE R^SE R^SE R^SE R^SE R^SE R^SE R^SE R^SE R^SE
R^SE R^SE R^SE R^SE R^SE R^SE       R^SE R^SE R^SE R^SE R^SE R^SE R^SE R^SE R^SE R^SE R^SE R^SE
R^SE R^SE R^SE R^SE R^SE R^SE    R^SE R^SE R^SE R^SE R^SE R^SE R^SE R^SE R^SE R^SE R^SE R^SE
R^SE R^SE R^SE R^SE R^SE R^SER^SE R^SE R^SE R^SE R^SE R^SE R^SE R^SE R^SE R^SE R^SE R^SE

if _G.RISEKey then
	if _G.RISEKey ~= "best" then
		return nil
	end
else
	game.Players.LocalPlayer:Kick("Do not try and bypass RISE KeySystem\n Get The Key Here:\n loadstring(game:HttpGet('https://github.com/JBxSlash/Roblox_RISE_Beta/blob/main/RISE_KeySys.lua'))()")
end
]]



local GitSets = {
	["GPE_Disabler_Bypass"] = false;
	["Version"] = 15;
	["Blur_Settings"] = {Instance.new("BlurEffect"),15};
	["Parent"] = game.CoreGui;




	--//Get Movement
	["Move_W"] = false;
	["Move_A"] = false;
	["Move_S"] = false;
	["Move_D"] = false;
	["Move_Up"] = false;
	["Move_Down"] = false;
	["CustomValues"] = {["Name"] = math.random(10000,99999)};
	--//KeyBinds Default
	["OpenGui"] = Enum.KeyCode.RightControl;
	["Fly_Up"] = Enum.KeyCode.E;
	["Fly_Down"] = Enum.KeyCode.Q;
	["GitOwnerConfig"] = { --GitOwnerConfigFromID
		["Bedwars"] = {5774246}
	};
	--//Extra
	["StartTime"] = tick();
	["Deaths"] = 0;
	["kills"] = 0;
	["IsA:Config"] = {false,""},
	["chatify"] = function (msg)
		game:GetService("StarterGui"):SetCore("ChatMakeSystemMessage",{
			Text = '<font color=\"rgb(85, 0, 255)\">'.. "[Rise]: ".. "</font>".. msg,
			Font = Enum.Font.SourceSansBold;
			Color = Color3.fromRGB(255,255,255),
			RichText = true

		})

		for _, db in pairs(game.Players.LocalPlayer.PlayerGui.Chat:GetDescendants()) do
			if db:IsA("TextLabel") then
				if db.Text == '<font color=\"rgb(85, 0, 255)\">'.. "[Rise]: ".. "</font>".. msg then
					db.RichText = true
				end
			end

		end
	end,


}

--//Waits For Load
game.Players.LocalPlayer.Character.Archivable = true
game.Players.LocalPlayer.Character:WaitForChild("Head")
game.Players.LocalPlayer.Character:WaitForChild("Humanoid")
game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart")

--//Summons stuff idk
local ScreenGui = Instance.new("ScreenGui")
local Data = Instance.new("Folder")
local Module = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local TextLabel = Instance.new("TextLabel")
local TextLabel3 = Instance.new("TextLabel")
local TextLabel4 = Instance.new("TextLabel")
local TextLabel5 = Instance.new("TextLabel")
local Frame = Instance.new("Frame")
local UIGridLayout = Instance.new("UIGridLayout")
local UICorner_2 = Instance.new("UICorner")
local opBar = Instance.new("Frame")
local close = Instance.new("ImageButton")
local Backgrond = Instance.new("Frame")
local Config = Instance.new("TextButton")
local UICorner_3 = Instance.new("UICorner")
local Render = Instance.new("TextButton")
local UICorner_4 = Instance.new("UICorner")
local Combat = Instance.new("TextButton")
local UICorner_5 = Instance.new("UICorner")
local UIListLayout = Instance.new("UIListLayout")
local Blatant = Instance.new("TextButton")
local UICorner_6 = Instance.new("UICorner")
local Backgrond_2 = Instance.new("Frame")
local Selection = Instance.new("Frame")
local UICorner_7 = Instance.new("UICorner")
local ScrollingFrame = Instance.new("ScrollingFrame")
local UIListLayout_2 = Instance.new("UIListLayout")
local UICorner_8 = Instance.new("UICorner")
local ProPic = Instance.new("ImageLabel")
local UICorner_9 = Instance.new("UICorner")
local namePro = Instance.new("TextLabel")
local UICorner_10 = Instance.new("UICorner")
local TextLabel_2 = Instance.new("TextLabel")
local aimUI = Instance.new("Frame",ScreenGui)
local lastAimed = false
local uIs = Instance.new("UIStroke",aimUI)
local magt = Instance.new("ImageLabel",aimUI)
local nulmage = "http://www.roblox.com/asset/?id=23483225"
local txtAim = {}
local neckStart
if game.Players.LocalPlayer.Character.Head:FindFirstChild("Neck") then
	neckStart = game.Players.LocalPlayer.Character.Head.Neck.C0.Position.Y
end

if table.find(GitSets.GitOwnerConfig.Bedwars,game.CreatorId) then
	GitSets.Fly_Down = Enum.KeyCode.LeftShift
	GitSets.Fly_Up = Enum.KeyCode.Space
	GitSets.OpenGui = Enum.KeyCode.RightShift
	GitSets["IsA:Config"][1] = true
	GitSets["IsA:Config"][2] = "Bedwars"
end
GitSets.Blur_Settings[1].Parent = game.Lighting
GitSets.Blur_Settings[1].Size = GitSets.Blur_Settings[2]
GitSets.Blur_Settings[1].Enabled = false
game.Players.LocalPlayer.Character.Archivable = true

--RISE://GetFunctions

function alert(d)
	local sound = Instance.new("Sound",GitSets.Parent)
	sound.Name = "RISE_AUDIO"
	sound.SoundId = "rbxassetid://6043410483"
	sound.Pitch += d
	sound:Play(0)
	coroutine.resume(coroutine.create(function()
		wait(1)
		sound:Destroy()
	end))
end
function TweenCreate(part,timeLength,data)
	game:GetService("TweenService"):Create(part,TweenInfo.new(timeLength,Enum.EasingStyle.Linear,Enum.EasingDirection.Out),data):Play(0)
end
function closeAll()
	
end
function guiAnim(button)
	local db = false
	local sz = button.Size
	button.MouseEnter:Connect(function()
		if not db then

			TweenCreate(button,.2,{Size = UDim2.new(sz.X.Scale*1.1,0,sz.Y.Scale*1.1,0)})

		end

	end)
	button.MouseLeave:Connect(function()
		if not db then

			TweenCreate(button,.2,{Size = UDim2.new(sz.X.Scale,0,sz.Y.Scale,0)})

		end
	end)
end
function newSubMenu(name)
	local frame = Selection:Clone()
	frame.Parent = Selection.Parent
	
	return frame
end
function cornerGui(gui,sz)
	local kb = sz
	if not kb then
		kb = 4
	end
	local corner = Instance.new("UICorner",gui)
	corner.CornerRadius = UDim.new(0,kb)
	return corner
end
function newDropDown(par,pos,text,desc)
	local button = Module:Clone()
	button.Visible = true
	button.Parent = par.ScrollingFrame
	button.TextLabel.Text = text
	
	--[[
	A = TextBox
	B = BoolButton
	]]
	local objs = {button,{}}
	if desc then
		for _b, desco in pairs(desc) do
			if desco[2] == "A" then
				local db = Instance.new("TextBox",button.Frame)
				local db2 = Instance.new("TextLabel",db)
				db.BackgroundTransparency = .2
				db.Size = UDim2.new(.1,0,1,0)
				db.Text = desco[1]
				db.BorderSizePixel = 0
				db.PlaceholderText = desco[1]
				db.BackgroundColor3 = Color3.fromRGB(30,30,30)
				db.PlaceholderColor3 = Color3.fromRGB(255,255,255)
				db.TextColor3 = Color3.fromRGB(255,255,255)
				db.TextScaled = true
				db.Visible = true
				db2.TextColor3 = Color3.fromRGB(255,255,255)
				db2.Size = UDim2.new(1,0,1,0)
				db2.Text = desco[3]
				db2.Position = UDim2.new(0,0,1,0)
				db2.BackgroundTransparency = 1
				db2.TextScaled = true
				db2.Visible = true
				db2.TextXAlignment = Enum.TextXAlignment.Left
				table.insert(objs[2],db)
				
			end
			if desco[2] == "B" then
				local db = Instance.new("TextButton",button.Frame)
				
				db.Size = UDim2.new(.1,0,1,0)
				if desco[1] == "false" or desco[1] == "true" then
					db.Text = desco[1]
				else
					db.Text = "false"
				end

				if desco[3] == "Active" then
					db.Name = "Active"
				else
					db.Name = "boolean"
				end
				
				db.BackgroundTransparency = .2
				db.Size = UDim2.new(.1,0,1,0)
				db.BorderSizePixel = 0
				db.BackgroundColor3 = Color3.fromRGB(30,30,30)
				db.TextColor3 = Color3.fromRGB(255,255,255)
				db.TextScaled = true
				db.Visible = true
				local db2 = Instance.new("TextLabel",db)
				db2.TextColor3 = Color3.fromRGB(255,255,255)
				db2.Size = UDim2.new(1,0,1,0)
				db2.Text = desco[3]
				db2.Position = UDim2.new(0,0,1,0)
				db2.BackgroundTransparency = 1
				db2.TextScaled = true
				db2.Visible = true
				db2.TextXAlignment = Enum.TextXAlignment.Left
				table.insert(objs[2],db)
				
				if desco[3] == "Active" then
					db.MouseButton1Down:Connect(function()
						if db.Text == "false" then
							db.Text = "true"

							netexec(text)
						else
							db.Text = "false"
							netdexc(text)
						end
					end)
				else
					db.MouseButton1Down:Connect(function()
						if db.Text == "false" then
							db.Text = "true"

						else
							db.Text = "false"

						end
					end)
				end

			end
			if desco[2] == "C" then
				local db = Instance.new("TextBox",button.Frame)
				
				db.Name = "key"
				db.Size = UDim2.new(.1,0,1,0)
				db.Text = desco[1]
				db.BorderSizePixel = 0
				db.PlaceholderText = desco[1]
				db.BackgroundColor3 = Color3.fromRGB(30,30,30)
				db.PlaceholderColor3 = Color3.fromRGB(255,255,255)
				db.TextColor3 = Color3.fromRGB(255,255,255)
				db.TextScaled = true
				db.Visible = true
				local db2 = Instance.new("TextLabel",db)
				db2.TextColor3 = Color3.fromRGB(255,255,255)
				db2.Size = UDim2.new(1,0,1,0)
				db2.Text = desco[3]
				db2.Position = UDim2.new(0,0,1,0)
				db2.BackgroundTransparency = 1
				db2.TextScaled = true
				db2.Visible = true
				db2.TextXAlignment = Enum.TextXAlignment.Left
				table.insert(objs[2],db)
				
			end
			if desco[2] == "D" then
				local db = Instance.new("TextBox",button.Frame)
				db.BackgroundTransparency = .2
				db.Name = "key"
				db.Size = UDim2.new(.1,0,1,0)
				db.Text = desco[1]
				db.Position = UDim2.new(-1.035,0,0 + (1*(_b-1)),0)
				db.BorderSizePixel = 0
				db.PlaceholderText = desco[1]
				db.BackgroundColor3 = Color3.fromRGB(30,30,30)
				db.PlaceholderColor3 = Color3.fromRGB(255,255,255)
				db.TextColor3 = Color3.fromRGB(255,255,255)
				db.TextScaled = true
				db.Visible = true
				local db2 = Instance.new("TextLabel",db)
				db2.TextColor3 = Color3.fromRGB(255,255,255)
				db2.Size = UDim2.new(1,0,1,0)
				db2.Text = desco[3]
				db2.Position = UDim2.new(0,0,1,0)
				db2.BackgroundTransparency = 1
				db2.TextScaled = true
				db2.Visible = true
				db2.TextXAlignment = Enum.TextXAlignment.Left
				table.insert(objs[2],db)
				
			end
			if desco[2] == "E" then
				local db = Instance.new("TextButton",button.Frame)
				db.BackgroundTransparency = .2
				local jk = 1
				db.Size = UDim2.new(.1,0,1,0)
				db.Text = desco[1][1]
				
				db.BorderSizePixel = 0
				db.BackgroundColor3 = Color3.fromRGB(30,30,30)
				db.TextColor3 = Color3.fromRGB(255,255,255)
				db.TextScaled = true
				db.Visible = true
				local db2 = Instance.new("TextLabel",db)
				db2.TextColor3 = Color3.fromRGB(255,255,255)
				db2.Size = UDim2.new(1,0,1,0)
				db2.Text = desco[3]
				db2.Position = UDim2.new(0,0,1,0)
				db2.BackgroundTransparency = 1
				db2.TextScaled = true
				db2.Visible = true
				db2.TextXAlignment = Enum.TextXAlignment.Left
				table.insert(objs[2],db)
				
				db.MouseButton1Down:Connect(function()
					jk += 1
					if jk > #desco[1] then
						jk = 1
					end
					db.Text = desco[1][jk]
				end)

			end
		end
	end
	
	return objs
end

ScreenGui.Parent = GitSets.Parent
Data.Name = "Data"
Data.Parent = ScreenGui

Module.Name = "Module"
Module.Parent = Data
Module.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Module.BackgroundTransparency = 0.900
Module.Position = UDim2.new(0, 0, 0.0811612606, 0)
Module.Size = UDim2.new(1, 0, 0.349999994, 0)
Module.Visible = false

UICorner.CornerRadius = UDim.new(0, 4)
UICorner.Parent = Module

TextLabel.Parent = Module
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.Position = UDim2.new(0.0210591629, 0, 0.0368015803, 0)
TextLabel.Size = UDim2.new(0.258003771, 0, 0.341950893, 0)
TextLabel.Font = Enum.Font.SourceSansLight
TextLabel.Text = "Hack [Name]"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextScaled = true
TextLabel.TextSize = 14.000
TextLabel.TextWrapped = true
TextLabel.TextXAlignment = Enum.TextXAlignment.Left

TextLabel3.Parent = ScreenGui
TextLabel3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel3.BackgroundTransparency = 1.000
TextLabel3.Position = UDim2.new(-0.001, 0,-0.002, 0)
TextLabel3.Size = UDim2.new(0.211, 0,0.103, 0)
TextLabel3.Font = Enum.Font.SourceSansLight
TextLabel3.Text = "Rise"
TextLabel3.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel3.TextScaled = true
TextLabel3.TextSize = 14.000
TextLabel3.TextWrapped = true
TextLabel3.TextXAlignment = Enum.TextXAlignment.Left

TextLabel5.Parent = ScreenGui
TextLabel5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel5.BackgroundTransparency = 1.000
TextLabel5.Position = UDim2.new(-0.001, 0,.95, 0)
TextLabel5.Size = UDim2.new(0.211, 0,0.05, 0)
TextLabel5.Font = Enum.Font.SourceSansLight
TextLabel5.Text = "SPS: "
TextLabel5.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel5.TextScaled = true
TextLabel5.TextSize = 14.000
TextLabel5.TextWrapped = true
TextLabel5.TextXAlignment = Enum.TextXAlignment.Left

TextLabel4.Parent = ScreenGui
TextLabel4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel4.BackgroundTransparency = 1.000
TextLabel4.Position = UDim2.new(0.08, 0,0, 0)
TextLabel4.Size = UDim2.new(0.1, 0,0.05, 0)
TextLabel4.Font = Enum.Font.SourceSansLight
TextLabel4.Text = "B".. GitSets.Version
TextLabel4.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel4.TextScaled = true
TextLabel4.TextSize = 14.000
TextLabel4.TextWrapped = true
TextLabel4.TextXAlignment = Enum.TextXAlignment.Left

coroutine.resume(coroutine.create(function()
	while wait() do
		pcall(function()
			while wait(3) do
				TweenCreate(TextLabel4,3,{TextColor3 = Color3.fromRGB(85, 255, 127)})
				TweenCreate(TextLabel3,3,{TextColor3 = Color3.fromRGB(85, 255, 127)})
				TweenCreate(TextLabel5,3,{TextColor3 = Color3.fromRGB(85, 255, 127)})
				wait(3)
				TweenCreate(TextLabel4,3,{TextColor3 = Color3.fromRGB(85, 255, 255)})
				TweenCreate(TextLabel3,3,{TextColor3 = Color3.fromRGB(85, 255, 255)})
				TweenCreate(TextLabel5,3,{TextColor3 = Color3.fromRGB(85, 255, 255)})
			end
		end)
		wait(1)
	end
end))

Frame.Parent = Module
Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame.BackgroundTransparency = 1.000
Frame.Position = UDim2.new(0.0199999381, 0, 0.3787525, 0)
Frame.Size = UDim2.new(0.951687574, 0, 0.621247351, 0)

UIGridLayout.Parent = Frame
UIGridLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIGridLayout.CellSize = UDim2.new(0.15, 0, 0.35, 0)

UICorner_2.CornerRadius = UDim.new(0, 6)
UICorner_2.Parent = Frame

opBar.Name = "opBar"
opBar.Parent = ScreenGui
opBar.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
opBar.BorderSizePixel = 0
opBar.Position = UDim2.new(0.00943395495, 0, 0.0150537416, 0)
opBar.Size = UDim2.new(0.7, 0, 0.0709677413, 0)
opBar.ZIndex = 0
opBar.Active = true
opBar.Draggable = true

close.Name = "close"
close.Parent = opBar
close.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
close.BackgroundTransparency = 1.000
close.Position = UDim2.new(0.932203472, 0, 0.24242425, 0)
close.Size = UDim2.new(0.0470809788, 0, 0.75757575, 0)
close.Image = "rbxasset://textures/ui/TopBar/close.png"

Backgrond.Name = "Backgrond"
Backgrond.Parent = opBar
Backgrond.BackgroundColor3 = Color3.fromRGB(31, 31, 31)
Backgrond.BackgroundTransparency = 1.000
Backgrond.BorderSizePixel = 0
Backgrond.Position = UDim2.new(0.0209999997, 0, 3.0999999, 0)
Backgrond.Size = UDim2.new(0.958568752, 0, 0.862574279, 0)
Backgrond.ZIndex = 0

Config.Name = "Config"
Config.Parent = Backgrond
Config.BackgroundColor3 = Color3.fromRGB(170, 85, 255)
Config.Position = UDim2.new(0.0210525598, 0, 3.12121201, 0)
Config.Size = UDim2.new(0.161621749, 0, 0.850257635, 0)
Config.Font = Enum.Font.SourceSansLight
Config.Text = "Config"
Config.TextColor3 = Color3.fromRGB(255, 255, 255)
Config.TextScaled = true
Config.TextSize = 14.000
Config.TextWrapped = true

UICorner_3.CornerRadius = UDim.new(0, 5)
UICorner_3.Parent = Config

Render.Name = "Render"
Render.Parent = Backgrond
Render.BackgroundColor3 = Color3.fromRGB(85, 170, 127)
Render.Position = UDim2.new(0.0210525598, 0, 3.12121201, 0)
Render.Size = UDim2.new(0.161621749, 0, 0.850257635, 0)
Render.Font = Enum.Font.SourceSansLight
Render.Text = "Render"
Render.TextColor3 = Color3.fromRGB(255, 255, 255)
Render.TextScaled = true
Render.TextSize = 14.000
Render.TextWrapped = true

UICorner_4.CornerRadius = UDim.new(0, 5)
UICorner_4.Parent = Render

Combat.Name = "Combat"
Combat.Parent = Backgrond
Combat.BackgroundColor3 = Color3.fromRGB(85, 0, 255)
Combat.Position = UDim2.new(0.0151586495, 0, 3.01581931, 0)
Combat.Size = UDim2.new(0.161621749, 0, 0.850257635, 0)
Combat.Font = Enum.Font.SourceSansLight
Combat.Text = "Combat"
Combat.TextColor3 = Color3.fromRGB(255, 255, 255)
Combat.TextScaled = true
Combat.TextSize = 14.000
Combat.TextWrapped = true

UICorner_5.CornerRadius = UDim.new(0, 5)
UICorner_5.Parent = Combat

UIListLayout.Parent = Backgrond
UIListLayout.FillDirection = Enum.FillDirection.Horizontal
UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Right
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout.Padding = UDim.new(0.0149999997, 0)

Blatant.Name = "Blatant"
Blatant.Parent = Backgrond
Blatant.BackgroundColor3 = Color3.fromRGB(255, 170, 127)
Blatant.Position = UDim2.new(0.0210525598, 0, 3.12121201, 0)
Blatant.Size = UDim2.new(0.161621749, 0, 0.850257635, 0)
Blatant.Font = Enum.Font.SourceSansLight
Blatant.Text = "Blatant"
Blatant.TextColor3 = Color3.fromRGB(255, 255, 255)
Blatant.TextScaled = true
Blatant.TextSize = 14.000
Blatant.TextWrapped = true

UICorner_6.CornerRadius = UDim.new(0, 5)
UICorner_6.Parent = Blatant

Backgrond_2.Name = "Backgrond"
Backgrond_2.Parent = opBar
Backgrond_2.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
Backgrond_2.BorderSizePixel = 0
Backgrond_2.Position = UDim2.new(0, 0, 0.442228585, 0)
Backgrond_2.Size = UDim2.new(0.999999881, 0, 9.4346056, 0)
Backgrond_2.ZIndex = 0

Selection.Name = "Selection"
Selection.Parent = Backgrond_2
Selection.BackgroundColor3 = Color3.fromRGB(16, 16, 16)
Selection.BorderSizePixel = 0
Selection.Position = UDim2.new(0.0210525915, 0, 0.370862156, 0)
Selection.Size = UDim2.new(0.958231986, 0, 0.593614936, 0)
Selection.ZIndex = 0
Selection.Visible = false

UICorner_7.CornerRadius = UDim.new(0, 5)
UICorner_7.Parent = Selection

ScrollingFrame.Parent = Selection
ScrollingFrame.Active = true
ScrollingFrame.BackgroundColor3 = Color3.fromRGB(16, 16, 16)
ScrollingFrame.BackgroundTransparency = 1.000
ScrollingFrame.BorderSizePixel = 0
ScrollingFrame.Size = UDim2.new(1, 0, 1, 0)
ScrollingFrame.CanvasSize = UDim2.new(0, 0, 5, 0)
ScrollingFrame.ScrollBarThickness = 9
ScrollingFrame.AutomaticCanvasSize = Enum.AutomaticSize.Y

UIListLayout_2.Parent = ScrollingFrame
UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout_2.Padding = UDim.new(0, 5)

UICorner_8.CornerRadius = UDim.new(0, 5)
UICorner_8.Parent = Backgrond_2

ProPic.Name = "ProPic"
ProPic.Parent = opBar
ProPic.BackgroundColor3 = Color3.fromRGB(26,26,26)
ProPic.BorderSizePixel = 0
ProPic.Position = UDim2.new(0.0207156315, 0, 0.427911699, 0)
ProPic.Size = UDim2.new(0.16195856, 0, 2.60239148, 0)
ProPic.Image = "http://www.roblox.com/asset/?id=49009723"
local usrID = game.Players.LocalPlayer.UserId
local hshot = game.Players:GetUserThumbnailAsync(usrID,Enum.ThumbnailType.HeadShot,Enum.ThumbnailSize.Size48x48)
if hshot then
	ProPic.Image = hshot
end

UICorner_9.CornerRadius = UDim.new(0, 5)
UICorner_9.Parent = ProPic

namePro.Name = "namePro"
namePro.Parent = opBar
namePro.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
namePro.BackgroundTransparency = 1.000
namePro.Position = UDim2.new(0.197740227, 0, 1.21212125, 0)
namePro.Size = UDim2.new(0.781544149, 0, 1, 0)
namePro.Font = Enum.Font.SourceSansLight
namePro.Text = "Hello, ".. game.Players.LocalPlayer.Name.. "!"
namePro.TextColor3 = Color3.fromRGB(255, 255, 255)
namePro.TextScaled = true
namePro.TextSize = 14.000
namePro.TextWrapped = true
namePro.TextXAlignment = Enum.TextXAlignment.Left

UICorner_10.CornerRadius = UDim.new(0, 5)
UICorner_10.Parent = opBar

TextLabel_2.Parent = opBar
TextLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.BackgroundTransparency = 1.000
TextLabel_2.Position = UDim2.new(0.64971751, 0, 0.121212125, 0)
TextLabel_2.Size = UDim2.new(0.258003771, 0, 1, 0)
TextLabel_2.Font = Enum.Font.SourceSansLight
TextLabel_2.Text = "Rise B".. GitSets.Version
TextLabel_2.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.TextScaled = true
TextLabel_2.TextSize = 14.000
TextLabel_2.TextWrapped = true
TextLabel_2.TextXAlignment = Enum.TextXAlignment.Right
--RISE://LEGACY_FUNC
local _gui_notif = Instance.new("Frame",ScreenGui)
_gui_notif.Size = UDim2.new(0.3, 0,.9, 0)
_gui_notif.BackgroundTransparency = 1
_gui_notif.Position = UDim2.new(0.569, 0,0, 0)


local _gui_exec = Instance.new("Frame",ScreenGui)
_gui_exec.Size = UDim2.new(0.3, 0,.9, 0)
_gui_exec.BackgroundTransparency = 1
_gui_exec.Position = UDim2.new(0.7, 0,0, 0)
local u1 = Instance.new("UIListLayout",_gui_exec)
u1.FillDirection = Enum.FillDirection.Vertical
u1.HorizontalAlignment = Enum.HorizontalAlignment.Right
u1.VerticalAlignment = Enum.VerticalAlignment.Top
u1.Padding = UDim.new(0,0)
u1.SortOrder = Enum.SortOrder.LayoutOrder
local u0 = Instance.new("UIListLayout",_gui_notif)
u0.FillDirection = Enum.FillDirection.Vertical
u0.HorizontalAlignment = Enum.HorizontalAlignment.Right
u0.VerticalAlignment = Enum.VerticalAlignment.Bottom
u0.Padding = UDim.new(0,13)

function notify(front,text,colr,mage,magecolor)

	local func = Instance.new("Frame",_gui_notif)
	func.Size = UDim2.new(0,0,0,0)
	game:GetService("TweenService"):Create(func,TweenInfo.new(.25,Enum.EasingStyle.Sine,Enum.EasingDirection.Out),{Size = UDim2.new(1,0,.1,0)}):Play(0)
	func.BackgroundColor3 = colr
	cornerGui(func,6)
	local txtfunc = Instance.new("TextButton",func)
	txtfunc.BackgroundTransparency = 1
	if string.find(text,"Disabled") then
		alert(2)
	else
		alert(3)
	end
	if mage then
		txtfunc.Size = UDim2.new(.825,0,1,0)
		txtfunc.Position = UDim2.new(.175,0,0,0)
		local mage2 = Instance.new("ImageLabel",func)
		mage2.BackgroundTransparency = 1
		mage2.Size = UDim2.new(.175,0,1,0)
		mage2.Image = mage
		mage2.ImageColor3 = magecolor

		local bor = Instance.new("UIStroke",func)
		bor.Transparency = .5
		bor.Color = magecolor
		bor.Thickness = 5

	else
		txtfunc.Size = UDim2.new(1,0,1,0)
		local bor = Instance.new("UIStroke",func)
		bor.Transparency = .5
		bor.Color = colr
		bor.Thickness = 5
	end


	txtfunc.Text = front.. "\n".. text
	txtfunc.TextScaled = true
	txtfunc.TextColor3 = Color3.fromRGB(255,255,255)
	txtfunc.Font = Enum.Font.SourceSans
	txtfunc.TextXAlignment = Enum.TextXAlignment.Left
	coroutine.resume(coroutine.create(function()
		wait(5)
		game:GetService("TweenService"):Create(txtfunc,TweenInfo.new(.25,Enum.EasingStyle.Sine,Enum.EasingDirection.Out),{TextTransparency = 1}):Play(0)
		game:GetService("TweenService"):Create(func,TweenInfo.new(.5,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),{Size = UDim2.new(0,0,.1,0)}):Play(0)
		if mage then
			game:GetService("TweenService"):Create(func.ImageLabel,TweenInfo.new(.25,Enum.EasingStyle.Sine,Enum.EasingDirection.Out),{ImageTransparency = 1}):Play(0)

		end
		wait(.25)
		func:Destroy()
	end))
end

function netexec(_TXT_DATA_TEXTSET_VERBOSE_RANDOMLEX_NETVERBOSESET1_)
	local nst = Instance.new("TextLabel")

	nst.Text = _TXT_DATA_TEXTSET_VERBOSE_RANDOMLEX_NETVERBOSESET1_
	nst.Size = UDim2.new(0,0,.05,0)
	nst.BackgroundTransparency = 1
	
	cornerGui(nst,3)
	nst.AutomaticSize = Enum.AutomaticSize.X

	nst.TextTransparency = 0
	nst.TextXAlignment = Enum.TextXAlignment.Right
	nst.Font = Enum.Font.Nunito
	nst.TextColor3 = Color3.fromRGB(85, 0, 255)
	nst.TextScaled = true
	nst.Name = string.len(_TXT_DATA_TEXTSET_VERBOSE_RANDOMLEX_NETVERBOSESET1_)
	nst.Parent = _gui_exec
	local stroke = Instance.new("UIStroke",nst)
	stroke.Transparency = .7
	stroke.Color = Color3.new(0,0,0)
	stroke.Thickness = 3
	coroutine.resume(coroutine.create(function()
		while nst do
			pcall(function()
				while wait(3) do
					TweenCreate(nst,3,{TextColor3 = Color3.fromRGB(85, 255, 127)})
					wait(3)
					TweenCreate(nst,3,{TextColor3 = Color3.fromRGB(85, 255, 255)})
				end
			end)
			wait(1)
		end
	end))
	return true
end

function netdexc(_TXT_DATA_TEXTSET_VERBOSE_RANDOMLEX_)
	for _, dp in pairs(_gui_exec:GetChildren()) do
		if dp:IsA("TextLabel") then
			if dp.Text == _TXT_DATA_TEXTSET_VERBOSE_RANDOMLEX_ then
				dp:Destroy()
				return true
			end
		end
		


	end
	return false
end

local open_menu = false

--RISE://SET_ANIM
guiAnim(Blatant)
guiAnim(Render)
guiAnim(Combat)
guiAnim(Config)

local blatant_main = newSubMenu("Blatant")
local render_main = newSubMenu("Render")
local combat_main = newSubMenu("Combat")
local config_main = newSubMenu("Config")

local dropDownSpeed = newDropDown(blatant_main,UDim2.new(0.022, 0,0.024, 0),"Speed",{{16,"A","Speed"},{"false","B","Active"},{"","C","Key"},{"false","B","Velocity"},{"false","B","OcTp"},{"false","B","BHop"}})
local dropDownjp = newDropDown(blatant_main,UDim2.new(0, 0,0.106, 0),"Jump Power",{{50,"A","JumpPower"},{"false","B","Active"},{"","C","Key"}})
local dropDownfLY = newDropDown(blatant_main,UDim2.new(0, 0,0.188, 0),"Fly",{{16,"A","Speed"},{"false","B","Active"},{"","C","Key"},{2,"A","YSpeed"},{{"Normal","Bounce","TP","BounceTP"},"E","Mode"}})
local dropDownTP = newDropDown(blatant_main,UDim2.new(0.022, 0,0.350, 0),"ClickTp",{{"false","B","Active"},{"","C","Key"}})
local dropDownDisabler = newDropDown(blatant_main,UDim2.new(0.022, 0,0.432, 0),"Disabler",{{"false","B","Active"},{"","C","Key"},{.3,"A","Delay"},{{"Normal","Callback"},"E","Mode"}})
local dropDownInvFling = newDropDown(blatant_main,UDim2.new(0.022, 0,0.512, 0),"InvFling",{{"false","B","Active"},{"Russia Man","D","PlayerName                        (Display Names Allowed)"},{"","C","Key"}})
local dropDownNoclip = newDropDown(blatant_main,UDim2.new(0.022, 0,0.592, 0),"Noclip",{{"false","B","Active"},{"","C","Key"}})
local dropDownJumpFly = newDropDown(blatant_main,UDim2.new(0.022, 0,0.672, 0),"JumpFly",{{"false","B","Active"},{"","C","Key"}})
local dropDownlong = newDropDown(blatant_main,UDim2.new(0, 0,0.106, 0),"LongJump",{{25,"A","Speed"},{"false","B","Active"},{"","C","Key"}})
local dropDownAnVoid = newDropDown(blatant_main,UDim2.new(0, 0,0.106, 0),"Anti-Void",{{-300,"A","Position"},{"false","B","Bounce"},{"false","B","Active"},{"","C","Key"}})
local dropDownspin = newDropDown(blatant_main,UDim2.new(0, 0,0.106, 0),"Spin",{{25,"A","Speed"},{"false","B","Active"},{"","C","Key"}})


local dropDownEsp = newDropDown(render_main,UDim2.new(0.022, 0,0.024, 0),"Box Esp",{{"false","B","Active"},{"255","A","R"},{"255","A","G"},{"255","A","B"},{"","C","Key"}})
local dropDownRejoin = newDropDown(render_main,UDim2.new(0.022, 0,0.104, 0),"Rejoin",{{"false","B","Active"}})
local dropDownLocalKick = newDropDown(render_main,UDim2.new(0.022, 0,0.104, 0),"Anti Local Kick",{{"false","B","Active"}})
local dropDownChatHide = newDropDown(render_main,UDim2.new(0.022, 0,0.104, 0),"ChatNameHider",{{"false","B","Active"},{"false","B","HideOthers"},{"User","D","Active"}})
local dropDownFP = newDropDown(render_main,UDim2.new(0.022, 0,0.104, 0),"FirstPerson",{{"false","B","Active"},{"true","B","Active"}})
local dropDownMB = newDropDown(render_main,UDim2.new(0.022, 0,0.104, 0),"Motion Blur",{{"false","B","Active"},{"1","A","Multiplier"}})
local dropDownStats = newDropDown(render_main,UDim2.new(0.022, 0,0.104, 0),"Stats",{{"false","B","Active"}})
local dropDownNameTag = newDropDown(render_main,UDim2.new(0.022, 0,0.104, 0),"Name Tags",{{"false","B","Active"}})
local dropDownFPSBoost = newDropDown(render_main,UDim2.new(0.022, 0,0.104, 0),"FPSBooster",{{"false","B","Active"}})
local dropDownSPSCounter = newDropDown(render_main,UDim2.new(0.022, 0,0.104, 0),"SPSCounter",{{"false","B","Active"}})
local dropDownKeystrokes = newDropDown(render_main,UDim2.new(0.022, 0,0.104, 0),"Keystrokes",{{"false","B","Active"}})

local dropDownReach = newDropDown(combat_main,UDim2.new(0.022, 0,0.270, 0),"Reach",{{"false","B","Active"},{"","C","Key"},{8,"A","Size"}})
local dropDownHitboxE = newDropDown(combat_main,UDim2.new(0.022, 0,0.270, 0),"Hitbox Extender",{{"false","B","Active"},{"","C","Key"},{1,"A","Multiplier"}})
local dropDownFightBot = newDropDown(combat_main,UDim2.new(0.022, 0,0.270, 0),"FightBot",{{"false","B","Active"},{"","C","Key"}})
local dropDownAim


blatant_main.Visible = true
if table.find(GitSets.GitOwnerConfig.Bedwars,game.CreatorId) then
	dropDownAim = newDropDown(combat_main,UDim2.new(0.022, 0,0.270, 0),"Aimbot",{{"false","B","Active"},{"false","B","HeadLock"},{"","C","Key"},{16,"A","Distance"},{"false","B","Aura"},{{"None","BlockHit","Rotate"},"E","Animation"}})
else
	dropDownAim =newDropDown(combat_main,UDim2.new(0.022, 0,0.270, 0),"Aimbot",{{"false","B","Active"},{"false","B","HeadLock"},{"","C","Key"},{16,"A","Distance"},{"false","B","FMS Aura"},{{"None","BlockHit","Rotate"},"E","Animation"}})
end 

--RISE://OPEN_MENU
blatant_main.Visible = true
render_main.Visible = false
combat_main.Visible = false
config_main.Visible = false
Blatant.MouseButton1Down:Connect(function()
	blatant_main.Visible = true
	render_main.Visible = false
	combat_main.Visible = false
	config_main.Visible = false
end)
Render.MouseButton1Down:Connect(function()
	blatant_main.Visible = false
	render_main.Visible = true
	combat_main.Visible = false
	config_main.Visible = false
end)
Combat.MouseButton1Down:Connect(function()
	blatant_main.Visible = false
	render_main.Visible = false
	combat_main.Visible = true
	config_main.Visible = false
end)
Config.MouseButton1Down:Connect(function()
	blatant_main.Visible = false
	render_main.Visible = false
	combat_main.Visible = false
	config_main.Visible = true
end)
GitSets.Blur_Settings[1].Enabled = false
opBar.Visible = false
open_menu = false
close.Modal = true
close.MouseButton1Down:Connect(function()
	GitSets.Blur_Settings[1].Enabled = false
	opBar.Visible = false
	open_menu = false
end)
game:GetService("UserInputService").InputBegan:Connect(function(key,gpe)
	if not gpe then
		if key.KeyCode == GitSets.OpenGui then
			if open_menu == false then
				GitSets.Blur_Settings[1].Enabled = true
				opBar.Visible = true
				open_menu = true
			else
				GitSets.Blur_Settings[1].Enabled = false
				opBar.Visible = false
				open_menu = false
			end
		end
	end
end)
coroutine.resume(coroutine.create(function()
	while wait() do
		if dropDownTP[2][1].Text == "true" then
			dropDownTP[2][1].Text = "false"
			if game.Players.LocalPlayer:GetMouse().Target then
				notify("Succes","Target Found! [".. game.Players.LocalPlayer:GetMouse().Target.Name.. "]",Color3.fromRGB(85, 255, 127),"http://www.roblox.com/asset/?id=2828150111",Color3.fromRGB(70, 211, 103))
				if game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid").Health > 0 then
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer:GetMouse().Hit
				else
					notify("Warning","Cannot Teleport While Dead!",Color3.fromRGB(255, 255, 127),"http://www.roblox.com/asset/?id=6254819318",Color3.fromRGB(255, 255, 127))
				end

			else
				notify("Warning","No Target Found!",Color3.fromRGB(255, 255, 127),"http://www.roblox.com/asset/?id=6254819318",Color3.fromRGB(255, 255, 127))
			end
			netdexc("ClickTp")
		end
	end
end))
coroutine.resume(coroutine.create(function()
	local blur = Instance.new("BlurEffect") 
	blur.Size = 0
	blur.Name = "RISE_ASSET://Motion_Blur"
	coroutine.resume(coroutine.create(function()
		local lastPos = game.Workspace.CurrentCamera.CFrame.Position
		while wait() do
			local mul = tonumber(dropDownMB[2][1].Text)
			if not mul then
				mul = 1
			end
			blur.Size = (lastPos - game.Workspace.CurrentCamera.CFrame.Position).Magnitude  * mul
			lastPos = game.Workspace.CurrentCamera.CFrame.Position 
		end
	end))

	while wait() do
		if dropDownMB[2][1].Text == "true" then
			blur.Parent = game.Lighting
		else
			blur.Parent = GitSets.Parent
		end
	end
end))
coroutine.resume(coroutine.create(function()
	while wait() do
		if dropDownSPSCounter[2][1].Text == "true" then
			TextLabel5.Visible = true
			TextLabel5.Text = "SPS: ".. math.floor((game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity.Magnitude*10)+.5)/10
		else
			TextLabel5.Visible = false
			wait(1)
		end
	end
	
end))
coroutine.resume(coroutine.create(function()
	local Keystrokes = Instance.new("Frame")
	local w = Instance.new("TextLabel")
	local UICorner = Instance.new("UICorner")
	local s = Instance.new("TextLabel")
	local UICorner_2 = Instance.new("UICorner")
	local a = Instance.new("TextLabel")
	local UICorner_3 = Instance.new("UICorner")
	local d = Instance.new("TextLabel")
	local UICorner_4 = Instance.new("UICorner")
	local lmb = Instance.new("TextLabel")
	local UICorner_5 = Instance.new("UICorner")
	local rmb = Instance.new("TextLabel")
	local UICorner_6 = Instance.new("UICorner")

	--Properties:

	Keystrokes.Name = "Keystrokes"
	Keystrokes.Parent = ScreenGui
	Keystrokes.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Keystrokes.BackgroundTransparency = 1.000
	Keystrokes.Size = UDim2.new(.8, 0, .8, 0)
	Keystrokes.ZIndex = -4
	w.Name = "w"
	w.Parent = Keystrokes
	w.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
	w.BackgroundTransparency = 0.300
	w.Position = UDim2.new(0.109890118, 0, 0.149739593, 0)
	w.Size = UDim2.new(0.0636763126, 0, 0.113834977, 0)
	w.Font = Enum.Font.SourceSans
	w.Text = "W"
	w.TextColor3 = Color3.fromRGB(255, 255, 255)
	w.TextScaled = true
	w.TextSize = 14.000
	w.TextWrapped = true

	UICorner.Parent = w

	s.Name = "s"
	s.Parent = Keystrokes
	s.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
	s.BackgroundTransparency = 0.300
	s.Position = UDim2.new(0.109890118, 0, 0.272135437, 0)
	s.Size = UDim2.new(0.0636763126, 0, 0.113834977, 0)
	s.Font = Enum.Font.SourceSans
	s.Text = "S"
	s.TextColor3 = Color3.fromRGB(255, 255, 255)
	s.TextScaled = true
	s.TextSize = 14.000
	s.TextWrapped = true

	UICorner_2.Parent = s

	a.Name = "a"
	a.Parent = Keystrokes
	a.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
	a.BackgroundTransparency = 0.300
	a.Position = UDim2.new(0.0388278402, 0, 0.272135437, 0)
	a.Size = UDim2.new(0.0636763126, 0, 0.113834977, 0)
	a.Font = Enum.Font.SourceSans
	a.Text = "A"
	a.TextColor3 = Color3.fromRGB(255, 255, 255)
	a.TextScaled = true
	a.TextSize = 14.000
	a.TextWrapped = true

	UICorner_3.Parent = a

	d.Name = "d"
	d.Parent = Keystrokes
	d.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
	d.BackgroundTransparency = 0.300
	d.Position = UDim2.new(0.181684986, 0, 0.272135437, 0)
	d.Size = UDim2.new(0.0636763126, 0, 0.113834977, 0)
	d.Font = Enum.Font.SourceSans
	d.Text = "D"
	d.TextColor3 = Color3.fromRGB(255, 255, 255)
	d.TextScaled = true
	d.TextSize = 14.000
	d.TextWrapped = true

	UICorner_4.Parent = d

	lmb.Name = "lmb"
	lmb.Parent = Keystrokes
	lmb.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
	lmb.BackgroundTransparency = 0.300
	lmb.Position = UDim2.new(0.038827844, 0, 0.397135407, 0)
	lmb.Size = UDim2.new(0.0998401344, 0, 0.113834977, 0)
	lmb.Font = Enum.Font.SourceSans
	lmb.Text = "LMB"
	lmb.TextColor3 = Color3.fromRGB(255, 255, 255)
	lmb.TextScaled = true
	lmb.TextSize = 14.000
	lmb.TextWrapped = true

	UICorner_5.Parent = lmb

	rmb.Name = "rmb"
	rmb.Parent = Keystrokes
	rmb.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
	rmb.BackgroundTransparency = 0.300
	rmb.Position = UDim2.new(0.147052959, 0, 0.397135407, 0)
	rmb.Size = UDim2.new(0.0983083099, 0, 0.113834977, 0)
	rmb.Font = Enum.Font.SourceSans
	rmb.Text = "RMB"
	rmb.TextColor3 = Color3.fromRGB(255, 255, 255)
	rmb.TextScaled = true
	rmb.TextSize = 14.000
	rmb.TextWrapped = true

	UICorner_6.Parent = rmb
	game:GetService("UserInputService").InputBegan:Connect(function(ly,gpe)
		if not gpe then
			if ly.KeyCode == Enum.KeyCode.W then
				w.BackgroundColor3 = Color3.fromRGB(0,0,0)
			end
			
			if ly.KeyCode == Enum.KeyCode.A then
				a.BackgroundColor3 = Color3.fromRGB(0,0,0)
			end
			
			if ly.KeyCode == Enum.KeyCode.S then
				s.BackgroundColor3 = Color3.fromRGB(0,0,0)
			end
			
			if ly.KeyCode == Enum.KeyCode.D then
				d.BackgroundColor3 = Color3.fromRGB(0,0,0)
			end
		end
	end)
	game:GetService("UserInputService").InputEnded:Connect(function(ly,gpe)
		if not gpe then
			if ly.KeyCode == Enum.KeyCode.W then
				
				w.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
			end

			if ly.KeyCode == Enum.KeyCode.A then
				
				a.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
			end

			if ly.KeyCode == Enum.KeyCode.S then
				
				s.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
			end

			if ly.KeyCode == Enum.KeyCode.D then
				
				d.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
			end
		end
	end)
	game.Players.LocalPlayer:GetMouse().Button1Down:Connect(function()
		lmb.BackgroundColor3 = Color3.fromRGB(0,0,0)
	end)
	game.Players.LocalPlayer:GetMouse().Button1Up:Connect(function()
		lmb.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
	end)
	game.Players.LocalPlayer:GetMouse().Button2Down:Connect(function()
		rmb.BackgroundColor3 = Color3.fromRGB(0,0,0)
	end)
	game.Players.LocalPlayer:GetMouse().Button2Up:Connect(function()
		rmb.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
	end)
	while wait() do
		if dropDownKeystrokes[2][1].Text == "true" then
			Keystrokes.Visible = true
		else
			Keystrokes.Visible = false
			wait(1)
		end
	end

end))

coroutine.resume(coroutine.create(function()
	repeat wait() until dropDownChatHide[2][1].Text == "true"
	for _, kor in pairs(game.Players.LocalPlayer.PlayerGui:WaitForChild("Chat"):GetDescendants()) do
		if kor:IsA("TextLabel") or kor:IsA("TextButton") then
			if string.find(string.lower(kor.Text),string.lower(game.Players.LocalPlayer.Name)) then
				kor.Text = string.gsub(string.lower(kor.Text),string.lower(game.Players.LocalPlayer.Name),dropDownChatHide[2][3].Text)
			end
			if string.find(string.lower(kor.Text),string.lower(game.Players.LocalPlayer.DisplayName)) then
				kor.Text = string.gsub(string.lower(kor.Text),string.lower(game.Players.LocalPlayer.DisplayName),dropDownChatHide[2][3].Text)
			end
		end
	end
	game.Players.LocalPlayer.PlayerGui:WaitForChild("Chat").DescendantAdded:Connect(function()
		wait()
		if dropDownChatHide[2][1].Text == "true" then
			for _, kor in pairs(game.Players.LocalPlayer.PlayerGui:WaitForChild("Chat"):GetDescendants()) do
				if kor:IsA("TextLabel") or kor:IsA("TextButton") then
					if string.find(string.lower(kor.Text),string.lower(game.Players.LocalPlayer.Name)) then
						kor.Text = string.gsub(string.lower(kor.Text),string.lower(game.Players.LocalPlayer.Name),dropDownChatHide[2][3].Text)
					end
					if string.find(string.lower(kor.Text),string.lower(game.Players.LocalPlayer.DisplayName)) then
						kor.Text = string.gsub(string.lower(kor.Text),string.lower(game.Players.LocalPlayer.DisplayName),dropDownChatHide[2][3].Text)
					end
				end
			end
		end

	end)
end))

coroutine.resume(coroutine.create(function()
	local lastL = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
	local dr = Instance.new("Part",workspace)
	dr.Size = Vector3.new(0,9,0)
	dr.CanCollide = false
	dr.Anchored = true
	dr.Transparency = 1
	local function isOi()
		local touch = false
		dr.CanCollide = true
		dr.Position = game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(0,2,0)
		for _, df in pairs(dr:GetTouchingParts()) do
			if df.Parent ~= game.Players.LocalPlayer.Character then
				touch = true
				break
			end
		end
		dr.CanCollide = false
		return touch
	end
	while wait(1) do
		pcall(function()
			while wait() do
				local susY = tonumber(dropDownAnVoid[2][1].Text)
				if isOi() then
					lastL = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
				end
				if dropDownAnVoid[2][3].Text == "true" then
					if not susY then
						susY = -300
					end

					if game.Players.LocalPlayer.Character.HumanoidRootPart.Position.Y <= susY then
						if dropDownAnVoid[2][2].Text == "true" then
							game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity *= -1.1
						else
							game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = lastL
						end
					end
				end

			end
		end)
	end
end))
coroutine.resume(coroutine.create(function()
	while wait(5) do
		if dropDownFPSBoost[2][1].Text == "true" then
			for _, kl in pairs(workspace:GetDescendants()) do
				if kl:IsA("BasePart") then
					kl.CastShadow = false

				end
			end
		else
			for _, kl in pairs(workspace:GetDescendants()) do
				if kl:IsA("BasePart") then
					kl.CastShadow = true

				end
			end

		end
	end

end))
coroutine.resume(coroutine.create(function()
	local waitime = 0
	local starttc = tick()
	while wait(waitime) do
		local speed = dropDownSpeed[2][1].Text 
		if not tonumber(speed) then
			speed = 16
		end
		pcall(function()
			if dropDownSpeed[2][2].Text == "true" then
				if dropDownSpeed[2][6].Text == "true" and (GitSets.Move_W or GitSets.Move_A or GitSets.Move_S or GitSets.Move_D) then
					game.Players.LocalPlayer.Character.Humanoid.Jump = true
				end
				if tick() - starttc >= 1 and dropDownSpeed[2][5].Text == "true" then
					local dur = Vector3.new(0,0,0)
					if GitSets.Move_W then
						dur += game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.LookVector*speed
					end
					if GitSets.Move_A then
						dur -= game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.RightVector*speed
					end
					if GitSets.Move_S then
						dur -= game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.LookVector*speed
					end
					if GitSets.Move_D then
						dur += game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.RightVector*speed
					end
					if dur ~= Vector3.new(0,0,0) then
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame += dur
					end
					starttc = tick()
				end
				if dropDownSpeed[2][4].Text == "true" then
					waitime = 0
					game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
					local dur = Vector3.new(0,0,0)
					if GitSets.Move_W then
						dur += game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.LookVector*speed
					end
					if GitSets.Move_A then
						dur -= game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.RightVector*speed
					end
					if GitSets.Move_S then
						dur -= game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.LookVector*speed
					end
					if GitSets.Move_D then
						dur += game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.RightVector*speed
					end
					if dur ~= Vector3.new(0,0,0) then
						game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(dur.X,game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity.Y,dur.Z)
					end
				else
					waitime = .1
					game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = tonumber(speed)
				end

			else
				game.Players.LocalPlayer.Character.Humanoid.WalkSpeed =16
			end
		end)

	end
end))
coroutine.resume(coroutine.create(function()
	while wait(1) do

		if dropDownRejoin[2][1].Text == "true" then
			game:GetService("TeleportService"):Teleport(game.PlaceId,game.Players.LocalPlayer)
			game.Players.LocalPlayer:Kick("Rejoin Request")
		end
	end
end))
coroutine.resume(coroutine.create(function()
	while wait(1) do
		local succes, errms = pcall(function()
			while wait() do
				if dropDownFightBot[2][1].Text == "true" then
					if dropDownAim[2][1].Text == "true" and dropDownAim[2][5].Text == "true" then
						local pfs=  game:GetService("PathfindingService")
						local function newPath(pos)
							local path = pfs:CreatePath()
							path:ComputeAsync(game.Players.LocalPlayer.Character.HumanoidRootPart.Position,pos)

							return path
						end
						local function closestPlayer()
							local cpr = {math.huge,nil}
							for _, jko in pairs(game.Players:GetChildren()) do
								if jko then
									if jko.Character then
										if jko.Character:FindFirstChild("HumanoidRootPart") and not jko.Character:FindFirstChild("ForceField") then
											if (jko.Character.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= cpr[1] and jko.Character.Humanoid.Health > 0 and jko.Character ~= game.Players.LocalPlayer.Character then
												cpr[1] = (jko.Character.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
												cpr[2] = jko
											end
										end
									end
								end

							end
							return cpr
						end
						local targetPlay = closestPlayer()

						if targetPlay[2] then
							GitSets.chatify("Attacking ".. tostring(targetPlay[2]))
							game.Players.LocalPlayer.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Running)
							if targetPlay[1] > 10 then
								TweenCreate(game.Players.LocalPlayer.Character.HumanoidRootPart,((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - targetPlay[2].Character.HumanoidRootPart.Position).Magnitude/game.Players.LocalPlayer.Character.Humanoid.WalkSpeed),{CFrame = targetPlay[2].Character.HumanoidRootPart.CFrame})
							else
								TweenCreate(game.Players.LocalPlayer.Character.HumanoidRootPart,game.Players.LocalPlayer.Character.Humanoid.WalkSpeed,{CFrame = CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.LookVector * -(10-targetPlay[1]))})
							end	
						end
					else
						GitSets.chatify("Must have Aimbot and FMS Aura(in aimbot settings) to use FightBot.")
						wait(1)
					end
				end
			end
		end)
		if not succes then
			warn(errms)
		end
	end
end))
coroutine.resume(coroutine.create(function()
	local gbh = tonumber(dropDownDisabler[2][3].Text)
	local lastCallbackPosition = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
	while wait(gbh) do
		if not gbh then
			gbh = 1
		end
		local charClone = nil
		local char = nil
		pcall(function()

			if dropDownDisabler[2][4].Text == "Callback" then
				if dropDownDisabler[2][1].Text == "true" then
					local kbr = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
					local lastVel = game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity
					game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(0,0,0)
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = lastCallbackPosition
					TweenCreate(game.Players.LocalPlayer.Character.HumanoidRootPart,gbh/2,{CFrame = kbr})
					wait(gbh/2)

					game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = lastVel
					lastCallbackPosition = kbr
				else
					lastCallbackPosition = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
				end



			elseif dropDownDisabler[2][1].Text == "true" then
				local ui = game.Players.LocalPlayer.PlayerGui:GetChildren()
				for _, db in pairs(ui) do db.Parent = workspace end
				char = game.Players.LocalPlayer.Character
				charClone = char:Clone()

				workspace.CurrentCamera.CameraSubject = charClone.Humanoid
				charClone.PrimaryPart.CFrame = char.PrimaryPart.CFrame
				game.Players.LocalPlayer.Character = charClone

				charClone.Parent = workspace
				for _, db in pairs(ui) do db.Parent = game.Players.LocalPlayer.PlayerGui end
				local jk = game:GetService("RunService").Stepped:Connect(function()
					for _, db in pairs(charClone:GetDescendants()) do
						if db:IsA("BasePart") then
							db.CanCollide = false
						end
					end
					workspace.CurrentCamera.CameraSubject = charClone.Humanoid
					char.Humanoid:ChangeState(Enum.HumanoidStateType.Running)
					for _, db in pairs(charClone:GetDescendants()) do
						if db:IsA("BasePart") then
							db.CanCollide = false
						end
					end
				end)
				local jk2 = game:GetService("RunService").Stepped:Connect(function()
					for _, db in pairs(charClone:GetDescendants()) do
						if db:IsA("BasePart") then
							db.CanCollide = false
						end
					end
					workspace.CurrentCamera.CameraSubject = charClone.Humanoid
					char.Humanoid:ChangeState(Enum.HumanoidStateType.Running)
					for _, db in pairs(charClone:GetDescendants()) do
						if db:IsA("BasePart") then
							db.CanCollide = false
						end
					end
				end)
				local bp = Instance.new("BodyPosition")
				bp.P = 41000
				bp.MaxForce = Vector3.new(9e9,9e9,9e9)
				bp.Position = charClone.PrimaryPart.Position

				local bg = Instance.new("BodyGyro")
				bg.CFrame = charClone.PrimaryPart.CFrame
				bg.P = 100000000
				bg.MaxTorque = Vector3.new(9e9,9e9,9e9)
				local done = false
				char.Humanoid.Died:Connect(function()
					jk:Disconnect()
					jk2:Disconnect()
					done = true
					charClone:Destroy()
					game.Players.LocalPlayer.Character = char
					char.Humanoid.Health = 0
				end)
				charClone.Humanoid.Died:Connect(function()
					jk:Disconnect()
					jk2:Disconnect()
					done = true
					charClone:Destroy()
					game.Players.LocalPlayer.Character = char
					char.Humanoid.Health = 0
				end)
				charClone.Humanoid.DisplayName = "Rise B".. GitSets.Version
				local zk = tonumber(dropDownDisabler[2][3].Text)
				if not zk then
					zk = .3
				end
				game.Players.LocalPlayer.Character = charClone

				while wait(zk) and not done do
					zk = tonumber(dropDownDisabler[2][3].Text)
					if not zk then
						zk = .3
					end
					bp.Parent = char.PrimaryPart
					bg.Parent = char.PrimaryPart

					bp.Position = charClone.PrimaryPart.Position
					bg.CFrame = charClone.PrimaryPart.CFrame
					char.Parent = workspace
					char.PrimaryPart.Anchored = false
					wait(0)

					char.Parent = game.Lighting
					char.PrimaryPart.Anchored = true
					bp.Parent = workspace
					bg.Parent = workspace

				end
				jk:Disconnect()
				jk2:Disconnect()
				done = true
				charClone:Destroy()
				game.Players.LocalPlayer.Character = char
				char.Humanoid.Health = 0
			end
		end)
		if charClone then
			warn("Error")
			charClone:Destroy()
			if char then
				game.Players.LocalPlayer.Character = char
				workspace.CurrentCamera.CameraSubject = char.Humanoid
				char.Humanoid.Health = 0
			end
		end
	end
end))



coroutine.resume(coroutine.create(function()
	local lastac = false
	local can = false
	game:GetService("UserInputService").InputBegan:Connect(function(keygr,gpe)
		if keygr.KeyCode == Enum.KeyCode.Space and lastac and not gpe then
			game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity += Vector3.new(0,game.Players.LocalPlayer.Character.Humanoid.JumpPower,0)
		end
	end)
	game:GetService("RunService").Stepped:Connect(function()
		if dropDownNoclip[2][1].Text == "true" then
			lastac = true
			can = true
		else
			can = false
			if lastac then
				for _ = 0, 10 do
					game.Players.LocalPlayer.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Running)

				end
				lastac = false
			end
		end
	end)
	game:GetService("RunService").Stepped:Connect(function()
		if can then
			game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
		end
	end)
	game:GetService("RunService").RenderStepped:Connect(function()
		if can then
			game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
		end
	end)
end))



coroutine.resume(coroutine.create(function()
	local dbfr = false
	game:GetService("UserInputService").InputBegan:Connect(function(keygr,gpe)
		if keygr.KeyCode == Enum.KeyCode.Space and dropDownJumpFly[2][1].Text == "true" and not gpe then
			dbfr = true
		end
	end)

	game:GetService("UserInputService").InputEnded:Connect(function(keygr,gpe)
		if keygr.KeyCode == Enum.KeyCode.Space and dropDownJumpFly[2][1].Text == "true" then
			dbfr = false
		end
	end)
	while wait(1) do
		pcall(function()
			while wait() do

				if dropDownJumpFly[2][1].Text == "false" and dbfr then
					dbfr = false
				end
				if dbfr and game.Players.LocalPlayer.Character.Humanoid.Health > 0 then
					game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity.X,game.Players.LocalPlayer.Character.Humanoid.JumpPower,game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity.Z)
				end
			end
		end)
	end
end))





magt.Image = nulmage
aimUI.Position = UDim2.new(0.583, 0,0.431, 0)
aimUI.Size = UDim2.new(0.2, 0,0.1, 0)
aimUI.BorderColor3 = Color3.fromRGB(53, 53, 53)
aimUI.BackgroundTransparency = .75
aimUI.BackgroundColor3 = Color3.fromRGB(10,10,10)
cornerGui(aimUI,8)
uIs.Color = Color3.fromRGB(39, 39, 39)
uIs.Thickness = 3
uIs.Transparency = .5
cornerGui(magt,1000000)
magt.Size = UDim2.new(0.27, 0,1, 0)
txtAim[1] = Instance.new("TextLabel",aimUI)
txtAim[1].BackgroundTransparency = 1
txtAim[1].Text = "Nil"
txtAim[1].Font = Enum.Font.Nunito
txtAim[1].TextScaled = true
txtAim[1].TextColor3 = Color3.fromRGB(255, 255, 255)
txtAim[1].TextXAlignment = Enum.TextXAlignment.Left
txtAim[2] = txtAim[1]:Clone()
txtAim[2].Position = UDim2.new(0.374, 0,0.643, 0)

txtAim[2].TextColor3 = Color3.fromRGB(255, 255, 255)
txtAim[2].TextXAlignment = Enum.TextXAlignment.Left
txtAim[2].Size = UDim2.new(1,0,1,0)
txtAim[1].Size = UDim2.new(0.626, 0,0.557, 0)
txtAim[1].Position = UDim2.new(0.374, 0,0, 0)
txtAim[3] = Instance.new("Frame")
txtAim[3].Size = UDim2.new(0.527, 0,0.259, 0)
txtAim[3].Position = UDim2.new(0.371, 0,0.682, 0)
txtAim[2].Position = UDim2.new(1,0,0,0)
txtAim[2].Parent = txtAim[3]
cornerGui(txtAim[3])
txtAim[2].Parent = txtAim[3]
txtAim[3].Parent = aimUI
aimUI.Visible = false
aimUI.AnchorPoint= Vector2.new(.5,.5)
local colorUI = Instance.new("UIGradient")
colorUI.Parent = txtAim[3]
coroutine.resume(coroutine.create(function()
	while wait() do
		for drt = 0, 49 do
			colorUI.Color = ColorSequence.new({ColorSequenceKeypoint.new(0,Color3.fromRGB(85, 0, 255)),ColorSequenceKeypoint.new(.99 - (drt*.02),Color3.fromRGB(105, 140, 255)),ColorSequenceKeypoint.new(1,Color3.fromRGB(85, 0, 255))})
			wait(.1)
		end
		for drt = 0, 49 do
			colorUI.Color = ColorSequence.new({ColorSequenceKeypoint.new(0,Color3.fromRGB(85, 0, 255)),ColorSequenceKeypoint.new(0.02 + (drt*.02),Color3.fromRGB(105, 140, 255)),ColorSequenceKeypoint.new(1,Color3.fromRGB(85, 0, 255))})
			wait(.1)
		end
	end
end))
local db_OnAcces = false
local Sword_Fake = Instance.new("ImageLabel")

Sword_Fake.Parent = ScreenGui
Sword_Fake.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Sword_Fake.BackgroundTransparency = 1.000
Sword_Fake.Position = UDim2.new(0.56232506, 0, 0.536062419, 0)
Sword_Fake.Rotation = 260.000
Sword_Fake.Size = UDim2.new(0.471734911, 0, 0.582845986, 0)
Sword_Fake.Image = "http://www.roblox.com/asset/?id=3610692290"

local onAnimation = false
local canAm = true

game:GetService("RunService").RenderStepped:Connect(function()
	if dropDownAim[2][6].Text ~= "None" then
		Sword_Fake.Visible = true
	else
		Sword_Fake.Visible = false
	end
	if dropDownAim[2][1].Text == "true" then
		local function closestPlayer()
			local cpr = {tonumber(dropDownAim[2][4].Text),nil}
			for _, jko in pairs(game.Players:GetChildren()) do
				if jko then
					if jko.Character then
						if jko.Character:FindFirstChild("HumanoidRootPart") then
							if (jko.Character.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= cpr[1] and jko.Character.Humanoid.Health > 0 and jko.Character ~= game.Players.LocalPlayer.Character then
								cpr[1] = (jko.Character.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
								cpr[2] = jko
							end
						end
					end
				end

			end
			return cpr
		end
		local glos = closestPlayer()
		if glos[2] then
			local pact = game.Players.LocalPlayer.Backpack 
			if not pact then
				pact = game.Players.LocalPlayer.Pack
			end
			local tool = game.Players.LocalPlayer.Character:FindFirstChild('ClassicSword') or game.Players.LocalPlayer.Character:FindFirstChild('Sword') or game.Players.LocalPlayer.Character:FindFirstChild('Linked Sword') or game.Players.LocalPlayer.Character:FindFirstChild('Classic')
			local tool2
			if pact then
				tool2 = pact:FindFirstChild('ClassicSword') or pact:FindFirstChild('Sword') or pact:FindFirstChild('Linked Sword') or pact:FindFirstChild('Classic')
			end
			if dropDownAim[2][5].Text == "true" then
				if table.find(GitSets.GitOwnerConfig.Bedwars,game.CreatorId) then
					local inventory = game:GetService("ReplicatedStorage").Inventories:WaitForChild(game:GetService("Players").LocalPlayer.Name)
					local sword = nil
					if inventory:FindFirstChild("wood_sword") then
						sword = game:GetService("ReplicatedStorage").Inventories:WaitForChild(game:GetService("Players").LocalPlayer.Name).wood_sword
					elseif inventory:FindFirstChild("stone_sword") then
						sword = game:GetService("ReplicatedStorage").Inventories:WaitForChild(game:GetService("Players").LocalPlayer.Name).stone_sword

					elseif inventory:FindFirstChild("iron_sword") then
						sword = game:GetService("ReplicatedStorage").Inventories:WaitForChild(game:GetService("Players").LocalPlayer.Name).iron_sword

					elseif inventory:FindFirstChild("diamond_sword") then
						sword = game:GetService("ReplicatedStorage").Inventories:WaitForChild(game:GetService("Players").LocalPlayer.Name).diamond_sword	

					end
					local args = {
						[1] = {
							["chargedAttack"] = {
								["chargeRatio"] = 0
							},
							["entityInstance"] = glos[2].Character,
							["validate"] = {
								["targetPosition"] = {
									["value"] = glos[2].Character.HumanoidRootPart.Position 
								},
								["selfPosition"] = {
									["value"] = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position 
								}
							},
							["weapon"] = sword
						}
					}
					if sword and (glos[2].Character.HumanoidRootPart.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 16 then
						game:GetService("ReplicatedStorage").rbxts_include.node_modules.net.out._NetManaged.snfbNjllXh:InvokeServer(unpack(args))
					end

				else

					if tool then
						tool:Activate()
					else
						if tool2 then
							game.Players.LocalPlayer.Character.Humanoid:UnequipTools()
							game.Players.LocalPlayer.Character.Humanoid:EquipTool(tool2)
							tool2:Activate()

						end
					end
				end
			end

			if dropDownAim[2][2].Text == "false" then
				lastAimed = true
				local hum = glos[2].Character.HumanoidRootPart
				if hum then
					if dropDownAim[2][6].Text ~= "None" and not onAnimation and canAm then
						if dropDownAim[2][6].Text == "BlockHit" then
							local startRot = 260
							local startPos = UDim2.new(0.5, 0,0.554, 0)
							local startSize = UDim2.new(0.472, 0,0.538, 0)
							coroutine.resume(coroutine.create(function()
								onAnimation = true
								if dropDownAim[2][6].Text == "BlockHit" and canAm then
									TweenCreate(Sword_Fake,.1,{Position = UDim2.new(0.5, 0,0.9, 0),Rotation = 300,Size = UDim2.new((startSize.X.Scale)/.75,0,(startSize.Y.Scale)/.75,0)})
									wait(.1)
									if dropDownAim[2][6].Text == "BlockHit" and canAm then
										TweenCreate(Sword_Fake,.5,{Position = UDim2.new(0.5, 0,-0.3, 0),Rotation = 100,Size = startSize})
										wait(.5)
										if dropDownAim[2][6].Text == "BlockHit" and canAm then
											TweenCreate(Sword_Fake,.05,{Rotation = 600})
										end

									end
								end
								onAnimation = false
							end))
						end
					end
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.Position,Vector3.new(hum.Position.X,game.Players.LocalPlayer.Character.HumanoidRootPart.Position.Y,hum.Position.Z))
					local dur = (hum.Position - game.Players.LocalPlayer.Character.Head.Position).Unit 
					if neckStart then
						game.Players.LocalPlayer.Character.Head.Neck.C0 = CFrame.new(Vector3.new(0,.7,0),game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame:VectorToObjectSpace(dur))
					end
					game.Players.LocalPlayer.Character.Humanoid.AutoRotate = false
					aimUI.Visible = true
					if not db_OnAcces then
						aimUI.Size = UDim2.new(0,0,0,0)
						TweenCreate(aimUI,.5,{Size = UDim2.new(0.2, 0,0.1, 0)})
						db_OnAcces = true
					end
					local headshot = game.Players:GetUserThumbnailAsync(glos[2].UserId,Enum.ThumbnailType.HeadShot,Enum.ThumbnailSize.Size420x420)
					if headshot then
						magt.Image = headshot
						txtAim[1].Text = glos[2].Name
						local gl = glos[1]
						if not gl then
							gl = "Nil"
						end
						local gb = math.floor(hum.Parent.Humanoid.Health+.5)
						if not gb then
							gb = 1
						end
						TweenCreate(txtAim[3],.2,{Size = UDim2.new((527*(hum.Parent.Humanoid.Health/hum.Parent.Humanoid.MaxHealth)/1000), 0,.259, 0)})
						txtAim[2].Text = gb
					end
					if dropDownAim[2][2].Text == "true" then
						workspace.CurrentCamera.CFrame = CFrame.new(workspace.CurrentCamera.Position,glos[2].Character.Head)
					end
					coroutine.resume(coroutine.create(function()
						pcall(function()
							for _ = 0, 10 do
								wait(.1)
								if glos[2].Character.Humanoid.Health == 0 then
									GitSets.kills += 1
									break
								end
							end
						end)
					end))
				end
			else
				local hum = glos[2].Character.HumanoidRootPart
				if hum then
					if dropDownAim[2][6].Text ~= "None" and not onAnimation and canAm then
						if dropDownAim[2][6].Text == "BlockHit" then
							local startRot = 260
							local startPos = UDim2.new(0.5, 0,0.554, 0)
							local startSize = UDim2.new(0.472, 0,0.538, 0)
							coroutine.resume(coroutine.create(function()
								onAnimation = true
								if dropDownAim[2][6].Text == "BlockHit" and canAm then
									TweenCreate(Sword_Fake,.1,{Position = UDim2.new(0.5, 0,0.9, 0),Rotation = 180,Size = UDim2.new((startSize.X.Scale)/.75,0,(startSize.Y.Scale)/.75,0)})
									wait(.1)
									if dropDownAim[2][6].Text == "BlockHit" and canAm then
										TweenCreate(Sword_Fake,.3,{Position = startPos,Rotation = 290,Size = startSize})
										wait(.3)
										if dropDownAim[2][6].Text == "BlockHit" and canAm then
											TweenCreate(Sword_Fake,.05,{Rotation = 200})
										end

									end
								end
								onAnimation = false
							end))
						end
					end
					game.Workspace.CurrentCamera.CFrame = CFrame.new(game.Workspace.CurrentCamera.CFrame.Position,glos[2].Character.PrimaryPart.Position)
					local dur = (hum.Position - game.Players.LocalPlayer.Character.Head.Position).Unit 
					if neckStart then
						game.Players.LocalPlayer.Character.Head.Neck.C0 = CFrame.new(Vector3.new(0,.7,0),game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame:VectorToObjectSpace(dur))
					end	
					if not db_OnAcces then
						aimUI.Size = UDim2.new(0,0,0,0)
						TweenCreate(aimUI,.5,{Size = UDim2.new(0.2, 0,0.1, 0)})
						db_OnAcces = true
					end
					aimUI.Visible = true
					local headshot = game.Players:GetUserThumbnailAsync(glos[2].UserId,Enum.ThumbnailType.HeadShot,Enum.ThumbnailSize.Size420x420)
					if headshot then
						magt.Image = headshot
						txtAim[1].Text = glos[2].Name
						local gl = glos[1]
						if not gl then
							gl = "Nil"
						end
						local gb = math.floor(hum.Parent.Humanoid.Health+.5)
						if not gb then
							gb = 1
						end
						TweenCreate(txtAim[3],.2,{Size = UDim2.new((527*(hum.Parent.Humanoid.Health/hum.Parent.Humanoid.MaxHealth)/1000), 0,.259, 0)})
						txtAim[2].Text = gb
					end
					if lastAimed then
						game.Players.LocalPlayer.Character.Head.Neck.C0 = CFrame.new(Vector3.new(0,neckStart,0))
						game.Players.LocalPlayer.Character.Humanoid.AutoRotate = true
						lastAimed = false
					end
					coroutine.resume(coroutine.create(function()
						pcall(function()
							for _ = 0, 10 do
								wait(.1)
								if glos[2].Character.Humanoid.Health == 0 then
									GitSets.kills += 1
									break
								end
							end
						end)
					end))

				end
			end

		else
			if neckStart then
				game.Players.LocalPlayer.Character.Head.Neck.C0 = CFrame.new(Vector3.new(0,neckStart,0))
			end
			game.Players.LocalPlayer.Character.Humanoid.AutoRotate = true
			if db_OnAcces  then

				db_OnAcces = false
				local st = tick()
				TweenCreate(aimUI,.5,{Size = UDim2.new(0,0,0,0)})
				repeat wait() until db_OnAcces or tick() - st >= .5
				if not db_OnAcces then
					aimUI.Visible = false
				end
				canAm = false
				local startRot = 260
				local startPos = UDim2.new(0.5, 0,0.554, 0)
				local startSize = UDim2.new(0.472, 0,0.538, 0)
				TweenCreate(Sword_Fake,.5,{Position = startPos,Rotation = startRot,Size = startSize})
				wait(.3)
				canAm = true
			end
		end
	else
		if lastAimed then
			if neckStart then
				game.Players.LocalPlayer.Character.Head.Neck.C0 = CFrame.new(Vector3.new(0,neckStart,0))
			end
			game.Players.LocalPlayer.Character.Humanoid.AutoRotate = true
			aimUI.Visible = false
			lastAimed = false
			if db_OnAcces  then

				db_OnAcces = false
				local st = tick()
				coroutine.resume(coroutine.create(function()
					local startRot = 260
					local startPos = UDim2.new(0.5, 0,0.554, 0)
					local startSize = UDim2.new(0.472, 0,0.538, 0)
					TweenCreate(Sword_Fake,.5,{Position = startPos,Rotation = startRot,Size = startSize})
					wait(.3)
					canAm = true
				end))
				TweenCreate(aimUI,.5,{Size = UDim2.new(0,0,0,0)})
				repeat wait() until db_OnAcces or tick() - st >= .5
				if not db_OnAcces then
					aimUI.Visible = false
				end

			end
		end
	end
end)



if true then
	local lplr = game.Players.LocalPlayer
	local camera = game:GetService("Workspace").CurrentCamera
	local CurrentCamera = workspace.CurrentCamera
	local worldToViewportPoint = CurrentCamera.worldToViewportPoint

	local HeadOff = Vector3.new(0, 0.5, 0)
	local LegOff = Vector3.new(0,3,0)

	function esp(plr)
		coroutine.resume(coroutine.create(function()
			local fames = {}
			local sides = {Enum.NormalId.Front,Enum.NormalId.Back,Enum.NormalId.Bottom,Enum.NormalId.Top,Enum.NormalId.Right,Enum.NormalId.Left}
			for _, kl in pairs(sides) do
				local scr1 = Instance.new("SurfaceGui",plr.Character.HumanoidRootPart)
				scr1.Name = "RSESP"
				scr1.AlwaysOnTop = true
				scr1.Face = kl
				local df = Instance.new("Frame",scr1)
				df.BackgroundColor3 = Color3.fromRGB(dropDownEsp[2][2],dropDownEsp[2][3],dropDownEsp[2][4])
				df.Size = UDim2.new(1,0,1,0)
				table.insert(fames,#fames+1,scr1)
			end


			while dropDownEsp[2][1].Text == "true" and plr.Character.Humanoid.Health > 0 or plr == nil do
				wait()
				for _, kl in pairs(fames) do
					local tog1 = tonumber(dropDownEsp[2][2].Text)
					if not tog1 then
						tog1 = 255
					end
					local tog2 = tonumber(dropDownEsp[2][3].Text)
					if not tog2 then
						tog2 = 255
					end
					local tog3 = tonumber(dropDownEsp[2][4].Text)
					if not tog3 then
						tog3 = 255
					end
					kl.Frame.BackgroundColor3 = Color3.fromRGB(tog1,tog2,tog3)
				end
			end
			if plr then
				if plr.Character.Humanoid.Health <= 0 then
					esp(plr)
				end
			end
			for _, kl in pairs(fames) do
				kl:Destroy()
			end
		end))
	end

	coroutine.resume(coroutine.create(function()
		while wait() do
			repeat wait() until dropDownEsp[2][1].Text == "true"
			for _, gp in pairs(game.Players:GetPlayers()) do
				esp(gp)
			end
			repeat wait() until dropDownEsp[2][1].Text == "false"
		end
	end))

	game.Players.PlayerAdded:Connect(function(v)
		esp(v)
	end)
end

coroutine.resume(coroutine.create(function()
	local spinner = Instance.new("BodyAngularVelocity")
	spinner.Name = "RSE_ASSET://Spinner"
	spinner.P = math.huge
	spinner.MaxTorque = Vector3.new(math.huge,math.huge,math.huge)
	local stable = Instance.new("BodyGyro")
	stable.Name = "RSE_ASSET://Stabler"
	stable.P = 9e9
	stable.MaxTorque = Vector3.new(9e9,0,9e9)
	while wait(1) do
		pcall(function()
			while wait(1) do
				if dropDownspin[2][2].Text == "true" and game.Players.LocalPlayer.Character.Humanoid.Health > 0 and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
					local db = tonumber(dropDownspin[2][1].Text)
					stable.Parent = game.Players.LocalPlayer.Character.HumanoidRootPart
					spinner.Parent = game.Players.LocalPlayer.Character.HumanoidRootPart
					spinner.AngularVelocity = Vector3.new(0,db,0)
				else
					spinner.Parent = GitSets.Parent
					stable.Parent = GitSets.Parent
				end
			end
		end)
	end
end))
coroutine.resume(coroutine.create(function()

	local StatsHub = Instance.new("Frame")
	local UICorner = Instance.new("UICorner")
	local UIStroke = Instance.new("UIStroke")
	local Tim = Instance.new("TextLabel")
	local Kil = Instance.new("TextLabel")
	local Deat = Instance.new("TextLabel")
	local StatsSign = Instance.new("TextLabel")

	--Properties:

	StatsHub.Name = "StatsHub"
	StatsHub.Parent = ScreenGui
	StatsHub.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
	StatsHub.BackgroundTransparency = 0.500
	StatsHub.Position = UDim2.new(0.650509477/1.25, 0, 0.0364583358/1.25, 0)
	StatsHub.Size = UDim2.new(0.18135865*1.5, 0, 0.148697913*1.5, 0)

	UICorner.Parent = StatsHub

	Tim.Name = "Tim"
	Tim.Parent = StatsHub
	Tim.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Tim.BackgroundTransparency = 1.000
	Tim.Position = UDim2.new(0.0484741628, 0, 0.131348521, 0)
	Tim.Size = UDim2.new(0.642539501, 0, 0.245502234, 0)
	Tim.Font = Enum.Font.Nunito
	Tim.Text = "Time: 0m 0s"
	Tim.TextColor3 = Color3.fromRGB(255, 255, 255)
	Tim.TextScaled = true
	Tim.TextSize = 14.000
	Tim.TextWrapped = true
	Tim.TextXAlignment = Enum.TextXAlignment.Left

	Kil.Name = "Kil"
	Kil.Parent = StatsHub
	Kil.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Kil.BackgroundTransparency = 1.000
	Kil.Position = UDim2.new(0.0484741628, 0, 0.376532435, 0)
	Kil.Size = UDim2.new(0.642539501, 0, 0.245502234, 0)
	Kil.Font = Enum.Font.Nunito
	Kil.Text = "Kills: 0"
	Kil.TextColor3 = Color3.fromRGB(255, 255, 255)
	Kil.TextScaled = true
	Kil.TextSize = 14.000
	Kil.TextWrapped = true
	Kil.TextXAlignment = Enum.TextXAlignment.Left

	Deat.Name = "Deat"
	Deat.Parent = StatsHub
	Deat.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Deat.BackgroundTransparency = 1.000
	Deat.Position = UDim2.new(0.0484741628, 0, 0.621716321, 0)
	Deat.Size = UDim2.new(0.642539501, 0, 0.245502234, 0)
	Deat.Font = Enum.Font.Nunito
	Deat.Text = "Deaths: 0"
	Deat.TextColor3 = Color3.fromRGB(255, 255, 255)
	Deat.TextScaled = true
	Deat.TextSize = 14.000
	Deat.TextWrapped = true
	Deat.TextXAlignment = Enum.TextXAlignment.Left

	StatsSign.Name = "StatsSign"
	StatsSign.Parent = StatsHub
	StatsSign.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	StatsSign.BackgroundTransparency = 1.000
	StatsSign.Position = UDim2.new(0.307003051, 0, 0.376532435, 0)
	StatsSign.Size = UDim2.new(0.642539501, 0, 0.245502234, 0)
	StatsSign.Font = Enum.Font.SourceSansBold
	StatsSign.Text = "Stats"
	StatsSign.TextColor3 = Color3.fromRGB(255, 255, 255)
	StatsSign.TextScaled = true
	StatsSign.TextSize = 14.000
	StatsSign.TextWrapped = true
	StatsSign.TextXAlignment = Enum.TextXAlignment.Right

	UIStroke.Parent = StatsHub
	UIStroke.Color = Color3.fromRGB(85, 0, 255)
	UIStroke.Thickness = 2.5

	StatsHub.Visible = false
	game.Players.LocalPlayer.CharacterAdded:Connect(function()
		GitSets.Deaths += 1
	end)
	local function calTime(timed)
		local min = 0
		local sec = 0
		if timed > 60 then
			min = math.floor(timed/60)
			timed -= min*60
		end
		sec = math.floor(timed)
		return min.. "m ".. sec.. "s"
	end
	while wait(.1) do
		if dropDownStats[2][1].Text == "true" then
			StatsHub.Visible = true
			Tim.Text = "Time: ".. calTime(tick()-GitSets.StartTime)
			Kil.Text = "Kills: ".. GitSets.kills
			Deat.Text = "Deaths: ".. GitSets.Deaths
		else
			StatsHub.Visible = false
		end
	end
end))

coroutine.resume(coroutine.create(function()
	while wait(1) do
		pcall(function()
			local speed = dropDownjp[2][1].Text
			if not tonumber(speed) then
				speed = 50
			end
			if dropDownjp[2][2].Text == "true" then
				game.Players.LocalPlayer.Character.Humanoid.JumpPower = tonumber(speed)
			else
				game.Players.LocalPlayer.Character.Humanoid.JumpPower = 50
			end
		end)	

	end
end))

coroutine.resume(coroutine.create(function()
	local last = false
	while wait() do
		pcall(function()
			local speed = dropDownlong[2][1].Text
			if not tonumber(speed) then
				speed = 50
			end
			if dropDownlong[2][2].Text == "true" then
				last = true
				game.Players.LocalPlayer.Character.Humanoid.Jump = true
				if game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity.Y < 0 then
					game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(0,2,0)
				end
				local dbsp = tonumber(dropDownlong[2][1].Text)
				if not dbsp then
					dbsp = 25
				end

				game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new((game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.LookVector * dbsp).X,game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity.Y,(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.LookVector * dbsp).Z)
			else
				if last then
					game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(0,0,0)
					last = false
				end
			end
		end)	

	end
end))


local flyb = -999
game:GetService("RunService").Stepped:Connect(function()
	for _, db in pairs(game.Players:GetPlayers()) do
		if db.Character:FindFirstChildOfClass("Humanoid") and db.Character:FindFirstChild("HumanoidRootPart") and db ~= game.Players.LocalPlayer then
			db.Character:FindFirstChild("HumanoidRootPart").CanCollide = false
		end
	end
end)

coroutine.resume(coroutine.create(function()
	while wait(1) do

		local err, dbr = pcall(function()
			while wait(1) do
				if dropDownNameTag[2][1].Text == "true" then
					for _, players in pairs(workspace:GetChildren()) do
						if players:FindFirstChild("Humanoid") and players:FindFirstChild("HumanoidRootPart") and players ~= game.Players.LocalPlayer.Character then
							if players:FindFirstChild("NameTag?id=".. GitSets.CustomValues.Name) == nil then

								local BillboardGui = Instance.new("BillboardGui")
								local Frame = Instance.new("Frame")
								local TextLabel2 = Instance.new("TextLabel")
								local Frame_2 = Instance.new("Frame")
								local TextLabel_22 = Instance.new("TextLabel")

								BillboardGui.Parent = players
								BillboardGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
								BillboardGui.Active = true
								BillboardGui.AlwaysOnTop = true
								BillboardGui.StudsOffsetWorldSpace = Vector3.new(0, 5, 0)
								BillboardGui.LightInfluence = 1.000
								BillboardGui.Size = UDim2.new(0, 100, 0, 100)
								BillboardGui.Name = "NameTag?id=".. GitSets.CustomValues.Name

								Frame.Parent = BillboardGui
								Frame.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
								Frame.BackgroundTransparency = 0.300
								Frame.BorderSizePixel = 0
								Frame.Position = UDim2.new(0, 0, 0.5, 0)
								Frame.Size = UDim2.new(1, 0, 0.5, 0)


								TextLabel2.Parent = Frame
								TextLabel2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
								TextLabel2.BackgroundTransparency = 1.000
								TextLabel2.Size = UDim2.new(1, 0, 0.899999976, 0)
								TextLabel2.Font = Enum.Font.Nunito
								TextLabel2.Text = "F4llen"
								TextLabel2.TextColor3 = Color3.fromRGB(255, 255, 255)
								TextLabel2.TextScaled = true
								TextLabel2.TextSize = 14.000
								TextLabel2.TextWrapped = true

								Frame_2.Parent = Frame
								Frame_2.BackgroundColor3 = Color3.fromRGB(255, 93, 93)
								Frame_2.Position = UDim2.new(0, 0, 0.899999976, 0)
								Frame_2.Selectable = true
								Frame_2.Size = UDim2.new(1, 0, 0.100000001, 0)
								Frame_2.BorderSizePixel = 0

								TextLabel_22.Parent = Frame
								TextLabel_22.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
								TextLabel_22.BackgroundTransparency = 1.000
								TextLabel_22.Position = UDim2.new(0, 0, 0.699999988, 0)
								TextLabel_22.Size = UDim2.new(1, 0, 0.25, 0)
								TextLabel_22.Font = Enum.Font.SourceSansBold
								TextLabel_22.Text = "100"
								TextLabel_22.TextColor3 = Color3.fromRGB(255, 255, 255)
								TextLabel_22.TextScaled = true
								TextLabel_22.TextSize = 14.000
								TextLabel_22.TextWrapped = true
								TextLabel_22.Name = "LOOP"

								TextLabel2.Text = players.Name
								TextLabel_22.Text = math.floor(players.Humanoid.Health)
							else

								players:FindFirstChild("NameTag?id=".. GitSets.CustomValues.Name).Frame.LOOP.Text = math.floor(players.Humanoid.Health)
							end
						end
					end
				else
					for _, players in pairs(workspace:GetChildren()) do
						if players:FindFirstChild("Humanoid") and players:FindFirstChild("HumanoidRootPart") and players ~= game.Players.LocalPlayer.Character then
							if players:FindFirstChild("NameTag?id=".. GitSets.CustomValues.Name) then
								players:FindFirstChild("NameTag?id=".. GitSets.CustomValues.Name):Destroy()
							end
						end
					end
				end
			end
		end)

	end
end))
coroutine.resume(coroutine.create(function()
	while wait(1) do
		pcall(function()
			while wait() do

				local rc = tonumber(dropDownHitboxE[2][3].Text)
				if not rc or dropDownHitboxE[2][1].Text == "false" then
					rc = 1
				end
				for _, dbr in pairs(game.Players:GetPlayers()) do
					local db = dbr.Character
					if db:FindFirstChildOfClass("Humanoid") and db:FindFirstChild("HumanoidRootPart") and db ~= game.Players.LocalPlayer.Character then
						db:FindFirstChild("HumanoidRootPart").Size = Vector3.new(2*rc,2*rc,1*rc)


						if dropDownHitboxE[2][1].Text == "false" then
							if db:FindFirstChild("HumanoidRootPart"):FindFirstChild("RC:".. GitSets.CustomValues.Name) then
								db:FindFirstChild("HumanoidRootPart"):FindFirstChild("RC:".. GitSets.CustomValues.Name):Destroy()
							end
						elseif not db:FindFirstChild("HumanoidRootPart"):FindFirstChild("RC:".. GitSets.CustomValues.Name) then
							local new = Instance.new("SelectionBox")
							new.Name = "RC:".. GitSets.CustomValues.Name
							new.LineThickness = .05
							new.Color3 = Color3.fromRGB(85, 0, 255)
							new.SurfaceColor3 = Color3.fromRGB(85, 0, 255)
							new.SurfaceTransparency = .9
							new.Adornee = db:FindFirstChild("HumanoidRootPart")
							new.Parent = db:FindFirstChild("HumanoidRootPart")
						end	
					end
				end
			end
		end)
	end
end))
coroutine.resume(coroutine.create(function()
	game.Players.LocalPlayer.Character.ChildAdded:Connect(function(obj)
		if dropDownReach[2][1].Text == "true" then
			local tool = game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool")
			if tool then
				if tool:FindFirstChild("Handle") then
					local rc = tonumber(dropDownReach[2][3].Text)
					if not rc then
						rc = 8
					end
					tool:FindFirstChild("Handle").Massless = true

					tool:FindFirstChild("Handle").Size = Vector3.new(tool:FindFirstChild("Handle").Size.X,tool:FindFirstChild("Handle").Size.Y,rc)
					if not tool:FindFirstChild("Handle"):FindFirstChild("RC:".. GitSets.CustomValues.Name) then
						local new = Instance.new("SelectionBox")
						new.Name = "RC:".. GitSets.CustomValues.Name
						new.LineThickness = .05
						new.Color3 = Color3.fromRGB(85, 0, 255)
						new.Adornee = tool:FindFirstChild("Handle")
						new.Parent = tool:FindFirstChild("Handle")
					end

				else
					GitSets.chatify("Reach is not appliable on this sword!")
				end
			end
		end
	end)
	coroutine.resume(coroutine.create(function()
		while wait(1) do
			if dropDownReach[2][1].Text == "true" then
				local tool = game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool")
				if tool then
					if tool:FindFirstChild("Handle") then
						local rc = tonumber(dropDownReach[2][3].Text)
						if not rc then
							rc = 8
						end
						tool:FindFirstChild("Handle").Massless = true

						tool:FindFirstChild("Handle").Size = Vector3.new(tool:FindFirstChild("Handle").Size.X,tool:FindFirstChild("Handle").Size.Y,rc)
						if not tool:FindFirstChild("Handle"):FindFirstChild("RC:".. GitSets.CustomValues.Name) then
							local new = Instance.new("SelectionBox")
							new.Name = "RC:".. GitSets.CustomValues.Name
							new.LineThickness = .05
							new.Color3 = Color3.fromRGB(85, 0, 255)
							new.Adornee = tool:FindFirstChild("Handle")
							new.Parent = tool:FindFirstChild("Handle")
						end

					else
						GitSets.chatify("Reach is not appliable on this sword!")
					end
				end
			end

		end
	end))
	game.Players.LocalPlayer.CharacterAdded:Connect(function()
		wait()
		game.Players.LocalPlayer.Character.ChildAdded:Connect(function(obj)
			if dropDownReach[2][1].Text == "true" then
				local tool = game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool")
				if tool then
					if tool:FindFirstChild("Handle") then
						local rc = tonumber(dropDownReach[2][3].Text)
						if not rc then
							rc = 8
						end
						tool:FindFirstChild("Handle").Massless = true

						tool:FindFirstChild("Handle").Size = Vector3.new(tool:FindFirstChild("Handle").Size.X,tool:FindFirstChild("Handle").Size.Y,rc)
						if not tool:FindFirstChild("Handle"):FindFirstChild("RC:".. GitSets.CustomValues.Name) then
							local new = Instance.new("SelectionBox")
							new.Name = "RC:".. GitSets.CustomValues.Name
							new.LineThickness = .05
							new.Color3 = Color3.fromRGB(85, 0, 255)
							new.Adornee = tool:FindFirstChild("Handle")
							new.Parent = tool:FindFirstChild("Handle")
						end

					else
						GitSets.chatify("Reach is not appliable on this sword!")
					end
				end
			end
		end)
	end)
	while wait(1) do
		pcall(function()
			while wait() do
				repeat wait() until dropDownReach[2][1].Text == "true"
				local tool = game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool")
				local rc = tonumber(dropDownReach[2][3].Text)
				if tool then
					if tool:FindFirstChild("Handle") then

						if not rc then
							rc = 8
						end
						tool:FindFirstChild("Handle").Massless = true

						tool:FindFirstChild("Handle").Size = Vector3.new(tool:FindFirstChild("Handle").Size.X,tool:FindFirstChild("Handle").Size.Y,rc)
						if not tool:FindFirstChild("Handle"):FindFirstChild("RC:".. GitSets.CustomValues.Name) then
							local new = Instance.new("SelectionBox")
							new.Name = "RC:".. GitSets.CustomValues.Name
							new.LineThickness = .05
							new.Color3 = Color3.fromRGB(85, 0, 255)
							new.Adornee = tool:FindFirstChild("Handle")
							new.Parent = tool:FindFirstChild("Handle")
						end

					else
						GitSets.chatify("Reach is not appliable on this sword!")
					end
				end
				repeat wait() until dropDownReach[2][1].Text == "false" or tonumber(dropDownReach[2][3].Text) ~= rc
			end
		end)
	end
end))
coroutine.resume(coroutine.create(function()
	local flyy = 0
	local last = false
	local bv = Instance.new("BodyPosition")
	bv.D = 0

	local tmr = .1
	while wait() do
		local err, msg = pcall(function()
			while wait(tmr) do

				if game.Players.LocalPlayer.Character.Humanoid.Health > 0 then
					bv.P = 400
					local speed = dropDownfLY[2][1].Text
					if not tonumber(speed) then
						speed = 16
					end
					if dropDownfLY[2][2].Text == "false" or last then
						flyb = -999
					end
					--{"Normal","Bounce","TP","BounceTP"}
					local speedy = dropDownfLY[2][4].Text
					if not tonumber(speedy) then
						speedy = 2
					end

					if GitSets.Move_E then

						flyb += speedy
						flyy += speedy
					end
					if GitSets.Move_Q then

						flyb -= speedy
						flyy -= speedy
					end

					if dropDownfLY[2][2].Text == "true" and dropDownfLY[2][5].Text == "Normal" then
						local dur = Vector3.new(0,0,0)
						tmr = .1
						if GitSets.Move_W then
							dur += game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.LookVector*speed/10
						end
						if GitSets.Move_A then
							dur -= game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.RightVector*speed/10
						end
						if GitSets.Move_S then
							dur -= game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.LookVector*speed/10
						end
						if GitSets.Move_D then
							dur += game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.RightVector*speed/10
						end

						game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(0,0,0)
						if not last then
							flyy = game.Players.LocalPlayer.Character.HumanoidRootPart.Position.Y
							last = true
							bv.Parent = game.Players.LocalPlayer.Character.HumanoidRootPart
						end
						bv.MaxForce = Vector3.new(math.huge,math.huge,math.huge)
						bv.Position = Vector3.new(game.Players.LocalPlayer.Character.HumanoidRootPart.Position.X,flyy,game.Players.LocalPlayer.Character.HumanoidRootPart.Position.Z) + dur

					else

						if dropDownfLY[2][5].Text == "Bounce" and dropDownfLY[2][2].Text == "true" then
							tmr = .1
							bv.Parent = GitSets.Parent
							last = false
							if flyb == -999 then
								flyb = game.Players.LocalPlayer.Character.HumanoidRootPart.Position.Y
							else
								if game.Players.LocalPlayer.Character.HumanoidRootPart.Position.Y < flyb - 7 then

									game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity.X,game.Players.LocalPlayer.Character.Humanoid.JumpPower,game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity.Z)
								end
							end

						else
							if dropDownfLY[2][5].Text == "BounceTP"and dropDownfLY[2][2].Text == "true" then
								tmr = .1
								bv.Parent = GitSets.Parent
								last = false


								if flyb == -999  then
									flyb = game.Players.LocalPlayer.Character.HumanoidRootPart.Position.Y
								else
									if game.Players.LocalPlayer.Character.HumanoidRootPart.Position.Y < flyb - 7 then
										game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity.X,0,game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity.Z)
										game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.Position + Vector3.new(0,7,0),game.Players.LocalPlayer.Character.HumanoidRootPart.Position + game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.LookVector * 1 + Vector3.new(0,7,0))
									end
								end
							else
								if dropDownfLY[2][5].Text == "TP" and dropDownfLY[2][2].Text == "true" then
									tmr = .1
									local dur = Vector3.new(0,0,0)
									if GitSets.Move_W then
										dur += game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.LookVector*speed/20
									end
									if GitSets.Move_A then
										dur -= game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.RightVector*speed/40
									end
									if GitSets.Move_S then
										dur -= game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.LookVector*speed/20
									end
									if GitSets.Move_D then
										dur += game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.RightVector*speed/40
									end

									if flyb == -999  then
										flyb = game.Players.LocalPlayer.Character.HumanoidRootPart.Position.Y
									else
										game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity.X,(flyb-game.Players.LocalPlayer.Character.HumanoidRootPart.Position.Y)*10,game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity.Z)
									end

									if dur ~= Vector3.new(0,0,0) then

										for _ = 0, 10 do
											game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.Position + dur,game.Players.LocalPlayer.Character.HumanoidRootPart.Position + dur*1.1)
										end
									end
								else

									tmr = .1
									bv.Parent = GitSets.Parent
									last = false
									flyb = -999


								end

							end


						end

					end
				else

					if dropDownfLY[2][2].Text == "true" then
						dropDownfLY[2][2].Text = "false"
						netdexc("Fly")
						bv:Destroy()
						notify("Warning","Player Dead! Replacing Fly Module...",Color3.fromRGB(255, 255, 127),"http://www.roblox.com/asset/?id=6254819318",Color3.fromRGB(255, 255, 127))
						bv = Instance.new("BodyPosition")
						bv.D = 0
						bv.P = 400
					end

				end


			end
		end)
		if not err then
			warn(msg)
		end
	end
end))



game:GetService("UserInputService").InputEnded:Connect(function(key,gpe) -- sets movement/false
	if key.KeyCode == Enum.KeyCode.W then
		GitSets.Move_W = false
	end
	if key.KeyCode == Enum.KeyCode.A then
		GitSets.Move_A = false
	end
	if key.KeyCode == Enum.KeyCode.S then
		GitSets.Move_S = false
	end
	if key.KeyCode == Enum.KeyCode.D then
		GitSets.Move_D = false
	end
	if key.KeyCode == GitSets.Fly_Up then
		GitSets.Move_E = false
	end
	if key.KeyCode == GitSets.Fly_Down then
		GitSets.Move_Q = false
	end
end)



game:GetService("UserInputService").InputBegan:Connect(function(key,gpe) -- sets movement/false
	if key.KeyCode == Enum.KeyCode.W then
		GitSets.Move_W = true
	end
	if key.KeyCode == Enum.KeyCode.A then
		GitSets.Move_A = true
	end
	if key.KeyCode == Enum.KeyCode.S then
		GitSets.Move_S = true
	end
	if key.KeyCode == Enum.KeyCode.D then
		GitSets.Move_D = true
	end
	if key.KeyCode == GitSets.Fly_Up then
		GitSets.Move_E = true
	end
	if key.KeyCode == GitSets.Fly_Down then
		GitSets.Move_Q = true
	end
end)






coroutine.resume(coroutine.create(function()
	while wait(1) do
		for _, kop in pairs(_gui_exec:GetChildren()) do
			if kop:IsA("TextLabel") then
				for _, hop in pairs(combat_main:GetChildren()) do
					if hop:IsA("TextButton") then
						for _, huo in pairs(hop:GetChildren()) do
							if huo.Name == "Active" then
								if huo.Text == false then
									netdexc(hop.Parent.Text)
								else
									break
								end
							end
						end
					end
				end
				for _, hop in pairs(blatant_main:GetChildren()) do
					if hop:IsA("TextButton") then
						for _, huo in pairs(hop:GetChildren()) do
							if huo.Name == "Active" then
								if huo.Text == false then
									netdexc(hop.Parent.Text)
								else
									break
								end
							end
						end
					end
				end
				for _, hop in pairs(render_main:GetChildren()) do
					if hop:IsA("TextButton") then
						for _, huo in pairs(hop:GetChildren()) do
							if huo.Name == "Active" then
								if huo.Text == false then
									netdexc(hop.Parent.Text)
								else
									break
								end
							end
						end
					end
				end

			end
		end

	end
end))


game:GetService("UserInputService").InputBegan:Connect(function(key,gpe)
	for _, hop in pairs(blatant_main:GetDescendants()) do
		if hop.Name == "key" and (not gpe or GitSets.GPE_Disabler_Bypass) then
			local txt = hop.Text
			if string.len(txt) == 1 then
				if string.lower(string.gsub(tostring(key.KeyCode),'Enum.KeyCode.',"")) == string.lower(txt) then
					if hop.Parent:FindFirstChild("Active") then

						if hop.Parent:FindFirstChild("Active").Text == "false" then
							netexec(hop.Parent.Parent.TextLabel.Text)
							notify("Module Toggled",hop.Parent.Parent.TextLabel.Text.. " Enabled",Color3.fromRGB(85, 255, 127),"http://www.roblox.com/asset/?id=2828150111",Color3.fromRGB(70, 211, 103))
							hop.Parent:FindFirstChild("Active").Text = "true"
						else
							netdexc(hop.Parent.Parent.TextLabel.Text)

							notify("Module Toggled",hop.Parent.Parent.TextLabel.Text.. " Disabled",Color3.fromRGB(255, 73, 73),"http://www.roblox.com/asset/?id=5640320478",Color3.fromRGB(214, 61, 61))
							hop.Parent:FindFirstChild("Active").Text = "false"
						end
					end
				end
			end
		end
	end
	for _, hop in pairs(render_main:GetDescendants()) do
		if hop.Name == "key" and(not gpe or GitSets.GPE_Disabler_Bypass) then
			local txt = hop.Text
			if string.len(txt) == 1 then
				if string.lower(string.gsub(tostring(key.KeyCode),'Enum.KeyCode.',"")) == string.lower(txt) then
					if hop.Parent:FindFirstChild("Active") then
						if hop.Parent:FindFirstChild("Active").Text == "false" then
							netexec(hop.Parent.Text)
							notify("Module Toggled",hop.Parent.Text.. " Enabled",Color3.fromRGB(85, 255, 127),"http://www.roblox.com/asset/?id=2828150111",Color3.fromRGB(70, 211, 103))
							hop.Parent:FindFirstChild("Active").Text = "true"
						else
							netdexc(hop.Parent.Text)
							notify("Module Toggled",hop.Parent.Text.. " Disabled",Color3.fromRGB(255, 73, 73),"http://www.roblox.com/asset/?id=5640320478",Color3.fromRGB(214, 61, 61))
							hop.Parent:FindFirstChild("Active").Text = "false"
						end
					end
				end
			end
		end
	end
	for _, hop in pairs(combat_main:GetDescendants()) do
		if hop.Name == "key" and(not gpe or GitSets.GPE_Disabler_Bypass) then
			local txt = hop.Text
			if string.len(txt) == 1 then
				if string.lower(string.gsub(tostring(key.KeyCode),'Enum.KeyCode.',"")) == string.lower(txt) then
					if hop.Parent:FindFirstChild("Active") then
						if hop.Parent:FindFirstChild("Active").Text == "false" then
							netexec(hop.Parent.Text)
							notify("Module Toggled",hop.Parent.Text.. " Enabled",Color3.fromRGB(85, 255, 127),"http://www.roblox.com/asset/?id=2828150111",Color3.fromRGB(70, 211, 103))
							hop.Parent:FindFirstChild("Active").Text = "true"
						else
							netdexc(hop.Parent.Text)
							notify("Module Toggled",hop.Parent.Text.. " Disabled",Color3.fromRGB(255, 73, 73),"http://www.roblox.com/asset/?id=5640320478",Color3.fromRGB(214, 61, 61))
							hop.Parent:FindFirstChild("Active").Text = "false"
						end
					end
				end
			end
		end
	end
end)
GitSets.chatify("Rise B".. GitSets.Version.. " Loaded!")
