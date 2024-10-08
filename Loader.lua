-- // This aint the source retarted ass nigga

if _G.EvolutionLoaded then 
    return
else
    _G.EvolutionLoaded = true
end

if not Evolution then 
    game:GetService("StarterGui"):SetCore("SendNotification",{
        Title = "Error: Missing table",
        Text = "Please goto the discord and get the table.", 
        Duration = 10
    })
end

local function tween_gui(instance, New, Time, Style)
	local TI = TweenInfo.new(Time or 1, Style or Enum.EasingStyle.Sine, Enum.EasingDirection.InOut)
	local Tweening = game:GetService("TweenService"):Create(instance, TI, New)
	Tweening:Play()
end

if not isfolder("EvolutionSettings") then 
    makefolder("EvolutionSettings")
end

if not isfile("EvolutionSettings/key.txt") then
    writefile("EvolutionSettings/key.txt","")
end

if script_key then 
    writefile("EvolutionSettings/key.txt",script_key)
end

if Evolution.Options["Stealth Mode"].Enabled then
    script_key = Evolution.Options["Stealth Mode"].Key
    -- // Load script
    loadstring(game:HttpGet('https://raw.githubusercontent.com/laagginq/Evolution/main/evo.lua'))()
end

-- Instances:

local KEY = Instance.new("ScreenGui")
local MAIN = Instance.new("Frame")
local TITLE = Instance.new("TextLabel")
local ICON = Instance.new("ImageLabel")
local UICorner = Instance.new("UICorner")
local KeyFrame = Instance.new("Frame")
local UICorner_2 = Instance.new("UICorner")
local KeyIcon = Instance.new("ImageLabel")
local KeyBox = Instance.new("TextBox")
local LoadButton = Instance.new("TextButton")
local UICorner_3 = Instance.new("UICorner")
local SaveKeyFrame = Instance.new("Frame")
local UICorner_4 = Instance.new("UICorner")
local SaveKeyButton = Instance.new("ImageButton")
local UICorner_5 = Instance.new("UICorner")
local SaveKeyText = Instance.new("TextLabel")

--Properties:

KEY.Name = "KEY"
KEY.Parent = game.CoreGui
KEY.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

MAIN.Name = "MAIN"
MAIN.Parent = KEY
MAIN.AnchorPoint = Vector2.new(0.5, 0.5)
MAIN.BackgroundColor3 = Color3.fromRGB(21, 21, 21)
MAIN.BorderColor3 = Color3.fromRGB(0, 0, 0)
MAIN.BorderSizePixel = 0
MAIN.Position = UDim2.new(0.5, 0, 0.5, 0)
MAIN.Size = UDim2.new(0, 415, 0, 146)

TITLE.Name = "TITLE"
TITLE.Parent = MAIN
TITLE.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TITLE.BackgroundTransparency = 1.000
TITLE.BorderColor3 = Color3.fromRGB(0, 0, 0)
TITLE.BorderSizePixel = 0
TITLE.Size = UDim2.new(0, 415, 0, 33)
TITLE.Font = Enum.Font.Code
TITLE.Text = "Evolution V3"
TITLE.TextColor3 = Color3.fromRGB(255, 255, 255)
TITLE.TextSize = 18.000

ICON.Name = "ICON"
ICON.Parent = MAIN
ICON.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ICON.BackgroundTransparency = 1.000
ICON.BorderColor3 = Color3.fromRGB(0, 0, 0)
ICON.BorderSizePixel = 0
ICON.Position = UDim2.new(0.0144578312, 0, 0.0205479451, 0)
ICON.Size = UDim2.new(0, 27, 0, 27)
ICON.Image = "rbxassetid://14270853092"

UICorner.CornerRadius = UDim.new(0, 3)
UICorner.Parent = MAIN

KeyFrame.Name = "KeyFrame"
KeyFrame.Parent = MAIN
KeyFrame.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
KeyFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
KeyFrame.BorderSizePixel = 0
KeyFrame.Position = UDim2.new(0.0574255511, 0, 0.325664788, 0)
KeyFrame.Size = UDim2.new(0, 366, 0, 23)

UICorner_2.CornerRadius = UDim.new(0, 5)
UICorner_2.Parent = KeyFrame

KeyIcon.Name = "KeyIcon"
KeyIcon.Parent = KeyFrame
KeyIcon.AnchorPoint = Vector2.new(0.5, 0.5)
KeyIcon.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
KeyIcon.BackgroundTransparency = 1.000
KeyIcon.BorderColor3 = Color3.fromRGB(0, 0, 0)
KeyIcon.BorderSizePixel = 0
KeyIcon.Position = UDim2.new(0.0359999985, 0, 0.5, 0)
KeyIcon.Size = UDim2.new(0, 16, 0, 16)
KeyIcon.Image = "rbxassetid://10723416652"

KeyBox.Name = "KeyBox"
KeyBox.Parent = KeyFrame
KeyBox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
KeyBox.BackgroundTransparency = 1.000
KeyBox.BorderColor3 = Color3.fromRGB(0, 0, 0)
KeyBox.BorderSizePixel = 0
KeyBox.Position = UDim2.new(0.0737704933, 0, 0, 0)
KeyBox.Size = UDim2.new(0, 339, 0, 23)
KeyBox.Font = Enum.Font.Code
KeyBox.PlaceholderText = "Enter your key here."
KeyBox.Text = readfile("EvolutionSettings/key.txt")
KeyBox.TextColor3 = Color3.fromRGB(255, 255, 255)
KeyBox.TextSize = 14.000
KeyBox.TextXAlignment = Enum.TextXAlignment.Left
KeyBox.ClearTextOnFocus = false

LoadButton.Name = "LoadButton"
LoadButton.Parent = MAIN
LoadButton.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
LoadButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
LoadButton.BorderSizePixel = 0
LoadButton.Position = UDim2.new(0.0554218329, 0, 0.558779359, 0)
LoadButton.Size = UDim2.new(0, 177, 0, 50)
LoadButton.Font = Enum.Font.Code
LoadButton.Text = "Load"
LoadButton.TextColor3 = Color3.fromRGB(255, 255, 255)
LoadButton.TextSize = 20.000

UICorner_3.CornerRadius = UDim.new(0, 5)
UICorner_3.Parent = LoadButton

SaveKeyFrame.Name = "SaveKeyFrame"
SaveKeyFrame.Parent = MAIN
SaveKeyFrame.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
SaveKeyFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
SaveKeyFrame.BorderSizePixel = 0
SaveKeyFrame.Position = UDim2.new(0.510843515, 0, 0.55479455, 0)
SaveKeyFrame.Size = UDim2.new(0, 177, 0, 50)

UICorner_4.CornerRadius = UDim.new(0, 5)
UICorner_4.Parent = SaveKeyFrame

SaveKeyButton.Name = "SaveKeyButton"
SaveKeyButton.Parent = SaveKeyFrame
SaveKeyButton.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
SaveKeyButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
SaveKeyButton.BorderSizePixel = 0
SaveKeyButton.Position = UDim2.new(0.0847457647, 0, 0.180000007, 0)
SaveKeyButton.Size = UDim2.new(0, 32, 0, 32)
SaveKeyButton.Image = "rbxassetid://5959696880"

UICorner_5.CornerRadius = UDim.new(0, 5)
UICorner_5.Parent = SaveKeyButton

SaveKeyText.Name = "SaveKeyText"
SaveKeyText.Parent = SaveKeyFrame
SaveKeyText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
SaveKeyText.BackgroundTransparency = 1.000
SaveKeyText.BorderColor3 = Color3.fromRGB(0, 0, 0)
SaveKeyText.BorderSizePixel = 0
SaveKeyText.Position = UDim2.new(0.338983059, 0, 0, 0)
SaveKeyText.Size = UDim2.new(0, 116, 0, 50)
SaveKeyText.Font = Enum.Font.Code
SaveKeyText.Text = "Save Key"
SaveKeyText.TextColor3 = Color3.fromRGB(255, 255, 255)
SaveKeyText.TextSize = 20.000
SaveKeyText.TextXAlignment = Enum.TextXAlignment.Left

local savekey = true

SaveKeyButton.MouseButton1Click:Connect(function()
	if savekey then
		tween_gui(SaveKeyButton,{ImageTransparency = 1},0.1)
		savekey = false
	else
		tween_gui(SaveKeyButton,{ImageTransparency = 0},0.1)
		savekey = true
	end
end)

LoadButton.MouseButton1Click:Connect(function()
    LoadButton.Text = "Loading..."
    local key = tostring(KeyBox.Text)
    if savekey then 
        writefile("EvolutionSettings/key.txt",key)
    end
    script_key = key


    -- // Load script
    loadstring(game:HttpGet('https://raw.githubusercontent.com/laagginq/Evolution/main/evo.lua'))()

    delay(1,function()
        KEY:Destroy()
    end)
end)
