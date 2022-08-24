if not syn and not queue_on_teleport then
    print("'".. identifyexecutor().. "' is bad and cannot handle this script >:(, use delta or comet or synpase for the best experience")
    return
end
local tdf = false
local file_data = nil
if not isfolder("rise") then
makefolder("rise")
end
if not isfolder("rise/configs") then
makefolder("rise/configs")
end
if isfile("rise/configs/".. game.PlaceId.. "_riseconfig.txt") then
    tdf = true
    file_data = game:GetService("HttpService"):JSONDecode(readfile("rise/configs/".. game.PlaceId.. "_riseconfig.txt")) 
    
end


if syn then
    syn.queue_on_teleport("loadstring(game:HttpGet('https://raw.githubusercontent.com/JBxSlash/Roblox_RISE_Beta/main/R%5ESE.lua'))()")
else
    queue_on_teleport("loadstring(game:HttpGet('https://raw.githubusercontent.com/JBxSlash/Roblox_RISE_Beta/main/R%5ESE.lua'))()")
end

local ScreenGui = Instance.new("ScreenGui")
local mf = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local TextLabel = Instance.new("TextLabel")
local holder = Instance.new("Frame")
local UICorner_2 = Instance.new("UICorner")
local tab_holder = Instance.new("Frame")
local UIListLayout = Instance.new("UIListLayout")
local menu = Instance.new("TextLabel")
local storage = Instance.new("SurfaceGui")
local menu_2 = Instance.new("ScrollingFrame")
local UIListLayout_2 = Instance.new("UIListLayout")
local selection = Instance.new("Frame")
local UICorner_3 = Instance.new("UICorner")
local Frame = Instance.new("Frame")
local TextLabel_2 = Instance.new("TextButton")
local ImageButton = Instance.new("ImageButton")
local data = Instance.new("Frame")
local UIListLayout_3 = Instance.new("UIListLayout")
local dataFrame = Instance.new("Frame")
local tab = Instance.new("Frame")
local ImageLabel = Instance.new("ImageLabel")
local TextButton = Instance.new("TextButton")
local Frame1 = Instance.new("Frame")
local TextLabel99 = Instance.new("TextLabel")
local ver = Instance.new("TextLabel")
local under = Instance.new("TextLabel")

local seat_data = {}

local move = {
	["w"] = false;
	["a"] = false;
	["s"] = false;
	["d"] = false;
	["e"] = false;
	["q"] = false;
}

local gitsets = {
	["ver"] = 5.101;
	["undertext"] = "";
}

ScreenGui.Parent = game.CoreGui
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame1.Parent = ScreenGui
Frame1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame1.BackgroundTransparency = 1.000
Frame1.Position = UDim2.new(-0.0202156343, 0, 0, 0)
Frame1.Size = UDim2.new(0.297843665, 0, 0.107066378, 0)

TextLabel99.Parent = Frame1
TextLabel99.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel99.BackgroundTransparency = 1.000
TextLabel99.Position = UDim2.new(0.0678733066, 0, 0, 0)
TextLabel99.Size = UDim2.new(0.76018101, 0, 0.939999998, 0)
TextLabel99.Font = Enum.Font.SourceSans
TextLabel99.Text = "Rise"
TextLabel99.TextColor3 = Color3.fromRGB(85, 255, 255)
TextLabel99.TextScaled = true
TextLabel99.TextSize = 14.000
TextLabel99.TextWrapped = true
TextLabel99.TextXAlignment = Enum.TextXAlignment.Left

ver.Name = "ver"
ver.Parent = Frame1
ver.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ver.BackgroundTransparency = 1.000
ver.Position = UDim2.new(0.407239825, 0, 0, 0)
ver.Size = UDim2.new(0.692307711, 0, 0.460000008, 0)
ver.Font = Enum.Font.SourceSans
ver.Text = gitsets.ver
ver.TextColor3 = Color3.fromRGB(85, 255, 255)
ver.TextScaled = true
ver.TextSize = 14.000
ver.TextWrapped = true
ver.TextXAlignment = Enum.TextXAlignment.Left

under.Name = "under"
under.Parent = Frame1
under.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
under.BackgroundTransparency = 1.000
under.Position = UDim2.new(0.407239825, 0, 0.360000044, 0)
under.Size = UDim2.new(0.692307711, 0, 0.579999983, 0)
under.Font = Enum.Font.SourceSans
coroutine.resume(coroutine.create(function()
	while wait(1) do
        game:GetService("TweenService"):Create(ver,TweenInfo.new(1,Enum.EasingStyle.Linear,Enum.EasingDirection.Out),{TextColor3 = Color3.fromRGB(85, 255, 127)}):Play(0)
        game:GetService("TweenService"):Create(under,TweenInfo.new(1,Enum.EasingStyle.Linear,Enum.EasingDirection.Out),{TextColor3 = Color3.fromRGB(85, 255, 127)}):Play(0)
		game:GetService("TweenService"):Create(TextLabel99,TweenInfo.new(1,Enum.EasingStyle.Linear,Enum.EasingDirection.Out),{TextColor3 = Color3.fromRGB(85, 255, 127)}):Play(0)
		wait(1)
		game:GetService("TweenService"):Create(TextLabel99,TweenInfo.new(1,Enum.EasingStyle.Linear,Enum.EasingDirection.Out),{TextColor3 = Color3.fromRGB(85, 170, 255)}):Play(0)
        game:GetService("TweenService"):Create(ver,TweenInfo.new(1,Enum.EasingStyle.Linear,Enum.EasingDirection.Out),{TextColor3 = Color3.fromRGB(85, 170, 255)}):Play(0)
        game:GetService("TweenService"):Create(under,TweenInfo.new(1,Enum.EasingStyle.Linear,Enum.EasingDirection.Out),{TextColor3 = Color3.fromRGB(85, 170, 255)}):Play(0)
	end
end))
coroutine.resume(coroutine.create(function()
	while wait() do
		under.Text = gitsets.undertext
	end
end))
under.TextColor3 = Color3.fromRGB(85, 255, 255)
under.TextScaled = true
under.TextSize = 14.000
under.TextWrapped = true
under.TextXAlignment = Enum.TextXAlignment.Left

mf.Name = "mf"
mf.Parent = ScreenGui
mf.BackgroundColor3 = Color3.fromRGB(16,16,16)
mf.BorderSizePixel = 0
mf.Position = UDim2.new(.5, 0, .5, 0)
mf.Size = UDim2.new(0, 650, 0, 415)
mf.ClipsDescendants = true
mf.Draggable = true
mf.Active = true
mf.Visible = false
mf.AnchorPoint = Vector2.new(.5,.5)
mf.BackgroundTransparency = 0

UICorner.Parent = mf

TextLabel.Parent = mf
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.Size = UDim2.new(0.2, 0, 0.132530123, 0)
TextLabel.Font = Enum.Font.SourceSans
TextLabel.Text = "Rise"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextScaled = true
TextLabel.TextSize = 14.000
TextLabel.TextWrapped = true


holder.Name = "holder"
holder.Parent = mf
holder.BackgroundColor3 = Color3.fromRGB(16, 16, 16)
holder.BorderSizePixel = 0
holder.Position = UDim2.new(0.2, 0, 0, 0)
holder.Size = UDim2.new(0.8, 0, 1, 0)

UICorner_2.Parent = holder

tab_holder.Name = "tab_holder"
tab_holder.Parent = mf
tab_holder.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
tab_holder.BackgroundTransparency = 1.000
tab_holder.Position = UDim2.new(0, 0, 0.132530123, 0)
tab_holder.Size = UDim2.new(0.215, 0, 0.834934592, 0)

UIListLayout.Parent = tab_holder
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout.Padding = UDim.new(0,5)

menu.Name = "menu"
menu.Parent = mf
menu.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
menu.BackgroundTransparency = 1.000
menu.Position = UDim2.new(0.44, 0, 0, 0)
menu.Size = UDim2.new(0.279857397, 0, 0.0650550947, 0)
menu.Font = Enum.Font.SourceSans
menu.Text = "Blatant"
menu.TextColor3 = Color3.fromRGB(255, 255, 255)
menu.TextScaled = true
menu.TextSize = 14.000
menu.TextWrapped = true
menu.TextXAlignment = Enum.TextXAlignment.Center

storage.Name = "storage"
storage.Parent = ScreenGui
storage.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
storage.LightInfluence = 1.000

menu_2.Name = "menu"
menu_2.Parent = storage
menu_2.Active = true
menu_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
menu_2.BackgroundTransparency = 1.000
menu_2.BorderSizePixel = 0
menu_2.Position = UDim2.new(0, 0, 0.075, 0)
menu_2.Size = UDim2.new(1, 0, 0.959946513, 0)
menu_2.ScrollBarThickness = 5

UIListLayout_2.Parent = menu_2
UIListLayout_2.HorizontalAlignment = Enum.HorizontalAlignment.Center
UIListLayout_2.Padding = UDim.new(0, 10)

selection.Name = "selection"
selection.Parent = storage
selection.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
selection.Position = UDim2.new(0.0728275776, 0, 0.0293024965, 0)
selection.Size = UDim2.new(0, 490, 0, 30)

UICorner_3.Parent = selection

Frame.Parent = selection
Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame.BackgroundTransparency = 1.000
Frame.Size = UDim2.new(0, 380, 0, 30)

TextLabel_2.Parent = Frame
TextLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.BackgroundTransparency = 1.000
TextLabel_2.Position = UDim2.new(0.0444591641, 0, 0, 0)
TextLabel_2.Size = UDim2.new(0.827492714, 0, 1, 0)
TextLabel_2.Font = Enum.Font.SourceSans
TextLabel_2.Text = "Speed"
TextLabel_2.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.TextScaled = true
TextLabel_2.TextSize = 14.000
TextLabel_2.TextWrapped = true
TextLabel_2.TextXAlignment = Enum.TextXAlignment.Left
TextLabel_2.Name = "TextLabel"

ImageButton.Parent = Frame
ImageButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageButton.BackgroundTransparency = 1.000
ImageButton.Position = UDim2.new(1.2, 0, 0.0571428575, 0)
ImageButton.Size = UDim2.new(0.0899570063, 0, 1, 0)
ImageButton.Image = "rbxasset://textures/collapsibleArrowDown.png"

data.Name = "data"
data.Parent = selection
data.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
data.BackgroundTransparency = 1.000
data.Position = UDim2.new(0, 0, 0, 30)
data.Size = UDim2.new(0, 300, 0, 30)



dataFrame.Name = "dataFrame"
dataFrame.Parent = data
dataFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
dataFrame.BackgroundTransparency = 1.000
dataFrame.BorderSizePixel = 0
dataFrame.Size = UDim2.new(1, 0, 1, 0)

UIListLayout_3.Parent = dataFrame
UIListLayout_3.SortOrder = Enum.SortOrder.LayoutOrder

tab.Name = "tab"
tab.Parent = storage
tab.BackgroundColor3 = Color3.fromRGB(85, 170, 255)
tab.BorderSizePixel = 0
tab.BackgroundTransparency = 1.000
tab.Size = UDim2.new(1, 0, 0.11, 0)

ImageLabel.Parent = tab
ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel.BackgroundTransparency = 1.000
ImageLabel.Size = UDim2.new(0.253311723, 0, 1, 0)
ImageLabel.Image = "rbxasset://textures/ui/WarningIcon.png"

TextButton.Parent = tab
TextButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextButton.BackgroundTransparency = 1.000
TextButton.Position = UDim2.new(0.306224763, 0, 0, 0)
TextButton.Size = UDim2.new(0.693075230, 0, 1, 0)
TextButton.Font = Enum.Font.SourceSans
TextButton.Text = "Blatant"
TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButton.TextScaled = true
TextButton.TextSize = 14.000
TextButton.TextWrapped = true
TextButton.TextXAlignment = Enum.TextXAlignment.Left
TextButton.BorderSizePixel = 0


local notifi = Instance.new("Frame")
local listed = Instance.new("Frame")
local ddd = Instance.new("UIListLayout")
local dddd = Instance.new("UIListLayout")
local notification = Instance.new("TextLabel")
local not_not = Instance.new("TextLabel")
local round = Instance.new("UICorner")
local round2 = Instance.new("UICorner")

notifi.Name = "notifi"
notifi.Parent = ScreenGui
notifi.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
notifi.BackgroundTransparency = 1.000
notifi.Position = UDim2.new(0.7, 0, 0, 0)
notifi.Size = UDim2.new(.3,0,.8,0)

listed.Name = "listed"
listed.Parent = ScreenGui
listed.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
listed.BackgroundTransparency = 1.000
listed.Position = UDim2.new(0.675, 0, .025, 0)
listed.Size = UDim2.new(.3,0,.8,0)

dddd.Name = "dddd"
dddd.Parent = listed
dddd.HorizontalAlignment = Enum.HorizontalAlignment.Right
dddd.SortOrder = Enum.SortOrder.LayoutOrder
dddd.VerticalAlignment = Enum.VerticalAlignment.Top

ddd.Name = "ddd"
ddd.Parent = notifi
ddd.HorizontalAlignment = Enum.HorizontalAlignment.Center
ddd.SortOrder = Enum.SortOrder.LayoutOrder
ddd.VerticalAlignment = Enum.VerticalAlignment.Bottom

notification.Name = "notification"
notification.Parent = storage
notification.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
notification.BackgroundTransparency = 1
notification.TextTransparency = 1
notification.Position = UDim2.new(0.0594713651, 0, 0.882075489, 0)
notification.Size = UDim2.new(0,0,0,0)
notification.Font = Enum.Font.SourceSans
notification.Text = "Notification"
notification.TextColor3 = Color3.fromRGB(85, 255, 127)
notification.TextSize = 25.000
notification.TextXAlignment = Enum.TextXAlignment.Left
notification.AutomaticSize = Enum.AutomaticSize.XY
notification.TextWrapped = true

not_not.Name = "not_not"
not_not.Parent = storage
not_not.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
not_not.BackgroundTransparency = 1
not_not.TextTransparency = 1
not_not.Position = UDim2.new(0.0594713651, 0, 0.882075489, 0)
not_not.Size = UDim2.new(0,0,.05,0)
not_not.Font = Enum.Font.SourceSans
not_not.Text = "Notification"
not_not.TextColor3 = Color3.fromRGB(85, 255, 127)
not_not.TextSize = 25.000
not_not.TextXAlignment = Enum.TextXAlignment.Left
not_not.AutomaticSize = Enum.AutomaticSize.X


round.CornerRadius = UDim.new(0, 5)
round.Name = "round"
round.Parent = notification

round2.CornerRadius = UDim.new(0, 5)
round2.Name = "round"
round2.Parent = not_not


function new_notification(text)
	local nott = notification:Clone()
	game:GetService("TweenService"):Create(nott,TweenInfo.new(1,Enum.EasingStyle.Linear,Enum.EasingDirection.Out),{BackgroundTransparency = .2,TextTransparency = 0}):Play(0)
	nott.Parent = notifi
	nott.Text = " Notification\n ".. text
	coroutine.resume(coroutine.create(function()
		wait(2)
		game:GetService("TweenService"):Create(nott,TweenInfo.new(1,Enum.EasingStyle.Linear,Enum.EasingDirection.Out),{BackgroundTransparency = 1,TextTransparency = 1}):Play(0)
		nott:Destroy()
	end))
end

function enable_not(text)
	local nott = not_not:Clone()
	game:GetService("TweenService"):Create(nott,TweenInfo.new(1,Enum.EasingStyle.Linear,Enum.EasingDirection.Out),{BackgroundTransparency = .4,TextTransparency = 0}):Play(0)
	nott.Parent = listed
	nott.Text = " ".. text.. " "
	nott.Name = text
end
function disable_not(text)
	listed:FindFirstChild(text):Destroy()
end


local current_tab = "Blatant"
local menus = {}

function opened_tab(tab_name)

	for _, db in pairs(menus) do
		if db.InstanceName == tab_name then
			menu.Text = tab_name
			db.Self.Visible = true
			db.Self_Tab.BackgroundTransparency = 0
		else
			db.Self.Visible = false
			db.Self_Tab.BackgroundTransparency = 1
		end
	end
end
local function new_select(data)
	--[[
	data = {
	name
	menu
		{
			check {text}
			string {text}
			number {text}
			key {text}
			multi {
				names
				}
		}
	}
	]]
    local s_num = tonumber(brh)
  
    
	local name = data.name
	local menu = data.menu
	local rest = data.selects
	local selecter = selection:Clone()

    if file_data then
        if file_data[name] ~= nil then
            seat_data[name] = file_data[name] 
            rest = file_data[name]
            print("Data Found", file_data[name],name)
        else
            seat_data[name] = rest
        end
    else
        seat_data[name] = rest
    end
	selecter.Parent = menu.Self
	selecter.Frame.TextLabel.Text = name
	selecter.Name = name
	local enabled = Instance.new("BoolValue",Frame)
    local import_data = {}
	enabled.Name = "isEnabled"
    if typeof(rest[#rest]) == "boolean" then
        enabled.Value = rest[#rest]
        if enabled.Value then
			enable_not(name)
            selecter.Frame.TextLabel.TextColor3 = Color3.fromRGB(85, 170, 255)
		end

    else
        enabled.Value = false
    end
	selecter.Frame.TextLabel.MouseButton1Down:Connect(function()
		enabled.Value = not enabled.Value
		if enabled.Value then
			new_notification("Enabled ".. name)
			enable_not(name)

		else
			new_notification("Disabled ".. name)
			disable_not(name)

		end
		if enabled.Value then
			selecter.Frame.TextLabel.TextColor3 = Color3.fromRGB(85, 170, 255)
		else
			selecter.Frame.TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
		end
	end)
	local men_us = {}
	for current, i in pairs(rest) do
        if typeof(i) == "table" then
            print(unpack(i))
        end
        if typeof(i) ~= "boolean" then
            table.insert(import_data,current,i)

		if i[1] == "string" then
			local Frame = Instance.new("Frame", selecter.data.dataFrame)
			Frame.Size = UDim2.new(1,0,1,0)
			Frame.BackgroundTransparency = 1
			local TextLabel = Instance.new("TextBox")
			TextLabel.Parent = Frame
			TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			TextLabel.BackgroundTransparency = 1.000
			TextLabel.Position = UDim2.new(0.3, 0, 0, 0)
			TextLabel.Size = UDim2.new(0.7, 0, 1, 0)
			TextLabel.Font = Enum.Font.SourceSans
			TextLabel.Text = i[3]
			TextLabel.PlaceholderText = i[3]
			TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
			TextLabel.TextScaled = true
			TextLabel.TextSize = 14.000
			TextLabel.TextWrapped = true
			TextLabel.TextXAlignment = Enum.TextXAlignment.Left
			TextLabel.Name = i[2]

			local TextLabel2 = Instance.new("TextLabel")
			TextLabel2.Parent = Frame
			TextLabel2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			TextLabel2.BackgroundTransparency = 1.000
			TextLabel2.Position = UDim2.new(0, 0, 0, 0)
			TextLabel2.Size = UDim2.new(0.3, 0, 1, 0)
			TextLabel2.Font = Enum.Font.SourceSans
			TextLabel2.Text = " "..i[2]
			TextLabel2.TextColor3 = Color3.fromRGB(255, 255, 255)
			TextLabel2.TextScaled = true
			TextLabel2.TextSize = 14.000
			TextLabel2.TextWrapped = true
			TextLabel2.TextXAlignment = Enum.TextXAlignment.Left
			TextLabel2.Name = "abt"
			table.insert(men_us,#men_us+1,{TextLabel,Frame})
            coroutine.resume(coroutine.create(function()
           while wait() do
               import_data[current] = {i[1],i[2],TextLabel.Text} 
        end
        end))
		end
		if i[1] == "key" then
			local Frame = Instance.new("Frame", selecter.data.dataFrame)
			Frame.Size = UDim2.new(1,0,1,0)
			Frame.BackgroundTransparency = 1
			Frame.Name = "key"
			local TextLabel = Instance.new("TextBox")
			TextLabel.Parent = Frame
			TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			TextLabel.BackgroundTransparency = 1.000
			TextLabel.Position = UDim2.new(0.3, 0, 0, 0)
			TextLabel.Size = UDim2.new(0.7, 0, 1, 0)
			TextLabel.Font = Enum.Font.SourceSans
			TextLabel.Text = i[3]
			TextLabel.PlaceholderText = i[3]
			TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
			TextLabel.TextScaled = true
			TextLabel.TextSize = 14.000
			TextLabel.TextWrapped = true
			TextLabel.TextXAlignment = Enum.TextXAlignment.Left
			TextLabel.Name = i[2]

			local TextLabel2 = Instance.new("TextLabel")
			TextLabel2.Parent = Frame
			TextLabel2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			TextLabel2.BackgroundTransparency = 1.000
			TextLabel2.Position = UDim2.new(0, 0, 0, 0)
			TextLabel2.Size = UDim2.new(0.3, 0, 1, 0)
			TextLabel2.Font = Enum.Font.SourceSans
			TextLabel2.Text = " "..i[2]
			TextLabel2.TextColor3 = Color3.fromRGB(255, 255, 255)
			TextLabel2.TextScaled = true
			TextLabel2.TextSize = 14.000
			TextLabel2.TextWrapped = true
			TextLabel2.TextXAlignment = Enum.TextXAlignment.Left
			TextLabel2.Name = "abt"
			coroutine.resume(coroutine.create(function()
				while wait() do
					if string.len(TextLabel.Text) > 1 then
						TextLabel.Text = string.sub(TextLabel.Text,1,1)
					    
                    end
                    import_data[current] = {i[1],i[2],TextLabel.Text}
				end
			end))
			game:GetService("UserInputService").InputBegan:Connect(function(key)
				if string.len(TextLabel.Text) > 1 then
					TextLabel.Text = string.sub(TextLabel.Text,1,1)
				end
				if TextLabel.Text == "" then
					return
				end
				if TextLabel.Text ~= " " then
					if string.gsub(tostring(key.KeyCode),"Enum.KeyCode.","") == string.upper(TextLabel.Text) then
						enabled.Value = not enabled.Value
						if enabled.Value then
							new_notification("Enabled ".. name)
							enable_not(name)

						else
							new_notification("Disabled ".. name)
							disable_not(name)
						end
						if enabled.Value then
							selecter.Frame.TextLabel.TextColor3 = Color3.fromRGB(85, 170, 255)
						else
							selecter.Frame.TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
						end
					end
				else
					if key.KeyCode == Enum.KeyCode.Space then
						enabled.Value = not enabled.Value
						if enabled.Value then
							new_notification("Enabled ".. name)
							enable_not(name)

						else
							new_notification("Disabled ".. name)
							disable_not(name)
						end
						if enabled.Value then
							selecter.Frame.TextLabel.TextColor3 = Color3.fromRGB(85, 170, 255)
						else
							selecter.Frame.TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
						end
					end
				end

			end)
			table.insert(men_us,#men_us+1,{TextLabel,Frame})
		end
		if i[1] == "mode" then
			local Frame = Instance.new("Frame", selecter.data.dataFrame)
			Frame.Size = UDim2.new(1,0,1,0)
			Frame.BackgroundTransparency = 1
			local TextLabel = Instance.new("TextButton")
			TextLabel.Parent = Frame
			TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			TextLabel.BackgroundTransparency = 1.000
			TextLabel.Position = UDim2.new(0.3, 0, 0, 0)
			TextLabel.Size = UDim2.new(0.7, 0, 1, 0)
			TextLabel.Font = Enum.Font.SourceSans
			
			TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
			TextLabel.TextScaled = true
			TextLabel.TextSize = 14.000
			TextLabel.TextWrapped = true
			TextLabel.TextXAlignment = Enum.TextXAlignment.Left
			TextLabel.Name = i[2]

			local TextLabel2 = Instance.new("TextLabel")
			TextLabel2.Parent = Frame
			TextLabel2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			TextLabel2.BackgroundTransparency = 1.000
			TextLabel2.Position = UDim2.new(0, 0, 0, 0)
			TextLabel2.Size = UDim2.new(0.3, 0, 1, 0)
			TextLabel2.Font = Enum.Font.SourceSans
			TextLabel2.Text = " "..i[2]
			TextLabel2.TextColor3 = Color3.fromRGB(255, 255, 255)
			TextLabel2.TextScaled = true
			TextLabel2.TextSize = 14.000
			TextLabel2.TextWrapped = true
			TextLabel2.TextXAlignment = Enum.TextXAlignment.Left
			TextLabel2.Name = "abt"
			
			local bool = Instance.new("StringValue",TextButton)
			local current = 1
            if i[4] ~= nil then
                current = i[4]
            end
            local value = i[3][current]
			bool.Value = value
            TextLabel.Text = i[3][current]
			TextLabel.MouseButton1Down:Connect(function()
                current += 1
				if current > #i[3] then
					current = 1
				end
                import_data[current] = {i[1],i[2],i[3],current}
				TextLabel.Text = i[3][current]
				bool.Value = i[3][current]
			end)



			bool.Value = "bool"
			bool.Value = value

			table.insert(men_us,#men_us+1,{bool,Frame})
		end
		if i[1] == "bool" then
			local Frame = Instance.new("Frame", selecter.data.dataFrame)
			Frame.Size = UDim2.new(1,0,1,0)
			Frame.BackgroundTransparency = 1
			local TextLabel2 = Instance.new("TextLabel")
			TextLabel2.Parent = Frame
			TextLabel2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			TextLabel2.BackgroundTransparency = 1.000
			TextLabel2.Position = UDim2.new(0, 0, 0, 0)
			TextLabel2.Size = UDim2.new(0.3, 0, 1, 0)
			TextLabel2.Font = Enum.Font.SourceSans

			TextLabel2.Text = " ".. i[2].. " "
			TextLabel2.TextColor3 = Color3.fromRGB(255, 255, 255)
			TextLabel2.TextScaled = true
			TextLabel2.TextSize = 14.000
			TextLabel2.TextWrapped = true
			TextLabel2.TextXAlignment = Enum.TextXAlignment.Left
			TextLabel2.Name = "abt"
			local barb8utton_outer = Instance.new("ImageButton")
			barb8utton_outer.Name = "barb8utton"
			barb8utton_outer.Parent = Frame
			barb8utton_outer.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			barb8utton_outer.BackgroundTransparency = 1.000
			barb8utton_outer.Position = UDim2.new(.31, 0, .2125, 0)
			barb8utton_outer.Size = UDim2.new(0.072, 0, .575, 0)
			barb8utton_outer.Image = "http://www.roblox.com/asset/?id=13923605"
			barb8utton_outer.ZIndex = 2
			local barb8utton = Instance.new("ImageButton")
			barb8utton.Name = "barb8utton"
			barb8utton.Parent = Frame
			barb8utton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			barb8utton.BackgroundTransparency = 1.000
			barb8utton.Position = UDim2.new(.32, 0, .25, 0)
			barb8utton.Size = UDim2.new(0.05, 0, .5, 0)
			barb8utton.Image = "rbxasset://textures/AvatarEditorImages/circle_blue.png"
			local value = i[3]
			local bool = Instance.new("BoolValue",barb8utton)
			bool.Value = "bool"
			bool.Value = value
			barb8utton.Visible = value
			barb8utton_outer.MouseButton1Down:Connect(function()
				value = not value
                import_data[current] = {i[1],i[2],value}
				bool.Value = value
				barb8utton.Visible = value
			end)
			table.insert(men_us,#men_us+1,{bool,Frame})
		end
		if i[1] == "number" then
			local Frame = Instance.new("Frame", selecter.data.dataFrame)
			Frame.Size = UDim2.new(1,0,1,0)
			Frame.BackgroundTransparency = 1
			local TextLabel = Instance.new("TextBox")
			TextLabel.Parent = Frame
			TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			TextLabel.BackgroundTransparency = 1.000
			TextLabel.Position = UDim2.new(0.9, 0, 0, 0)
			TextLabel.Size = UDim2.new(0.2, 0, 1, 0)
			TextLabel.Font = Enum.Font.SourceSans
			TextLabel.Text = ""
			if not tonumber(i[3]) then
				i[3] = 0
			else
				i[3] = tonumber(i[3])
			end
			TextLabel.TextColor3 = Color3.fromRGB(255,255,255)
			TextLabel.PlaceholderColor3 = Color3.fromRGB(255,255,255)
			TextLabel.PlaceholderText = i[3]
			TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
			TextLabel.TextScaled = true
			TextLabel.TextSize = 14.000
			TextLabel.TextWrapped = true
			TextLabel.TextXAlignment = Enum.TextXAlignment.Left
			TextLabel.Name = i[2]

			local TextLabel2 = Instance.new("TextLabel")
			TextLabel2.Parent = Frame
			TextLabel2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			TextLabel2.BackgroundTransparency = 1.000
			TextLabel2.Position = UDim2.new(0, 0, 0, 0)
			TextLabel2.Size = UDim2.new(0.3, 0, 1, 0)
			TextLabel2.Font = Enum.Font.SourceSans

			TextLabel2.Text = " ".. i[2]
			TextLabel2.TextColor3 = Color3.fromRGB(255, 255, 255)
			TextLabel2.TextScaled = true
			TextLabel2.TextSize = 14.000
			TextLabel2.TextWrapped = true
			TextLabel2.TextXAlignment = Enum.TextXAlignment.Left
			TextLabel2.Name = "abt"

			local bar = Instance.new("Frame")
			local barb8utton = Instance.new("ImageButton")

			bar.Name = "bar"
			bar.Parent = Frame
			bar.BackgroundColor3 = Color3.fromRGB(0, 170, 255)
			bar.BorderSizePixel = 0
			bar.Position = UDim2.new(0.3, 0, 0.5, 0)
			bar.Size = UDim2.new(0, 150, 0, 1)

			barb8utton.Name = "barb8utton"
			barb8utton.Parent = bar
			barb8utton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			barb8utton.BackgroundTransparency = 1.000
			barb8utton.Position = UDim2.new(0, 0, -7, 0)
			barb8utton.Size = UDim2.new(0.100000001, 0, 15, 0)
			barb8utton.Image = "rbxasset://textures/AvatarEditorImages/circle_blue.png"
			local down = false
			barb8utton.MouseButton1Down:Connect(function() down = true end)
			local mouse = game.Players.LocalPlayer:GetMouse()

			game:GetService("UserInputService").InputEnded:Connect(function(key)
				if key.UserInputType == Enum.UserInputType.MouseButton1 then
					down = false
				end
			end)
			table.insert(men_us,#men_us+1,{TextLabel,Frame})
			barb8utton.MouseButton1Up:Connect(function() down = false end)
			coroutine.resume(coroutine.create(function()

				local lastt = tonumber(i[3])
				local clap = math.clamp(lastt,i[4],i[5])/i[5]
				local toBallSpace = (bar.AbsoluteSize.X*clap)
				local posX = math.clamp(toBallSpace,0,bar.AbsoluteSize.X)
				TextLabel.Text = lastt
                barb8utton.Position = UDim2.new(0, posX, -7, 0)
				while wait() do
                    import_data[current] = {i[1],i[2],lastt,i[4],i[5]}
					if down then
						toBallSpace = -(bar.AbsolutePosition.X)  +mouse.X
						posX = math.clamp(toBallSpace,0,bar.AbsoluteSize.X)
						barb8utton.Position = UDim2.new(0, posX, -7, 0)

						lastt = tonumber(math.floor(i[5]*(posX/bar.AbsoluteSize.X) + .5))
						TextLabel.Text = lastt
					else
						if TextLabel.Text ~= lastt then
							if tonumber(TextLabel.Text) then
								lastt = tonumber(TextLabel.Text)
								TextLabel.Text = lastt
								clap = math.clamp(lastt,i[4],i[5])/i[5]
								toBallSpace = (bar.AbsoluteSize.X*clap)
								posX = math.clamp(toBallSpace,0,bar.AbsoluteSize.X)
								barb8utton.Position = UDim2.new(0, posX, -7, 0)
							else
								if TextLabel.Text == "" then
									lastt = tonumber(i[3])
								else
									TextLabel.Text = lastt
								end
							end

						end
					end

				end
			end))
		end
        end
        
	end
	selecter.data.Visible = false
	selecter.Frame.ImageButton.MouseButton1Down:Connect(function()
		selecter.data.Visible = not selecter.data.Visible
		if selecter.data.Visible then
			selecter.Frame.ImageButton.Rotation = 180
			selecter.Size = UDim2.new(0, 490,0, 30*(#selecter.data.dataFrame:GetChildren()))
		else
			selecter.Frame.ImageButton.Rotation = 0
			selecter.Size = UDim2.new(0, 490,0, 30)
		end
	end)
    
	coroutine.resume(coroutine.create(function()
        wait(1)
        if typeof(import_data[#import_data]) ~= "boolean" then
            table.insert(import_data,#import_data+1,enabled.Value)
        end

        while wait(1) do
            import_data[#import_data] = enabled.Value
            seat_data[name] = import_data
        end    
    end))
	return {men_us,enabled}
end

function find_menu(name)
	for _, i in pairs(menus) do
		if i.InstanceName == name then
			return i
		end
	end
end

function new_tab(name,image)
	local tab_select = tab:Clone()
	tab_select.Parent = tab_holder
	tab_select.TextButton.Text = name
	tab_select.Name = name
	tab_select.ImageLabel.Image = image

	local menu_inject = storage.menu:Clone()
	local data_inject = {
		InstanceName = name,
		Self = menu_inject,
		Self_Tab = tab_select
	}
	table.insert(menus,#menus+1,data_inject)
	menu_inject.Parent = holder
	menu_inject.Name = name
    tab_select.TextButton.Modal = true
	tab_select.TextButton.MouseButton1Down:Connect(function() opened_tab(name) end)
end

game:GetService("UserInputService").InputBegan:Connect(function(key)
	if key.KeyCode == Enum.KeyCode.RightControl then
		if mf.Visible then
			game:GetService("TweenService"):Create(mf,TweenInfo.new(.5,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),{Size = UDim2.new(0, 640, 0, 405)}):Play(0)
			wait(.5)
			mf.Visible = false
		else
            mf.BackgroundTransparency = 0
			mf.Visible = true
			game:GetService("TweenService"):Create(mf,TweenInfo.new(.5,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),{Size = UDim2.new(0, 650, 0, 415)}):Play(0)
		end

	end
	if key.KeyCode == Enum.KeyCode.W then
		move.w = true
	end
	if key.KeyCode == Enum.KeyCode.A then
		move.a = true
	end
	if key.KeyCode == Enum.KeyCode.S then
		move.s = true
	end
	if key.KeyCode == Enum.KeyCode.D then
		move.d = true
	end
	if key.KeyCode == Enum.KeyCode.E then
		move.e = true
	end
	if key.KeyCode == Enum.KeyCode.Q then
		move.q = true
	end
	if key.KeyCode == Enum.KeyCode.Space then
		move.e = true
	end
	if key.KeyCode == Enum.KeyCode.LeftShift then
		move.q = true
	end
end)
game:GetService("UserInputService").InputEnded:Connect(function(key)
	if key.KeyCode == Enum.KeyCode.W then
		move.w = false
	end
	if key.KeyCode == Enum.KeyCode.A then
		move.a = false
	end
	if key.KeyCode == Enum.KeyCode.S then
		move.s = false
	end
	if key.KeyCode == Enum.KeyCode.D then
		move.d = false
	end
	if key.KeyCode == Enum.KeyCode.E then
		move.e = false
	end
	if key.KeyCode == Enum.KeyCode.Q then
		move.q = false
	end
	if key.KeyCode == Enum.KeyCode.Space then
		move.e = false
	end
	if key.KeyCode == Enum.KeyCode.LeftShift then
		move.q = false
	end
end)

new_tab("Combat","http://www.roblox.com/asset/?id=7485051715")
new_tab("Movement","http://www.roblox.com/asset/?id=9525535512")
new_tab("Player","http://www.roblox.com/asset/?id=1182728546")
new_tab("Render","http://www.roblox.com/asset/?id=9421644727")

local tab_speed
local tab_hj
local tab_fly
local tab_lf
local tab_ij
local tab_spider
local tab_aim 
local tab_hitbox 
local tab_reach
local tab_fov
local tab_grav
local tab_aura
local tab_fb
local tab_bc
local tab_mb 
local tab_menu
local tab_autorep

if tdf then
local config = game:GetService("HttpService"):JSONDecode(readfile("rise/configs/".. game.PlaceId.. "_riseconfig.txt"))

pcall(function()
for _, db1 in pairs(config) do
    for _, db in pairs(db1) do
        print(db[1])
end
end
end)
end

tab_speed = new_select({
	["name"] = "Speed"; 
	["menu"] = find_menu("Movement");
	["selects"] = {
		{"number","Speed",16,0,50},
		{"mode","Mode",{"Normal","CFrame","Velocity"},1},
		{"key","Key",""},
	}
})
tab_hj = new_select({
	["name"] = "HighJump"; 
	["menu"] = find_menu("Movement");
	["selects"] = {
		{"number","Power",50,0,500},
		{"mode","Mode",{"Normal","Toggle"},1},
		{"key","Key",""},
	}
})
tab_fly = new_select({
	["name"] = "Fly"; 
	["menu"] = find_menu("Movement");
	["selects"] = {
		{"mode","Mode",{"Bounce"},1},
		{"bool","Fake Damage",false},
        {"number","YSpeed",1,0,10},
		{"key","Key",""},
	}
})
tab_fakel = new_select({
	["name"] = "PacketLag"; 
	["menu"] = find_menu("Movement");
	["selects"] = {
		{"number","Amount",100,1,1000},
		{"key","Key",""},
	}
})
tab_lf = new_select({
	["name"] = "Longjump"; 
	["menu"] = find_menu("Movement");
	["selects"] = {
		{"number","Speed",100,0,200},
		{"mode","Mode",{"Velocity","Bedwars"},1},
		{"bool","Fake Damage",false},
		{"key","Key",""},
	}
})
tab_ij = new_select({
	["name"] = "InfJump"; 
	["menu"] = find_menu("Movement");
	["selects"] = {
		{"key","Key",""},
	}
})
tab_spider = new_select({
	["name"] = "Spider"; 
	["menu"] = find_menu("Movement");
	["selects"] = {
		{"number","Speed",20,0,50},
		{"key","Key",""},
	}
})
tab_aim = new_select({
	["name"] = "AimAssist"; 
	["menu"] = find_menu("Combat");
	["selects"] = {
		{"number","Smoothness",1,0,100},
		{"number","Range",16,0,100},
		{"bool","Ignore Team",false},
		{"key","Key",""},
	}
})
tab_hitbox = new_select({
	["name"] = "Hitbox"; 
	["menu"] = find_menu("Combat");
	["selects"] = {
		{"number","Size",16,0,100},
		{"bool","Ignore Team",false},
		{"key","Key",""},
	}
})
tab_reach = new_select({
	["name"] = "Reach"; 
	["menu"] = find_menu("Combat");
	["selects"] = {
		{"number","Size",8,0,100},
		{"key","Key",""},
	}
})
tab_fov = new_select({
	["name"] = "Fov"; 
	["menu"] = find_menu("Render");
	["selects"] = {
		{"number","Fov",70,0,120},
		{"key","Key",""},
	}
})
tab_grav = new_select({
	["name"] = "Gravity"; 
	["menu"] = find_menu("Player");
	["selects"] = {
		{"number","Gravity",196.2,0,200},
		{"key","Key",""},
	}
})
tab_aura = new_select({
	["name"] = "Aura"; 
	["menu"] = find_menu("Combat");
	["selects"] = {
		{"number","Range",16,0,100},
		{"bool","Ignore",false},
		{"bool","LookAt",true},
		{"key","Key",""},
	}
})
tab_fb = new_select({
	["name"] = "Fullbright"; 
	["menu"] = find_menu("Render");
	["selects"] = {
		{"key","Key",""},
	}
})
tab_bc = new_select({
	["name"] = "Breadcrumbs"; 
	["menu"] = find_menu("Render");
	["selects"] = {
		{"number","Rate",1,0,10},
		{"number","Length",5,0,10},
		{"key","Key",""},
	}
})
tab_mb = new_select({
	["name"] = "MotionBlur"; 
	["menu"] = find_menu("Render");
	["selects"] = {
		{"number","Multi",1,0,10},
		{"key","Key",""},
	}
})
tab_menu = new_select({
	["name"] = "ClickGui"; 
	["menu"] = find_menu("Render");
	["selects"] = {
		{"string","Undertext",""},
	}
})
tab_autorep = new_select({
	["name"] = "AutoReport"; 
	["menu"] = find_menu("Player");
	["selects"] = {
	}
})
tab_nc = new_select({
	["name"] = "Noclip"; 
	["menu"] = find_menu("Movement");
	["selects"] = {
		{"key","Key",""},
	}
})
tab_wh = new_select({
	["name"] = "Xray"; 
	["menu"] = find_menu("Render");
	["selects"] = {
        {"number","Transparency",5,0,10},
		{"key","Key",""},
	}
})
tab_rj = new_select({
	["name"] = "Rejoin"; 
	["menu"] = find_menu("Render");
	["selects"] = {
        {"number","Transparency",5,0,10},
		{"key","Key",""},
	}
})
tab_esp = new_select({
	["name"] = "ESP"; 
	["menu"] = find_menu("Render");
	["selects"] = {
        {"number","Transparency",5,0,10},
		{"key","Key",""},
	}
})
writefile("rise/configs/".. game.PlaceId.. "_riseconfig.txt",game:GetService("HttpService"):JSONEncode(seat_data))

opened_tab("Movement")
coroutine.resume(coroutine.create(function()
   while wait(1) do
        writefile("rise/configs/".. game.PlaceId.. "_riseconfig.txt",game:GetService("HttpService"):JSONEncode(seat_data))
    end
end))
game:GetService("RunService").Stepped:Connect(function()
    if tab_nc[2].Value == true then
        for _, bp in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
            if bp:IsA("BasePart") then
                bp.CanCollide = false
            end
        end
    end
end)
coroutine.resume(coroutine.create(function()
while wait(1) do
    pcall(function()
while wait(1) do
    if tab_rj[2].Value == true then
        tab_rj[2].Value = false
        writefile("rise/configs/".. game.PlaceId.. "_riseconfig.txt",game:GetService("HttpService"):JSONEncode(seat_data))
        game:GetService("TeleportService"):Teleport(game.PlaceId,game.Players.LocalPlayer)
        game.Players.LocalPlayer:Kick("Rise // Rejoining...")
    end
end
end)
end
end))
coroutine.resume(coroutine.create(function()
	while wait(1) do
		pcall(function()
			while wait(1) do
                if tab_wh[2].Value == true then
                    for _, db in pairs(workspace:GetDescendants()) do
                        if db:IsA("BasePart") then
                            db.LocalTransparencyModifier = (tonumber(tab_wh[1][1][1].Text) or 5)/10
                        end 
                    end 
                else
                    for _, db in pairs(workspace:GetDescendants()) do
                        if db:IsA("BasePart") then
                            db.LocalTransparencyModifier = 0
                        end 
                    end 
                end
            end 
        end) 
    end 
end))
--error()
coroutine.resume(coroutine.create(function()
	while wait(1) do
		pcall(function()
			while wait() do
				if tab_speed[2].Value == true then
					local speed = tonumber(tab_speed[1][1][1].Text)
					if not speed then
						speed = 16
					end
					local speed_mode = tab_speed[1][2][1].Value


					if speed_mode == "Normal" then
						game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = speed
					elseif speed_mode == "Velocity" or speed_mode == "CFrame" then
						local sp = game.Players.LocalPlayer.Character.Humanoid.MoveDirection * speed
						if speed_mode == "Velocity" then
							local vel = game.Players.LocalPlayer.Character.PrimaryPart.AssemblyLinearVelocity
                            game.Players.LocalPlayer.Character.PrimaryPart.AssemblyLinearVelocity = Vector3.new(sp.X,vel.Y,sp.Z)
						elseif speed_mode == "CFrame" then
							local cf1 = game.Players.LocalPlayer.Character.PrimaryPart.CFrame
							local cf2 = game.Players.LocalPlayer.Character.PrimaryPart.CFrame + sp/100
							local ignore = RaycastParams.new()
							ignore.FilterType = Enum.RaycastFilterType.Blacklist

							ignore.FilterDescendantsInstances = game.Players.LocalPlayer.Character:GetChildren()
							local raycast = workspace:Raycast(cf1.Position,cf1:ToObjectSpace(cf2).Position,ignore)
							if not raycast then
                                game.Players.LocalPlayer.Character.PrimaryPart.CFrame += sp/10
							else
                                game.Players.LocalPlayer.Character.PrimaryPart.CFrame =  CFrame.new(raycast.Position,game.Players.LocalPlayer.Character.PrimaryPart.CFrame.LookVector)
							end
						end
					end
				else
					if game.Players.LocalPlayer.Character.Humanoid.WalkSpeed ~= 16 then
						game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
					end
				end
			end
		end)
	end
end))
function make_esp(part,color)
	local function d(face)
		local e1 = Instance.new("SurfaceGui",part)
        e1.Name = "partpm"
		e1.Face = face
		e1.AlwaysOnTop = true
		e1.Parent = part
		local eb1 = Instance.new("Frame",e1)
		eb1.Size = UDim2.new(1,0,1,0)
		eb1.BorderSizePixel = 0
		eb1.BackgroundColor3 = color
	end
	d(Enum.NormalId.Front)
	d(Enum.NormalId.Right)
	d(Enum.NormalId.Left)
	d(Enum.NormalId.Back)
	d(Enum.NormalId.Top)
	d(Enum.NormalId.Bottom)
end
spawn(function()

    pcall(function()
        function fesp(part,c)
            warn(part.Name)
            local p = Instance.new("Part",workspace)
            p.Size = Vector3.new(2.5,7,2.5)
            p.CFrame = part.CFrame
            p.CanCollide = false
            local wc = Instance.new("WeldConstraint",p)
            wc.Part0 = p 
            wc.Part1 = part 
            make_esp(p,c.Color)
            return p
        end
        repeat wait() until tab_esp[2].Value == true
        game.Players.PlayerAdded:Connect(function(db)
            if db.Character then
                if db.Character.PrimaryPart then
                    local m = fesp(db.Character.PrimaryPart,db.TeamColor)
                    local c = db.Character
                    spawn(function()
                        repeat wait() until not db or tab_esp[2].Value == false  or not db.Character == c
                        m:Destroy()
                    end)
                end
            end
                db.CharacterAdded:Connect(function(rt)
                    wait(1)
                    if db.Character then
                        if db.Character.PrimaryPart and tab_esp[2].Value == true then
                            local m = fesp(db.Character.PrimaryPart,db.TeamColor)
                            repeat wait() until not db or not rt or tab_esp[2].Value == false 
                            m:Destroy() 
                        end
                    end
                end)
        end)
        for _, db in pairs(game.Players:GetChildren()) do
            if db.Character then
                if db.Character.PrimaryPart then
                    local m = fesp(db.Character.PrimaryPart,db.TeamColor)
                    local c = db.Character
                    spawn(function()
                        repeat wait() until not db or tab_esp[2].Value == false  or not db.Character == c
                        m:Destroy()
                    end)
                end
            end
            db.CharacterAdded:Connect(function(rt)
                wait(1)
                if db.Character then
                    if db.Character.PrimaryPart and tab_esp[2].Value == true then
                        local m = fesp(db.Character.PrimaryPart,db.TeamColor)
                        repeat wait() until not db or not rt or tab_esp[2].Value == false 
                        m:Destroy() 
                    end
                end
            end)
        end
    end)
end)
function fake_damage()
	local cam = workspace.CurrentCamera
	cam.CameraType = Enum.CameraType.Scriptable
	coroutine.resume(coroutine.create(function()
		game:GetService("TweenService"):Create(cam,TweenInfo.new(.05,Enum.EasingStyle.Linear,Enum.EasingDirection.Out),{CFrame = cam.CFrame * CFrame.Angles(0,0,math.rad(45))}):Play(0)
		wait(0.05)
		cam.CameraType = Enum.CameraType.Custom
		game:GetService("TweenService"):Create(cam,TweenInfo.new(.3,Enum.EasingStyle.Linear,Enum.EasingDirection.Out),{CFrame = cam.CFrame * CFrame.Angles(0,0,math.rad(-45))}):Play(0)

	end))
end
coroutine.resume(coroutine.create(function()
	while wait(1) do
		pcall(function()
			for _, kl in pairs(workspace:GetChildren()) do
				if kl.Name == "Bounce_RSEASSET_DB" then
					kl:Destroy()
				end
			end
			local start_Bounce = -9e9
			local bounce1 = Instance.new("Part",workspace)
			bounce1.Size = Vector3.new(4,0,4)
			bounce1.Anchored = true
			bounce1.CanCollide = false
			bounce1.Name = "Bounce_RSEASSET_DB"
			local bounce2 = bounce1:Clone()
			bounce2.Parent = workspace
			make_esp(bounce1,Color3.fromRGB(85, 255, 127))
			make_esp(bounce2,Color3.fromRGB(255, 65, 65))
			while wait() do
				if tab_fly[2].Value == true then
					local mode = tab_fly[1][1][1].Value
					local mode_f = tab_fly[1][2][1].Value
					if mode == "Bounce" then
						if start_Bounce == -9e9 then
							start_Bounce = game.Players.LocalPlayer.Character.PrimaryPart.Position.Y - 3
							if mode_f then
								fake_damage()
							end
						end
						if game.Players.LocalPlayer.Character.PrimaryPart.Position.Y <= start_Bounce then
							local vel = game.Players.LocalPlayer.Character.PrimaryPart.AssemblyLinearVelocity 
							game.Players.LocalPlayer.Character.PrimaryPart.AssemblyLinearVelocity = Vector3.new(vel.X,60,vel.Z)
						end
						local pos = game.Players.LocalPlayer.Character.PrimaryPart.Position
						bounce1.Parent = workspace
						bounce2.Parent = workspace
						bounce1.Position = Vector3.new(pos.X,start_Bounce+6,pos.Z)
						bounce2.Position = Vector3.new(pos.X,start_Bounce,pos.Z)
						if move.e then
							start_Bounce += (tonumber(tab_fly[1][3][1].Text) or 5)/2
						end
						if move.q then
							start_Bounce -= (tonumber(tab_fly[1][3][1].Text) or 5)/2
						end
					else
						start_Bounce = -9e9
						bounce1.Parent = storage
						bounce2.Parent = storage
					end
				else
					start_Bounce = -9e9
					bounce1.Parent = storage
					bounce2.Parent = storage
				end
			end
		end)
	end
end))

coroutine.resume(coroutine.create(function()
	local fk_alr = false
	while wait(1) do
		pcall(function()
			while wait() do
				if tab_lf[2].Value == true then
					local speed = tonumber(tab_lf[1][1][1].Text)
					if not speed then
						speed = 16
					end
					local mode = tab_lf[1][2][1].Value
					if tab_lf[1][3][1].Value == true and fk_alr == false then
						fake_damage()
						fk_alr = true
					end


					if mode == "Bedwars" then
						game.Players.LocalPlayer.Character.Humanoid.Jump = true
						game.Players.LocalPlayer.Character.PrimaryPart.CFrame += game.Players.LocalPlayer.Character.PrimaryPart.CFrame.LookVector * 2
						local vel = game.Players.LocalPlayer.Character.PrimaryPart.CFrame.LookVector * speed
						game.Players.LocalPlayer.Character.PrimaryPart.AssemblyLinearVelocity = Vector3.new(vel.X,5,vel.Z)
					elseif mode == "Velocity" then
						game.Players.LocalPlayer.Character.Humanoid.Jump = true
						local vel = game.Players.LocalPlayer.Character.PrimaryPart.CFrame.LookVector * (speed*1.5)
						game.Players.LocalPlayer.Character.PrimaryPart.AssemblyLinearVelocity = Vector3.new(vel.X,5,vel.Z)
					end
				else
					fk_alr = false
				end
			end
		end)
		fk_alr = false
	end
end))

coroutine.resume(coroutine.create(function()
	while wait(1) do
		pcall(function()


			while wait() do
				if tab_spider[2].Value == true then
					local amt = tonumber(tab_spider[1][1][1].Text)
					if not amt then
						amt = 20
					end
					local raycastParams = RaycastParams.new()
					raycastParams.FilterType = Enum.RaycastFilterType.Blacklist
					raycastParams.FilterDescendantsInstances = {game.Players.LocalPlayer.Character:GetDescendants()}
					raycastParams.IgnoreWater = true

					local raycastResult1 = workspace:Raycast(game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(0,(game.Players.LocalPlayer.Character.Humanoid.HipHeight/2),0), game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.LookVector * 2, raycastParams)
					local raycastResult2 = workspace:Raycast(game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(0,(game.Players.LocalPlayer.Character.Humanoid.HipHeight/2),0), game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.LookVector * -2, raycastParams)
					local raycastResult3 = workspace:Raycast(game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(0,(game.Players.LocalPlayer.Character.Humanoid.HipHeight/2),0), game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.RightVector * 2, raycastParams)
					local raycastResult4 = workspace:Raycast(game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(0,(game.Players.LocalPlayer.Character.Humanoid.HipHeight/2),0), game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.RightVector * -2, raycastParams)

					if raycastResult1 and move.w then
						local rc = raycastResult1.Instance
						local rc2 = rc.Position + (rc.Size)/2

						local chr = game.Players.LocalPlayer.Character.HumanoidRootPart
						chr.AssemblyLinearVelocity = Vector3.new(chr.AssemblyLinearVelocity.X,amt,chr.AssemblyLinearVelocity.Z)
						game.Players.LocalPlayer.Character.Humanoid.Jump = true
					elseif raycastResult2 and move.s then
						local rc = raycastResult2.Instance
						local rc2 = rc.Position + (rc.Size)/2

						local chr = game.Players.LocalPlayer.Character.HumanoidRootPart
						chr.AssemblyLinearVelocity = Vector3.new(chr.AssemblyLinearVelocity.X,amt,chr.AssemblyLinearVelocity.Z)
						game.Players.LocalPlayer.Character.Humanoid.Jump = true
					elseif raycastResult3 and move.d then
						local rc = raycastResult3.Instance
						local rc2 = rc.Position + (rc.Size)/2

						local chr = game.Players.LocalPlayer.Character.HumanoidRootPart
						chr.AssemblyLinearVelocity = Vector3.new(chr.AssemblyLinearVelocity.X,amt,chr.AssemblyLinearVelocity.Z)
						game.Players.LocalPlayer.Character.Humanoid.Jump = true
					elseif raycastResult4 and move.a then
						local rc = raycastResult4.Instance
						local rc2 = rc.Position + (rc.Size)/2

						local chr = game.Players.LocalPlayer.Character.HumanoidRootPart
						chr.AssemblyLinearVelocity = Vector3.new(chr.AssemblyLinearVelocity.X,amt,chr.AssemblyLinearVelocity.Z)
						game.Players.LocalPlayer.Character.Humanoid.Jump = true
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
				game.Lighting.GlobalShadows = not tab_fb[2].Value
			end
		end)
	end		

end))
coroutine.resume(coroutine.create(function()
	while wait(1) do
		pcall(function()
			local jump = false

			game:GetService("UserInputService").InputBegan:Connect(function(key)
				if key.KeyCode == Enum.KeyCode.Space then
					jump = true
				end
			end)
			game:GetService("UserInputService").InputEnded:Connect(function(key)
				if key.KeyCode == Enum.KeyCode.Space then
					jump =false
				end
			end)
			while wait() do
				if tab_ij[2].Value == true then
					if jump then
						local vel = game.Players.LocalPlayer.Character.PrimaryPart.AssemblyLinearVelocity 
						game.Players.LocalPlayer.Character.PrimaryPart.AssemblyLinearVelocity = Vector3.new(vel.X, game.Players.LocalPlayer.Character.Humanoid.JumpPower,vel.Z)
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
				gitsets.undertext = tab_menu[1][1][1].Text
			end
		end)
	end		

end))
coroutine.resume(coroutine.create(function()
	while wait(1) do
		pcall(function()
			while wait() do
				if tab_fakel[2].Value == true then
                    settings().Network.IncomingReplicationLag = tonumber(tab_fakel[1][1][1].Text)/1000 or 0
                else
                    settings().Network.IncomingReplicationLag = 0
                end
			end
		end)
	end		

end))
coroutine.resume(coroutine.create(function()
	while wait(1) do
		pcall(function()
			while wait() do
				if tab_hj[2].Value == true then
					local amount = tonumber(tab_hj[1][1][1].Text)
					if not amount then
						amount = 50
					end
					local mode = tab_hj[1][2][1].Value
					if mode == "Normal" then
						game.Players.LocalPlayer.Character.Humanoid.JumpPower = amount
					elseif mode == "Toggle" then
						game.Players.LocalPlayer.Character.PrimaryPart.AssemblyLinearVelocity += Vector3.new(0,amount,0)
						tab_hj[2].Value = false
						disable_not("HighJump")
					end
				else
					game.Players.LocalPlayer.Character.Humanoid.JumpPower = 50
				end
			end
		end)
	end		

end))
local freset = false
game:GetService("RunService").Stepped:Connect(function()
	if tab_aim[2].Value == true then
		local smooth = tonumber(tab_aim[1][1][1].Text )
		if not smooth then
			smooth = 1
		end
        smooth /= 100
		local function get_closest()
			local max = tonumber(tab_aura[1][1][1].Text)
			if not max then

				max = 16
			end
			local team = tab_aura[1][2][1].Value 
			local selected = nil
            local function _metadata_closest(db)
                if db ~= game.Players.LocalPlayer then

                    if team then

                        if db.Team == game.Players.LocalPlayer.Team then
                            return
                        end
                    end

                    if not db.Character:FindFirstChild("HumanoidRootPart") or not db.Character:FindFirstChild("Humanoid") then
                        return
                    end

                    if db.Character:FindFirstChild("Humanoid").health <= 0 then
                        return
                    end

                    local root = db.Character:FindFirstChild("HumanoidRootPart")
                    local oroot = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
                    if not oroot or game.Players.LocalPlayer.Character.Humanoid.Health <= 0 then
                        return
                    end

                    local dist = (root.Position - oroot.Position).Magnitude
                    if dist <= max then

                        max = dist
                        selected = db
                    end
				else
					return false
                end
            end
			for _, db in pairs(game.Players:GetPlayers()) do
                _metadata_closest(db)
			end
			if selected then
				return {selected,max}
			else
				return nil
			end
		end
		local close = get_closest()
		if close then
            if smooth <= .1 then
               	game.Workspace.CurrentCamera.CFrame = CFrame.new(workspace.CurrentCamera.CFrame.Position,close[1].Character.Head.Position)
            else
                freset = true
			    game:GetService("TweenService"):Create(game.Workspace.CurrentCamera,TweenInfo.new(smooth,Enum.EasingStyle.Linear,Enum.EasingDirection.Out),{CFrame = CFrame.new(workspace.CurrentCamera.CFrame.Position,close[1].Character.Head.Position)}):Play(0)
            end
        else
            if freset then
                freset = false
                game:GetService("TweenService"):Create(game.Workspace.CurrentCamera,TweenInfo.new(0,Enum.EasingStyle.Linear,Enum.EasingDirection.Out),{CFrame = workspace.CurrentCamera.CFrame}):Play(0)
            end
        end
    elseif freset then
        freset = false
        game:GetService("TweenService"):Create(game.Workspace.CurrentCamera,TweenInfo.new(0,Enum.EasingStyle.Linear,Enum.EasingDirection.Out),{CFrame = workspace.CurrentCamera.CFrame}):Play(0)
	end
end)
local aim_frame = Instance.new("Frame")
local wqr = Instance.new("UICorner")
local icon = Instance.new("ImageLabel")
local user = Instance.new("TextLabel")
local bar = Instance.new("Frame")
local barframe = Instance.new("Frame")
local TextLabel7 = Instance.new("TextLabel")
local distance = Instance.new("TextLabel")

aim_frame.Name = "aim_frame"
aim_frame.AnchorPoint = Vector2.new(.5,.5)
aim_frame.Parent = ScreenGui
aim_frame.BackgroundColor3 = Color3.fromRGB(12, 12, 12)
aim_frame.BackgroundTransparency = 0.200
aim_frame.Position = UDim2.new(0.7, 0, 0.415417612 + (0.415417612/2), 0)
aim_frame.Size = UDim2.new(0, 250, 0, 120)
aim_frame.Visible = false

wqr.Name = "wqr"
wqr.Parent = aim_frame

icon.Name = "icon"
icon.Parent = aim_frame
icon.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
icon.BackgroundTransparency = 1.000
icon.Position = UDim2.new(0.0300000012, 0, 0.0759493783, 0)
icon.Size = UDim2.new(0.29, 0, 0.683544219, 0)
icon.Image = "http://www.roblox.com/asset/?id=1188759634"

user.Name = "user"
user.Parent = aim_frame
user.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
user.BackgroundTransparency = 1.000
user.Position = UDim2.new(0.344999999, 0, 0.0759493783, 0)
user.Size = UDim2.new(0.654999971, 0, 0.35, 0)
user.Font = Enum.Font.Nunito
user.Text = "User"
user.TextColor3 = Color3.fromRGB(255, 255, 255)
user.TextScaled = true
user.TextSize = 14.000
user.TextWrapped = true
user.TextXAlignment = Enum.TextXAlignment.Left

bar.Name = "bar"
bar.Parent = aim_frame
bar.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
bar.BackgroundTransparency = 1.000
bar.Position = UDim2.new(0.03, 0, 0.78, 0)
bar.Size = UDim2.new(0.79, 0, 0.13, 0)

barframe.Name = "barframe"
barframe.Parent = bar
barframe.BackgroundColor3 = Color3.fromRGB(85, 255, 255)
barframe.BorderSizePixel = 0
barframe.Position = UDim2.new(0, 0, 0.25, 0)
barframe.Size = UDim2.new(1, 0, 0.4, 0)

TextLabel7.Parent = barframe
TextLabel7.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel7.BackgroundTransparency = 1.000
TextLabel7.Position = UDim2.new(1.01, 0, -.6, 0)
TextLabel7.Size = UDim2.new(0,50,0,30)
TextLabel7.Font = Enum.Font.SourceSans
TextLabel7.Text = "100"
TextLabel7.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel7.TextScaled = true
TextLabel7.TextSize = 14.000
TextLabel7.TextWrapped = true
TextLabel7.TextXAlignment = Enum.TextXAlignment.Left

distance.Name = "distance"
distance.Parent = aim_frame
distance.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
distance.BackgroundTransparency = 1.000
distance.Position = UDim2.new(0.344999999, 0, 0.41, 0)
distance.Size = UDim2.new(0.654999971, 0, 0.3, 0)
distance.Font = Enum.Font.SourceSansLight                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          
distance.Text = "Distance: 12"
distance.TextColor3 = Color3.fromRGB(255, 255, 255)
distance.TextScaled = true
distance.TextSize = 14.000
distance.TextWrapped = true
distance.TextXAlignment = Enum.TextXAlignment.Left

local external_menu = Instance.new("BillboardGui")
aim_frame:Clone().Parent = external_menu
external_menu.aim_frame.Size = UDim2.new(1,0,1,0)
external_menu.AlwaysOnTop = true
external_menu.aim_frame.Position = UDim2.new(0,0,0,0)

coroutine.resume(coroutine.create(function()
	while wait(1) do
		pcall(function()
		while game:GetService("RunService").Stepped:Wait() do
			if tab_aura[2].Value == true then
				local function get_closest()
					local max = tonumber(tab_aura[1][1][1].Text)
					if not max then

						max = 16
					end
					local team = tab_aura[1][2][1].Value 
					local selected = nil
                    local function _metadata_closest(db)
                        if db ~= game.Players.LocalPlayer then

							if team then

								if db.Team == game.Players.LocalPlayer.Team then
									return
								end
							end

							if not db.Character:FindFirstChild("HumanoidRootPart") or not db.Character:FindFirstChild("Humanoid") then
								return
							end

							if db.Character:FindFirstChild("Humanoid").health <= 0 then
								return
							end

							local root = db.Character:FindFirstChild("HumanoidRootPart")
							local oroot = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
							if not oroot or game.Players.LocalPlayer.Character.Humanoid.Health <= 0 then
								return
							end

							local dist = (root.Position - oroot.Position).Magnitude
							if dist <= max then

								max = dist
								selected = db
							end
						end
                    end
					for _, db in pairs(game.Players:GetPlayers()) do
                        _metadata_closest(db)
					end
					if selected then
						return {selected,max}
					else
						return nil
					end
				end
				local close = get_closest()
				if close then
					local root = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
					local tar2 = close[1].Character.Head.Position
					local pos = root.Position
					if tab_aura[1][3][1].Value == true then
						root.CFrame = CFrame.new(pos,Vector3.new(tar2.X,pos.Y,tar2.Z))
					end
					local vector, isOnScreen = workspace.CurrentCamera:WorldToScreenPoint(close[1].Character.PrimaryPart.Position)
					aim_frame.Visible = true
					user.Text = "Name: ".. close[1].Name
					distance.Text = "Distance: ".. math.floor(close[2] + .5)
					icon.Image = game.Players:GetUserThumbnailAsync(close[1].UserId,Enum.ThumbnailType.HeadShot,Enum.ThumbnailSize.Size420x420)
					barframe.Size = UDim2.new(close[1].Character.Humanoid.Health/close[1].Character.Humanoid.MaxHealth,0,1,0)
					TextLabel7.Text = math.floor(close[1].Character.Humanoid.Health+.5)
					if isOnScreen then
						aim_frame.Position = UDim2.new(0,vector.X,0,vector.Y)
					else
						aim_frame.Position = UDim2.new(0.7, 0, 0.415417612 + (0.415417612/2), 0)
					end

					local pact = game.Players.LocalPlayer.Backpack 
					if not pact then
						pact = game.Players.LocalPlayer.Pack
					end
					local tool = game.Players.LocalPlayer.Character:FindFirstChild('ClassicSword') or game.Players.LocalPlayer.Character:FindFirstChild('Sword') or game.Players.LocalPlayer.Character:FindFirstChild('Linked Sword') or game.Players.LocalPlayer.Character:FindFirstChild('Classic')
					local tool2
					if pact then
						tool2 = pact:FindFirstChild('ClassicSword') or pact:FindFirstChild('Sword') or pact:FindFirstChild('Linked Sword') or pact:FindFirstChild('Classic')
					end

					if game.PlaceId == 5774246 then
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
                        local pod = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
                        if close[2] > 13 then
                            pod += game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.LookVector * 5                                      
                        end
						local args = {
							[1] = {
								["chargedAttack"] = {
									["chargeRatio"] = 0
								},
								["entityInstance"] = close[1].Character,
								["validate"] = {
									["targetPosition"] = {
										["value"] = close[1].Character.HumanoidRootPart.Position, 
									},
									["selfPosition"] = {
										["value"] = pod,
									}
								},
								["weapon"] = sword
							}
						}
						if sword and (close[1].Character.HumanoidRootPart.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 16 then
							game:GetService("ReplicatedStorage").rbxts_include.node_modules.net.out._NetManaged.SwordHit:InvokeServer(unpack(args))
							game:GetService("ReplicatedStorage").rbxts_include.node_modules.net.out._NetManaged.SwordHit:InvokeServer(unpack(args))
							game:GetService("ReplicatedStorage").rbxts_include.node_modules.net.out._NetManaged.SwordHit:InvokeServer(unpack(args))
							game:GetService("ReplicatedStorage").rbxts_include.node_modules.net.out._NetManaged.SwordHit:InvokeServer(unpack(args))
							game:GetService("ReplicatedStorage").rbxts_include.node_modules.net.out._NetManaged.SwordHit:InvokeServer(unpack(args))

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
				else
					external_menu.aim_frame.Visible = false
					external_menu.Parent = storage
					external_menu.Adornee = nil
					aim_frame.Visible = false
				end
			else
				external_menu.aim_frame.Visible = false
				external_menu.Parent = storage
				external_menu.Adornee = nil
				aim_frame.Visible = false
			end


		end
		end)
	end
end))


coroutine.resume(coroutine.create(function()
	while wait(1) do
		pcall(function()
			while wait(.5) do
				if tab_hitbox[2].Value == true then
					for _, db in pairs(game.Players:GetPlayers()) do
						if db.Character:FindFirstChild("HumanoidRootPart") and db ~= game.Players.LocalPlayer then
							if not tab_hitbox[1][2][1].Value then
                                db.Character:FindFirstChild("HumanoidRootPart").CanCollide = false
                                db.Character:FindFirstChild("HumanoidRootPart").Massless = true
								db.Character:FindFirstChild("HumanoidRootPart").Size = Vector3.new(2,2,1) * tonumber(tab_hitbox[1][1][1].Text)
							elseif db.Team ~= game.Players.LocalPlayer.Team then
                                db.Character:FindFirstChild("HumanoidRootPart").CanCollide = false
                                db.Character:FindFirstChild("HumanoidRootPart").Massless = true
								db.Character:FindFirstChild("HumanoidRootPart").Size = Vector3.new(2,2,1) * tonumber(tab_hitbox[1][1][1].Text)
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
			while wait(.5) do
				if tab_reach[2].Value == true then
					local pact = game.Players.LocalPlayer.Backpack 
					if not pact then
						pact = game.Players.LocalPlayer.Pack
					end
					local tool = game.Players.LocalPlayer.Character:FindFirstChild('ClassicSword') or game.Players.LocalPlayer.Character:FindFirstChild('Sword') or game.Players.LocalPlayer.Character:FindFirstChild('Linked Sword') or game.Players.LocalPlayer.Character:FindFirstChild('Classic')
					local tool2
					if pact then
						tool2 = pact:FindFirstChild('ClassicSword') or pact:FindFirstChild('Sword') or pact:FindFirstChild('Linked Sword') or pact:FindFirstChild('Classic')
					end
					local reach = tonumber(tab_reach[1][1][1].Text)
					if not reach then
						reach = 1
					end
					if tool then

						if tool:FindFirstChild("Handle") then
							local db = Vector3.new(1, 0, 4) * reach
							tool:FindFirstChild("Handle").CanCollide = false
                            tool:FindFirstChild("Handle").Massless = true
							tool:FindFirstChild("Handle").Size = db + Vector3.new(0,.8,0)
						end
					elseif tool2 then
						if tool2:FindFirstChild("Handle") then
							local db = Vector3.new(1, 0, 4) * reach
							tool2:FindFirstChild("Handle").CanCollide = false
                            tool2:FindFirstChild("Handle").Massless = true
							tool2:FindFirstChild("Handle").Size = db + Vector3.new(0,.8,0)
						end

					end
				end
			end
		end)
	end
end))
local scamming = { ".xyz", ".com"}
local cheats = {"cheats", "hax", "hacks", "exploit", "h a x", "h a c k s", "cheat", "c h e a t", "vxpe", "future","script","fly","aura","reach","auto"}
local bully = {"bad","suc", "sux", "imagine", "gay", "not good", "old", "motherless", "fatherless", "broke", "fat","badass","ban","report","dadxy","retar","negar"}
for _, pl in pairs(game.Players:GetChildren()) do
	pl.Chatted:Connect(function(msg)
		if tab_autorep[2].Value == true then
            msg = string.lower(msg)
            
			for _, db in pairs(scamming) do
				if string.find(msg,db) then
                    print(msg.. " Scamming")
                    new_notification("Reported 4 S/F" .. pl.Name)
					game.Players:ReportAbuse(pl,"Scamming","HE SAID ".. db.. " BAN HIM!!!")
				end
			end
			for _, db in pairs(cheats) do
				if string.find(msg,db) then
                    print(msg.. " Cheats")
                    new_notification("Reported 4 C/E" .. pl.Name)
					game.Players:ReportAbuse(pl,"Cheating/Exploiting","HE ADMITTED TO CHEATING!!! HE SAID ".. db.. " BAN HIM!!!")
				end
			end
			for _, db in pairs(bully) do
				if string.find(msg,db) then
                    print(msg.. " Bullying")
                    new_notification("Reported 4 M/B" .. pl.Name)
					game.Players:ReportAbuse(pl,"Bullying","HE BULLIED ME!!! HE CALLED ME ".. db.. "")
				end
			end
		end
	end)
end
game.Players.PlayerAdded:Connect(function(pl)
	pl.Chatted:Connect(function(msg)
		if tab_autorep[2].Value == true then

            msg = string.lower(msg)
            
			for _, db in pairs(scamming) do
				if string.find(msg,db) then
                    print(msg.. " Scamming")
                    new_notification("Reported 4 Scam " .. pl.Name)
					game.Players:ReportAbuse(pl,"Scamming","HE SAID ".. db.. " BAN HIM!!!")
				end
			end
			for _, db in pairs(cheats) do
				if string.find(msg,db) then
                    print(msg.. " Cheats")
                    new_notification("Reported 4 C/E " .. pl.Name)
					game.Players:ReportAbuse(pl,"Cheating/Exploiting","HE ADMITTED TO CHEATING!!! HE SAID ".. db.. " BAN HIM!!!")
				end
			end
			for _, db in pairs(bully) do
				if string.find(msg,db) then
                    print(msg.. " Bullying")
                    new_notification("Reported 4 M/B " .. pl.Name)
					game.Players:ReportAbuse(pl,"Bullying","HE BULLIED ME!!! HE CALLED ME ".. db.. "")
				end
			end
		end
	end)
end)

coroutine.resume(coroutine.create(function()
	local blur = Instance.new("BlurEffect",ScreenGui.Parent)
	while wait(1) do
		pcall(function()
			local lastPos = workspace.CurrentCamera.CFrame.Position
			while wait(.2) do
				if tab_mb[2].Value == true then
					blur.Size = (lastPos - workspace.CurrentCamera.CFrame.Position).Magnitude
					lastPos = workspace.CurrentCamera.CFrame.Position
				else
					blur.Size = 0
				end
			end
		end)
	end
end))
coroutine.resume(coroutine.create(function()
	while wait(1) do
		pcall(function()
			while wait(tonumber(tab_bc[1][1][1].Text)) do
				if tab_bc[2].Value then
					coroutine.resume(coroutine.create(function()
						local ball = Instance.new("Part",workspace)
						ball.Anchored = true
						
						ball.CanCollide = false
						ball.Size = Vector3.new(1,1,1)
						ball.Shape = "Ball"
						ball.Material = Enum.Material.Neon
						ball.Color = Color3.fromRGB(85, 255, 255)
						ball.Position = game.Players.LocalPlayer.Character.PrimaryPart.Position - Vector3.new(0,game.Players.LocalPlayer.Character.Humanoid.HipHeight+1,0)
						if tonumber(tab_bc[1][2][1].Text) then
							wait(tonumber(tab_bc[1][2][1].Text))
						end	
                        
						ball:Destroy()
					end))
				end
			end
		end)
	end
end))
coroutine.resume(coroutine.create(function()
local done = true
	while wait(1) do
		pcall(function()
            while wait() do
                if tab_fov[2].Value == true then
                    workspace.CurrentCamera.FieldOfView = tonumber(tab_fov[1][1][1].Text)
                    done = false
                else
                    if not done then
                        done = true
                        workspace.CurrentCamera.FieldOfView = 70
                    end
                end
            end
        end)
        done = false
    end
end))
coroutine.resume(coroutine.create(function()
	while wait(1) do
		pcall(function()
            while wait() do
                if tab_grav[2].Value == true then
                    workspace.Gravity = tonumber(tab_grav[1][1][1].Text)
                else
                    workspace.Gravity = 196.2
                end
            end
        end)
    end
end))
if game.PlaceId == 5774246 and workspace:FindFirstChild("Map") then
    print("Detected - Easy.gg")
    local tab_scaffold
    local tab_breaker
    local tab_kb
    if seat_data[18] ~= nil then

	tab_scaffold = new_select({
		["name"] = "Scaffold"; 
		["menu"] = find_menu("Player");
		["selects"] = seat_data[18]
	    })
	    tab_breaker = new_select({
		["name"] = "Breaker"; 
		["menu"] = find_menu("Player");
		["selects"] = seat_data[19]
	    })
	    tab_kb= new_select({
		["name"] = "Velocity"; 
		["menu"] = find_menu("Player");
		["selects"] = seat_data[20]
	    })
    else
    tab_scaffold = new_select({
        ["name"] = "Scaffold"; 
        ["menu"] = find_menu("Player");
        ["selects"] = {
            {"key","Key",""},
        }
    })
    tab_breaker = new_select({
        ["name"] = "Breaker"; 
        ["menu"] = find_menu("Player");
        ["selects"] = {
            {"key","Key",""},
        }
    })
    tab_kb= new_select({
        ["name"] = "Velocity"; 
        ["menu"] = find_menu("Player");
        ["selects"] = {
            {"key","Key",""},
        }
    })
    end
    coroutine.resume(coroutine.create(function()
while wait(1) do
pcall(function()
local lastVel = Vector3.new()
local last_health = 0
game.Players.LocalPlayer.Character.Humanoid.Changed:Connect(function()
    if game.Players.LocalPlayer.Character.Humanoid.Health ~= lastHealth then
        if game.Players.LocalPlayer.Character.Humanoid.Health < last_health then
           if tab_kb[2].Value == true then
                game.Players.LocalPlayer.Character.HumanoidRootPart.AssemblyLinearVelocity = lastVel
            last_health = game.Players.LocalPlayer.Character.Humanoid.Health
            wait()
            game.Players.LocalPlayer.Character.HumanoidRootPart.AssemblyLinearVelocity = lastVel
           end
        end
        last_health = game.Players.LocalPlayer.Character.Humanoid.Health
    end
end)
while wait(.1) do
    lastVel = game.Players.LocalPlayer.Character.HumanoidRootPart.AssemblyLinearVelocity
end
end)
end
end))
	function roundPos(vec,pd)
		return Vector3.new(math.floor((vec.X)/pd + .5),math.floor((vec.Y)/pd + .5),math.floor((vec.Z)/pd + .5))
	end
    local closest_pos = Vector3.new(0,0,0)
local ignore = RaycastParams.new()
ignore.FilterType = Enum.RaycastFilterType.Whitelist
ignore.FilterDescendantsInstances = workspace.Map.Worlds:GetChildren()[1].Blocks:GetChildren()
coroutine.resume(coroutine.create(function()
while wait(1) do
pcall(function()
while wait() do
    local beds = {}
    for _, db in pairs(workspace.Map.Worlds:GetChildren()[1].Blocks:GetChildren()) do
        if db.Name == "bed" then
            if db:FindFirstChild("Covers") then
                if db:FindFirstChild("Covers").BrickColor ~= game.Players.LocalPlayer.TeamColor then
                    table.insert(beds,#beds+1,db)
                end
            end
        end
    end
    if #beds <= 0 then
        closest_pos = Vector3.new(0,0,0)
    else
    function break_block(part,pos,normal)
        
        function snap(num)
            return math.floor((num/3)+.5)
        end
        local p = part.Position
        local args = {
            [1] = {
                ["blockRef"] = {
                    ["blockPosition"] = Vector3.new(snap(p.X),snap(p.Y),snap(p.Z))
                },
                ["hitPosition"] = pos,
                ["hitNormal"] = normal
            }
        }
        
        game:GetService("ReplicatedStorage").rbxts_include.node_modules.net.out._NetManaged.DamageBlock:InvokeServer(unpack(args))

    end
    local cd = 0
    local bed = nil
    for _, db in pairs(beds) do
        local dist = (db.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
        if dist < 20 then
            cd += 1
            bed = db
            if closest_pos == Vector3.new(0,0,0) then
                closest_pos = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
            end
        end
    end
    if tab_breaker[2].Value == true then
        if cd == 0 then
            closest_pos = Vector3.new(0,0,0)
        else
            ignore.FilterDescendantsInstances = workspace.Map.Worlds:GetChildren()[1].Blocks:GetChildren()
            local raycasts = Workspace:Raycast(closest_pos,CFrame.new(closest_pos):ToObjectSpace(CFrame.new(bed.Position)).Position,ignore)
            if raycasts then
                break_block(raycasts.Instance,raycasts.Position,raycasts.Normal)
            end
        end
    end
    end
end
end)
end
end))
	while wait() do
		if tab_scaffold[2].Value == true then
			local raycastParams = RaycastParams.new()
			raycastParams.FilterType = Enum.RaycastFilterType.Blacklist
			raycastParams.FilterDescendantsInstances = {game.Players.LocalPlayer.Character:GetDescendants()}
			raycastParams.IgnoreWater = true

			local raycastResult5 = workspace:Raycast(game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(0,(game.Players.LocalPlayer.Character.Humanoid.HipHeight/2),0), game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.UpVector * -3/2, raycastParams)
			local cd = game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(0,game.Players.LocalPlayer.Character.Humanoid.HipHeight+(game.Players.LocalPlayer.Character.Humanoid.HipHeight/2),0) + Vector3.new(game.Players.LocalPlayer.Character.HumanoidRootPart.AssemblyLinearVelocity.X/5,game.Players.LocalPlayer.Character.HumanoidRootPart.AssemblyLinearVelocity.Y/45,game.Players.LocalPlayer.Character.HumanoidRootPart.AssemblyLinearVelocity.Z/5)
			local args = {
				[1] = {
					["position"] = roundPos(cd,3);
					["blockType"] = "wool_".. string.lower(game.Players.LocalPlayer.Team.Name)
				}
			}

			if not raycastResult5 then
				game:GetService("ReplicatedStorage").rbxts_include.node_modules.net.out._NetManaged.PlaceBlock:InvokeServer(unpack(args))
				raycastResult5 = workspace:Raycast(game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(0,(game.Players.LocalPlayer.Character.Humanoid.HipHeight/2),0), game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.UpVector * -3/2, raycastParams)
				if raycastResult5 then
					cd = game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(0,game.Players.LocalPlayer.Character.Humanoid.HipHeight+(game.Players.LocalPlayer.Character.Humanoid.HipHeight/2),0) 
					local args = {
						[1] = {
							["position"] = roundPos(cd,3);
							["blockType"] = "wool_".. string.lower(game.Players.LocalPlayer.Team.Name)
						}
					}
					game:GetService("ReplicatedStorage").rbxts_include.node_modules.net.out._NetManaged.PlaceBlock:InvokeServer(unpack(args))
				end
			end
		end
	end
end
