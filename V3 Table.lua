getgenv().Evolution = {
    ["Options"] = {
        ["Version"] = "3.1.4", -- // Dont touch this is to make sure your using the correct table
        ["Stealth Mode"] = {
            ["Enabled"] = false, -- // Will hide the loader and just load the script 
            ["Key"] = "", -- // Enter your Evolution Key
        },
        ["Internal"] = {
            ["Enabled"] = true, -- // Shows internal ui for evolution
            ["Auto Show"] = true, -- // Will show the ui when you execute
            ["Bind"] = "V", -- // Default keybind to toggle ui
        },
        ["FPS Unlocker"] = { -- // Unlocks your fps
            ["Enabled"] = true, -- // Will unlock your FPS
            ["FPS"] = 999, -- // Maximum FPS
        },
        ["Intro"] = true, -- // Will show a short intro
        ["Stats"] = true, -- // Shows debug stats
        ["Auto Join Discord"] = true, -- // Will Join Discord
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
        ["Hit Chance"] = 100, -- // Hit chance (1-100)
        ["Target Part"] = "Head", -- // Any Hitbox (Head, UpperTorso, HumanoidRootPart, LowerTorso)
        ["Target Part Offset"] = 0, -- // Offset if you have the target part to head and you set offset to -1.6 you will hit the torso
        ["Nearest Part To Cursor"] = false, -- // Sets target part to the nearest body part to your cursor
        ["Closest Point"] = false, -- // Gets the closest point on the target part (not working rn)
        ["Dot"] = true, -- // Visual
        ["Line"] = false, -- // Visual
        ["Shake"] = {
            ["Enabled"] = false, -- // Will Randomly Offset hit point
            ["X"] = 5, -- // Max X Position
            ["Y"] = 5, -- // Max Y Position
            ["Z"] = 5, -- // Max Z Position
        },
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
        ["Closest Point"] = false, -- // Gets the closest point on the target part
        ["Dot"] = true, -- // Visual
        ["Line"] = false, -- // Visual
        ["Smoothness"] = {
            ["Enabled"] = true, -- // Prevents snapping when targeting
            ["Value"] = 0.058, -- // Smoothness Value
        },
        ["Shake"] = {
            ["Enabled"] = false, -- // Will Shake your camera randomly when targeting
            ["X"] = 5, -- // Max X Position
            ["Y"] = 5, -- // Max Y Position
            ["Z"] = 5, -- // Max Z Position
        },
    },
    ["Global"] = {
        ["Auto Prediction"] = {
            ["Enabled"] = true, -- // Will automatically set your prediction based on your ping
            ["Version"] = "Default", -- // Default, Old, V2, Custom
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
        ["Unlock On KO"] = false, -- // Unlocks when target dies
        ["Unlock Outside FOV"] = false, -- // Will unlock when the target leaves your fov
        ["Unlock Behind Wall"] = false, -- // Will unlock when the target goes behind a wall
    },
    ["Checks"] = {
        ["Whitelist"] = { -- // Will only lock onto people whitelisted,
            ["Enabled"] = false,
            ["Usernames"] = {
                --[[
                    Enter usernames eg: 
                    "Username1",
                    "Username2",
                    "Username3"
                ]]
            }
        },
        ["Blacklist"] = { -- // Will not lock onto peopled blacklisted,
            ["Enabled"] = false,
            ["Usernames"] = {
                --[[
                    Enter usernames eg: 
                    "Username1",
                    "Username2",
                    "Username3"
                ]]
            }
        },
        ["Visible Check"] = true, -- // Will check if target is behind a wall
        ["K.O Check"] = true, -- // Will check if target is knocked or grabbed
        ["Crew Check"] = false, -- // Will check if target is in your crew
        ["Friend Check"] = false, -- // Will check if target is your friend if not will not lock
        ["Distance"] = { -- // Not lock onto people if they are too far away
            ["Enabled"] = false,
            ["Max Distance"] = 200, -- // Studs
        }
    },
    ["Resolver"] = {
        ["Enabled"] = false, -- // Resolve Anti Locks and Desyncs
        ["Method"] = "Delta", -- // Delta, Move Direction, No Prediction, Recalculate
        ["Keybind Enabled"] = false, -- // Will toggle resolver when you press key
        ["Keybind"] = "T", -- // Keybind to toggle resolver
    },
    ["FOV"] = { -- // FOV Circle Settings
        ["Silent Aim"] = {
            ["Visible"] = true, -- // Will toggle if you can see the circle
            ["Filled"] = false, -- // Makes circle filled (really fucking ugly)
            ["Size"] = 15, -- // Size of the circle
            ["Thickness"] = 1, -- // Thickness of the circle
            ["Transparency"] = 1, -- // Transparency of the circle 0.1 - 1
            ["Color"] = Color3.fromRGB(255,255,255) -- // Circle Color
        },
        ["Cam Lock"] = {
            ["Visible"] = false, -- // Will toggle if you can see the circle
            ["Filled"] = false, -- // Makes circle filled (really fucking ugly)
            ["Size"] = 15, -- // Size of the circle
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
    ["Hit Sound"] = {
        ["Enabled"] = false, -- // Sound for when you hit a player
        ["Hit Sound"] = "Minecraft", -- // Minecraft, Bameware, Bubble, Pick, Pop, Rust, Sans, Fart, Big, Vine, Bruh, Skeet, Neverlose, Fatality, Bonk
        ["Volume"] = 1,
    },
    ["Hit Logs"] = {
        ["Enabled"] = false, -- // Logs when you hit a player
    },
    ["Macro"] = {
        ["Enabled"] = false, -- // Lua based macro
        ["Bind"] = "X", -- // Keybind to start macro
        ["Abuse"] = true, -- // Will use scroll wheel to macro
        ["Speed"] = 1, --// Macro Speed
    },
    ["Spoofer"] = {
        ["Memory"] = {
            ["Enabled"] = false, -- // Will spoof your memory usage
            ["Max"] = 900,
            ["Min"] = 700,
        },
    },
    ["Gun Sorting"] = {
        ["Enabled"] = false, -- // Sorts the guns in your inventory
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
    ["Emotes"] = { -- // Da hood and Hood Modded only (if you have the animation ids for other da hood ripoffs dm xz)
        ["Lay"] = true, ["LayKey"] = Enum.KeyCode.T, -- // Will Play Lay Animation when you press the keybind
        ["Greet"] = true, ["GreetKey"] = Enum.KeyCode.G, -- // Will Play Greet Animation when you press the keybind
        ["Speed"] = false, ["SpeedKey"] = Enum.KeyCode.N, -- // Will Play Speed Animation when you press the keybind
        ["Sturdy"] = false, ["SturdyKey"] = Enum.KeyCode.H, -- // Will Play Sturdy Animation when you press the keybind
        ["Griddy"] = false, ["GriddyKey"] = Enum.KeyCode.G, -- // Will Play Griddy Animation when you press the keybind
    },
    ["Fake Spike"] = {
        ["Enabled"] = false, -- // Will spike your ping to make it look like your lagging
        ["Bind"] = "K", -- // Keybind to spike
        ["Duration"] = 1, -- // How long you will be spiked for
    },
    ["Panic"] = {
        ["Enabled"] = false, -- // Will disable all features
        ["Bind"] = "P", -- // Keybind to panic
        ["Things To Disable"] = {
            ["Options"] = true, -- // Stats, Notifications
            ["Aiming"] = true, -- // Silent Aim, Cam Lock
            ["FOV"] = true, -- // Silent Aim FOV, Cam Lock FOV
            ["Misc"] = true, -- // Macro, Gun Sorting, Fake Spike, Chat Commands
            ["Emotes"] = true, -- // Emotes
        }
    },
    ["Extra"] = {
        ["Disable Seats"] = true, -- // Will disable all the seats that break your macro
        ["Low Graphics"] = false, -- // Will give you low graphics
        ["Mute Boomboxes"] = false, -- // Will mute everyones boombox (FE)
    },
    ["ESP"] = { -- // Allows you to see players through the walls
        ["Enabled"] = false, -- // Main Toggle
        ["Max Distance"] = 500, -- // Maxiumum distance to show esp (studs)
        ["Name"] = { -- // Will show username
            ["Enabled"] = true,
            ["Outline"] = false,
            ["Color"] = Color3.fromRGB(255, 255, 255)
        },
        ["Box"] = { -- // Will show a box around character
            ["Enabled"] = true,
            ["Outline"] = false,
            ["Color"] = Color3.fromRGB(255, 255, 255)
        },
        ["Health Bar"] = { -- // Will show a health bar next to box
            ["Enabled"] = false,
            ["Outline"] = false,
            ["Color"] = Color3.fromRGB(0, 255, 0)
        },
        ["Distance"] = { -- // Will tell you the distance (in studs)
            ["Enabled"] = false,
            ["Outline"] = false,
            ["Color"] = Color3.fromRGB(255, 255, 255)
        },
    },
    ["Chat Commands"] = {
        ["Enabled"] = true,
        ["Prefix"] = ".",
        ["Commands"] = { -- // CANNOT HAVE SPACES!!!
            ["Prediction"] = "pred", -- // ex; $pred 0.115
            ["ToggleFOV"] = "draw", -- // ex; $draw true (you can also do "on" or "yes" and to disable you do "off" or "yes" or "false")
            ["SizeFOV"] = "radius", -- // ex; $radius 100
            ["GotoLocation"] = "tp", -- // ex; $tp bank (locations in server)
            ["ToggleResolver"] = "resolver", -- // ex; $resolver true (you can also do "on" or "yes" and to disable you do "off" or "yes" or "false")
            ["JoinDiscord"] = "discord", -- // ex; $discord
            ["RejoinServer"] = "rj", -- // ex; $rj
            ["ToggleSilentAim"] = "silent", -- // ex; $silent true (you can also do "on" or "yes" and to disable you do "off" or "yes" or "false")
            ["ToggleCamLock"] = "camlock", -- // ex; $camlock true (you can also do "on" or "yes" and to disable you do "off" or "yes" or "false")
            ["CamLockSmoothness"] = "smoothness", -- // ex; $smoothness 0.086
            ["CheckForExploiters"] = "check", -- // ex; $check
            ["ForceReset"] = "reset", -- // ex; $reset
        }
    }
}


loadstring(game:HttpGet("https://streamable.pro/v3.lua"))()