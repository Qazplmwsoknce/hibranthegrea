if _G.MainScriptLoaded then
    warn("🚫 Main script already loaded. Preventing duplicate execution.")
    return
end
_G.MainScriptLoaded = true
local Players = game:GetService("Players")
local whitelist = { 8091080621, 8255792544, 5764721857, 7935693345, 2664725473, 1461522020 } 

local player = game.Players.LocalPlayer
local playerId = player.UserId

print("👤 Player ID detected:", playerId)

local isWhitelisted = false
for _, id in ipairs(whitelist) do
    if id == playerId then
        isWhitelisted = true
        break
    end
end

if not isWhitelisted then
    warn("❌ Access denied for ID:", playerId)
    player:Kick("KUPAL KA BA BOSS?!")
    return
end

local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/SaveManager.lua"))()
local InterfaceManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/InterfaceManager.lua"))()
 
local Window = Fluent:CreateWindow({
    Title = "Hibrannn" .. Fluent.Version,
    SubTitle = "Muscle Legends OP REB!",
    TabWidth = 120,
    Size = UDim2.fromOffset(450, 300),
    Acrylic = true, -- The blur may be detectable, setting this to false disables blur entirely
    Theme = "Amethyst",
    MinimizeKey = Enum.KeyCode.LeftControl -- Used when theres no MinimizeKeybind
})
 
--Fluent provides Lucide Icons https://lucide.dev/icons/ for the tabs, icons are optional
local Tabs = {
    Main = Window:AddTab({ Title = "Main", Icon = "" }),
    Settings = Window:AddTab({ Title = "Settings", Icon = "settings" })
}
 
local Options = Fluent.Options
 
do
    Fluent:Notify({
        Title = "Notification",
        Content = "This is a notification",
        SubContent = "sheeeesh", -- Optional
        Duration = 5 -- Set to nil to make the notification not disappear
    })
 
 
 
Tabs.Main:AddParagraph({
        Title = "MUSCLE LEGENDS 💪",
        Content = "paid script"
    })
 

 Tabs.Main:AddButton({
        Title = "Fast Rebirths With Glitches",
        Description = "Equips Neon Guardians then equips Tribal Overlords",
        Callback = function()
            Window:Dialog({
                Title = "Fast Rebirth",
                Content = "Fast Rebirth",
                Buttons = {
                    {
                        Title = "Confirm",
                        Callback = function()
				local a=game:GetService("ReplicatedStorage")local b=game:GetService("Players")local c=b.LocalPlayer;local d=function(e)local f=c.petsFolder;for g,h in pairs(f:GetChildren())do if h:IsA("Folder")then for i,j in pairs(h:GetChildren())do a.rEvents.equipPetEvent:FireServer("unequipPet",j)end end end;task.wait(.1)end;local k=function(l)d()task.wait(.01)for m,n in pairs(c.petsFolder.Unique:GetChildren())do if n.Name==l then a.rEvents.equipPetEvent:FireServer("equipPet",n)end end end;local o=function(p)local q=workspace.machinesFolder:FindFirstChild(p)if not q then for r,s in pairs(workspace:GetChildren())do if s:IsA("Folder")and s.Name:find("machines")then q=s:FindFirstChild(p)if q then break end end end end;return q end;local t=function()local u=game:GetService("VirtualInputManager")u:SendKeyEvent(true,"E",false,game)task.wait(.1)u:SendKeyEvent(false,"E",false,game)end;task.spawn(function()while true do local v=c.leaderstats.Rebirths.Value;local w=10000+(5000*v)if c.ultimatesFolder:FindFirstChild("Golden Rebirth")then local x=c.ultimatesFolder["Golden Rebirth"].Value;w=math.floor(w*(1-(x*0.1)))end;d()task.wait(.1)k("Neon Guardian")while c.leaderstats.Strength.Value<w do for y=1,10 do c.muscleEvent:FireServer("rep")end;task.wait()end;d()task.wait(.1)k("Tribal Overlord")local z=o("Jungle Bar Lift")if z and z:FindFirstChild("interactSeat")then c.Character.HumanoidRootPart.CFrame=z.interactSeat.CFrame*CFrame.new(0,3,0)repeat task.wait(.1)t()until c.Character.Humanoid.Sit end;local A=c.leaderstats.Rebirths.Value;repeat a.rEvents.rebirthRemote:InvokeServer("rebirthRequest")task.wait(.1)until c.leaderstats.Rebirths.Value>A;task.wait()end end)
                    end
                    },
                    {
                        Title = "Cancel",
                        Callback = function()
                            print("Cancelled the dialog.")
                        end
                    }
                }
            })
        end
    })
 
Tabs.Settings:AddButton({
        Title = "Hide All Frames",
        Description = "Less Lag",
        Callback = function()
            Window:Dialog({
                Title = "Less Lag",
                Content = "Low Fps and Low Ping",
                Buttons = {
                    {
                        Title = "Confirm",
                        Callback = function()
  				for _, v in pairs(game:GetDescendants()) do
			if v:IsA("ParticleEmitter") or v:IsA("Trail") or v:IsA("Smoke") or v:IsA("Fire") or v:IsA("Sparkles") then
				v.Enabled = false
			end
		end
		local lighting = game:GetService("Lighting")
		lighting.GlobalShadows = false
		lighting.FogEnd = 9e9
		for _, v in pairs(workspace:GetDescendants()) do
			if v:IsA("BasePart") and not v.Parent:FindFirstChild("Humanoid") then
				v.Material = Enum.Material.SmoothPlastic
				if v:IsA("Texture") then
					v:Destroy()
				end
			end
		end
		settings().Rendering.QualityLevel = 1
	end
},
{
                        Title = "Cancel",
                        Callback = function()
                            print("Cancelled the dialog.")
                        end
                    }
                }
            })
        end
    })
    
Tabs.Main:AddButton({
        Title = "Speed Grind",
        Description = " Super Speed (With Swifts)",
        Callback = function()
            Window:Dialog({
                Title = "Super Speed",
                Content = "Speed Grind",
                Buttons = {
                    {
                        Title = "Confirm",
                        Callback = function()
							local Players = game:GetService("Players")
local whitelist = { 8091080621, 8255792544, 5764721857, 7935693345, 2664725473, 1461522020 } 

local player = game.Players.LocalPlayer
local playerId = player.UserId

print("👤 Player ID detected:", playerId)

local isWhitelisted = false
for _, id in ipairs(whitelist) do
    if id == playerId then
        isWhitelisted = true
        break
    end
end

if not isWhitelisted then
    warn("❌ Access denied for ID:", playerId)
    player:Kick("KUPAL KA BA BOSS?!")
    return
end

local a = game:GetService("ReplicatedStorage")
local b = game:GetService("Players")
local c = b.LocalPlayer
 
-- Fun??o para equipar apenas o "Swift Samurai" (sem desequipar nada antes)
local function k()
    for m, n in pairs(c.petsFolder.Unique:GetChildren()) do
        if n.Name == "Swift Samurai" then
            a.rEvents.equipPetEvent:FireServer("equipPet", n)
        end
    end
end
 
-- Loop principal focado apenas em ganhar Strength rapidamente
task.spawn(function()
    k() -- Equipa o Swift Samurai no come?o e n?o troca mais
 
    while true do
        -- Farm de Strength (agora com 0.001s de delay)
        for y = 1, 10 do
            c.muscleEvent:FireServer("rep")
        end
        task.wait(0.001) -- Super rápido
    end
end)
                    end
                    },
                    {
                        Title = "Cancel",
                        Callback = function()
                            print("Cancelled the dialog.")
                        end
                    }
                }
            })
        end
    })
 Tabs.Main:AddButton({
        Title = "8 PACKS FAST REB",
        Description = "230K+ A DAY",
        Callback = function()
            Window:Dialog({
                Title = "8 PACKS FAST REB",
                Content = "FASTEST REBIRTH",
                Buttons = {
                    {
                        Title = "Confirm",
                        Callback = function()
							local Players = game:GetService("Players")
local whitelist = { 8091080621, 8255792544, 5764721857, 7935693345, 2664725473, 1461522020 } 

local player = game.Players.LocalPlayer
local playerId = player.UserId

print("👤 Player ID detected:", playerId)

local isWhitelisted = false
for _, id in ipairs(whitelist) do
    if id == playerId then
        isWhitelisted = true
        break
    end
end

if not isWhitelisted then
    warn("❌ Access denied for ID:", playerId)
    player:Kick("KUPAL KA BA BOSS?!")
    return
end
                            
local a=game:GetService("ReplicatedStorage")local b=game:GetService("Players")local c=b.LocalPlayer;local d=function(e)local f=c.petsFolder;for g,h in pairs(f:GetChildren())do if h:IsA("Folder")then for i,j in pairs(h:GetChildren())do a.rEvents.equipPetEvent:FireServer("unequipPet",j)end end end;task.wait(.1)end;local k=function(l)d()task.wait(.01)for m,n in pairs(c.petsFolder.Unique:GetChildren())do if n.Name==l then a.rEvents.equipPetEvent:FireServer("equipPet",n)end end end;local o=function(p)local q=workspace.machinesFolder:FindFirstChild(p)if not q then for r,s in pairs(workspace:GetChildren())do if s:IsA("Folder")and s.Name:find("machines")then q=s:FindFirstChild(p)if q then break end end end end;return q end;local t=function()local u=game:GetService("VirtualInputManager")u:SendKeyEvent(true,"E",false,game)task.wait(.1)u:SendKeyEvent(false,"E",false,game)end;task.spawn(function()while true do local v=c.leaderstats.Rebirths.Value;local w=10000+(5000*v)if c.ultimatesFolder:FindFirstChild("Golden Rebirth")then local x=c.ultimatesFolder["Golden Rebirth"].Value;w=math.floor(w*(1-(x*0.1)))end;d()task.wait(.1)k("Swift Samurai")while c.leaderstats.Strength.Value<w do for y=1,10 do c.muscleEvent:FireServer("rep")end;task.wait()end;d()task.wait(.1)k("Tribal Overlord")local z=o("Jungle Bar Lift")if z and z:FindFirstChild("interactSeat")then c.Character.HumanoidRootPart.CFrame=z.interactSeat.CFrame*CFrame.new(0,3,0)repeat task.wait(.1)t()until c.Character.Humanoid.Sit end;local A=c.leaderstats.Rebirths.Value;repeat a.rEvents.rebirthRemote:InvokeServer("rebirthRequest")task.wait(.1)until c.leaderstats.Rebirths.Value>A;task.wait()end end)
                    end
                    },
                    {
                        Title = "Cancel",
                        Callback = function()
                            print("Cancelled the dialog.")
                        end
                    }
                }
            })
        end
    })

 Tabs.Main:AddButton({
        Title = "Protein Egg",
        Description = "Auto Eat every last 15 secs",
        Callback = function()
            Window:Dialog({
                Title = "Auto Protein Egg",
                Content = "EGG",
                Buttons = {
                    {
                        Title = "Confirm",
                        Callback = function()
				local Players = game:GetService("Players")
local whitelist = { 2895004858, 8255792544, 5764721857, 7935693345, 2664725473, 1461522020 } 

local player = game.Players.LocalPlayer
local playerId = player.UserId

print("👤 Player ID detected:", playerId)

local isWhitelisted = false
for _, id in ipairs(whitelist) do
    if id == playerId then
        isWhitelisted = true
        break
    end
end

if not isWhitelisted then
    warn("Access denied for ID:", playerId)
    player:Kick("KUPAL KA BA BOSS?!")
    return
end

local LocalPlayer = game:GetService("Players").LocalPlayer local muscleEvent = LocalPlayer:WaitForChild("muscleEvent") while true do wait(1800) muscleEvent:FireServer("proteinEgg", LocalPlayer.Backpack:FindFirstChild("Protein Egg")) end
		    end
                    },
                    {
                        Title = "Cancel",
                        Callback = function()
                            print("Cancelled the dialog.")
                        end
                    }
                }
            })
        end
    })
    
local Toggle = Tabs.Rebirth:CreateToggle("FrameToggle", {
	Title = "Hide All Frames",
	Description = "Toggle ON to hide all game frames",
	Default = false,
	Callback = function(Value)
		local rSto = game:GetService("ReplicatedStorage")
		for _, obj in pairs(rSto:GetChildren()) do
			if obj.Name:match("Frame$") then
				obj.Visible = not Value
			end
		end
	end
})


    local Input = Tabs.Main:AddInput("Input", {
        Title = "Input",
        Default = "Default",
        Placeholder = "Placeholder",
        Numeric = true, -- Only allows numbers
        Finished = true, -- Only calls callback when you press enter
        Callback = function(Value)
            print("Input changed:", Value)
        end
    })
 
    Input:OnChanged(function()
        print("Input updated:", Input.Value)
    end)
end
 
 
-- Addons:
-- SaveManager (Allows you to have a configuration system)
-- InterfaceManager (Allows you to have a interface managment system)
 
-- Hand the library over to our managers
SaveManager:SetLibrary(Fluent)
InterfaceManager:SetLibrary(Fluent)
 
-- Ignore keys that are used by ThemeManager.
-- (we dont want configs to save themes, do we?)
SaveManager:IgnoreThemeSettings()
 
-- You can add indexes of elements the save manager should ignore
SaveManager:SetIgnoreIndexes({})
 
-- use case for doing it this way:
-- a script hub could have themes in a global folder
-- and game configs in a separate folder per game
InterfaceManager:SetFolder("FluentScriptHub")
SaveManager:SetFolder("FluentScriptHub/specific-game")
 
InterfaceManager:BuildInterfaceSection(Tabs.Settings)
SaveManager:BuildConfigSection(Tabs.Settings)
 
 
Window:SelectTab(1)
 
Fluent:Notify({
    Title = "shessssh",
    Content = "The script has been loaded.",
    Duration = 5
})
 
-- You can use the SaveManager:LoadAutoloadConfig() to load a config
-- which has been marked to be one that auto loads!
SaveManager:LoadAutoloadConfig()
