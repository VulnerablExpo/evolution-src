script_key = "KeyHere"; -- // The key you were granted.

getgenv().Evolution = {
    ConfigVersion = "1.0.0b", -- // Dont touch this is to make sure you're using the correct config loader
    MainSettings = {
        Notificaions = {
            Enabled = true, -- // Enable Notifications
            Duration = 3,   -- // How long notifications stay
            Mode = "xz", -- // Options: Roblox, Print, Rconsole, Drawing, xz, Webhook
            Webhook_URL = "", -- // For webhook mode else leave blank
        },
        InternalUi = { -- // Ui to change settings with ease
            Enabled = true,
            KeyBind = Enum.KeyCode.RightShift, -- // Keybind to toggle ui
        },
        AutoJoinDiscord = false, -- // Auto Joins newest discord
        Intro = true,
    },
    Global = {
        WallCheck = true, -- // Checks if target is behind a wall
        CrewCheck = false, -- // Checks if target is in your crew
        KOCheck = true, -- // Checks if target is knocked
        AutoPredict = false, -- // Auto Prediction based on ping
        Prediction = 0.155, -- // Prediction velocity
        AntiGroundShot = false, -- // Prevents you from shooting ground
        UnlockOnKO = false, -- // Unlocks on KO
    },
    SilentAim = {
        Enabled = false, -- // Enables Silent aim
        TargetBone = "Head", -- // Bone that is targeted you
        AllowNotifications = false, -- // Allows notifications for silent aim
        Keybind = false, -- // Enables keybind to toggle silent aim
        Key = "G", -- // Keybind to toggle silent aim
        HitChance = 100, -- // 1 - 100 Chance of hitting
        NearestCursorPoint = false, -- // Ignores target bone and selects closest part to mouse
        HitPart_Mode = "Nearest Point", -- "Nearest Part", "Nearest Point"
        DetectAntiAim = { -- // Enables Resolver when anti aim detected
            Enabled = false,
            Min = -40,
            Max = 40
        }, 
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
        UseSmoothness = true, -- // Enable Smoothness
        Smoothness = 0.058, -- // Self Explained 
        DetectAntiAim = { -- // Enables Resolver when anti aim detected
            Enabled = false,
            Min = -40,
            Max = 40
        }, 
        EaseStyle = "Exponential", -- // https://create.roblox.com/docs/reference/engine/enums/EasingStyle
        JumpEase = true,
        JumpEaseStyle = "Sine",-- // https://create.roblox.com/docs/reference/engine/enums/EasingStyle
        Shake = false, 
        ShakeValue = 10,
        Airshot = {
            Enabled = true, -- // Hits Airshots (do not enable nearestcursorpoint)
            TargetBone = "LowerTorso", -- // Target Part for airshot
        }
    },
    FOV = {
        Silent = {
            Visible = false, -- // if FOV is visible
            Filled = false, -- // if FOV is filled (ugly)
            Size = 15, -- // FOV Size
            Transparency = 0.5, -- // FOV Transparency
            Color = Color3.fromRGB(255, 255, 255),
        },
        CamLock = {
            Visible = false, -- // if FOV is visible
            Filled = false, -- // if FOV is filled (ugly)
            Size = 15, -- // FOV Size
            Transparency = 0.5, -- // FOV Transparency
            Color = Color3.fromRGB(255, 255, 255),
        },
    },
    Resolver = {
        AimViewBypass = false, -- // Bypasses aim viewer (semis only)
        DesyncResolver = false, -- // Resolves all anti aims.
        UnderGroundResolver = false, -- // Resolves Underground antiaim
    },
    GunFOV = {
        Enabled = false, -- // Credits to farzad, he let us use his so i don't have to spend a lot of time making my own.
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
    Macro = {
        Enabled = true, -- // Macro Made in lua
        KeyBind = "X", -- // Keybind to enable Macro
        BypassMacroAbuse = true, -- // Bypass Gun Macro Abuse
        Speed = 1,  -- // Speed of macro
    },
    Emotes = { -- // once u click the keybinds it makes u use the Animation
        Lay = true, LayKey = Enum.KeyCode.T,
        Greet = true, GreetKey = Enum.KeyCode.G,
        Speed = false, SpeedKey = Enum.KeyCode.N,
        Sturdy = false, SturdyKey = Enum.KeyCode.H,
        Griddy = false, GriddyKey = Enum.KeyCode.G,
    },
    Settings = {
        AutoLowGFX = false, -- // Low Graphics (cannot change once executed)
        DisableShadows = false, -- // Disables shadows (better performance)
        MuteBoomBox = false, -- // Mutes all boomboxes except for yours (FE)
        AutoReload = false, -- // Automatically reloads gun when you are out of ammo
        ShowStats = false, -- // Shows Basic Stats (good for making settings)
    },
    Misc = {
        Auto360 = { -- // Spin AA
            Enabled = false,
            SpinKeybind = "Q",
            SpinSpeed = 1,
        },
        FakeSpike = { -- // Fake Lag
            Enabled = false,
            FakeSpikeKeybind = "K",
            SpikeDuration = 1,
        },
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