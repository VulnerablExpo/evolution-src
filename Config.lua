script_key = "KeyHere"; -- // The key you were granted.

getgenv().Evolution = {
    ConfigVersion = "0.0.3b", -- // Dont touch this is to make sure you're using the correct config loader
    MainSettings = {
        Notificaions = {
            Enabled = true, -- // Enable Notifications
            Duration = 3,   -- // How long notifications stay
            Mode = "xz", -- // Options: Roblox, Print, Rconsole, Drawing, xz, Webhook
            Webhook_URL = "", -- // For webhook mode else leave blank
        },
        InternalUi = { -- // Ui to change settings with ease
            Enabled = true,
            Version = 3, -- // 1 - Old UI | 2 - New UI | 3 - Newest UI
            SizeX = 500,
            SizeY = 600,
            KeyBind = Enum.KeyCode.RightShift, -- // Keybind to toggle ui
        },
        AutoJoinDiscord = false, -- // Auto Joins newest discord
        Intro = true,
    },
    Panic = {
        Enabled = false, -- // Disables all features
        Key = "K", -- // Key To Disable All Features
    },
    FOV = {
        Visible = false, -- // Shows FOV Circle
        Radius = 30, -- // FOV Size
        Filled = false, -- // Enable if FOV is filled (ugly)
        Thickness = 1, -- // FOV Circle Thickness (dont go over 3)
        Transparency = 0.5, -- // FOV Circle transparency
        Color = Color3.fromRGB(253, 221, 77), -- // FOV Color (you can change to Color3.new or Color3.fromRGB)
        Position = "Cursor", -- // Cursor, Center
    },
    Global = {
        WallCheck = true, -- // Checks if target is behind a wall
        AutoPredict = false, -- // Auto Prediction based on ping
        Prediction = 0.155, -- // Prediction velocity
    },
    SilentAim = {
        Enabled = false, -- // Enables Silent aim
        TargetBone = "Head", -- // Bone that is targeted you
        AllowNotifications = false, -- // Allows notifications for silent aim
        Keybind = false, -- // Enables keybind to toggle silent aim
        Key = "G", -- // Keybind to toggle silent aim
        NearestCursorPoint = false, -- // Ignores target bone and selects closest part to mouse
        GetNearestMethod = "Cursor", -- // Cursor, Distance
        Airshot = {
            Enabled = true, -- // Hits Airshots (do not enable nearestcursorpoint)
            TargetBone = "LowerTorso", -- // Target Part for airshot
        }
    },
    CamLock = {
        Enabled = false, -- // Enables Camlock
        TargetBone = "Head", -- // Bone that is targeted
        AllowNotifications = true, -- // Allows notifications for camlock
        Key = "Q", -- // Key to lock onto target
        NearestCursorPoint = false, -- // Ignores target bone and selects closest part to mouse
        Smoothness = 0.058, -- // Self Explained set to 1 to disable
        GetNearestMethod = "Cursor", -- // Cursor, Distance
    },
    Resolver = {
        AimViewBypass = false, -- // Bypasses aim viewer (wip)
        DesyncResolver = false, -- // Resolves all anti aims.
        CustomResolverPrediction = {
            Enabled = true, -- // Uses custom prediction instead of global prediction
            Prediction = 13, -- // 1 to 30 recommended, don't go any higher.
        }
    },
    GunFOV = {
        Enabled = false, -- // Credits to farzad, he let me use his so i don't have to spend a lot of time making my own.
        Values = {
            DoubleBarrel = 20,
            Revolver = 25,
            Rifle = 20,
            Shotgun = 20,
            Smg = 23,
            TacticalShotgun = 24,
            Silencer = 17,
            AK47 = 8,
            AR = 15
        },
    },
    MemorySpoofer = {
        Enabled = false, -- // Spoofs your memory
        Values = {
            Minimum = 100, -- // Minimum Memory usage
            Maximum = 200, -- // Maximum Memory usage
        }
    },
    Emotes = { -- once u click the keybinds it makes u use the Animation
        Lay = true, LayKey = Enum.KeyCode.T,
        Greet = true, GreetKey = Enum.KeyCode.G,
        Speed = false, SpeedKey = Enum.KeyCode.N,
        Sturdy = false, SturdyKey = Enum.KeyCode.H,
        Griddy = false, GriddyKey = Enum.KeyCode.G,
    },
    CustomAutoPrediction = { -- // Custom Auto Prediction Values
        Enabled = false, -- // If you wanna use custom value prediction
        Values = {
            ping_20 = 0.102,
            ping_40 = 0.125,
            ping_50 = 0.155,
            ping_60 = 0.132,
            ping_70 = 0.136,
            ping_80 = 0.130,
            ping_90 = 0.136,
            ping_105 = 0.138,
            ping_110 = 0.146,
            ping_125 = 0.149,
            ping_130 = 0.151,
            ping_150 = 0.162,
            ping_175 = 0.172,
            ping_200 = 0.185,
            ping_225 = 0.198,
            ping_250 = 0.206,
            ping_275 = 0.214,  
        }
    },
    ChatCommands = { -- // Tip say /c system to hide your commands
        Enabled = true, -- // Enables Chat Commands
        Prefix = "/", -- // Prefix for commands ex; $pred 0.115
        Commands = { -- // CANNOT HAVE SPACES!!!
            Prediction = "pred", -- // ex; $pred 0.115
            ToggleFOV = "draw", -- // ex; $draw true (you can also do "on" or "yes" and to disable you do "off" or "yes" or "false")
            SizeFOV = "radius", -- // ex; $radius 100
            GotoLocation = "tp", -- // ex; $tp bank (full locations in server)
            ToggleResolver = "resolver", -- // ex; $resolver true (you can also do "on" or "yes" and to disable you do "off" or "yes" or "false")
            JoinDiscord = "discord", -- // ex; $discord
            RejoinServer = "rj", -- // ex; $rj
            ToggleSilentAim = "silent", -- // ex; $silent true (you can also do "on" or "yes" and to disable you do "off" or "yes" or "false")
            ToggleCamLock = "camlock", -- // ex; $camlock true (you can also do "on" or "yes" and to disable you do "off" or "yes" or "false")
            CamLockSmoothness = "smoothness", -- // ex; $smoothness 0.086
            CheckForExploiters = "check", -- // ex; $check
            ForceReset = "reset", -- // ex; $reset
        },
    },
}