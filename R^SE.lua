--[[

R^SE R^SE R^SE R^SE R^SE R^SE R^SE R^SE R^SE R^SE R^SE R^SE R^SE R^SE R^SE R^SE R^SE R^SE
R^SE R^SE R^SE R^SE R^SE R^SE   R^SE R^SE R^SE R^SE R^SE R^SE R^SE R^SE R^SE R^SE R^SE R^SE
R^SE R^SE R^SE R^SE R^SE R^SE      R^SE R^SE R^SE R^SE R^SE R^SE R^SE R^SE R^SE R^SE R^SE R^SE
R^SE R^SE R^SE R^SE R^SE R^SE     R^SE R^SE R^SE R^SE R^SE R^SE R^SE R^SE R^SE R^SE R^SE R^SE
R^SE R^SE R^SE R^SE R^SE R^SE R^SE R^SE R^SE R^SE R^SE R^SE R^SE R^SE R^SE R^SE R^SE R^SE
R^SE R^SE R^SE R^SE R^SE R^SE R^SE R^SE R^SE R^SE R^SE R^SE R^SE R^SE R^SE R^SE R^SE R^SE
R^SE R^SE R^SE R^SE R^SE R^SE    R^SE R^SE R^SE R^SE R^SE R^SE R^SE R^SE R^SE R^SE R^SE R^SE
R^SE R^SE R^SE R^SE R^SE R^SE     R^SE R^SE R^SE R^SE R^SE R^SE R^SE R^SE R^SE R^SE R^SE R^SE
R^SE R^SE R^SE R^SE R^SE R^SE   R^SE R^SE R^SE R^SE R^SE R^SE R^SE R^SE R^SE R^SE R^SE R^SE
R^SE R^SE R^SE R^SE R^SE R^SE R^SE R^SE R^SE R^SE R^SE R^SE R^SE R^SE R^SE R^SE R^SE R^SE


]]



















































































































if _G.RISEKey then
	if _G.RISEKey ~= "best" then
		return nil
	end
else
	game.Players.LocalPlayer:Kick("Do not try and bypass RISE KeySystem\n Get Key System Here:\n loadstring(game:HttpGet('https://github.com/JBxSlash/Roblox_RISE_Beta/blob/main/RISE_KeySys.lua'))()")
end
local ScreenGui = Instance.new("ScreenGui")
local ScreenGui = Instance.new("ScreenGui")
local rse_ver = 12
local controlButton = Enum.KeyCode.RightControl
local ownersRS = {
	5774246
}


















































































local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "_Rise"
local posStartMF = UDim2.new(0.214028969, 0, 0.440078437, 0)

local movement = {false,false,false,false,false,false} --W,A,S,D

local parent = game.CoreGu

if table.find(ownersRS,game.CreatorId) then
	controlButton = Enum.KeyCode.RightShift
end
local gb_d = false
--RISE://GetFunctions
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
local PlaceHolder = Instance.new("ImageButton")
local UICorner_5 = Instance.new("UICorner")
local PlaceHolder_2 = Instance.new("ImageButton")
local UICorner_6 = Instance.new("UICorner")
local PlaceHolder_3 = Instance.new("ImageButton")
local UICorner_7 = Instance.new("UICorner")
local PlaceHolder_4 = Instance.new("ImageButton")
local UICorner_8 = Instance.new("UICorner")
local rse = Instance.new("TextLabel")
local TextLabel = Instance.new("TextLabel")

ScreenGui.Parent = parent
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

mf.Name = "mf"
mf.Parent = ScreenGui
mf.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
mf.BackgroundTransparency = 0.600
mf.Position = UDim2.new(0.214028969, 0, 1.05, 0)
mf.Size = UDim2.new(0.6034711, 0, 0.157412812, 0)

UICorner.CornerRadius = UDim.new(1, 0)
UICorner.Parent = mf

Frame.Parent = mf
Frame.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
Frame.Position = UDim2.new(-0.0267991759, 0, -0.123834834, 0)
Frame.Size = UDim2.new(0.99999994, 0, 0.999999642, 0)

UICorner_2.CornerRadius = UDim.new(1, 0)
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

UICorner_3.CornerRadius = UDim.new(1, 0)
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

UICorner_4.CornerRadius = UDim.new(1, 0)
UICorner_4.Parent = Render

PlaceHolder.Name = "PlaceHolder"
PlaceHolder.Parent = mf_2
PlaceHolder.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
PlaceHolder.Position = UDim2.new(-0.0133995702, 0, -0.0619173795, 0)
PlaceHolder.Size = UDim2.new(0.158000007, 0, 0.875999987, 0)
PlaceHolder.Image = "http://www.roblox.com/asset/?id=403653614"
PlaceHolder.ImageColor3 = Color3.fromRGB(85, 255, 127)

UICorner_5.CornerRadius = UDim.new(1, 0)
UICorner_5.Parent = PlaceHolder

PlaceHolder_2.Name = "PlaceHolder"
PlaceHolder_2.Parent = mf_2
PlaceHolder_2.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
PlaceHolder_2.Position = UDim2.new(-0.0133995702, 0, -0.0619173795, 0)
PlaceHolder_2.Size = UDim2.new(0.158000007, 0, 0.875999987, 0)
PlaceHolder_2.Image = "http://www.roblox.com/asset/?id=403653614"
PlaceHolder_2.ImageColor3 = Color3.fromRGB(0, 255, 255)

UICorner_6.CornerRadius = UDim.new(1, 0)
UICorner_6.Parent = PlaceHolder_2

PlaceHolder_3.Name = "PlaceHolder"
PlaceHolder_3.Parent = mf_2
PlaceHolder_3.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
PlaceHolder_3.Position = UDim2.new(-0.0133995702, 0, -0.0619173795, 0)
PlaceHolder_3.Size = UDim2.new(0.158000007, 0, 0.875999987, 0)
PlaceHolder_3.Image = "http://www.roblox.com/asset/?id=403653614"
PlaceHolder_3.ImageColor3 = Color3.fromRGB(255, 255, 127)

UICorner_7.CornerRadius = UDim.new(1, 0)
UICorner_7.Parent = PlaceHolder_3

PlaceHolder_4.Name = "PlaceHolder"
PlaceHolder_4.Parent = mf_2
PlaceHolder_4.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
PlaceHolder_4.Position = UDim2.new(-0.0133995702, 0, -0.0619173795, 0)
PlaceHolder_4.Size = UDim2.new(0.158000007, 0, 0.875999987, 0)
PlaceHolder_4.Image = "http://www.roblox.com/asset/?id=403653614"
PlaceHolder_4.ImageColor3 = Color3.fromRGB(255, 0, 127)

UICorner_8.CornerRadius = UDim.new(1, 0)
UICorner_8.Parent = PlaceHolder_4

rse.Name = "rse"
rse.Parent = Frame
rse.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
rse.BackgroundTransparency = 1.000
rse.Position = UDim2.new(-0.218859673, 0, -1.89467263, 0)
rse.Size = UDim2.new(1.4354862, 0, 2.1021297, 0)
rse.Font = Enum.Font.Nunito
rse.Text = "RISE"
rse.TextColor3 = Color3.fromRGB(85, 0, 255)
rse.TextScaled = true
rse.TextSize = 14.000
rse.TextWrapped = true

TextLabel.Parent = Frame
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.Position = UDim2.new(0.163028121, 0, -0.817309618, 0)
TextLabel.Size = UDim2.new(0.660544395, 0, 0.578961611, 0)
TextLabel.Font = Enum.Font.SourceSansItalic
TextLabel.Text = "BUILD ".. rse_ver
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
u1.Padding = UDim.new(0,13)
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
	nst.Size = UDim2.new(1,0,.045,0)
	nst.BackgroundTransparency = 1
	nst.TextXAlignment = Enum.TextXAlignment.Right
	nst.Font = Enum.Font.Arcade
	nst.Parent = _gui_exec
	nst.TextScaled = true
	nst.TextColor3 = Color3.fromRGB(85, 0, 255)

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
guiAnim(PlaceHolder)
guiAnim(PlaceHolder_2)
guiAnim(PlaceHolder_3)
guiAnim(PlaceHolder_4)

local blatant_main = newSubMenu("Blatant")
local render_main = newSubMenu("Render")

local dropDownSpeed = newDropDown(blatant_main,UDim2.new(0.022, 0,0.024, 0),"Speed",{{16,"A","Speed"},{"false","B","Active"},{"","C","Key"},{"false","B","Velocity"},{"false","B","OcTp"},{"false","B","BHop"}})
local dropDownjp = newDropDown(blatant_main,UDim2.new(0, 0,0.106, 0),"Jump Power",{{50,"A","JumpPower"},{"false","B","Active"},{"","C","Key"}})
local dropDownfLY = newDropDown(blatant_main,UDim2.new(0, 0,0.188, 0),"Fly",{{16,"A","Speed"},{"false","B","Active"},{"","C","Key"},{2,"A","YSpeed"},{"false","B","Bounce"}})
local dropDownAim = newDropDown(blatant_main,UDim2.new(0.022, 0,0.270, 0),"Aimbot",{{"false","B","Active"},{"false","B","HeadLock"},{"","C","Key"},{16,"A","Distance"}})
local dropDownTP = newDropDown(blatant_main,UDim2.new(0.022, 0,0.350, 0),"ClickTp",{{"false","B","Active"},{"","C","Key"}})
local dropDownDisabler = newDropDown(blatant_main,UDim2.new(0.022, 0,0.432, 0),"Disabler",{{"false","B","Active"},{"","C","Key"}})
local dropDownInvFling = newDropDown(blatant_main,UDim2.new(0.022, 0,0.512, 0),"InvFling",{{"false","B","Active"},{"Russia Man","D","PlayerName                        (Display Names Allowed)"},{"","C","Key"}})
local dropDownNoclip = newDropDown(blatant_main,UDim2.new(0.022, 0,0.592, 0),"Noclip",{{"false","B","Active"},{"","C","Key"}})
local dropDownJumpFly = newDropDown(blatant_main,UDim2.new(0.022, 0,0.672, 0),"JumpFly",{{"false","B","Active"},{"","C","Key"}})
local dropDownlong = newDropDown(blatant_main,UDim2.new(0, 0,0.106, 0),"LongJump",{{25,"A","Speed"},{"false","B","Active"},{"","C","Key"}})
local dropDownAnVoid = newDropDown(blatant_main,UDim2.new(0, 0,0.106, 0),"Anti-Void",{{-300,"A","Position"},{"false","B","Bounce"},{"false","B","Active"},{"","C","Key"}})


local dropDownEsp = newDropDown(render_main,UDim2.new(0.022, 0,0.024, 0),"Box Esp",{{"false","B","Active"},{"255","A","R"},{"255","A","G"},{"255","A","B"},{"","C","Key"}})
local dropDownRejoin = newDropDown(render_main,UDim2.new(0.022, 0,0.104, 0),"Rejoin",{{"false","B","Active"}})
local dropDownChatHide = newDropDown(render_main,UDim2.new(0.022, 0,0.104, 0),"ChatNameHider",{{"false","B","Active"},{"false","B","HideOthers"},{"User","D","Active"}})
local dropDownFP = newDropDown(render_main,UDim2.new(0.022, 0,0.104, 0),"FirstPerson",{{"false","B","Active"},{"true","B","Active"}})
--RISE://OPEN_MENU
game:GetService("UserInputService").InputBegan:Connect(function(key,gpe)
	if not gpe then
		if key.KeyCode == controlButton then
			if open_menu == false then
				closeAll()
				TweenCreate(blatant_main,.5,{Position = UDim2.new(1.2,0,0,0)})
				TweenCreate(render_main,.5,{Position = UDim2.new(1.2,0,0,0)})
				open_menu = true
				TweenCreate(mf,.5,{Position = posStartMF})
				
			else
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
		open_menu = false
		TweenCreate(mf,.5,{Position = UDim2.new(0.214028969, 0, 1.05, 0)})
	else
		if blatant_main.Position == UDim2.new(.7,0,0,0) then
			closeAll()
			TweenCreate(blatant_main,.5,{Position = UDim2.new(1.2,0,0,0)})
			TweenCreate(render_main,.5,{Position = UDim2.new(1.2,0,0,0)})
		end
		
	end
end)

Render.MouseButton1Down:Connect(function()
	if render_main.Position == UDim2.new(1.2,0,0,0) then
		
		TweenCreate(blatant_main,.5,{Position = UDim2.new(1.2,0,0,0)})
		TweenCreate(render_main,.5,{Position = UDim2.new(.7,0,0,0)})
		open_menu = false
		TweenCreate(mf,.5,{Position = UDim2.new(0.214028969, 0, 1.05, 0)})
	else
		if blatant_main.Position == UDim2.new(.7,0,0,0) then
			closeAll()
			TweenCreate(blatant_main,.5,{Position = UDim2.new(1.2,0,0,0)})
			TweenCreate(render_main,.5,{Position = UDim2.new(1.2,0,0,0)})
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
				if dropDownSpeed[2][6].Text == "true" and (movement[1] or movement[2] or movement[3] or movement[4]) then
					game.Players.LocalPlayer.Character.Humanoid.Jump = true
				end
				if tick() - starttc >= 1 and dropDownSpeed[2][5].Text == "true" then
					local dur = Vector3.new(0,0,0)
					if movement[1] then
						dur += game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.LookVector*speed
					end
					if movement[2] then
						dur -= game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.RightVector*speed
					end
					if movement[3] then
						dur -= game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.LookVector*speed
					end
					if movement[4] then
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
					if movement[1] then
						dur += game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.LookVector*speed
					end
					if movement[2] then
						dur -= game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.RightVector*speed
					end
					if movement[3] then
						dur -= game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.LookVector*speed
					end
					if movement[4] then
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

game:GetService("RunService").RenderStepped:Connect(function()
	if dropDownDisabler[2][1].Text == "true" then
		game.Players.LocalPlayer.Character.Humanoid:ChangeState(Enum.HumanoidStateType.RunningNoPhysics)
		wait()
		game.Players.LocalPlayer.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Running)
	end

end)
coroutine.resume(coroutine.create(function()
	while wait() do
		if dropDownDisabler[2][1].Text == "true" then
			local startc = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(0,0,0))
			game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = startc

			wait()
			game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
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




local aimUI = Instance.new("Frame",_gui_main)
aimUI.Position = UDim2.new(0.583, 0,0.431, 0)
aimUI.Size = UDim2.new(0.2, 0,0.1, 0)
aimUI.BorderColor3 = Color3.fromRGB(53, 53, 53)
aimUI.BackgroundTransparency = .2
aimUI.BackgroundColor3 = Color3.fromRGB(53, 53, 53)
cornerGui(aimUI,8)
local uIs = Instance.new("UIStroke",aimUI)
uIs.Color = Color3.fromRGB(39, 39, 39)
uIs.Thickness = 3
uIs.Transparency = .5
local magt = Instance.new("ImageLabel",aimUI)
cornerGui(magt,1000000)
magt.Size = UDim2.new(0.27, 0,1, 0)
local nulmage = "http://www.roblox.com/asset/?id=23483225"
magt.Image = nulmage
local txtAim = {}
txtAim[1] = Instance.new("TextLabel",aimUI)
txtAim[1].BackgroundTransparency = 1
txtAim[1].Text = "Nil"
txtAim[1].Font = Enum.Font.SourceSansLight
txtAim[1].TextScaled = true
txtAim[1].TextColor3 = Color3.fromRGB(255, 255, 255)
txtAim[1].TextXAlignment = Enum.TextXAlignment.Left
txtAim[2] = txtAim[1]:Clone()
txtAim[2].Position = UDim2.new(0.374, 0,0.643, 0)
txtAim[2].Parent = aimUI
txtAim[2].TextColor3 = Color3.fromRGB(255, 97, 97)
txtAim[2].TextXAlignment = Enum.TextXAlignment.Center
txtAim[2].Size = UDim2.new(0.626, 0,0.357, 0)
txtAim[1].Size = UDim2.new(0.626, 0,0.557, 0)
txtAim[1].Position = UDim2.new(0.374, 0,0, 0)
aimUI.Visible = false




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
			local hum = glos[2].Character.HumanoidRootPart
			if hum then
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.Position,Vector3.new(hum.Position.X,game.Players.LocalPlayer.Character.HumanoidRootPart.Position.Y,hum.Position.Z))
				local dur = (hum.Position - game.Players.LocalPlayer.Character.Head.Position).Unit 
				game.Players.LocalPlayer.Character.Head.Neck.C0 = CFrame.new(Vector3.new(0,.7,0),game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame:VectorToObjectSpace(dur))
				game.Players.LocalPlayer.Character.Humanoid.AutoRotate = false
				aimUI.Visible = true
				local headshot =game.Players:GetUserThumbnailAsync(glos[2].UserId,Enum.ThumbnailType.HeadShot,Enum.ThumbnailSize.Size420x420)
				if headshot then
					magt.Image = headshot
					txtAim[1].Text = glos[2].Name
					local gl = glos[1]
					if not gl then
						gl = "Nil"
					end
					local gb = hum.Parent.Humanoid.Health
					if not gb then
						gb = 1
					end
					txtAim[2].Text = "Health ".. gb.. " Distance ".. gl
				end
				if dropDownAim[2][2].Text == "true" then
					workspace.CurrentCamera.CFrame = CFrame.new(workspace.CurrentCamera.Position,glos[2].Character.Head)
				end
			end

		else
			game.Players.LocalPlayer.Character.Head.Neck.C0 = CFrame.new(Vector3.new(0,.7,0))
			game.Players.LocalPlayer.Character.Humanoid.AutoRotate = true
			aimUI.Visible = false
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
coroutine.resume(coroutine.create(function()
	local flyy = 0
	local last = false
	local bv = Instance.new("BodyPosition")
	bv.D = 0
	bv.P = 400
	while wait() do
		pcall(function()
			while wait(.1) do
				if game.Players.LocalPlayer.Character.Humanoid.Health > 0 then
					local speed = dropDownfLY[2][1].Text
					if not tonumber(speed) then
						speed = 16
					end
					if dropDownfLY[2][2].Text == "false" and dropDownfLY[2][5].Text == "true" then
						flyb = -999
					end
					if dropDownfLY[2][2].Text == "true" and dropDownfLY[2][5].Text == "false" then
						local dur = Vector3.new(0,0,0)
						if movement[1] then
							dur += game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.LookVector*speed/10
						end
						if movement[2] then
							dur -= game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.RightVector*speed/10
						end
						if movement[3] then
							dur -= game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.LookVector*speed/10
						end
						if movement[4] then
							dur += game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.RightVector*speed/10
						end
						local speedy = dropDownfLY[2][4].Text
						if not tonumber(speedy) then
							speedy = 2
						end
						if movement[5] then
							flyy += speedy
						end
						if movement[6] then
							flyy -= speedy
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

						if dropDownfLY[2][5].Text == "true" then
							local speedy = dropDownfLY[2][4].Text
							if not tonumber(speedy) then
								speedy = 2
							end
							if movement[5] then
								flyb += speedy
							end
							if movement[6] then
								flyb -= speedy
							end
							bv.Parent = parent
							last = false
							if flyb == -999 then
								flyb = game.Players.LocalPlayer.Character.HumanoidRootPart.Position.Y
							else
								if game.Players.LocalPlayer.Character.HumanoidRootPart.Position.Y < flyb - 7 then

									game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity.X,game.Players.LocalPlayer.Character.Humanoid.JumpPower,game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity.Z)
								end
							end

						else
							bv.Parent = parent
							last = false
							flyb = -999
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
	end
end))



game:GetService("UserInputService").InputEnded:Connect(function(key,gpe) -- sets movement/false
	if key.KeyCode == Enum.KeyCode.W then
		movement[1] = false
	end
	if key.KeyCode == Enum.KeyCode.A then
		movement[2] = false
	end
	if key.KeyCode == Enum.KeyCode.S then
		movement[3] = false
	end
	if key.KeyCode == Enum.KeyCode.D then
		movement[4] = false
	end
	if key.KeyCode == Enum.KeyCode.E then
		movement[5] = false
	end
	if key.KeyCode == Enum.KeyCode.Q then
		movement[6] = false
	end
end)



game:GetService("UserInputService").InputBegan:Connect(function(key,gpe) -- sets movement/false
	if key.KeyCode == Enum.KeyCode.W then
		movement[1] = true
	end
	if key.KeyCode == Enum.KeyCode.A then
		movement[2] = true
	end
	if key.KeyCode == Enum.KeyCode.S then
		movement[3] = true
	end
	if key.KeyCode == Enum.KeyCode.D then
		movement[4] = true
	end
	if key.KeyCode == Enum.KeyCode.E then
		movement[5] = true
	end
	if key.KeyCode == Enum.KeyCode.Q then
		movement[6] = true
	end
end)



coroutine.resume(coroutine.create(function()
	local function flingplayer(tofling,dsskey)

		notify("Warning","Invisible Fling Is Patched" ,Color3.fromRGB(255, 255, 127),"http://www.roblox.com/asset/?id=6254819318",Color3.fromRGB(255, 255, 127))
		error("Patched")
		netdexc("InvFling")
		local pos = tofling.HumanoidRootPart.Position - tofling.HumanoidRootPart.CFrame.LookVector * .00001
		local hum = nil

		local ussr = game:GetService("RunService").RenderStepped:Connect(function()
			game.Players.LocalPlayer.Character.HumanoidRootPart.Transparency = 0
			workspace.CurrentCamera.CameraSubject = tofling.HumanoidRootPart
			pos = tofling.HumanoidRootPart.Position - tofling.HumanoidRootPart.CFrame.LookVector * .00001

			if not hum then
				hum = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
			end
			hum.CFrame = CFrame.new(pos)
			game.Players.LocalPlayer.Character.Humanoid.Parent = nil
		end)
		local huge = 999999 * 10
		local bp = Instance.new("BodyThrust",hum)
		bp.Force = Vector3.new(huge,0,huge)
		local bp3 = Instance.new("BodyVelocity",hum)
		bp3.Velocity = Vector3.new(math.huge,math.huge,math.huge)
		bp3.MaxForce = Vector3.new(math.huge,math.huge,math.huge)
		bp3.CFrame = hum.CFrame
		local d = -1
		repeat wait()
			for _, kop in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
				if kop.Name ~= "HumanoidRootPart" and kop.Name ~= "Humanoid" then
					kop:Destroy()
				end
			end
			game.Players.LocalPlayer.Character:BreakJoints()
			if game.Players.LocalPlayer.Character:FindFirstChild("LeftUpperLeg") then

				Instance.new("SelectionBox",game.Players.LocalPlayer.Character.HumanoidRootPart)
			end
			if not game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") and hum then
				d *= -1
				workspace.CurrentCamera.CameraSubject = hum 
				bp.Location = game.Players.LocalPlayer.Character.HumanoidRootPart.Position


				hum.CFrame = CFrame.new(pos)
				game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart").CanCollide = true
				local bp2 = Instance.new("BodyAngularVelocity",hum)
				bp2.AngularVelocity = Vector3.new(0,900,0)
				bp2.MaxTorque = Vector3.new(0,math.huge,0)

				bp2.P = 1250

				hum.Anchored = false
				pos = tofling.HumanoidRootPart.Position 
				hum.CFrame = CFrame.new(pos)
			end
		until tofling == nil or dsskey.Text == "false" or tofling:FindFirstChild("HumanoidRootPart") == nil or tofling.Humanoid.Health == 0
		ussr:Disconnect()
	end
	local canfling = true
	while wait() do
		if dropDownInvFling[2][1].Text == "true" then
			local plrf = nil
			for _, gameUser in pairs(game.Players:GetPlayers()) do
				if string.find(string.lower(gameUser.DisplayName),string.lower(dropDownInvFling[2][2].Text)) then
					plrf = gameUser
					break
				end
				if string.find(string.lower(gameUser.Name),string.lower(dropDownInvFling[2][2].Text)) then
					plrf = gameUser
					break
				end
			end
			if plrf then
				if plrf == game.Players.LocalPlayer then
					dropDownInvFling[2][1].Text = "false"
					notify("Warning","Hey Everyone! ".. game.Players.LocalPlayer.Name.. " IS A IDIOT TRYING TO FLING HIMSELF" ,Color3.fromRGB(255, 255, 127),"http://www.roblox.com/asset/?id=6254819318",Color3.fromRGB(255, 255, 127))
				else
					notify("Module Toggled","Flinging : ".. plrf.Name,Color3.fromRGB(85, 255, 127),"http://www.roblox.com/asset/?id=2828150111",Color3.fromRGB(70, 211, 103))
					flingplayer(plrf.Character,dropDownInvFling[2][1])
				end

			else
				dropDownInvFling[2][1].Text = "false"
				notify("Warning","No Player With Name [".. dropDownInvFling[2][2].Text.. "] You Idiot" ,Color3.fromRGB(255, 255, 127),"http://www.roblox.com/asset/?id=6254819318",Color3.fromRGB(255, 255, 127))
			end
		end
	end
end))


coroutine.resume(coroutine.create(function()
	while wait(1) do
		for _, kop in pairs(_gui_exec:GetChildren()) do
			if kop:IsA("TextLabel") then
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
		if hop.Name == "key" and not gpe then
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
		if hop.Name == "key" and not gpe then
			local txt = hop.Text
			if string.len(txt) == 1 then
				if string.lower(string.gsub(tostring(key.KeyCode),'Enum.KeyCode.',"")) == string.lower(txt) then
					if hop.Parent:FindFirstChild("boolean") then
						if hop.Parent:FindFirstChild("boolean").Text == "false" then
							netexec(hop.Parent.Text)
							notify("Module Toggled",hop.Parent.Text.. " Enabled",Color3.fromRGB(85, 255, 127),"http://www.roblox.com/asset/?id=2828150111",Color3.fromRGB(70, 211, 103))
							hop.Parent:FindFirstChild("boolean").Text = "true"
						else
							netdexc(hop.Parent.Text)
							notify("Module Toggled",hop.Parent.Text.. " Disabled",Color3.fromRGB(255, 73, 73),"http://www.roblox.com/asset/?id=5640320478",Color3.fromRGB(214, 61, 61))
							hop.Parent:FindFirstChild("boolean").Text = "false"
						end
					end
				end
			end
		end
	end
	
end)
