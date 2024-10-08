local instance = {}

local Mouse = game.Players.LocalPlayer:GetMouse()
local GuiInset = game:GetService("GuiService"):GetGuiInset()
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local CurrentCamera = workspace.CurrentCamera
local Mouse = LocalPlayer:GetMouse()

local SilentFOV = Drawing.new("Circle")
SilentFOV.Visible = false
SilentFOV.Filled = false
SilentFOV.Transparency = 1
SilentFOV.Thickness = 1

function network(plr)
	return plr and plr.Character and plr.Character:FindFirstChild("HumanoidRootPart") ~= nil and plr.Character:FindFirstChild("Humanoid") ~= nil and plr.Character:FindFirstChild("Head") ~= nil and true or false
end

function alive(plr)
    if plr and plr.Character and plr.Character:FindFirstChild("HumanoidRootPart") ~= nil and plr.Character:FindFirstChild("Humanoid") ~= nil and plr.Character:FindFirstChild("Head") ~= nil then
        return true
    end
    return false
end

function grabbed(plr)
    if network(plr) then 
        return plr.Character:FindFirstChild("GRABBING_CONSTRAINT") and true or false
    end
    return false
end

function koed(plr)
    if network(plr) then
        return plr.Character.BodyEffects["K.O"].Value and true or false
    end
    return false
end

function wallCheck(destination, ignore)
    if (Evolution.Global.Wallcheck) then
        local Origin = CurrentCamera.CFrame.p
        local CheckRay = Ray.new(Origin, destination - Origin)
        local Hit = game:GetService("Workspace"):FindPartOnRayWithIgnoreList(CheckRay, ignore)
        return Hit == nil
    else
        return true
    end
end

function distance()
    local Target = nil
    local Distance = math.huge
    for i, v in pairs(Players:GetPlayers()) do
        if v ~= game.Players.LocalPlayer and alive(LocalPlayer) and alive(v) then
            local DistanceFromPlayer = (v.Character.HumanoidRootPart.Position - LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
            if Distance > DistanceFromPlayer then
                Target = v
                Distance = DistanceFromPlayer
            end
        end
    end
    return Target, Distance
end

function cursor()
    local Target = nil
    local Distance = math.huge
    for i, v in pairs(Players:GetPlayers()) do
        if v ~= game.Players.LocalPlayer and alive(game.Players.LocalPlayer) and alive(v) then
            local RootPosition, RootVisible = CurrentCamera:WorldToViewportPoint(v.Character.HumanoidRootPart.Position)
            local DistanceFromMouse = (Vector2.new(RootPosition.X, RootPosition.Y) - Vector2.new(Mouse.X, Mouse.Y)).Magnitude
            if RootVisible and Distance > DistanceFromMouse then
                Target = v
                Distance = DistanceFromMouse
            end
        end
    end
    return Target, Distance
end

function getnearest(Type) 
    if Type == "Cursor" then 
        return cursor()
    elseif Type == "Distance" then 
        return distance()
    end
end


function updatefov() 
    SilentFOV.Radius = Evolution.FOV.Radius
    if Evolution.FOV.Position == "Cursor" then 
        SilentFOV.Position = Vector2.new(Mouse.X, Mouse.Y + GuiInset.Y)
    elseif Evolution.FOV.Position == "Center" then 
        local x = math.floor(workspace.CurrentCamera.ViewportSize.X * 0.5)
        local y = math.floor(workspace.CurrentCamera.ViewportSize.Y * 0.5)
        SilentFOV.Position = Vector2.new(x,y)
    end
    SilentFOV.Visible = Evolution.FOV.Visible

    SilentFOV.Color = Evolution.FOV.Color
end

game:GetService("RunService").RenderStepped:Connect(function()
    updatefov()
end)

if game.PlaceId == 2788229376 or game.PlaceId == 7213786345 then -- Da Hood
    local jew
    jew = hookmetamethod(game, "__index", newcclosure(function(t, k)
        if t == Mouse and tostring(k) == "Hit" or tostring(k) == "Target" then
            if Evolution.SilentAim.Enabled then
                local target, pos = getnearest(Evolution.SilentAim.GetNearestMethod)
                local targetbone
                if target and 
                (Evolution.FOV.Radius > pos) and 
                (not Evolution.Global.WallCheck or wallCheck(target.Character.HumanoidRootPart.Position, {game.Players.LocalPlayer.Character, target.Character})) and 
                (not koed(target)) and 
                (not grabbed(target)) then
                    if Evolution.SilentAim.Airshot.Enabled then 
                        if target.Character.Humanoid.FloorMaterial == Enum.Material.Air then 
                            targetbone = target.Character[Evolution.SilentAim.Airshot.TargetBone]
                        else
                            targetbone = target.Character[Evolution.SilentAim.TargetBone]
                        end
                    else
                        targetbone = target.Character[Evolution.SilentAim.TargetBone]
                    end
                    local Prediction
                    if Evolution.Resolver.DesyncResolver then 
                        if Evolution.Resolver.CustomResolverPrediction then 
                            Prediction = targetbone.CFrame + target.Character.Humanoid.MoveDirection * Evolution.Global.Prediction * Evolution.Resolver.CustomResolverPrediction.Prediction
                        else
                            Prediction = targetbone.CFrame + target.Character.Humanoid.MoveDirection * Evolution.Global.Prediction * 18
                        end
                    else
                        Prediction = targetbone.CFrame + targetbone.Velocity * Evolution.Global.Prediction
                    end
                    return tostring(k) == "Hit" and Prediction or tostring(k) == "Target" and targetbone
                end   
            end
        end

        return jew(t, k)
    end))
elseif game.PlaceId == 9825515356 then -- Hood Customs
    local oldIndex = nil
    oldIndex = hookmetamethod(game, "__index", function(self, Index, Check)
        local Check = oldIndex(self, Index)
        local mouse = Mouse
        local hit = "hit"
        local OldHit = hit
        if self == mouse and (Index:lower() == OldHit) then    
                local target, pos = getnearest(Evolution.SilentAim.GetNearestMethod)
                local targetbone
                if target and 
                    (Evolution.FOV.Radius > pos) and 
                    (not Evolution.Global.WallCheck or wallCheck(target.Character.HumanoidRootPart.Position, {game.Players.LocalPlayer.Character, target.Character})) and 
                    (not koed(target)) and 
                    (not grabbed(target)) then
                        if Evolution.SilentAim.Airshot.Enabled then 
                            if target.Character.Humanoid.FloorMaterial == Enum.Material.Air then 
                                targetbone = target.Character[Evolution.SilentAim.Airshot.TargetBone]
                            else
                                targetbone = target.Character[Evolution.SilentAim.TargetBone]
                            end
                        else
                            targetbone = target.Character[Evolution.SilentAim.TargetBone]
                        end
                        local Prediction
                        if Evolution.Resolver.DesyncResolver then 
                            if Evolution.Resolver.CustomResolverPrediction then 
                                Prediction = targetbone.CFrame + target.Character.Humanoid.MoveDirection * Evolution.Global.Prediction * Evolution.Resolver.CustomResolverPrediction.Prediction
                            else
                                Prediction = targetbone.CFrame + target.Character.Humanoid.MoveDirection * Evolution.Global.Prediction * 18
                            end
                        else
                            Prediction = targetbone.CFrame + targetbone.Velocity * Evolution.Global.Prediction
                        end
                        return (Index:lower() == OldHit and Prediction)
            end
            return Check
        end
    
        return oldIndex(self, Index, Check)
    end)
end
