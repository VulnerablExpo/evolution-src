getgenv().EvolutionLite = {
    ["Options"] = {
        ["Version"] = "3.0.1 Lite", -- // Dont touch this is to make sure your using the correct table
        ["Stats"] = true, -- // Shows debug stats
        ["Allow Notifications"] = true, -- // Toggles all notifications
        ["Notifcation Type"] = "xaxa", -- // Akali, Roblox, xaxa
        ["Notifcation Duration"] = 3, -- // How long notifcations will show
    },
    ["Silent Aim"] = {
        ["Enabled"] = true, -- // Mouse Redirection
        ["Mode"] = "FOV", -- // Select mode to select target (FOV, Target )
        ["Target Mode Bind"] = "Q", -- // Keybind for Target mode
        ["Notify"] = true, -- // Sends notifcation when targeting someone
        ["Prediction"] = 0.133, -- // Prediction Value
        ["Target Part"] = "Head", -- // Any Hitbox (Head, UpperTorso, HumanoidRootPart, LowerTorso)
        ["Target Part Offset"] = 0, -- // Offset if you have the target part to head and you set offset to -1.6 you will hit the torso
        ["Nearest Part To Cursor"] = false, -- // Sets target part to the nearest body part to your cursor
    },
    ["Cam Lock"] = {
        ["Enabled"] = false, -- // Adjust your camera position
        ["Mode"] = "Target_toggle", -- // Select mode to select target (FOV, Target_toggle, Target_hold)
        ["Target Mode Bind"] = "C", -- // Keybind for Target modes
        ["Easing Style"] = "Exponential", -- // https://create.roblox.com/docs/reference/engine/enums/EasingStyle
        ["Notify"] = true, -- // Sends notifcation when targeting someone
        ["Prediction"] = 0.133, -- // Prediction Value
        ["Target Part"] = "Head", -- // Any Hitbox (Head, UpperTorso, HumanoidRootPart, LowerTorso)
        ["Target Part Offset"] = 0, -- // Offset if you have the target part to head and you set offset to -1.6 you will hit the torso
        ["Nearest Part To Cursor"] = false,  -- // Sets target part to the nearest body part to your cursor
        ["Smoothness"] = {
            ["Enabled"] = true, -- // Prevents snapping when targeting
            ["Value"] = 0.058, -- // Smoothness Value
        },
    },
    ["Global"] = {
        ["Auto Prediction"] = {
            ["Enabled"] = true, -- // Will automatically set your prediction based on your ping
            ["Use Default Settings"] = true, -- // Uses settings provided by developer (setting to false will use custom settings)
            ["Custom Settings"] = { -- // Custom Values
                ["Ping20"]  = 0.12746444,
                ["Ping30"]  = 0.12746444,
                ["Ping40"]  = 0.12746444,
                ["Ping50"]  = 0.11243,
                ["Ping60"]  = 0.11243,
                ["Ping70"]  = 0.12533,
                ["Ping80"]  = 0.169,
                ["Ping90"]  = 0.13626,
                ["Ping100"] = 0.13829,
                ["Ping110"] = 0.146,
                ["Ping120"] = 0.149,
                ["Ping130"] = 0.151,
                ["Ping140"] = 0.1652131,
                ["Ping150"] = 0.125333,
                ["Ping160"] = 0.1223333,
                ["Ping170"] = 0.15,
                ["Ping180"] = 0.1923111,
                ["Ping190"] = 0.165771,
                ["Ping200"] = 0.1746,
            }
        },
        ["Anti Ground Shots"] = false, -- // Will prevent you from shooting the ground
        ["Unlock On KO"] = true, -- // Unlocks when target dies
    },
    ["Checks"] = {
        ["Visible Check"] = true, -- // Will check if target is behind a wall
        ["K.O Check"] = true, -- // Will check if target is knocked or grabbed
        ["Crew Check"] = false, -- // Will check if target is in your crew
        ["Friend Check"] = false, -- // Will check if target is your friend if not will not lock
    },
    ["Resolver"] = {
        ["Enabled"] = false, -- // Resolve Anti Locks and Desyncs
        ["Method"] = "Delta", -- // Delta, Move Direction, No Prediction, Recalculate
    },
    ["FOV"] = { -- // FOV Circle Settings
        ["Silent Aim"] = {
            ["Visible"] = true, -- // Will toggle if you can see the circle
            ["Filled"] = false, -- // Makes circle filled (really fucking ugly)
            ["Size"] = 150, -- // Size of the circle
            ["Thickness"] = 1, -- // Thickness of the circle
            ["Transparency"] = 1, -- // Transparency of the circle 0.1 - 1
            ["Color"] = Color3.fromRGB(255,255,255) -- // Circle Color
        },
        ["Cam Lock"] = {
            ["Visible"] = false, -- // Will toggle if you can see the circle
            ["Filled"] = false, -- // Makes circle filled (really fucking ugly)
            ["Size"] = 150, -- // Size of the circle
            ["Thickness"] = 1, -- // Thickness of the circle
            ["Transparency"] = 1, -- // Transparency of the circle 0.1 - 1
            ["Color"] = Color3.fromRGB(255,255,255) -- // Circle Color
        },
    },
    ["Airshot"] = {
        ["Enabled"] = true, -- // Will adjust your prediction if target is in the air
        ["Jump Offset"] = -1.6, -- // Jump Offset
        ["Cam Lock Smoothness"] = {
            ["Enabled"] = true, -- // Will adjust your camlock smoothness if target is in the air
            ["New Smoothness"] = 0.58, -- // Smoothness value
        }
    },
    ["Spoofer"] = {
        ["Memory"] = {
            ["Enabled"] = false, -- // Will spoof your memory usage
            ["Max"] = 900,
            ["Min"] = 700,
        },
    },
}

-- // Evolution Lite V3

if iyg2te39871ts then 
    notify("Succesfully set new settings.")
    return
else
    getgenv().iyg2te39871ts = true
end

local utility = {
    Invite = "camlock",
    Folder = "EvolutionLite",
    Version = "3.0.1 Lite",
    Ping = 5,
}

if not LPH_OBFUSCATED and not LPH_JIT_ULTRA then
    LPH_NO_VIRTUALIZE = function(f) return f end
end

if EvolutionLite.Options.Version ~= utility.Version then 
    setclipboard(game:HttpGet("https://unlegit.xyz/script.lua"))
    game.Players.LocalPlayer:kick("Incorrect Config Version; Your version: "..EvolutionLite.Options.Version)
    return
end


task.spawn(function()
    pcall(function()
        repeat wait() until game.CoreGui.RobloxGui:FindFirstChild("PerformanceStats") 
        for __, v in pairs(game.CoreGui.RobloxGui.PerformanceStats:GetChildren()) do
            if v.Name == "PS_Button" and v.StatsMiniTextPanelClass.TitleLabel.Text == "Mem" then
                Memory = v.StatsMiniTextPanelClass.ValueLabel
            end
        end  
        Memory:GetPropertyChangedSignal("Text"):Connect(function()
            if EvolutionLite.Spoofer.Memory.Enabled then 
                local random1 = math.random(EvolutionLite.Spoofer.Memory.Min, EvolutionLite.Spoofer.Memory.Max)
                local rand1 = math.random(0,9)
                local rand2 = math.random(0,9)
                Memory.Text = "".. random1 .. "." .. rand1 .. rand2.. " MB"
            end
        end)
    end)
end)


local AkaliNotif = loadstring(game:HttpGet("https://raw.githubusercontent.com/Kinlei/Dynissimo/main/Scripts/AkaliNotif.lua"))();
local gggg = AkaliNotif.Notify;

local notificationLibrary = loadstring(game:HttpGet("https://raw.githubusercontent.com/laagginq/ui-libraries/main/xaxas-notification/src.lua"))();
local notifications = notificationLibrary.new({            
    NotificationLifetime = 3, 
    NotificationPosition = "Middle",
    
    TextFont = Enum.Font.Code,
    TextColor = Color3.fromRGB(255, 255, 255),
    TextSize = 15,
    
    TextStrokeTransparency = 0, 
    TextStrokeColor = Color3.fromRGB(0, 0, 0)
});

notifications:BuildNotificationUI();


getgenv().notify = function(txt) 
    if EvolutionLite.Options["Allow Notifications"] then
        if string.lower(EvolutionLite.Options["Notifcation Type"]) == "akali" then 
            gggg({
                Description = txt;
                Title = "Notification";
                Duration = EvolutionLite.Options["Notifcation Duration"];
            });
        elseif string.lower(EvolutionLite.Options["Notifcation Type"]) == "akali" then
            game:GetService("StarterGui"):SetCore("SendNotification",{
                Title = "Notification",
                Text = txt, 
                Duration = EvolutionLite.Options["Notifcation Duration"]
            })
        elseif string.lower(EvolutionLite.Options["Notifcation Type"]) == "xaxa" then
            notifications:Notify(txt);
        end

    end
end

function missingf(functionmissing) 
    notify("Your executor is missing "..functionmissing.." this feature will not work.")
end

function toClipboard(String)
	local clipBoard = setclipboard or toclipboard or set_clipboard or (Clipboard and Clipboard.set)
	if clipBoard then
		clipBoard(String)
	else
		missingf("setclipboard")
        return
	end
end

function hookf(Function) 
    local consume = detour_function or replaceclosure or hookfunc or hookfunction
    if consume then 
        consume(Function)
    else
        missingf("hookfunction")
        return
    end
end

function httprequest(f) 
    local httprequest = (syn and syn.request) or (http and http.request) or http_request or (fluxus and fluxus.request) or request
    if httprequest then 
        httprequest(f)
    else
        missingf("httprequest")
        return
    end
end

if not isfolder(utility.Folder) then 
    makefolder(utility.Folder)
end
if not isfolder(utility.Folder.."/"..utility.Version) then 
    makefolder(utility.Folder.."/"..utility.Version)
end

local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local Workspace = game:GetService("Workspace")
local Gui = game:GetService("GuiService")

local SilentTarget = nil
local CamlockTarget = nil
local PredictionValue = 0.133
local PredictionValue2 = 0.133
local closestsilentbodypart = EvolutionLite["Silent Aim"]["Target Part"]
local closestcamlockpart = EvolutionLite["Cam Lock"]["Target Part"]
local LocalPlayer = Players.LocalPlayer
local mouse = LocalPlayer:GetMouse()
local CurrentCamera = Workspace.CurrentCamera
local v3 = Vector3
local v2 = Vector2
local CF = CFrame

local Circle = Drawing.new("Circle")
Circle.Transparency = EvolutionLite.FOV["Silent Aim"].Transparency
Circle.Radius = EvolutionLite.FOV["Silent Aim"].Size
Circle.Visible = EvolutionLite.FOV["Silent Aim"].Visible
Circle.Color = EvolutionLite.FOV["Silent Aim"].Color
Circle.Thickness = EvolutionLite.FOV["Silent Aim"].Thickness
Circle.Filled = EvolutionLite.FOV["Silent Aim"].Filled

local Circle2 = Drawing.new("Circle")
Circle2.Transparency = EvolutionLite.FOV["Cam Lock"].Transparency
Circle2.Radius = EvolutionLite.FOV["Cam Lock"].Size
Circle2.Visible = EvolutionLite.FOV["Cam Lock"].Visible
Circle2.Color = EvolutionLite.FOV["Cam Lock"].Color
Circle2.Thickness = EvolutionLite.FOV["Cam Lock"].Thickness
Circle2.Filled = EvolutionLite.FOV["Cam Lock"].Filled


OnScreen = function(Object)
    local _, screen = CurrentCamera:WorldToScreenPoint(Object.Position)
    return screen
end

CalculateChance = function(Percentage)
    Percentage = math.floor(Percentage)
    local chance = math.floor(Random.new().NextNumber(Random.new(), 0, 1) * 100) / 100

    return chance < Percentage / 100
end

RayCastCheck = function(Part, PartDescendant)
    local Character = LocalPlayer.Character or LocalPlayer.CharacterAdded.Wait(LocalPlayer.CharacterAdded)
    local Origin = CurrentCamera.CFrame.Position

    local RayCastParams = RaycastParams.new()
    RayCastParams.FilterType = Enum.RaycastFilterType.Blacklist
    RayCastParams.FilterDescendantsInstances = {Character, CurrentCamera}

    local Result = Workspace.Raycast(Workspace, Origin, Part.Position - Origin, RayCastParams)
    
    if (Result) then
        local PartHit = Result.Instance
        local Visible = (not PartHit or Instance.new("Part").IsDescendantOf(PartHit, PartDescendant))
        
        return Visible
    end
    return false
end

Alive = function(Plr)
    if Plr and Plr.Character and Plr.Character:FindFirstChild("HumanoidRootPart") ~= nil and Plr.Character:FindFirstChild("Humanoid") ~= nil and Plr.Character:FindFirstChild("Head") ~= nil then
        return true
    end
    return false
end


GetMagnitudeFromMouse = function(Part)
    local PartPos, OnScreen = CurrentCamera:WorldToScreenPoint(Part.Position)
    if OnScreen then
        local Magnitude = (v2.new(PartPos.X, PartPos.Y) - v2.new(mouse.X, mouse.Y)).Magnitude
        return Magnitude
    end
    return math.huge
end

GetPrediction = function() 
    if EvolutionLite["Global"]["Auto Prediction"].Enabled then 

        local PingStats = game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValueString()
        local Value = tostring(PingStats)
        local PingValue = Value:split(" ")
        local PingNumber = tonumber(PingValue[1])
        if EvolutionLite.Global["Auto Prediction"]["Use Default Settings"] then 
            if PingNumber < 130 then
                return tonumber(PingNumber / 1000 + 0.037)
            else
                return tonumber(PingNumber / 1000 + 0.033)
            end
        else
            if PingNumber < 30 then
                return tonumber(EvolutionLite.Global["Auto Prediction"]["Custom Settings"].Ping20)
            elseif PingNumber < 40 then
                return tonumber(EvolutionLite.Global["Auto Prediction"]["Custom Settings"].Ping30)
            elseif PingNumber < 50 then
                return tonumber(EvolutionLite.Global["Auto Prediction"]["Custom Settings"].Ping40)
            elseif PingNumber < 60 then
                return tonumber(EvolutionLite.Global["Auto Prediction"]["Custom Settings"].Ping50)
            elseif PingNumber < 70 then
                return tonumber(EvolutionLite.Global["Auto Prediction"]["Custom Settings"].Ping60)
            elseif PingNumber < 80 then
                return tonumber(EvolutionLite.Global["Auto Prediction"]["Custom Settings"].Ping70)
            elseif PingNumber < 90 then
                return tonumber(EvolutionLite.Global["Auto Prediction"]["Custom Settings"].Ping80)
            elseif PingNumber < 100 then
                return tonumber(EvolutionLite.Global["Auto Prediction"]["Custom Settings"].Ping90)
            elseif PingNumber < 110 then
                return tonumber(EvolutionLite.Global["Auto Prediction"]["Custom Settings"].Ping100)
            elseif PingNumber < 120 then
                return tonumber(EvolutionLite.Global["Auto Prediction"]["Custom Settings"].Ping110)
            elseif PingNumber < 130 then
                return tonumber(EvolutionLite.Global["Auto Prediction"]["Custom Settings"].Ping120)
            elseif PingNumber < 140 then
                return tonumber(EvolutionLite.Global["Auto Prediction"]["Custom Settings"].Ping130)
            elseif PingNumber < 150 then
                return tonumber(EvolutionLite.Global["Auto Prediction"]["Custom Settings"].Ping140)
            elseif PingNumber < 160 then
                return tonumber(EvolutionLite.Global["Auto Prediction"]["Custom Settings"].Ping150)
            elseif PingNumber < 170 then
                return tonumber(EvolutionLite.Global["Auto Prediction"]["Custom Settings"].Ping160)
            elseif PingNumber < 180 then
                return tonumber(EvolutionLite.Global["Auto Prediction"]["Custom Settings"].P1ing70)
            elseif PingNumber < 190 then
                return tonumber(EvolutionLite.Global["Auto Prediction"]["Custom Settings"].Ping180)
            elseif PingNumber < 200 then
                return tonumber(EvolutionLite.Global["Auto Prediction"]["Custom Settings"].Ping190)
            elseif PingNumber < 210 then
                return tonumber(EvolutionLite.Global["Auto Prediction"]["Custom Settings"].Ping200)
            end
        end
    else
        return tonumber(EvolutionLite["Silent Aim"].Prediction)
    end
end

FindCrew = function(Player)
	if Player:FindFirstChild("DataFolder") and Player.DataFolder:FindFirstChild("Information") and Player.DataFolder.Information:FindFirstChild("Crew") and LocalPlayer:FindFirstChild("DataFolder") and LocalPlayer.DataFolder:FindFirstChild("Information") and LocalPlayer.DataFolder.Information:FindFirstChild("Crew") then
        if LocalPlayer.DataFolder.Information:FindFirstChild("Crew").Value ~= nil and Player.DataFolder.Information:FindFirstChild("Crew").Value ~= nil and Player.DataFolder.Information:FindFirstChild("Crew").Value ~= "" and LocalPlayer.DataFolder.Information:FindFirstChild("Crew").Value ~= "" then 
			return true
		end
	end
	return false
end

GetGunName = function(Name)
    local split = string.split(string.split(Name, "[")[2], "]")[1]
    return split
end

GetCurrentWeaponName = function()
    if LocalPlayer.Character and LocalPlayer.Character:FindFirstChildWhichIsA("Tool") then
       local Tool =  LocalPlayer.Character:FindFirstChildWhichIsA("Tool")
       if string.find(Tool.Name, "%[") and string.find(Tool.Name, "%]") and not string.find(Tool.Name, "Wallet") and not string.find(Tool.Name, "Phone") then
          return GetGunName(Tool.Name)
       end
    end
    return nil
end

WTS = function(Object)
	local ObjectVector = CurrentCamera:WorldToScreenPoint(Object.Position)
	return v2.new(ObjectVector.X, ObjectVector.Y)
end

Filter = function(obj)
	if (obj:IsA('BasePart')) then
		return true
	end
end

mousePosv2 = function()
	return v2.new(mouse.X, mouse.Y) 
end

IsOnScreen2 = function(Object)
    local IsOnScreen = CurrentCamera:WorldToScreenPoint(Object.Position)
    return IsOnScreen
end

FilterObjs = function(Object)
    if string.find(Object.Name, "Gun") then
        return
    end
    if table.find({"Part", "MeshPart", "BasePart"}, Object.ClassName) then
        return true
    end
end





GetClosestBodyPart = function()
    local character = SilentTarget.Character
    local ClosestDistance = 1 / 0
    local BodyPart = nil
    if (character and character:GetChildren()) then
        for _, x in next, character:GetChildren() do
            if FilterObjs(x) and IsOnScreen2(x) then
                local Distance = (WTS(x) - v2.new(mouse.X, mouse.Y)).Magnitude
                    if (Distance < ClosestDistance) then
                        ClosestDistance = Distance
                        BodyPart = x
                    end
            end
        end
    end
    if EvolutionLite["Silent Aim"]["Nearest Part To Cursor"] then 
        closestsilentbodypart = tostring(BodyPart)
    else
        closestsilentbodypart = EvolutionLite["Silent Aim"]["Target Part"]
    end

end

GetClosestBodyPart2 = function()
    local character = SilentTarget.Character
    local ClosestDistance = 1 / 0
    local BodyPart = nil
    if (character and character:GetChildren()) then
        for _, x in next, character:GetChildren() do
            if FilterObjs(x) and IsOnScreen2(x) then
                local Distance = (WTS(x) - v2.new(mouse.X, mouse.Y)).Magnitude
                    if (Distance < ClosestDistance) then
                        ClosestDistance = Distance
                        BodyPart = x
                    end
            end
        end
    end
    if EvolutionLite["Cam Lock"]["Nearest Part To Cursor"] then 
        closestcamlockpart = tostring(BodyPart)
    else
        closestcamlockpart = EvolutionLite["Cam Lock"]["Target Part"] 
    end
end

UpdateFOV = function()
    Circle.Transparency = EvolutionLite.FOV["Silent Aim"].Transparency
    Circle.Radius = EvolutionLite.FOV["Silent Aim"].Size
    Circle.Visible = EvolutionLite.FOV["Silent Aim"].Visible
    Circle.Color = EvolutionLite.FOV["Silent Aim"].Color
    Circle.Thickness = EvolutionLite.FOV["Silent Aim"].Thickness
    Circle.Filled = EvolutionLite.FOV["Silent Aim"].Filled
    Circle.Position = v2.new(mouse.X, mouse.Y + Gui:GetGuiInset().Y)
    Circle2.Transparency = EvolutionLite.FOV["Cam Lock"].Transparency
    Circle2.Radius = EvolutionLite.FOV["Cam Lock"].Size
    Circle2.Visible = EvolutionLite.FOV["Cam Lock"].Visible
    Circle2.Color = EvolutionLite.FOV["Cam Lock"].Color
    Circle2.Thickness = EvolutionLite.FOV["Cam Lock"].Thickness
    Circle2.Filled = EvolutionLite.FOV["Cam Lock"].Filled
    Circle2.Position = v2.new(mouse.X, mouse.Y + Gui:GetGuiInset().Y)
end

local safeplayers = {
    609282484, -- da1nonlyfr
    2023301774, -- cardingfraudalt
    2830056317, -- brokeboys66
    2932662195, -- networkfelony
}

GetClosestPlayer = function()
    local Target = nil
    local Closest = math.huge
    for _, v in pairs(Players:GetPlayers()) do
        if v.Character and v ~= LocalPlayer and v.Character:FindFirstChild("HumanoidRootPart") then
            if not OnScreen(v.Character.HumanoidRootPart) then 
                continue 
            end
            if EvolutionLite.Checks["Visible Check"] and not RayCastCheck(v.Character.HumanoidRootPart, v.Character) then 
                continue 
            end
            if table.find(safeplayers,v.UserId) then 
                continue 
            end
            if EvolutionLite.Checks["K.O Check"] and v.Character:FindFirstChild("BodyEffects") then
                local KoCheck 
                if v.Character.BodyEffects:FindFirstChild("KO") then 
                    KoCheck = v.Character.BodyEffects:FindFirstChild("KO").Value
                elseif v.Character.BodyEffects:FindFirstChild("K.O").Value then
                    KoCheck = v.Character.BodyEffects:FindFirstChild("K.O").Value
                end
                
                if KoCheck then
                    continue
                end
            end
            if EvolutionLite.Checks["Crew Check"] and FindCrew(v) and v.DataFolder.Information:FindFirstChild("Crew").Value == LocalPlayer.DataFolder.Information:FindFirstChild("Crew").Value then
                continue
            end
            if EvolutionLite.Checks["Friend Check"] and game.Players.LocalPlayer:IsFriendsWith(v.UserId) then
                continue
            end


            local Distance = GetMagnitudeFromMouse(v.Character.HumanoidRootPart)

            if (Distance < Closest and Circle.Radius + 10 > Distance) then
                Closest = Distance
                Target = v
            end
        end
    end

    SilentTarget = Target
    
end

GetClosestPlayer2 = function()
    local Target = nil
    local Closest = math.huge
    for _, v in pairs(Players:GetPlayers()) do
        if v.Character and v ~= LocalPlayer and v.Character:FindFirstChild("HumanoidRootPart") then
            if not OnScreen(v.Character.HumanoidRootPart) then 
                continue 
            end
            if EvolutionLite.Checks["Visible Check"] and not RayCastCheck(v.Character.HumanoidRootPart, v.Character) then 
                continue 
            end
            if table.find(safeplayers,v.UserId) then 
                continue 
            end
            if EvolutionLite.Checks["K.O Check"] and v.Character:FindFirstChild("BodyEffects") then
                local KoCheck 
                if v.Character.BodyEffects:FindFirstChild("KO") then 
                    KoCheck = v.Character.BodyEffects:FindFirstChild("KO").Value
                elseif v.Character.BodyEffects:FindFirstChild("K.O").Value then
                    KoCheck = v.Character.BodyEffects:FindFirstChild("K.O").Value
                end
                
                if KoCheck then
                    continue
                end
            end
            if EvolutionLite.Checks["Crew Check"] and FindCrew(v) and v.DataFolder.Information:FindFirstChild("Crew").Value == LocalPlayer.DataFolder.Information:FindFirstChild("Crew").Value then
                continue
            end
                        if EvolutionLite.Checks["Friend Check"] and not game.Players.LocalPlayer:IsFriendsWith(v.UserId) then
                continue
            end

            local Distance = GetMagnitudeFromMouse(v.Character.HumanoidRootPart)

            if (Distance < Closest and Circle2.Radius + 10 > Distance) then
                Closest = Distance
                Target = v
            end
        end
    end

    CamlockTarget = Target
end

--[[game:GetService("RunService").RenderStepped:Connect(function()
    if EvolutionLite["Silent Aim"].Enabled and EvolutionLite["Silent Aim"]["Closest Point"] and SilentTarget ~= nil and SilentTarget.Character then
        GetClosestPointOfPart(game.Players[SilentTarget.Name].Character.Head)
    end
end)]]




RunService.Heartbeat:Connect(function()
    UpdateFOV()
    if EvolutionLite["Silent Aim"].Enabled then 
        if string.lower(EvolutionLite["Silent Aim"].Mode) == "fov" then 
            GetClosestPlayer()
        end
        PredictionValue = GetPrediction()
        if SilentTarget ~= nil then 
            GetClosestBodyPart()
        end
    end
    if EvolutionLite["Cam Lock"].Enabled then 
        if string.lower(EvolutionLite["Cam Lock"].Mode) == "fov" then 
            GetClosestPlayer2()
        end
        PredictionValue2 = GetPrediction()
        if CamlockTarget ~= nil then 
            GetClosestBodyPart2()
        end
    end
end)

mouse.KeyDown:Connect(function(Key)
    local Keybind = EvolutionLite["Silent Aim"]["Target Mode Bind"]:lower()
    local Keybind2 = EvolutionLite["Cam Lock"]["Target Mode Bind"]:lower()
    if (Key == Keybind) and EvolutionLite["Silent Aim"].Enabled then
        if string.lower(EvolutionLite["Silent Aim"].Mode) ==  "target" then 
            if SilentTarget == nil then 
                GetClosestPlayer()
                if EvolutionLite["Silent Aim"].Notify then 
                    notify("Locked onto: "..tostring(SilentTarget))
                end
            else
                SilentTarget = nil
                if EvolutionLite["Silent Aim"].Notify then 
                    notify("Unlocked")
                end
            end
        end
    end
    if (Key == Keybind2 and EvolutionLite["Cam Lock"].Enabled) then
        if string.lower(EvolutionLite["Cam Lock"].Mode) ==  "target_toggle" then 
            if CamlockTarget == nil then 
                GetClosestPlayer2()
                if EvolutionLite["Cam Lock"].Notify then 
                    notify("Locked onto: "..tostring(CamlockTarget))
                end
            else
                CamlockTarget = nil
                if EvolutionLite["Cam Lock"].Notify then 
                    notify("Unlocked")
                end
            end
        end
    end
end)

mouse.KeyDown:Connect(function(Key)
    local Keybind2 = EvolutionLite["Cam Lock"]["Target Mode Bind"]:lower()
    if (Key == Keybind2 and EvolutionLite["Cam Lock"].Enabled) then
        if string.lower(EvolutionLite["Cam Lock"].Mode) ==  "target_hold" then 
            if CamlockTarget == nil then 
                GetClosestPlayer2()
                if EvolutionLite["Cam Lock"].Notify then 
                    notify("Locked onto: "..tostring(CamlockTarget))
                end
            end
        end
    end
end)

mouse.KeyUp:Connect(function(Key)
    local Keybind2 = EvolutionLite["Cam Lock"]["Target Mode Bind"]:lower()
    if (Key == Keybind2) then
        if string.lower(EvolutionLite["Cam Lock"].Mode) ==  "target_hold" then 
            CamlockTarget = nil
            if EvolutionLite["Cam Lock"].Notify then 
                notify("Unlocked")
            end
        end
    end
end)

function nil_check(obj) 
    if game.Players:FindFirstChild(obj.Name) then 
        return true
    else
        return false
    end
end

local function get_calculated_velocity(obj)
    if nil_check(obj) and obj.Character and obj.Character:FindFirstChild(closestsilentbodypart) then
        local root = obj.Character.HumanoidRootPart
        local character = obj.Character 

        local currentPosition = root.Position
        local currentTime = tick() 

        wait(0.00350) 

        local newPosition = root.Position
        local newTime = tick()
        
        local distanceTraveled = (newPosition - currentPosition) 

        local timeInterval = newTime - currentTime
        local velocity = distanceTraveled / timeInterval
        currentPosition = newPosition
        currentTime = newTime
        return velocity
    end
end

local newvel = v3.new(0,0,0)
local newvel2 = v3.new(0,0,0)

RunService.Heartbeat:Connect(function()

    if EvolutionLite.Resolver.Enabled and EvolutionLite["Silent Aim"].Enabled then 
        if EvolutionLite.Resolver.Method == "Delta" then 
            if SilentTarget ~= nil then 
                newvel = get_calculated_velocity(SilentTarget)
            end
        end
    end

    if EvolutionLite.Resolver.Enabled and EvolutionLite["Silent Aim"].Enabled then 
        if EvolutionLite.Resolver.Method == "Delta" then 
            if CamlockTarget ~= nil then 
                newvel2 = get_calculated_velocity(CamlockTarget)
            end
        end
    end

end)



-- // WEEREOROROWOWOWO


LPH_NO_VIRTUALIZE(function()
    local oldIndex = nil
    oldIndex = hookmetamethod(game, "__index", function(self, Index, Check)
        --// FUCK OFF FAGGOTTTSSSS
        local Check = oldIndex(self, Index)
        local OldHit = "hit"
        local Mouseee = mouse
        if self == Mouseee and (Index:lower() == OldHit) then    
            if EvolutionLite["Silent Aim"].Enabled then 
                if SilentTarget ~= nil then
                    local targetbone = SilentTarget.Character[closestsilentbodypart]
                    local offset = v3.new(0,0,0)
                    local TargetCF = targetbone.CFrame
                    local shake = v3.new(0,0,0)
                    local resolver = false

                    if EvolutionLite.Airshot.Enabled then 
                        if SilentTarget.Character.Humanoid.FloorMaterial == Enum.Material.Air then 
                            offset = v3.new(0,EvolutionLite.Airshot["Jump Offset"],0)
                        end
                    end

                    if EvolutionLite.Resolver.Enabled then 
                        resolver = true
                    end
        
        
                    if resolver then 
                        if EvolutionLite.Resolver.Method == "Move Direction" then 
                            targetbone.Velocity = SilentTarget.Character.Humanoid.MoveDirection * 16
                            targetbone.AssemblyLinearVelocity = SilentTarget.Character.Humanoid.MoveDirection * 16
                        elseif EvolutionLite.Resolver.Method == "No Prediction" then 
                            targetbone.Velocity = v3.new(0,0,0)
                            targetbone.AssemblyLinearVelocity = v3.new(0,0,0)
                        elseif EvolutionLite.Resolver.Method == "Delta" or  EvolutionLite.Resolver.Method == "Recalculate" then 
                            targetbone.Velocity = newvel
                            targetbone.AssemblyLinearVelocity = newvel
                        end
                    end
                    if EvolutionLite["Silent Aim"]["Anti Ground Shots"] then 
                        targetbone.Velocity = v3.new(targetbone.Velocity.X, 0, targetbone.Velocity.Z)
                        targetbone.AssemblyLinearVelocity = v3.new(targetbone.Velocity.X, 0, targetbone.Velocity.Z)
                    end
                    -- // oi

                    local Prediction = 
                    TargetCF + 
                    v3.new(0,EvolutionLite["Silent Aim"]["Target Part Offset"],0) + 
                    offset + 
                    targetbone.Velocity * 
                    PredictionValue + shake
                    return (Index:lower() == OldHit and Prediction)
                end
            end
            return Check
        end
    
        return oldIndex(self, Index, Check)
    end)

end)()


-- // uh oh the opps are here

game:GetService("RunService").RenderStepped:Connect(function()
    if EvolutionLite["Global"]["Anti Ground Shots"] == true and CamlockTarget ~= nil and CamlockTarget.Character and CamlockTarget.Character:FindFirstChild(closestcamlockpart) then
        local BE = CamlockTarget.Character.Humanoid
        if BE.Health < 5 then
            CamlockTarget = nil   
            if EvolutionLite["Cam Lock"].Notify then 
                notify("Target Knocked, Unlocked.")
            end
        end
    end
    if EvolutionLite["Cam Lock"].Enabled and CamlockTarget and CamlockTarget.Character and CamlockTarget.Character:FindFirstChild(EvolutionLite["Cam Lock"]["Target Part"]) then 
        if CamlockTarget ~= nil then
            local targetbone = CamlockTarget.Character[closestcamlockpart]
            local offset = v3.new(0,0,0)
            local TargetCF = targetbone.Position
            local smoothing = 1
            local shake = v3.new(0,0,0)
            local resolver = false

            if EvolutionLite["Cam Lock"].Smoothness.Enabled then 
                smoothing = EvolutionLite["Cam Lock"].Smoothness.Value
            end

            if EvolutionLite.Airshot.Enabled then 
                if CamlockTarget.Character.Humanoid.FloorMaterial == Enum.Material.Air then 
                    offset = v3.new(0,EvolutionLite.Airshot["Jump Offset"],0)
                    if EvolutionLite.Airshot["Cam Lock Smoothness"].Enabled then 
                        smoothing = EvolutionLite.Airshot["Cam Lock Smoothness"]["New Smoothness"]
                    end
                end
            end

            if EvolutionLite.Resolver.Enabled then 
                    resolver = true
            end


            if resolver then 
                if EvolutionLite.Resolver.Method == "Move Direction" then 
                    targetbone.Velocity = CamlockTarget.Character.Humanoid.MoveDirection * 16
                    targetbone.AssemblyLinearVelocity = CamlockTarget.Character.Humanoid.MoveDirection * 16
                elseif EvolutionLite.Resolver.Method == "No Prediction" then 
                    targetbone.Velocity = v3.new(0,0,0)
                    targetbone.AssemblyLinearVelocity = v3.new(0,0,0)
                elseif EvolutionLite.Resolver.Method == "Delta" then 
                    targetbone.Velocity = newvel
                    targetbone.AssemblyLinearVelocity = newvel
                end
            end
            if EvolutionLite["Cam Lock"]["Anti Ground Shots"] then 
                targetbone.Velocity = v3.new(targetbone.Velocity.X, 0, targetbone.Velocity.Z)
                targetbone.AssemblyLinearVelocity = v3.new(targetbone.Velocity.X, 0, targetbone.Velocity.Z)
            end
            -- // oi

            local Prediction = 
            TargetCF + 
            v3.new(0,EvolutionLite["Cam Lock"]["Target Part Offset"],0) + 
            offset + 
            targetbone.Velocity * 
            PredictionValue2 + shake
            local Main = CF.new(CurrentCamera.CFrame.p, Prediction)
            CurrentCamera.CFrame = CurrentCamera.CFrame:Lerp(Main, smoothing, EvolutionLite["Cam Lock"]["Easing Style"] , Enum.EasingDirection.InOut)
        end
    end
end)



local Mark = Drawing.new("Text")
Mark.Text = "Evolution v"..utility.Version.." | .gg/"..utility.Invite
Mark.Color = Color3.new(1, 1, 1)
Mark.Visible = true
Mark.Size = 16
Mark.Outline = true
Mark.Font = 3
Mark.Position = v2.new(20, 195)
Mark.ZIndex = 1500

local Pred = Drawing.new("Text")
Pred.Text = "Prediction: "
Pred.Color = Color3.new(1, 1, 1)
Pred.Visible = true
Pred.Size = 16
Pred.Outline = true
Pred.Font = 3
Pred.Position = v2.new(20, 210)
Pred.ZIndex = 1500

local Resolver = Drawing.new("Text")
Resolver.Text = "Resolver: "
Resolver.Color = Color3.new(1, 1, 1)
Resolver.Visible = true
Resolver.Size = 16
Resolver.Outline = true
Resolver.Font = 3
Resolver.Position = v2.new(20, 225)
Resolver.ZIndex = 1500

local Ping22 = Drawing.new("Text")
Ping22.Text = "Ping: "
Ping22.Color = Color3.new(1, 1, 1)
Ping22.Visible = true
Ping22.Size = 16
Ping22.Outline = true
Ping22.Font = 3
Ping22.Position = v2.new(20, 240)
Ping22.ZIndex = 1500

local silenttarg = Drawing.new("Text")
silenttarg.Text = "Silent Aim Target: "
silenttarg.Color = Color3.new(1, 1, 1)
silenttarg.Visible = true
silenttarg.Size = 16
silenttarg.Outline = true
silenttarg.Font = 3
silenttarg.Position = v2.new(20, 255)
silenttarg.ZIndex = 1500


local camlocktarg = Drawing.new("Text")
camlocktarg.Text = "Camlock Target: "
camlocktarg.Color = Color3.new(1, 1, 1)
camlocktarg.Visible = true
camlocktarg.Size = 16
camlocktarg.Outline = true
camlocktarg.Font = 3
camlocktarg.Position = v2.new(20, 270)
camlocktarg.ZIndex = 1500

game:GetService("RunService").Heartbeat:Connect(function()
    local ping = math.floor(game.Stats.Network.ServerStatsItem["Data Ping"]:GetValue())
    utility.Ping = ping

    if EvolutionLite.Options.Stats then 
        Mark.Visible = true
        Pred.Visible = true
        Pred.Text = "Prediction: "..tostring(PredictionValue)
        Resolver.Visible = true
        Resolver.Text = "Resolver: "..tostring(EvolutionLite.Resolver.Enabled).." | "..EvolutionLite.Resolver.Method
        Ping22.Visible = true
        Ping22.Text = "Ping: "..tostring(utility.Ping).."ms"
        silenttarg.Visible = true
        silenttarg.Text = "Silent Aim Target: "..tostring(SilentTarget).." | "..closestsilentbodypart
        camlocktarg.Visible = true
        camlocktarg.Text = "Camlock Target: "..tostring(CamlockTarget).." | "..closestcamlockpart
    else
        Mark.Visible = false
        Pred.Visible = false
        Resolver.Visible = false
        Ping22.Visible = false
        silenttarg.Visible = false
        camlocktarg.Visible = false
    end
end)



notify("Evolution Lite V3 has loaded.")