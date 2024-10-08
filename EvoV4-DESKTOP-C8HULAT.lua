getgenv().Evolution = {
    ["Settings"] = {
        ["Table Version"] = "4.0.0", -- // Ignore
        ["Intro"] = true, -- // Will show a short intro
        ["Join Discord"] = true, -- // Will Join Discord
        ["Global Notifications"] = true, -- // Toggles all notifications
    },
    ["Aiming"] = {
        ["Silent Aim"] = {
            ["Enabled"] = false, -- // Silent Aim
            ["Bind"] = "Q", -- // Keybind for Target mode
            ["Prediction"] = 0.1248, -- // Prediction Value
            ["Airshot Offset"] = -1.8, -- // Y offset (-1.8:Torso -2.6:LowerTorso)
            ["Hit Parts"] = {"Head","HumanoidRootPart"}, -- // Parts you want to lock onto eg: "Head", "HumanoidRootPart"
            ["Nearest Point"] = false, -- // Will hit the nearest point on the targets character
        },
        ["Aim Assist"] = {
            ["Enabled"] = false, -- // Aim Assist
            ["Mode"] = "Target" -- // Select mode (FOV, Target)
            ["Method"] = "Camera", -- // Select mode (Camera, Mouse)
            ["Bind"] = "C",  -- // Keybind for Aim Assist
            ["Prediction"] = 0.1248, -- // Prediction Value
            ["Airshot Offset"] = -1.8, -- // Y offset (-1.8:Torso -2.6:LowerTorso)
            ["Hit Parts"] = {"Head","HumanoidRootPart"}, -- // Parts you want to lock onto eg: "Head", "HumanoidRootPart"
            ["Nearest Point"] = false, -- // Will hit the nearest point on the targets character
            ["Smoothing"] = {
                ["Enabled"] = true,
                ["Value"] = 0.0125, -- // Normal Smoothness Value
                ["Airshot Value"] = 0.0115, -- // Airshot Smoothness Value
            },
            ["Unlock When"] = {
                ["Typing"] = true,
                ["Reloading"] = false,
                ["Unequipped"] = false,
            },
            ["Easing"] = {
                ["Easing Style"] = "Linear", -- // https://create.roblox.com/docs/reference/engine/enums/EasingStyle
                ["Airshot Easing Style"] = "Linear", -- // https://create.roblox.com/docs/reference/engine/enums/EasingStyle
            },
            ["Shake"] = {
                ["Enabled"] = false, -- // Will Shake your camera randomly when targeting
                ["X"] = 5, -- // Max X Position
                ["Y"] = 5, -- // Max Y Position
                ["Z"] = 5, -- // Max Z Position
            },
            ["Frame Skip"] = {
                ["Enabled"] = true, -- // Flicks to targets part
                ["Strength"] = 100, -- // How much power it flicks to targets part
                ["Use Prediction"] = false, -- // Adds prediction for Frame skip
                ["Hit Part"] = "Head", -- // Any Hitpart (Head, UpperTorso, HumanoidRootPart, LowerTorso) 
                ["Bind"] = "X" -- // Keybind to activate frame skip
            }
        },
        ["Checks"] = {
            ["Wall"] = true, -- // Will check if target is behind a wall
            ["Visible"] = true, -- // Unlock if target isn't visible anymore
            ["Force Field"] = true, -- // Won't lock on if target just spawned
            ["K.O"] = true, -- // Will check if target is knocked or grabbed
            ["Friend"] = false, -- // Will check if target is your friend if not will not lock
            ["Crew"] = false, -- // Will check if target is in your crew
            ["Anti Ground Shots"] = true, -- // Prevents ground shots
            ["Distance"] = { -- // Not lock onto people if they are too far away
                ["Enabled"] = false,
                ["Max Distance"] = 200, -- // Studs
            }
        },
        ["Trigger Bot"] = {
            ["Enabled"] = false,
        },
        ["Resolver"] = {
            ["Enabled"] = false,
            ["Method"] = "Delta", -- // Delta, Recalc, No Pred
        },
    },
    ["Gun Sorting"] = {
        ["Enabled"] = true, -- // Sorts the guns in your inventory
        ["Bind"] = "Z", -- // Keybind to sort
        ["Delete Extra"] = false, -- // Will destroy any tools that are not sorted (broken)
        ["Slots"] = { -- // You can add up to 9
            "[Double-Barrel SG]",
            "[Revolver]",
            "[TacticalShotgun]",
            "[Shotgun]",
            "[Katana]",
        }
    },
}
if not LPH_NO_VIRTUALIZE then 
    LPH_NO_VIRTUALIZE = function(f) return f end
end

--[[
    ///////////////////////////////
    //  © 2022 - 2024 Evolution  //
    //    All rights reserved    //
    ///////////////////////////////
    // This material may not be  //
    //   reproduced, displayed,  //
    //  modified or distributed  //
    // without the express prior //
    // written permission of the //
    //   the copyright holder.   //
    ///////////////////////////////
]]

if EvoV4Loaded then 
    return
end

getgenv().EvoV4Loaded = true

local Evo = {
    Invite = "camlock",
    BackupInvite = "",
    Folder = "EvoV4",
    Version = "4.0.0",
    Ping = 0,
    FPS = 0,
}

local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local Workspace = game:GetService("Workspace")
local Gui = game:GetService("GuiService")
local LocalPlayer = Players.LocalPlayer
local mouse = LocalPlayer:GetMouse()
local SilentTarget = nil
local AimAssistTarget = nil
local ClosestSilentPoint = nil
local ClosestAimAssisPoint = nil
local CurrentCamera = Workspace.CurrentCamera

ClearConsole = function()
    coroutine.resume(coroutine.create(function()
        local DevConsole = game:GetService("CoreGui"):WaitForChild("DevConsoleMaster")
        local DevWindow = DevConsole:WaitForChild("DevConsoleWindow")
        local DevUI = DevWindow:WaitForChild("DevConsoleUI")
        local MainView = DevUI:WaitForChild("MainView")
        local ClientLog = MainView:WaitForChild("ClientLog")
        for _, v in pairs(ClientLog:GetChildren()) do
            if v:IsA("GuiObject") and v.Name == v.Name:match("%d+") then
                v:Destroy()
            end
        end
    end))
end


WTS = function(Object)
	local ObjectVector = CurrentCamera:WorldToScreenPoint(Object.Position)
	return Vector2.new(ObjectVector.X, ObjectVector.Y)
end

Filter = function(obj)
	if (obj:IsA('BasePart')) then
		return true
	end
end

mousePosv2 = function()
	return Vector2.new(mouse.X, mouse.Y) 
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

GetMagnitudeFromMouse = function(Part)
    local PartPos, OnScreen = CurrentCamera:WorldToScreenPoint(Part.Position)
    if OnScreen then
        local Magnitude = (Vector2.new(PartPos.X, PartPos.Y) - Vector2.new(mouse.X, mouse.Y)).Magnitude
        return Magnitude
    end
    return math.huge
end

GetClosestBodyPartSilent = function(Char)
    local Distance = math.huge
    local ClosestPart = nil
    local Filterd = {}
    local Parts = Char:GetChildren()
    for _, v in pairs(Parts) do
        if Evolution["Silent Aim"]["Hit Parts"] and table.find(Evolution["Silent Aim"]["Hit Parts"], v.Name) == nil then continue end
        if v:IsA("MeshPart") and v:IsA("BasePart") and IsOnScreen2(v) then
            table.insert(Filterd, v)
            for _, v in pairs(Filterd) do                
                local Magnitude = GetMagnitudeFromMouse(v)
                if Magnitude < Distance then
                    ClosestPart = v
                    Distance = Magnitude
                end
            end
        end
    end
    return ClosestPart
end

GetClosestBodyPartAimAssist = function(Char)
    local Distance = math.huge
    local ClosestPart = nil
    local Filterd = {}
    local Parts = Char:GetChildren()
    for _, v in pairs(Parts) do
        if Evolution["Aim Assist"]["Hitparts"] and table.find(Evolution["Aim Assist"]["Hitparts"], v.Name) == nil then continue end
        if v:IsA("MeshPart") and v:IsA("BasePart") and IsOnScreen2(v) then
            table.insert(Filterd, v)
            for _, v in pairs(Filterd) do                
                local Magnitude = GetMagnitudeFromMouse(v)
                if Magnitude < Distance then
                    ClosestPart = v
                    Distance = Magnitude
                end
            end
        end
    end
    return ClosestPart
end

GetClosestPoint = function(Part)
    local mouseray = mouse.UnitRay
    mouseray = mouseray.Origin + (mouseray.Direction * (Part.Position - mouseray.Origin).Magnitude)
    local point =
        (mouseray.Y >= (Part.Position - Part.Size / 2).Y and mouseray.Y <= (Part.Position + Part.Size / 2).Y) and
            (Part.Position + Vector3.new(0, -Part.Position.Y + mouseray.Y, 0)) or Part.Position
    local check = RaycastParams.new()
    check.FilterType = Enum.RaycastFilterType.Whitelist
    check.FilterDescendantsInstances = {Part}
    local ray = game:GetService("Workspace"):Raycast(mouseray, (point - mouseray), check)
    if ray then
        return ray.Position
    else
        return mouse.Hit.Position
    end
end

SilentActivated = LPH_NO_VIRTUALIZE(function()
    if Evolution["Silent Aim"].Enabled then 
        
    end
end)


