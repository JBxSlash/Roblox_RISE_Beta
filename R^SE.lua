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
]]
















































































if _G.RISEKey then
	if _G.RISEKey ~= "best" then
		return nil
	end
else
	game.Players.LocalPlayer:Kick("Do not try and bypass RISE KeySystem\n Get The Key Here:\n loadstring(game:HttpGet('https://github.com/JBxSlash/Roblox_RISE_Beta/blob/main/RISE_KeySys.lua'))()")
end


























































local GitSets = {
	["GPE_Disabler_Bypass"] = false;
	["Version"] = 14;
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
local posStartMF = UDim2.new(0.214028969, 0, 0.440078437, 0)
local gb_d = false
local mf = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local Frame = Instance.new("Frame")
local UICorner_2 = Instance.new("UICorner")
local mf_2 = Instance.new("Frame")
local Blatant = Instance.new("ImageButton")
local UICorner_3 = Instance.new("UICorner")
local UIListLayout = Instance.new("UIListLayout")
local Render = Instance.new("ImageButton")
local UICorner_4 = Instance.new("UICorner")
local Combat = Instance.new("ImageButton")
local UICorner_5 = Instance.new("UICorner")
local PlaceHolder_2 = Instance.new("ImageButton")
local UICorner_6 = Instance.new("UICorner")
local PlaceHolder_3 = Instance.new("ImageButton")
local UICorner_7 = Instance.new("UICorner")
local PlaceHolder_4 = Instance.new("ImageButton")
local UICorner_8 = Instance.new("UICorner")
local rse = Instance.new("TextLabel")
local TextLabel = Instance.new("TextLabel")
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
	coroutine.resume(coroutine.create(function()
		gb_d = true
		wait()
		gb_d = false
	end))
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
	local frame = Instance.new("Frame")
	
	local textName = Instance.new("TextButton")
	local uiLST = Instance.new("UIListLayout")
	frame.Size = UDim2.new(.3,0,1,0)
	
	frame.BackgroundColor3 = Color3.fromRGB(25,25,25)
	
	textName.Size = UDim2.new(1,0,.075,0)
	textName.Position = UDim2.new(0,0,.96116,0)
	textName.TextXAlignment = Enum.TextXAlignment.Right
	textName.Text =  name.. " -> "
	textName.Font = Enum.Font.Nunito
	textName.TextScaled = true
	textName.BackgroundTransparency = 1
	textName.TextColor3 = Color3.fromRGB(255,255,255)
	Instance.new("UICorner",frame)
	frame.Position = UDim2.new(1.2,0,0,0)
	textName.MouseButton1Down:Connect(function()	
		TweenCreate(frame,.5,{Position = UDim2.new(1.2,0,0,0)})
		GitSets.Blur_Settings[1].Enabled = false
		closeAll()
	end)
	frame.Parent = ScreenGui
	uiLST.Parent = frame
	uiLST.FillDirection = Enum.FillDirection.Vertical
	uiLST.Padding = UDim.new(0,.05)
	uiLST.HorizontalAlignment = Enum.HorizontalAlignment.Left
	textName.Parent = frame

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
	local button = Instance.new("TextButton",par)
	button.Size = UDim2.new(1, 0,0.05, 0)
	cornerGui(button)
	--button.Position = pos
	button.Text = text
	button.TextScaled = true
	button.BackgroundColor3 = Color3.fromRGB(21,21,21)
	button.TextColor3 = Color3.fromRGB(255,255,255)
	button.BorderSizePixel = 0
	button.ZIndex = 2

	--[[
	A = TextBox
	B = BoolButton
	]]
	local objs = {button,{}}
	if desc then
		for _b, desco in pairs(desc) do
			if desco[2] == "A" then
				local db = Instance.new("TextBox",button)
				local db2 = Instance.new("TextLabel",db)
				db.Size = UDim2.new(.5,0,1,0)
				db.Text = desco[1]
				db.Position = UDim2.new(-1.035,0,0 + (1*(_b-1)),0)
				db.BorderSizePixel = 0
				db.PlaceholderText = desco[1]
				db.BackgroundColor3 = Color3.fromRGB(30,30,30)
				db.PlaceholderColor3 = Color3.fromRGB(255,255,255)
				db.TextColor3 = Color3.fromRGB(255,255,255)
				db.TextScaled = true
				db.Visible = false
				
				db2.TextColor3 = Color3.fromRGB(255,255,255)
				db2.Size = UDim2.new(1,0,1,0)
				db2.Text = desco[3]
				db2.Position = UDim2.new(1.035,0,0,0)
				db2.BackgroundTransparency = 1
				db2.TextScaled = true
				db2.Visible = true
				db2.TextXAlignment = Enum.TextXAlignment.Left
				table.insert(objs[2],db)
				coroutine.resume(coroutine.create(function()
					while wait() do

						if gb_d then
							db.Visible = false
						end
					end
				end))
			end
			if desco[2] == "B" then
				local db = Instance.new("TextButton",button)
				db.Size = UDim2.new(.5,0,1,0)
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
				db.Position = UDim2.new(-1.035,0,0 + (1*(_b-1)),0)
				db.BorderSizePixel = 0
				db.BackgroundColor3 = Color3.fromRGB(30,30,30)
				db.TextColor3 = Color3.fromRGB(255,255,255)
				db.TextScaled = true
				db.Visible = false
				local db2 = Instance.new("TextLabel",db)
				db2.TextColor3 = Color3.fromRGB(255,255,255)
				db2.Size = UDim2.new(1,0,1,0)
				db2.Text = desco[3]
				db2.Position = UDim2.new(1.035,0,0,0)
				db2.BackgroundTransparency = 1
				db2.TextScaled = true
				db2.Visible = true
				db2.TextXAlignment = Enum.TextXAlignment.Left
				table.insert(objs[2],db)
				coroutine.resume(coroutine.create(function()
					while wait() do

						if gb_d then
							db.Visible = false
						end
					end
				end))
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
				local db = Instance.new("TextBox",button)
				db.Name = "key"
				db.Size = UDim2.new(.5,0,1,0)
				db.Text = desco[1]
				db.Position = UDim2.new(-1.035,0,0 + (1*(_b-1)),0)
				db.BorderSizePixel = 0
				db.PlaceholderText = desco[1]
				db.BackgroundColor3 = Color3.fromRGB(30,30,30)
				db.PlaceholderColor3 = Color3.fromRGB(255,255,255)
				db.TextColor3 = Color3.fromRGB(255,255,255)
				db.TextScaled = true
				db.Visible = false
				local db2 = Instance.new("TextLabel",db)
				db2.TextColor3 = Color3.fromRGB(255,255,255)
				db2.Size = UDim2.new(1,0,1,0)
				db2.Text = desco[3]
				db2.Position = UDim2.new(1.035,0,0,0)
				db2.BackgroundTransparency = 1
				db2.TextScaled = true
				db2.Visible = true
				db2.TextXAlignment = Enum.TextXAlignment.Left
				table.insert(objs[2],db)
				coroutine.resume(coroutine.create(function()
					while wait() do
						if string.len(db.Text) > 1 then
							db.Text = string.sub(db.Text,1,1)
						end
						if gb_d then
							db.Visible = false
						end
					end
				end))
			end
			if desco[2] == "D" then
				local db = Instance.new("TextBox",button)
				db.Name = "key"
				db.Size = UDim2.new(.5,0,1,0)
				db.Text = desco[1]
				db.Position = UDim2.new(-1.035,0,0 + (1*(_b-1)),0)
				db.BorderSizePixel = 0
				db.PlaceholderText = desco[1]
				db.BackgroundColor3 = Color3.fromRGB(30,30,30)
				db.PlaceholderColor3 = Color3.fromRGB(255,255,255)
				db.TextColor3 = Color3.fromRGB(255,255,255)
				db.TextScaled = true
				db.Visible = false
				local db2 = Instance.new("TextLabel",db)
				db2.TextColor3 = Color3.fromRGB(255,255,255)
				db2.Size = UDim2.new(1,0,1,0)
				db2.Text = desco[3]
				db2.Position = UDim2.new(1.035,0,0,0)
				db2.BackgroundTransparency = 1
				db2.TextScaled = true
				db2.Visible = true
				db2.TextXAlignment = Enum.TextXAlignment.Left
				table.insert(objs[2],db)
				coroutine.resume(coroutine.create(function()
					while wait() do
						
						if gb_d then
							db.Visible = false
						end
					end
				end))
			end
			if desco[2] == "E" then
				local db = Instance.new("TextButton",button)
				local jk = 1
				db.Size = UDim2.new(.5,0,1,0)
				db.Text = desco[1][1]
				db.Position = UDim2.new(-1.035,0,0 + (1*(_b-1)),0)
				db.BorderSizePixel = 0
				db.BackgroundColor3 = Color3.fromRGB(30,30,30)
				db.TextColor3 = Color3.fromRGB(255,255,255)
				db.TextScaled = true
				db.Visible = false
				local db2 = Instance.new("TextLabel",db)
				db2.TextColor3 = Color3.fromRGB(255,255,255)
				db2.Size = UDim2.new(1,0,1,0)
				db2.Text = desco[3]
				db2.Position = UDim2.new(1.035,0,0,0)
				db2.BackgroundTransparency = 1
				db2.TextScaled = true
				db2.Visible = true
				db2.TextXAlignment = Enum.TextXAlignment.Left
				table.insert(objs[2],db)
				coroutine.resume(coroutine.create(function()
					while wait() do

						if gb_d then
							db.Visible = false
						end
					end
				end))
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
	button.MouseButton1Down:Connect(function()
		local ghj = false
		for _, objOfDb in pairs(objs[2]) do
			objOfDb.Visible = not objOfDb.Visible
			if objOfDb.Visible and ghj == false then
				ghj = true
				closeAll()
				wait()
				objOfDb.Visible = true
			end
		end
	end)
	return objs
end







ScreenGui.Parent = GitSets.Parent
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

mf.Name = "mf"
mf.Parent = ScreenGui
mf.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
mf.BackgroundTransparency = 0.600
mf.Position = UDim2.new(0.214028969, 0, 1.05, 0)
mf.Size = UDim2.new(0.6034711, 0, 0.157412812, 0)

UICorner.CornerRadius = UDim.new(2, 0)
UICorner.Parent = mf

Frame.Parent = mf
Frame.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
Frame.Position = UDim2.new(-0.0267991759, 0, -0.123834834, 0)
Frame.Size = UDim2.new(0.99999994, 0, 0.999999642, 0)

UICorner_2.CornerRadius = UDim.new(2, 0)
UICorner_2.Parent = Frame

mf_2.Name = "mf"
mf_2.Parent = Frame
mf_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
mf_2.BackgroundTransparency = 1.000
mf_2.Position = UDim2.new(0.00893304776, 0, 0, 0)
mf_2.Size = UDim2.new(0.982133746, 0, 1, 0)

Blatant.Name = "Blatant"
Blatant.Parent = mf_2
Blatant.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
Blatant.Position = UDim2.new(-0.0133995702, 0, -0.0619173795, 0)
Blatant.Size = UDim2.new(0.158000007, 0, 0.875999987, 0)
Blatant.Image = "http://www.roblox.com/asset/?id=2572666627"

UICorner_3.CornerRadius = UDim.new(2, 0)
UICorner_3.Parent = Blatant

UIListLayout.Parent = mf_2
UIListLayout.FillDirection = Enum.FillDirection.Horizontal
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout.VerticalAlignment = Enum.VerticalAlignment.Center
UIListLayout.Padding = UDim.new(0.00999999978, 0)

Render.Name = "Render"
Render.Parent = mf_2
Render.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
Render.Position = UDim2.new(-0.0133995702, 0, -0.0619173795, 0)
Render.Size = UDim2.new(0.158000007, 0, 0.875999987, 0)
Render.Image = "http://www.roblox.com/asset/?id=6793694694"
Render.ImageColor3 = Color3.fromRGB(85, 0, 255)

UICorner_4.CornerRadius = UDim.new(2, 0)
UICorner_4.Parent = Render

Combat.Name = "Combat"
Combat.Parent = mf_2
Combat.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
Combat.Position = UDim2.new(-0.0133995702, 0, -0.0619173795, 0)
Combat.Size = UDim2.new(0.158000007, 0, 0.875999987, 0)
Combat.Image = "http://www.roblox.com/asset/?id=7082455078"
Combat.ImageColor3 = Color3.fromRGB(123, 255, 167)

UICorner_5.CornerRadius = UDim.new(2, 0)
UICorner_5.Parent = Combat

PlaceHolder_2.Name = "Combat"
PlaceHolder_2.Parent = mf_2
PlaceHolder_2.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
PlaceHolder_2.Position = UDim2.new(-0.0133995702, 0, -0.0619173795, 0)
PlaceHolder_2.Size = UDim2.new(0.158000007, 0, 0.875999987, 0)
PlaceHolder_2.Image = "http://www.roblox.com/asset/?id=403653614"
PlaceHolder_2.ImageColor3 = Color3.fromRGB(0, 255, 255)

UICorner_6.CornerRadius = UDim.new(2, 0)
UICorner_6.Parent = PlaceHolder_2

PlaceHolder_3.Name = "Combat"
PlaceHolder_3.Parent = mf_2
PlaceHolder_3.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
PlaceHolder_3.Position = UDim2.new(-0.0133995702, 0, -0.0619173795, 0)
PlaceHolder_3.Size = UDim2.new(0.158000007, 0, 0.875999987, 0)
PlaceHolder_3.Image = "http://www.roblox.com/asset/?id=403653614"
PlaceHolder_3.ImageColor3 = Color3.fromRGB(255, 255, 127)

UICorner_7.CornerRadius = UDim.new(2, 0)
UICorner_7.Parent = PlaceHolder_3

PlaceHolder_4.Name = "Combat"
PlaceHolder_4.Parent = mf_2
PlaceHolder_4.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
PlaceHolder_4.Position = UDim2.new(-0.0133995702, 0, -0.0619173795, 0)
PlaceHolder_4.Size = UDim2.new(0.158000007, 0, 0.875999987, 0)
PlaceHolder_4.Image = "http://www.roblox.com/asset/?id=403653614"
PlaceHolder_4.ImageColor3 = Color3.fromRGB(255, 0, 127)

UICorner_8.CornerRadius = UDim.new(2, 0)
UICorner_8.Parent = PlaceHolder_4

rse.Name = "rse"
rse.Parent = Frame
rse.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
rse.BackgroundTransparency = 1.000
rse.Position = UDim2.new(-0.218859673, 0, -1.89467263, 0)
rse.Size = UDim2.new(1.4354862, 0, 2.1021297, 0)
rse.Font = Enum.Font.Nunito
rse.Text = "RISE"
rse.TextColor3 = Color3.fromRGB(255, 255, 255)
rse.TextScaled = true
rse.TextSize = 14.000
local colorUI = Instance.new("UIGradient")
colorUI.Parent = rse
coroutine.resume(coroutine.create(function()
	while wait() do
		for drt = 0, 49 do
			colorUI.Color = ColorSequence.new({ColorSequenceKeypoint.new(0,Color3.fromRGB(85, 0, 255)),ColorSequenceKeypoint.new(.99 - (drt*.02),Color3.fromRGB(85, 255, 127)),ColorSequenceKeypoint.new(1,Color3.fromRGB(85, 0, 255))})
			wait(.1)
		end
		for drt = 0, 49 do
			colorUI.Color = ColorSequence.new({ColorSequenceKeypoint.new(0,Color3.fromRGB(85, 0, 255)),ColorSequenceKeypoint.new(0.02 + (drt*.02),Color3.fromRGB(85, 255, 127)),ColorSequenceKeypoint.new(1,Color3.fromRGB(85, 0, 255))})
			wait(.1)
		end
	end
end))

TextLabel.Parent = Frame
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.Position = UDim2.new(0.163028121, 0, -0.817309618, 0)
TextLabel.Size = UDim2.new(0.660544395, 0, 0.578961611, 0)
TextLabel.Font = Enum.Font.SourceSansItalic
TextLabel.Text = "B".. GitSets.Version
if GitSets["IsA:Config"][1] then
	TextLabel.Text = TextLabel.Text.. " - ".. GitSets["IsA:Config"][2]
end
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextScaled = true
TextLabel.TextSize = 14.000
TextLabel.TextWrapped = true



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
u1.SortOrder = Enum.SortOrder.Name
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
	nst.BackgroundTransparency = .8
	nst.BackgroundColor3 = Color3.fromRGB(150,150,150)
	cornerGui(nst,3)
	nst.AutomaticSize = Enum.AutomaticSize.X
	
	nst.TextTransparency = 0
	nst.TextXAlignment = Enum.TextXAlignment.Right
	nst.Font = Enum.Font.Nunito
	nst.TextColor3 = Color3.fromRGB(255,255,255)
	nst.TextScaled = true
	nst.Name = _TXT_DATA_TEXTSET_VERBOSE_RANDOMLEX_NETVERBOSESET1_
	nst.Parent = _gui_exec
	local colorUI = Instance.new("UIGradient")
	colorUI.Parent = nst
	coroutine.resume(coroutine.create(function()
		while wait(1) and nst do
			pcall(function()
				while wait() do
					for drt = 0, 49 do
						colorUI.Color = ColorSequence.new({ColorSequenceKeypoint.new(0,Color3.fromRGB(85, 0, 255)),ColorSequenceKeypoint.new(.99 - (drt*.02),Color3.fromRGB(85, 170, 255)),ColorSequenceKeypoint.new(1,Color3.fromRGB(85, 0, 255))})
						wait(.1)
					end
					for drt = 0, 49 do
						colorUI.Color = ColorSequence.new({ColorSequenceKeypoint.new(0,Color3.fromRGB(85, 0, 255)),ColorSequenceKeypoint.new(0.02 + (drt*.02),Color3.fromRGB(85, 170, 255)),ColorSequenceKeypoint.new(1,Color3.fromRGB(85, 0, 255))})
						wait(.1)
					end
				end
			end)
		end
	end))
	return true
end

function netdexc(_TXT_DATA_TEXTSET_VERBOSE_RANDOMLEX_)
	for _, dp in pairs(_gui_exec:GetChildren()) do
		
			if dp.Name == _TXT_DATA_TEXTSET_VERBOSE_RANDOMLEX_ then
				dp:Destroy()
				return true
			end
		

	end
	return false
end

local open_menu = false

--RISE://SET_ANIM
guiAnim(Blatant)
guiAnim(Render)
guiAnim(Combat)
guiAnim(PlaceHolder_2)
guiAnim(PlaceHolder_3)
guiAnim(PlaceHolder_4)

local blatant_main = newSubMenu("Blatant")
local render_main = newSubMenu("Render")
local combat_main = newSubMenu("Combat")

local dropDownSpeed = newDropDown(blatant_main,UDim2.new(0.022, 0,0.024, 0),"Speed",{{16,"A","Speed"},{"false","B","Active"},{"","C","Key"},{"false","B","Velocity"},{"false","B","OcTp"},{"false","B","BHop"}})
local dropDownjp = newDropDown(blatant_main,UDim2.new(0, 0,0.106, 0),"Jump Power",{{50,"A","JumpPower"},{"false","B","Active"},{"","C","Key"}})
local dropDownfLY = newDropDown(blatant_main,UDim2.new(0, 0,0.188, 0),"Fly",{{16,"A","Speed"},{"false","B","Active"},{"","C","Key"},{2,"A","YSpeed"},{{"Normal","Bounce","TP","BounceTP"},"E","Mode"}})
local dropDownTP = newDropDown(blatant_main,UDim2.new(0.022, 0,0.350, 0),"ClickTp",{{"false","B","Active"},{"","C","Key"}})
local dropDownDisabler = newDropDown(blatant_main,UDim2.new(0.022, 0,0.432, 0),"Disabler",{{"false","B","Active"},{"","C","Key"},{.3,"A","Delay"}})
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

local dropDownAim = newDropDown(combat_main,UDim2.new(0.022, 0,0.270, 0),"Aimbot",{{"false","B","Active"},{"false","B","HeadLock"},{"","C","Key"},{16,"A","Distance"},{"false","B","FMS Aura"}})
local dropDownReach = newDropDown(combat_main,UDim2.new(0.022, 0,0.270, 0),"Reach",{{"false","B","Active"},{"","C","Key"},{8,"A","Size"}})
local dropDownHitboxE = newDropDown(combat_main,UDim2.new(0.022, 0,0.270, 0),"Hitbox Extender",{{"false","B","Active"},{"","C","Key"},{1,"A","Multiplier"}})
--RISE://OPEN_MENU
game:GetService("UserInputService").InputBegan:Connect(function(key,gpe)
	if not gpe then
		if key.KeyCode == GitSets.OpenGui then
			if open_menu == false then
				GitSets.Blur_Settings[1].Enabled = true
				closeAll()
				TweenCreate(blatant_main,.5,{Position = UDim2.new(1.2,0,0,0)})
				TweenCreate(render_main,.5,{Position = UDim2.new(1.2,0,0,0)})
				TweenCreate(combat_main,.5,{Position = UDim2.new(1.2,0,0,0)})
				open_menu = true
				TweenCreate(mf,.5,{Position = posStartMF})
				
			else
				GitSets.Blur_Settings[1].Enabled = false
				closeAll()
				open_menu = false
				TweenCreate(mf,.5,{Position = UDim2.new(0.214028969, 0, 1.05, 0)})
				
			end
		end
	end
end)

--RISE://GET_MOVEMENT
game:GetService("UserInputService").InputBegan:Connect(function(key,gpe)
	
end)

--RISE://ENABLE
game:GetService("UserInputService").InputBegan:Connect(function(key,gpe)
	
end)

--RISE://BLATANT

Blatant.MouseButton1Down:Connect(function()
	if blatant_main.Position == UDim2.new(1.2,0,0,0) then
		
		TweenCreate(blatant_main,.5,{Position = UDim2.new(.7,0,0,0)})
		TweenCreate(render_main,.5,{Position = UDim2.new(1.2,0,0,0)})
		TweenCreate(combat_main,.5,{Position = UDim2.new(1.2,0,0,0)})
		open_menu = false
		TweenCreate(mf,.5,{Position = UDim2.new(0.214028969, 0, 1.05, 0)})
	else
		if blatant_main.Position == UDim2.new(.7,0,0,0) then
			closeAll()
			TweenCreate(blatant_main,.5,{Position = UDim2.new(1.2,0,0,0)})
			TweenCreate(render_main,.5,{Position = UDim2.new(1.2,0,0,0)})
			TweenCreate(combat_main,.5,{Position = UDim2.new(1.2,0,0,0)})
		end
		
	end
end)

Render.MouseButton1Down:Connect(function()
	if render_main.Position == UDim2.new(1.2,0,0,0) then
		
		TweenCreate(blatant_main,.5,{Position = UDim2.new(1.2,0,0,0)})
		TweenCreate(render_main,.5,{Position = UDim2.new(.7,0,0,0)})
		TweenCreate(combat_main,.5,{Position = UDim2.new(1.2,0,0,0)})
		open_menu = false
		TweenCreate(mf,.5,{Position = UDim2.new(0.214028969, 0, 1.05, 0)})
	else
		if blatant_main.Position == UDim2.new(.7,0,0,0) then
			closeAll()
			TweenCreate(blatant_main,.5,{Position = UDim2.new(1.2,0,0,0)})
			TweenCreate(render_main,.5,{Position = UDim2.new(1.2,0,0,0)})
			TweenCreate(combat_main,.5,{Position = UDim2.new(1.2,0,0,0)})
		end

	end
end)

Combat.MouseButton1Down:Connect(function()
	if combat_main.Position == UDim2.new(1.2,0,0,0) then

		TweenCreate(blatant_main,.5,{Position = UDim2.new(1.2,0,0,0)})
		TweenCreate(render_main,.5,{Position = UDim2.new(1.2,0,0,0)})
		TweenCreate(combat_main,.5,{Position = UDim2.new(.7,0,0,0)})
		open_menu = false
		TweenCreate(mf,.5,{Position = UDim2.new(0.214028969, 0, 1.05, 0)})
	else
		if combat_main.Position == UDim2.new(.7,0,0,0) then
			closeAll()
			TweenCreate(blatant_main,.5,{Position = UDim2.new(1.2,0,0,0)})
			TweenCreate(render_main,.5,{Position = UDim2.new(1.2,0,0,0)})
			TweenCreate(combat_main,.5,{Position = UDim2.new(1.2,0,0,0)})
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
		local charClone = nil
		local char = nil
		pcall(function()
			repeat wait() until dropDownDisabler[2][1].Text == "true" and game.Players.LocalPlayer.Character.Humanoid.Health > 0
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
local colorUI = Instance.new("UIGradient")
colorUI.Parent = txtAim[3]
coroutine.resume(coroutine.create(function()
	while wait() do
		for drt = 0, 49 do
			colorUI.Color = ColorSequence.new({ColorSequenceKeypoint.new(0,Color3.fromRGB(85, 0, 255)),ColorSequenceKeypoint.new(.99 - (drt*.02),Color3.fromRGB(85, 85, 255)),ColorSequenceKeypoint.new(1,Color3.fromRGB(85, 0, 255))})
			wait(.1)
		end
		for drt = 0, 49 do
			colorUI.Color = ColorSequence.new({ColorSequenceKeypoint.new(0,Color3.fromRGB(85, 0, 255)),ColorSequenceKeypoint.new(0.02 + (drt*.02),Color3.fromRGB(85, 85, 255)),ColorSequenceKeypoint.new(1,Color3.fromRGB(85, 0, 255))})
			wait(.1)
		end
	end
end))
local db_OnAcces = false




game:GetService("RunService").RenderStepped:Connect(function()
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
			
			
			if dropDownAim[2][2].Text == "false" then
				lastAimed = true
				local hum = glos[2].Character.HumanoidRootPart
				if hum then
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
						txtAim[2].Text = gb
					end
					if dropDownAim[2][2].Text == "true" then
						workspace.CurrentCamera.CFrame = CFrame.new(workspace.CurrentCamera.Position,glos[2].Character.Head)
					end
				end
			else
				local hum = glos[2].Character.HumanoidRootPart
				if hum then
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
					txtAim[2].Text = gb
				end
				if lastAimed then
					game.Players.LocalPlayer.Character.Head.Neck.C0 = CFrame.new(Vector3.new(0,neckStart,0))
					game.Players.LocalPlayer.Character.Humanoid.AutoRotate = true
					lastAimed = false
				end
				game.Workspace.CurrentCamera.CFrame = CFrame.new(game.Workspace.CurrentCamera.CFrame.Position,glos[2].Character.PrimaryPart.Position)
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
					GitSets.chatify("Reach Applied!")
				else
					GitSets.chatify("Reach is not appliable on this sword!")
				end
			end
		end
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
						GitSets.chatify("Reach Applied")
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
	bv.P = 400
	while wait() do
		local err, msg = pcall(function()
			while wait(.1) do
				if game.Players.LocalPlayer.Character.Humanoid.Health > 0 then
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
