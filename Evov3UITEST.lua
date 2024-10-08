    local parts = {'Head',"UpperTorso","HumanoidRootPart","LowerTorso"}
    _G.HideKeybind = Evolution["Options"]["Toggle Key"]
    getgenv().Lib = loadstring(game:HttpGet("https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/dirt",true))()
    getgenv().Table = {}
    getgenv().Configs = {}
    getgenv().MainWindow = Lib:CreateWindow("Main")
    getgenv().VisualsWindow = Lib:CreateWindow("Visuals")
    getgenv().OtherWindow = Lib:CreateWindow("Other")
    
    
    MainWindow:Section("Silent Aim")
    
    MainWindow:Toggle("Enabled",{location = Table, default = Evolution["Silent Aim"]["Enabled"], flag = "SilentAim_Enabled"},function(v)
        Evolution["Silent Aim"]["Enabled"] = Table["SilentAim_Enabled"]
    end)
    
    MainWindow:Toggle("Auto Prediction",{location = Table, default = Evolution["Silent Aim"]["Auto Prediction"], flag = "AutoPred"},function(v)
        Evolution["Silent Aim"]["Auto Prediction"] = Table["AutoPred"]
    end)
    
    MainWindow:Toggle("Nearest Part",{location = Table, default = Evolution["Silent Aim"]["Nearest Part To Cursor"],flag = "NPTC"},function(v)
        Evolution["Silent Aim"]["Nearest Part To Cursor"] = Table["NPTC"]
    end)

    MainWindow:Toggle("Anti Ground Shots",{location = Table, default = Evolution["Silent Aim"]["Anti Ground Shot"],flag = "NPTC"},function(v)
        Evolution["Silent Aim"]["Anti Ground Shot"] = Table["AntiGroundShot"]
    end)
    
    MainWindow:Toggle("Visible Check",{location = Table, default = Evolution["Silent Aim"]["Checks"]["Visible Check"], flag = "Visible_Check"},function(v)
        Evolution["Silent Aim"]["Checks"]["Visible Check"] = Table["Visible_Check"]
    end)
    
    MainWindow:Toggle("K.O Check",{location = Table, default = Evolution["Silent Aim"]["Checks"]["K.O Check"], flag = "KO_Check"},function(v)
        Evolution["Silent Aim"]["Checks"]["K.O Check"] = Table["KO_Check"]
    end)
    
    MainWindow:Toggle("Crew Check",{location = Table, default = Evolution["Silent Aim"]["Checks"]["Crew Check"],flag = "Crew_Check"},function(v)
        Evolution["Silent Aim"]["Checks"]["Crew Check"] = Table["Crew_Check"]
    end)
    
    
    MainWindow:Box("Prediction",{location = Table,default = Evolution["Silent Aim"]["Prediction"],flag = "Pred", type = "number" , hold = "Value" },function()
        if Table["Pred"] ~= "" then 
            Evolution["Silent Aim"]["Prediction"] = Table["Pred"]
        end
    end)
    
    
    MainWindow:Dropdown("Target Part",{location = Table,default = Evolution["Silent Aim"]["Target Part"], flag = "Target_part",search = true , list = parts , PlayerList = false},function()
        Evolution["Silent Aim"]["Target Part"]= Table["Target_part"]
    end)
    
    MainWindow:Slider("Target Part Offset",{location = Table, min = -50, max = 50, default = Evolution["Silent Aim"]["Target Part Offset"] * 10, precise = true , flag = "Target_Part_Offset"},function()
        Evolution["Silent Aim"]["Target Part Offset"]= Table["Target_Part_Offset"] / 10
    end)
    
    MainWindow:Slider("Hit Chance",{location = Table, min = 1, max = 100, default = Evolution["Silent Aim"]["Hit Chance"], precise = true , flag = "Hit_Chance"},function()
        Evolution["Silent Aim"]["Hit Chance"]= Table["Hit_Chance"]
    end)
    
    
    VisualsWindow:Section("Field Of View")
    
    VisualsWindow:Toggle("Visible",{location = Table,default = Evolution["Silent Aim"]["FOV"]["Visible"], flag = "FOV_Visible"},function(v)
        Evolution["Silent Aim"]["FOV"]["Visible"] = Table["FOV_Visible"]
    end)
    
    VisualsWindow:Toggle("Filled",{location = Table,default = Evolution["Silent Aim"]["FOV"]["Filled"], flag = "Filled"},function(v)
        Evolution["Silent Aim"]["FOV"]["Filled"] = Table["Filled"]
    end)
    
    VisualsWindow:Slider("Size",{location = Table, min = 1, max = 500, default = Evolution["Silent Aim"]["FOV"]["Size"], precise = true , flag = "Size"},function()
        Evolution["Silent Aim"]["FOV"]["Size"]= Table["Size"]
    end)
    
    VisualsWindow:Slider("Thickness",{location = Table, min = 1, max = 10, default = Evolution["Silent Aim"]["FOV"]["Thickness"], precise = true , flag = "Thick"},function()
        Evolution["Silent Aim"]["FOV"]["Thickness"]= Table["Thick"]
    end)
    
    VisualsWindow:Slider("Opacity",{location = Table, min = 0.1, max = 1, default = Evolution["Silent Aim"]["FOV"]["Transparency"], precise = false , flag = "Transparency"},function()
        Evolution["Silent Aim"]["FOV"]["Transparency"]= Table["Transparency"]
    end)

    VisualsWindow:Section("Visuals")
    
    VisualsWindow:Toggle("Dot",{location = Table,default = Evolution["Silent Aim"]["Dot"], flag = "Dot_Enabled"},function(v)
        Evolution["Silent Aim"]["Dot"] = Table["Dot_Enabled"]
    end)
    
    VisualsWindow:Toggle("Line",{location = Table,default = Evolution["Silent Aim"]["Line"], flag = "Line_Enabled"},function(v)
        Evolution["Silent Aim"]["Line"] = Table["Line_Enabled"]
    end)

    
    OtherWindow:Section("Airshot")
    
    OtherWindow:Toggle("Enabled",{location = Table,default = Evolution["Silent Aim"]["Airshot"]["Enabled"], flag = "Airshot_Enabled"},function(v)
        Evolution["Silent Aim"]["Airshot"]["Enabled"] = Table["Airshot_Enabled"]
    end)
    

    OtherWindow:Slider("Target Part Offset",{location = Table, min = -50, max = 50, default = Evolution["Silent Aim"]["Airshot"]["Jump Offset"] * 10, precise = true , flag = "Target_partA"},function()
        Evolution["Silent Aim"]["Airshot"]["Jump Offset"]= Table["Target_partA"] / 10
    end)
    
    OtherWindow:Section("Resolver")
    
    OtherWindow:Toggle("Enabled",{location = Table,default = Evolution["Silent Aim"]["Resolver"]["Enabled"], flag = "Resolver_E"},function(v)
        Evolution["Silent Aim"]["Resolver"]["Enabled"] = Table["Resolver_E"]
    end)
    
    OtherWindow:Dropdown("Method",{location = Table,default = Evolution["Silent Aim"]["Resolver"]["Method"], flag = "Resolver_M",search = false , list = {"Move Direction", "No Prediction", "Underground", "Reverse", "Smooth"} , PlayerList = false},function()
        Evolution["Silent Aim"]["Resolver"]["Method"]= Table["Resolver_M"]
    end)

    OtherWindow:Section("File")

    OtherWindow:Label("Save")

    OtherWindow:Dropdown("Export Method",{
        location = Table,
        default = "WriteFile", 
        flag = "ExportSettings",
        search = false , 
        list = {"WriteFile","Clipboard"} , 
        PlayerList = false
    })

    OtherWindow:Box("File Name",{
        location = Table,
        default = "Exported",
        flag = "FileName", 
        type = "string", 
        hold = "Value" 
    })

    OtherWindow:Button("Export Settings",function()
        local second = tostring(os.date("%B") .. " " .. os.date("%d") .. " " .. os.date("%Y"))
local msg = [[
--// Name: ]]..Table["FileName"]:gsub('%p+', '')..[[

--// Game: ]]..game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name..[[ (]]..game.PlaceId..[[)
--// Created On: ]]..second..[[

--// Created By: ]]..game.Players.LocalPlayer.Name..[[

--// Version: ]]..utility.Version..[[

getgenv().Evolution = {
    ["Options"] = {
        ["Version"] = "]]..utility.Version..[[",
        ["Show Internal UI"] = true,
        ["Toggle Key"] = ]]..tostring(Evolution["Options"]["Toggle Key"])..[[
    },
    ["Silent Aim"] = {
        ["Enabled"] = ]]..tostring(Table["SilentAim_Enabled"])..[[,
        ["Hit Chance"] = ]]..tostring(Table["Hit_Chance"])..[[,
        ["Prediction"] = ]]..tostring(Table["Pred"])..[[,
        ["Auto Prediction"] = ]]..tostring(Table["AutoPred"])..[[,
        ["Target Part"] = ]]..tostring(Table["Target_part"])..[[,
        ["Target Part Offset"] = ]]..tostring(Table["Target_Part_Offset"] / 10)..[[,
        ["Nearest Part To Cursor"] = ]]..tostring(Table["NPTC"])..[[,
        ["Anti Ground Shots"] = ]]..tostring(Table["AntiGroundShot"])..[[,
        ["Dot"] = ]]..tostring(Table["Dot_Enabled"])..[[,
        ["Line"] = ]]..tostring(Table["Line_Enabled"])..[[,
        ["Checks"] = {
            ["Visible Check"] = ]]..tostring(Table["Visible_Check"])..[[,
            ["K.O Check"] = ]]..tostring(Table["KO_Check"])..[[,
            ["Crew Check"] = ]]..tostring(Table["Crew_Check"])..[[,
        },
        ["Resolver"] = {
            ["Enabled"] = ]]..tostring(Table["Resolver_E"])..[[,
            ["Method"] = "]]..tostring(Table["Resolver_M"])..[[", -- // Move Direction, No Prediction, Underground, Reverse, Smooth
        },
        ["FOV"] = {
            ["Visible"] = ]]..tostring(Table["FOV_Visible"])..[[,
            ["Filled"] = ]]..tostring(Table["Filled"])..[[,
            ["Size"] = ]]..tostring(Table["Size"])..[[,
            ["Thickness"] = ]]..tostring(Table["Thick"])..[[,
            ["Transparency"] = ]]..tostring(Table["Transparency"])..[[,
            ["Color"] = Color3.fromRGB(255,255,255)
        },
        ["Airshot"] = {
            ["Enabled"] = ]]..tostring(Table["Airshot_Enabled"])..[[,
            ["Jump Offset"] = ]]..tostring(Table["Target_partA"] / 10)..[[,
        },
    }
    ["Macro"] = {
        ["Enabled"] = ]]..tostring(Evolution["Macro"].Enabled)..[[,
        ["Bind"] = "]]..tostring(Evolution["Macro"].Bind)..[[",
        ["Abuse"] = ]]..tostring(Evolution["Macro"].Abuse)..[[, 
        ["Speed"] = ]]..tostring(Evolution["Macro"].Speed)..[[,
    },
    ["Spoofer"] = {
        ["Memory"] = {
            ["Enabled"] = ]]..tostring(Evolution["Spoofer"]["Memory"].Enabled)..[[,
            ["Max"] = ]]..tostring(Evolution["Spoofer"]["Memory"].Max)..[[,
            ["Min"] = ]]..tostring(Evolution["Spoofer"]["Memory"].Min)..[[,
        },
    },
    ["Chat Commands"] = {
        ["Enabled"] = ]]..tostring(Evolution["Chat Commands"].Enabled)..[[,
        ["Prefix"] = "]]..tostring(Evolution["Chat Commands"].Prefix)..[["
    }
}
        ]]
        if Table["ExportSettings"] == "WriteFile" then 
            if Table["FileName"] ~= ""  then
                writefile(utility.Folder.."/"..utility.Version.."/"..Table["FileName"]:gsub('%p+', '')..".lua",msg)
                table.insert(Configs,Table["FileName"]:gsub('%p+', '')..".lua")
                Notify({
                    Description = "Saved as: workspace/"..utility.Folder.."/"..utility.Version.."/"..Table["FileName"]:gsub('%p+', '')..".lua";
                    Title = "Exported Settings";
                    Duration = 5;
                });
            else 
                Notify({
                    Description = "Please enter a file name";
                    Title = "Error";
                    Duration = 5;
                });
            end
        elseif Table["ExportSettings"] == "Clipboard" then 
            toClipboard(msg)
            Notify({
                Description = "Copied to clipboard.";
                Title = "Exported Settings";
                Duration = 5;
            });
        end
    end)


    for i,v in pairs(listfiles(utility.Folder.."/"..utility.Version)) do 
        local new = v:split('\\')
        local configname = new[2]
        if configname ~= "iyg2te39871ts" then 
            table.insert(Configs,configname)
        end
    end

    OtherWindow:Label("Load")

    OtherWindow:Dropdown("Selected File",{
        location = Table, 
        flag = "SelectedConfig",
        search = true , 
        list = Configs, 
        PlayerList = false
    })

    OtherWindow:Button("Load Settings",function()
        loadfile(utility.Folder.."/"..utility.Version.."/"..Table["SelectedConfig"])
        Notify({
            Description = "ui doesnt update (yet)";
            Title = "Loaded Settings";
            Duration = 5;
        });
    end)

    MainWindow:Search(Color3.fromRGB(34, 255, 0))     
    OtherWindow:Search(Color3.fromRGB(34, 255, 0))  
    VisualsWindow:Search(Color3.fromRGB(34, 255, 0))        