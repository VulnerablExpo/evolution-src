local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Consistt/Ui/main/UnLeaked"))()
local HitpartTable = {"Head", "UpperTorso", "HumanoidRootPart", "LowerTorso"}
local Styles = {"Linear", "Sine", "Back", "Quad", "Quart", "Quint", "Bounce", "Elastic", "Exponential", "Circular", "Cubic"}
                
library.rank = "Buyer"
library.title = ""


local Init = library:Init()

local Global = Init:NewTab("Global")


Global:NewSection("Checks")

Global:NewToggle("Wall Check", Evolution.Global.WallCheck, function(v)
    Evolution.Global.WallCheck = v
end)

Global:NewToggle("Crew Check", Evolution.Global.CrewCheck, function(v)
    Evolution.Global.CrewCheck = v
end)

Global:NewToggle("Knocked Check", Evolution.Global.KOCheck, function(v)
    Evolution.Global.KOCheck = v
end)

Global:NewSection("Prediction")

Global:NewToggle("Auto Prediction", Evolution.Global.AutoPredict, function(v)
    Evolution.Global.AutoPredict = v
end)

Global:NewTextbox("Custom Prediction", tostring(Evolution.Global.Prediction), "EX: 0.155", "all", "small", true, false, function(v)
    Evolution.Global.Prediction = tonumber(v)
end)

Global:NewSection("Other")

Global:NewToggle("Anti Ground Shots", Evolution.Global.AntiGroundShot, function(v)
    Evolution.Global.AntiGroundShot = v
end)

Global:NewToggle("Unlock On Knocked", Evolution.Global.UnlockOnKO, function(v)
    Evolution.Global.UnlockOnKO = v
end)

local Silent = Init:NewTab("Silent Aim")

Silent:NewToggle("Enabled", Evolution.SilentAim.Enabled, function(v)
    Evolution.SilentAim.Enabled = v
end)

Silent:NewToggle("Nearest Cursor Point", Evolution.SilentAim.NearestCursorPoint, function(v)
    Evolution.SilentAim.NearestCursorPoint = v
end)

Silent:NewToggle("Allow Notifications", Evolution.SilentAim.AllowNotifications, function(v)
    Evolution.SilentAim.AllowNotifications = v
end)

Silent:NewToggle("Use Keybind", Evolution.SilentAim.Keybind, function(v)
    Evolution.SilentAim.Keybind = v
end)

Silent:NewTextbox("KeyBind", Evolution.SilentAim.Key, "EX: G", "lower", "small", true, true, function(v)
    Evolution.SilentAim.Key = v
end)

Silent:NewSlider("Hit Chance", "%", false, "/", {min = 1, max = 100, default = Evolution.SilentAim.HitChance}, function(v)
    Evolution.SilentAim.HitChance = v
end)

Silent:NewSelector("Target Bone", Evolution.SilentAim.TargetBone, HitpartTable, function(v)
    Evolution.SilentAim.TargetBone = v
end)

Silent:NewSection("Anti Aim Detection")

Silent:NewToggle("Enabled", Evolution.SilentAim.DetectAntiAim.Enabled, function(v)
    Evolution.SilentAim.DetectAntiAim.Enabled = v
end)

Silent:NewSlider("Minimum Velocity", "", false, "/", {min = -100, max = 100, default = Evolution.SilentAim.DetectAntiAim.Min}, function(v)
    Evolution.SilentAim.DetectAntiAim.Min = v
end)

Silent:NewSlider("Maxiumum Velocity", "", false, "/", {min = -100, max = 100, default = Evolution.SilentAim.DetectAntiAim.Max}, function(v)
    Evolution.SilentAim.DetectAntiAim.Max = v
end)

Silent:NewSection("AirShot")

Silent:NewToggle("Enabled", Evolution.SilentAim.Airshot.Enabled, function(v)
    Evolution.SilentAim.Airshot.Enabled = v
end)

Silent:NewSelector("Target Bone", Evolution.SilentAim.Airshot.TargetBone, HitpartTable, function(v)
    Evolution.SilentAim.Airshot.TargetBone = v
end)


-- // Camlock

local Camlocck = Init:NewTab("Cam Lock")

Camlocck:NewToggle("Enabled", Evolution.CamLock.Enabled, function(v)
    Evolution.CamLock.Enabled = v
end)


Camlocck:NewToggle("Allow Notifications", Evolution.CamLock.AllowNotifications, function(v)
    Evolution.CamLock.AllowNotifications = v
end)

Camlocck:NewTextbox("KeyBind", Evolution.CamLock.Key, "EX: G", "lower", "small", true, true, function(v)
    Evolution.CamLock.Key = v
end)

Camlocck:NewSection("Smoothness Settings")

Camlocck:NewToggle("Smoothness", Evolution.CamLock.UseSmoothness, function(v)
    Evolution.CamLock.UseSmoothness = v
end)

Camlocck:NewTextbox("Smoothness Value", Evolution.CamLock.Smoothness, "EX: 0.058", "lower", "small", true, true, function(v)
    Evolution.CamLock.Smoothness = v
end)

Camlocck:NewSection("Easing Styles")

Camlocck:NewToggle("Jump Ease", Evolution.CamLock.JumpEase, function(v)
    Evolution.CamLock.JumpEase = v
end)

Camlocck:NewSelector("Jump Easing Style", Evolution.CamLock.JumpEaseStyle, Styles, function(v)
    Evolution.CamLock.JumpEaseStyle = v
end)

Camlocck:NewSelector("Easing Style", Evolution.CamLock.EaseStyle, Styles, function(v)
    Evolution.CamLock.EaseStyle = v
end)



Camlocck:NewSelector("Target Bone", Evolution.CamLock.TargetBone, HitpartTable, function(v)
    Evolution.CamLock.TargetBone = v
end)

Camlocck:NewSection("Anti Aim Detection")

Camlocck:NewToggle("Enabled", Evolution.CamLock.DetectAntiAim.Enabled, function(v)
    Evolution.CamLock.DetectAntiAim.Enabled = v
end)

Camlocck:NewSlider("Minimum Velocity", "", false, "/", {min = -100, max = 100, default = Evolution.CamLock.DetectAntiAim.Min}, function(v)
    Evolution.CamLock.DetectAntiAim.Min = v
end)

Camlocck:NewSlider("Maxiumum Velocity", "", false, "/", {min = -100, max = 100, default = Evolution.CamLock.DetectAntiAim.Max}, function(v)
    Evolution.CamLock.DetectAntiAim.Max = v
end)

Camlocck:NewSection("AirShot")

Camlocck:NewToggle("Enabled", Evolution.CamLock.Airshot.Enabled, function(v)
    Evolution.CamLock.Airshot.Enabled = v
end)

Camlocck:NewSelector("Target Bone", Evolution.CamLock.Airshot.TargetBone, HitpartTable, function(v)
    Evolution.CamLock.Airshot.TargetBone = v
end)

Camlocck:NewToggle("Shake", Evolution.CamLock.Shake, function(v)
    Evolution.CamLock.Shake = v
end)

Camlocck:NewSlider("Shake Value", "", false, "/", {min = 1, max = 25, default = Evolution.CamLock.ShakeValue}, function(v)
    Evolution.CamLock.ShakeValue = v
end)

-- // FOV Settings

local FOVV = Init:NewTab("Field of View")

FOVV:NewSection("Silent Aim FOV")
FOVV:NewToggle("Show", Evolution.FOV.Silent.Visible, function(v)
    Evolution.FOV.Silent.Visible = v
end)
FOVV:NewToggle("Filled (ugly)", Evolution.FOV.Silent.Filled, function(v)
    Evolution.FOV.Silent.Filled = v
end)
FOVV:NewSlider("Size", "", false, "/", {min = 1, max = 500, default = Evolution.FOV.Silent.Size}, function(v)
    Evolution.FOV.Silent.Size = v
end)

FOVV:NewSection("Cam Lock FOV")
FOVV:NewToggle("Show", Evolution.FOV.CamLock.Visible, function(v)
    Evolution.FOV.CamLock.Visible = v
end)
FOVV:NewToggle("Filled (ugly)", Evolution.FOV.CamLock.Filled, function(v)
    Evolution.FOV.CamLock.Filled = v
end)
FOVV:NewSlider("Size", "", false, "/", {min = 1, max = 500, default = Evolution.FOV.CamLock.Size}, function(v)
    Evolution.FOV.CamLock.Size = v
end)

local Resolver = Init:NewTab("Resolver")
Resolver:NewSection("Resolver")
Resolver:NewToggle("Aim Viewer Bypass", Evolution.Resolver.AimViewBypass, function(v)
    Evolution.Resolver.AimViewBypass = v
end)
Resolver:NewToggle("Desync Resolver", Evolution.Resolver.DesyncResolver, function(v)
    Evolution.Resolver.DesyncResolver = v
end)

local Extra = Init:NewTab("Extra")

Extra:NewSection("Memory Spoofer")

Extra:NewToggle("Enabled", Evolution.MemorySpoofer.Enabled, function(v)
    Evolution.MemorySpoofer.Enabled = v
end)

Extra:NewSlider("Minimum", "MB", false, "/", {min = 100, max = 2000, default = Evolution.MemorySpoofer.Values.Minimum}, function(v)
    Evolution.MemorySpoofer.Values.Minimum = v
end)

Extra:NewSlider("Maximum", "MB", false, "/", {min = 100, max = 2000, default = Evolution.MemorySpoofer.Values.Maximum}, function(v)
    Evolution.MemorySpoofer.Values.Maximum = v
end)

Extra:NewSection("Macro")

Extra:NewToggle("Enabled", Evolution.Macro.Enabled, function(v)
    Evolution.Macro.Enabled = v
end)

Extra:NewToggle("Bypass Macro Abuse (Mouse Method)", Evolution.Macro.BypassMacroAbuse, function(v)
    Evolution.Macro.BypassMacroAbuse = v
end)

Extra:NewTextbox("KeyBind", Evolution.Macro.KeyBind, "EX: X", "lower", "small", true, true, function(v)
    Evolution.Macro.KeyBind = v
end)

Extra:NewSection("Emotes")

Extra:NewToggle("Lay", Evolution.Emotes.Lay, function(v)
    Evolution.Emotes.Lay = v
end)

Extra:NewToggle("Greet", Evolution.Emotes.Greet, function(v)
    Evolution.Emotes.Greet = v
end)

Extra:NewToggle("Speed", Evolution.Emotes.Speed, function(v)
    Evolution.Emotes.Speed = v
end)

Extra:NewToggle("Sturdy", Evolution.Emotes.Sturdy, function(v)
    Evolution.Emotes.Sturdy = v
end)

Extra:NewToggle("Griddy", Evolution.Emotes.Griddy, function(v)
    Evolution.Emotes.Griddy = v
end)

Extra:NewSection("Extra Settings")

Extra:NewToggle("Disable Shadows", Evolution.Settings.DisableShadows, function(v)
    Evolution.Settings.DisableShadows = v
end)

Extra:NewToggle("Mute Boomboxes", Evolution.Settings.MuteBoomBox, function(v)
    Evolution.Settings.MuteBoomBox = v
end)


Extra:NewToggle("Auto Reload", Evolution.Settings.AutoReload, function(v)
    Evolution.Settings.AutoReload = v
end)


Extra:NewToggle("Show Stats", Evolution.Settings.ShowStats, function(v)
    Evolution.Settings.ShowStats = v
end)

Extra:NewSection("Auto 360")

Extra:NewToggle("Enabled", Evolution.Misc.Auto360.Enabled, function(v)
    Evolution.Misc.Auto360.Enabled = v
end)

Extra:NewTextbox("KeyBind", Evolution.Misc.Auto360.SpinKeybind, "EX: Q", "lower", "small", true, true, function(v)
    Evolution.Misc.Auto360.SpinKeybind = v
end)

Extra:NewSlider("Speed", "", false, "/", {min = 1, max = 100, default = Evolution.Misc.Auto360.SpinSpeed}, function(v)
    Evolution.Misc.Auto360.SpinSpeed = v
end)

Extra:NewSection("Fake Spike")

Extra:NewToggle("Enabled", Evolution.Misc.FakeSpike.Enabled, function(v)
    Evolution.Misc.FakeSpike.Enabled = v
end)

Extra:NewTextbox("KeyBind", Evolution.Misc.FakeSpike.FakeSpikeKeybind, "EX: Q", "lower", "small", true, true, function(v)
    Evolution.Misc.FakeSpike.FakeSpikeKeybind = v
end)

Extra:NewSlider("Duration", "ms", false, "/", {min = 100, max = 5000, default = Evolution.Misc.FakeSpike.SpikeDuration}, function(v)
    Evolution.Misc.FakeSpike.SpikeDuration = v / 1000
end)






-- // Changing title

local increment = 0.2
local waittime = 5
task.spawn(function()
    while true do 
        Init:Text("E")
        wait(increment)
        Init:Text("Ev")
        wait(increment)
        Init:Text("Evo")
        wait(increment)
        Init:Text("Evol")
        wait(increment)
        Init:Text("Evolu")
        wait(increment)
        Init:Text("Evolut")
        wait(increment)
        Init:Text("Evoluti")
        wait(increment)
        Init:Text("Evolutio")
        wait(increment)
        Init:Text("Evolution")
        wait(increment)
        Init:Text("Evolution ")
        wait(increment)
        Init:Text("Evolution ;")
        wait(increment)
        Init:Text("Evolution ; ")
        wait(increment)
        Init:Text("Evolution ; #")
        wait(increment)
        Init:Text("Evolution ; #1")
        wait(waittime)
        Init:Text(" volution ; #1")
        wait(increment)
        Init:Text("  olution ; #1")
        wait(increment)
        Init:Text("   lution ; #1")
        wait(increment)
        Init:Text("    ution ; #1")
        wait(increment)
        Init:Text("     tion ; #1")
        wait(increment)
        Init:Text("      ion ; #1")
        wait(increment)
        Init:Text("       on ; #1")
        wait(increment)
        Init:Text("        n ; #1")
        wait(increment)
        Init:Text("          ; #1")
        wait(increment)
        Init:Text("          ; #1")
        wait(increment)
        Init:Text("            #1")
        wait(increment)
        Init:Text("            #1")
        wait(increment)
        Init:Text("             1")
        wait(increment)
        Init:Text("")
        wait(increment)

        Init:Text("x")
        wait(increment)
        Init:Text("xz")
        wait(increment)
        Init:Text("xz ")
        wait(increment)
        Init:Text("xz w")
        wait(increment)
        Init:Text("xz wa")
        wait(increment)
        Init:Text("xz was")
        wait(increment)
        Init:Text("xz was ")
        wait(increment)
        Init:Text("xz was h")
        wait(increment)
        Init:Text("xz was he")
        wait(increment)
        Init:Text("xz was her")
        wait(increment)
        Init:Text("xz was here")
        wait(waittime)
        Init:Text(" z was here")
        wait(increment)
        Init:Text("   was here")
        wait(increment)
        Init:Text("   was here")
        wait(increment)
        Init:Text("    as here")
        wait(increment)
        Init:Text("     s here")
        wait(increment)
        Init:Text("       here")
        wait(increment)
        Init:Text("       here")
        wait(increment)
        Init:Text("        ere")
        wait(increment)
        Init:Text("         re")
        wait(increment)
        Init:Text("          e")
        wait(increment)
        Init:Text("")
        wait(increment)

        Init:Text("#")
        wait(increment)
        Init:Text("#1")
        wait(increment)
        Init:Text("#1 ")
        wait(increment)
        Init:Text("#1 S")
        wait(increment)
        Init:Text("#1 St")
        wait(increment)
        Init:Text("#1 Str")
        wait(increment)
        Init:Text("#1 Stre")
        wait(increment)
        Init:Text("#1 Strea")
        wait(increment)
        Init:Text("#1 Stream")
        wait(increment)
        Init:Text("#1 Streama")
        wait(increment)
        Init:Text("#1 Streamab")
        wait(increment)
        Init:Text("#1 Streamabl")
        wait(increment)
        Init:Text("#1 Streamable")
        wait(waittime)
        Init:Text(" 1 Streamable")
        wait(increment)
        Init:Text("   Streamable")
        wait(increment)
        Init:Text("   Streamable")
        wait(increment)
        Init:Text("    treamable")
        wait(increment)
        Init:Text("     reamable")
        wait(increment)
        Init:Text("      eamable")
        wait(increment)
        Init:Text("       amable")
        wait(increment)
        Init:Text("        mable")
        wait(increment)
        Init:Text("         able")
        wait(increment)
        Init:Text("          ble")
        wait(increment)
        Init:Text("           le")
        wait(increment)
        Init:Text("            e")
        wait(increment)
        Init:Text("")
        wait(increment)

        Init:Text(".")
        wait(increment)
        Init:Text(".g")
        wait(increment)
        Init:Text(".gg")
        wait(increment)
        Init:Text(".gg/")
        wait(increment)
        Init:Text(".gg/c")
        wait(increment)
        Init:Text(".gg/ca")
        wait(increment)
        Init:Text(".gg/cam")
        wait(increment)
        Init:Text(".gg/caml")
        wait(increment)
        Init:Text(".gg/camlo")
        wait(increment)
        Init:Text(".gg/camloc")
        wait(increment)
        Init:Text(".gg/camlock")
        wait(waittime)
        Init:Text(" gg/camlock")
        wait(increment)
        Init:Text("  g/camlock")
        wait(increment)
        Init:Text("   /camlock")
        wait(increment)
        Init:Text("    camlock")
        wait(increment)
        Init:Text("     amlock")
        wait(increment)
        Init:Text("      mlock")
        wait(increment)
        Init:Text("       lock")
        wait(increment)
        Init:Text("        ock")
        wait(increment)
        Init:Text("         ck")
        wait(increment)
        Init:Text("          k")
        wait(increment)
        Init:Text("")
        wait(increment)
    end
end)

Init:UpdateKeybind(Evolution.MainSettings.InternalUi.KeyBind)