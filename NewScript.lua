local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/SixZensED/Backups/refs/heads/main/xeo.css"))()

local main = library.new({Loading = false}) -- true : Loading Screen
local tab = main.tab({Title = "MAIN"})
local tab2 = main.tab({Title = "STATS"})
local tab3 = main.tab({Title = "ITEM"})
local tab4 = main.tab({Title = "MATERIAL"})
local tab5 = main.tab({Title = "SHOP"})
local tab6 = main.tab({Title = "RAIDS"})
local tab7 = main.tab({Title = "TELEPORT"})
local tab8 = main.tab({Title = "OTHER"})

-----

local page1 = tab.page({Title = "SETTING-FRAM⚙️",Side = 2})
local page2 = tab.page({Title = "LEVEL🔥",Side = 1})
local page3 = tab.page({Title = "MELEE👊",Side = 1})
local page4 = tab.page({Title = "BOSS🎭",Side = 1})
local page5 = tab2.page({Title = "STATS🌟",Side = 1})
local page6 = tab3.page({Title = "SWORD⚔️",Side = 1})
local page7 = tab3.page({Title = "GUN🔫",Side = 2})
local page8 = tab3.page({Title = "ACCESSORIES👑",Side = 1})
local page9 = tab4.page({Title = "METERILA🎃",Side = 1})
local page10 = tab5.page({Title = "MELEE👊",Side = 1})
local page11 = tab5.page({Title = "FRUITS🍇",Side = 1})
local page12 = tab5.page({Title = "RESET-STATS🔄",Side = 2})
local page13 = tab5.page({Title = "RANDOM-RACE🔄",Side = 2})
local page14 = tab5.page({Title = "RACE👾",Side = 2})
local page15 = tab5.page({Title = "BONE🦴",Side = 2})
local page16 = tab6.page({Title = "RAIDS🗻",Side = 1})
local page17 = tab7.page({Title = "TELEPORT🏝️",Side = 1})
local page18 = tab7.page({Title = "SEA🌊",Side = 2})
local page19 = tab8.page({Title = "OTHER➕",Side = 1})


-----TAB1----SETTING

local toggle = page1.Toggle({Title = "AUTO-REDEEM ALL CODE",Default = false,Callback = function(value)
	_G.Redeem = value
	while _G.Redeem do wait (1)
		-- Redeem
		redeem = {
			'Sub2Fer999',
			'Enyu_is_Pro',
			'JCWK',
			'StarcodeHEO',
			'MagicBUS',
			'KittGaming',
			'Sub2CaptainMaui',
			'Sub2OfficialNoobie',
			'TheGreatAce',
			'Sub2NoobMaster123',
			'Sub2Daigrock',
			'Axiore',
			'StrawHatMaine',
			'TantaiGaming',
			'Bluxxy',
			'SUB2GAMERROBOT_EXP1',
			'GAMER_ROBOT_1M',
			'SUBGAMERROBOT_RESET',
			'RESET_5B',
			'SUB2GAMERROBOT_RESET1',
			'Sub2UncleKizaru',
			'ADMIN_TROLL ',
			'DRAGONABUSE ',
			'DEVSCOOKING '
		}
		spawn(function()
			for i,v in pairs(redeem) do
				game:GetService("ReplicatedStorage").Remotes.Redeem:InvokeServer(v)
			end
		end)
		wait(1)
		game:GetService("ReplicatedStorage").Assets.GUI.DamageCounter.Enabled = false
	end
end,})
-- toggle.SetValue(false)

local toggle = page1.Toggle({Title = "AUTO-EQUIP",Default = false,Callback = function(value)
	print(value)
end,})
-- toggle.SetValue(false)

local toggle = page1.Toggle({Title = "FAST-ATTACK",Default = false,Callback = function(value)
	print(value)
end,})
-- toggle.SetValue(false)

local toggle = page1.Toggle({Title = "FPS-BOOSTER",Default = false,Callback = function(value)
	loadstring(game:HttpGet("https://raw.githubusercontent.com/Fame5286/fps/main/fps"))()
end,})
-- toggle.SetValue(false)

local toggle = page1.Toggle({Title = "DARK-SCREEN",Default = false,Callback = function(value)
	local ScreenGui = Instance.new("ScreenGui")
	local Frame = Instance.new("Frame")
	local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")


	ScreenGui.Parent = game.CoreGui
	ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

	Frame.Parent = ScreenGui
	Frame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Frame.BorderSizePixel = 0
	Frame.Position = UDim2.new(-0.694346309, 0, -0.293398231, 0)
	Frame.Size = UDim2.new(2.18968058, 0, 2.13707471, 0)
	Frame.ZIndex = -1

	UIAspectRatioConstraint.Parent = Frame
	UIAspectRatioConstraint.AspectRatio = 2.127
end,})
-- toggle.SetValue(false)

----MELEE

local toggle = page1.Toggle({Title = "AUTO OPEN-RACE V3",Default = false,Callback = function(value)
	_G.v3 = value
	while _G.v3 do wait ()
		game:service('VirtualInputManager'):SendKeyEvent(true, "Space", false, game)
	end
end,})
-- toggle.SetValue(false)

local toggle = page1.Toggle({Title = "AUTO OPEN-RACE V4",Default = false,Callback = function(value)
	_G.v4 = value
	while _G.v4 do wait ()
		game:service('VirtualInputManager'):SendKeyEvent(true, "Space", false, game)
	end
end,})
-- toggle.SetValue(false)

local toggle = page2.Toggle({Title = "AUTO-FRAM LEVEL",Default = false,Callback = function(value)
	print(value)
end,})
-- toggle.SetValue(false)

local toggle = page3.Toggle({Title = "AUTO-SUPERHUMAN",Default = false,Callback = function(value)
	print(value)
end,})
-- toggle.SetValue(false)

local toggle = page3.Toggle({Title = "AUTO-SHARKMANKARATE",Default = false,Callback = function(value)
	print(value)
end,})
-- toggle.SetValue(false)

local toggle = page3.Toggle({Title = "AUTO-DEATHSTEP",Default = false,Callback = function(value)
	print(value)
end,})
-- toggle.SetValue(false)

local toggle = page3.Toggle({Title = "AUTO-ELECTRIC-CLAW",Default = false,Callback = function(value)
	print(value)
end,})
-- toggle.SetValue(false)

local toggle = page3.Toggle({Title = "AUTO-DARGONTALON",Default = false,Callback = function(value)
	print(value)
end,})
-- toggle.SetValue(false)

local toggle = page3.Toggle({Title = "AUTO-GODHUMAN",Default = false,Callback = function(value)
	print(value)
end,})
-- toggle.SetValue(false)

-----BOSS

local toggle = page4.Toggle({Title = "AUTO-ELITE HUNTER",Default = false,Callback = function(value)
	print(value)
end,})
-- toggle.SetValue(false)

local toggle = page4.Toggle({Title = "AUTO-KATAKULI V1",Default = false,Callback = function(value)
	print(value)
end,})
-- toggle.SetValue(false)

----TAB2----STATS

local Slider = page5.Slider({Title = "MELEE",Min = 0,Max = 5000,Default = 100,Callback = function(value)
	print(value)
end,})
-- Slider.SetValue(20)

local toggle = page5.Toggle({Title = "UP-MELEE",Default = false,Callback = function(value)
	_G.ME = value
    while _G.ME do wait ()
        local args = {
            [1] = "AddPoint",
            [2] = "Melee",
            [3] = value
        }
        
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer(unpack(args))
    end
end,})
-- toggle.SetValue(false)

local Slider = page5.Slider({Title = "DEFENSE",Min = 0,Max = 5000,Default = 100,Callback = function(value)
	print(value)
end,})
-- Slider.SetValue(20)

local toggle = page5.Toggle({Title = "UP-DEFENSE",Default = false,Callback = function(value)
	_G.DE = value
    while _G.DE do wait ()
        local args = {
            [1] = "AddPoint",
            [2] = "Defense",
            [3] = value
        }
        
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer(unpack(args))
    end
end,})
-- toggle.SetValue(false)

local Slider = page5.Slider({Title = "SWORD",Min = 0,Max = 5000,Default = 100,Callback = function(value)
	print(value)
end,})
-- Slider.SetValue(20)

local toggle = page5.Toggle({Title = "UP-SWORD",Default = false,Callback = function(value)
    _G.SW = value
    while _G.SW do wait ()
	local args = {
        [1] = "AddPoint",
        [2] = "Sword",
        [3] = value
    }
    
    game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer(unpack(args))
   end
end,})
-- toggle.SetValue(false)

local Slider = page5.Slider({Title = "GUN",Min = 0,Max = 5000,Default = 100,Callback = function(value)
	print(value)
end,})
-- Slider.SetValue(20)

local toggle = page5.Toggle({Title = "UP-GUN",Default = false,Callback = function(value)
	_G.GU = value
    while _G.GU do wait ()
        local args = {
            [1] = "AddPoint",
            [2] = "Gun",
            [3] = value
        }
        
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer(unpack(args))
    end
end,})
-- toggle.SetValue(false)

local Slider = page5.Slider({Title = "BLOXFRUITE",Min = 0,Max = 5000,Default = 100,Callback = function(value)
	print(value)
end,})
-- Slider.SetValue(20)

local toggle = page5.Toggle({Title = "UP-BLOXFRUITE",Default = false,Callback = function(value)
    _G.BF = value
    while _G.BF do wait ()
	local args = {
        [1] = "AddPoint",
        [2] = "Demon Fruit",
        [3] = value
    }
    
    game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer(unpack(args))
end
end,})
-- toggle.SetValue(false)

-----TAB3----SWORD

local toggle = page6.Toggle({Title = "AUTO-TRUE TRIPLE KATANA",Default = false,Callback = function(value)
	print(value)
end,})
-- toggle.SetValue(false)

local toggle = page6.Toggle({Title = "AUTO-CURSED DUAL KATANA",Default = false,Callback = function(value)
	print(value)
end,})
-- toggle.SetValue(false)
local toggle = page6.Toggle({Title = "AUTO-HALLOW SCYTHE",Default = false,Callback = function(value)
	print(value)
end,})
-- toggle.SetValue(false)

local toggle = page6.Toggle({Title = "AUTO-YAMA",Default = false,Callback = function(value)
	print(value)
end,})
-- toggle.SetValue(false)

local toggle = page6.Toggle({Title = "AUTO-TUSHITA",Default = false,Callback = function(value)
	print(value)
end,})
-- toggle.SetValue(false)

local toggle = page6.Toggle({Title = "AUTO-SPIKEY TRIDENT",Default = false,Callback = function(value)
	print(value)
end,})
-- toggle.SetValue(false)

local toggle = page6.Toggle({Title = "AUTO-SHIZU",Default = false,Callback = function(value)
	print(value)
end,})
-- toggle.SetValue(false)

local toggle = page6.Toggle({Title = "AUTO-SAISHI",Default = false,Callback = function(value)
	print(value)
end,})
-- toggle.SetValue(false)

local toggle = page6.Toggle({Title = "AUTO-OROSHI",Default = false,Callback = function(value)
	print(value)
end,})
-- toggle.SetValue(false)

local toggle = page6.Toggle({Title = "AUTO-RENGOKU",Default = false,Callback = function(value)
	print(value)
end,})
-- toggle.SetValue(false)

local toggle = page6.Toggle({Title = "AUTO-POLE (1ST FORM)",Default = false,Callback = function(value)
	print(value)
end,})
-- toggle.SetValue(false)

local toggle = page6.Toggle({Title = "AUTO-MIDNIGHT BLADE",Default = false,Callback = function(value)
	print(value)
end,})
-- toggle.SetValue(false)

local toggle = page6.Toggle({Title = "AUTO-KOKO",Default = false,Callback = function(value)
	print(value)
end,})
-- toggle.SetValue(false)

local toggle = page6.Toggle({Title = "AUTO-DARK DAGGER",Default = false,Callback = function(value)
	print(value)
end,})
-- toggle.SetValue(false)

local toggle = page6.Toggle({Title = "AUTO-BUDDY SWORD",Default = false,Callback = function(value)
	print(value)
end,})
-- toggle.SetValue(false)

local toggle = page6.Toggle({Title = "AUTO-CANVANDER",Default = false,Callback = function(value)
	print(value)
end,})
-- toggle.SetValue(false)


-----GUN

local toggle = page7.Toggle({Title = "AUTO-KABUCHA",Default = false,Callback = function(value)
	print(value)
end,})
-- toggle.SetValue(false)

----ACCESSORIES

local Label = page8.Label({Title = "ACCESSORIES SEAL3"})
--Label.SetValue().Text = "Test"

local toggle = page8.Toggle({Title = "AUTO-VALKYRIE HELM",Default = false,Callback = function(value)
	print(value)
end,})
-- toggle.SetValue(false)

local toggle = page8.Toggle({Title = "AUTO-PALE SCARF",Default = false,Callback = function(value)
	print(value)
end,})
-- toggle.SetValue(false)

local toggle = page8.Toggle({Title = "AUTO-HOLY CROWN",Default = false,Callback = function(value)
	print(value)
end,})
-- toggle.SetValue(false)

local toggle = page8.Toggle({Title = "AUTO-MUSKETEER HAT",Default = false,Callback = function(value)
	print(value)
end,})
-- toggle.SetValue(false)

local Label = page8.Label({Title = "ACCESSORIES SEA2"})
--Label.SetValue().Text = "Test"

local toggle = page8.Toggle({Title = "AUTO-DARK COAT",Default = false,Callback = function(value)
	print(value)
end,})
-- toggle.SetValue(false)

local toggle = page8.Toggle({Title = "AUTO-SWAN GLASSES",Default = false,Callback = function(value)
	print(value)
end,})
-- toggle.SetValue(false)

local toggle = page8.Toggle({Title = "AUTO-ZEBRA CAP",Default = false,Callback = function(value)
	print(value)
end,})
-- toggle.SetValue(false)

-----TAB4----METERILA

local toggle = page9.Toggle({Title = "AUTO-BONE",Default = false,Callback = function(value)
	print(value)
end,})
-- toggle.SetValue(false)

local toggle = page9.Toggle({Title = "AUTO-MAGMAORE",Default = false,Callback = function(value)
	print(value)
end,})
-- toggle.SetValue(false)

local toggle = page9.Toggle({Title = "AUTO-ECTOPLASM",Default = false,Callback = function(value)
	print(value)
end,})
-- toggle.SetValue(false)

local toggle = page9.Toggle({Title = "AUTO-FISHTAIL",Default = false,Callback = function(value)
	print(value)
end,})
-- toggle.SetValue(false)

local toggle = page9.Toggle({Title = "AUTO-MYSTICDROPLET",Default = false,Callback = function(value)
	print(value)
end,})
-- toggle.SetValue(false)

local toggle = page9.Toggle({Title = "AUTO-VAMPIREFANG",Default = false,Callback = function(value)
	print(value)
end,})
-- toggle.SetValue(false)

local toggle = page9.Toggle({Title = "AUTO-MINITUSK",Default = false,Callback = function(value)
	print(value)
end,})
-- toggle.SetValue(false)

-----TAB5----MELEE

local Label = page10.Label({Title = "SUPERHUMAN"})
--Label.SetValue().Text = "Test"

page10.Button({Title = "BUY",Callback = function()
	local args = {
		[1] = "BuySuperhuman"
	}

	game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer(unpack(args))
end,})

local Label = page10.Label({Title = "SHARKMANKARATE"})
--Label.SetValue().Text = "Test"

page10.Button({Title = "BUY",Callback = function()
	local args = {
		[1] = "BuySharkmanKarate"
	}

	game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer(unpack(args))
end,})

local Label = page10.Label({Title = "DEATHSTEP"})
--Label.SetValue().Text = "Test"

page10.Button({Title = "BUY",Callback = function()
	local args = {
		[1] = "BuyDeathStep"
	}

	game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer(unpack(args))
end,})

local Label = page10.Label({Title = "ELECTRIC-CLAW"})
--Label.SetValue().Text = "Test"

page10.Button({Title = "BUY",Callback = function()
	local args = {
		[1] = "BuyElectricClaw"
	}

	game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer(unpack(args))
end,})

local Label = page10.Label({Title = "DARGONTALON"})
--Label.SetValue().Text = "Test"

page10.Button({Title = "BUY",Callback = function()
	local args = {
		[1] = "BuyDragonTalon"
	}

	game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer(unpack(args))
end,})

local Label = page10.Label({Title = "GODHUMAN"})
--Label.SetValue().Text = "Test"

page10.Button({Title = "BUY",Callback = function()
	local args = {
		[1] = "BuyGodhuman"
	}

	game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer(unpack(args))
end,})

local Label = page10.Label({Title = "SANGUINE-ART"})
--Label.SetValue().Text = "Test"

page10.Button({Title = "BUY",Callback = function()
	local args = {
		[1] = "BuySanguineArt"
	}

	game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer(unpack(args))
end,})

-----OTHER

local Label = page11.Label({Title = "RANDOM-FRUITE"})
--Label.SetValue().Text = "Test"

page11.Button({Title = "RANDOM",Callback = function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Cousin","Buy")
end,})

local Label = page12.Label({Title = "RESET-STATS"})
--Label.SetValue().Text = "Test"

page12.Button({Title = "RESET",Callback = function()
	local args = {
		[1] = "BlackbeardReward",
		[2] = "Refund",
		[3] = "2"
	}

	game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer(unpack(args))
end,})

local Label = page13.Label({Title = "RANDOM-RACE"})
--Label.SetValue().Text = "Test"

page13.Button({Title = "RANDOM",Callback = function()
	local args = {
		[1] = "BlackbeardReward",
		[2] = "Reroll",
		[3] = "2"
	}

	game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer(unpack(args))
end,})

local Label = page14.Label({Title = "CYBORG"})
--Label.SetValue().Text = "Test"

page14.Button({Title = "BUY",Callback = function()
	print("button")
end,})

local Label = page14.Label({Title = "GHOUI"})
--Label.SetValue().Text = "Test"

page14.Button({Title = "BUY",Callback = function()
	print("button")
end,})

local toggle = page15.Toggle({Title = "RANDOM-BONE",Default = false,Callback = function(value)
	_G.bone = value
	while _G.bone do wait (0.2)
		local args = {
			[1] = "Bones",
			[2] = "Buy",
			[3] = 1,
			[4] = 1
		}

		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
	end
end,})
-- toggle.SetValue(false)

-----TAB6----RAIDS

local dropdown = page16.Dropdown({Title = "SELECT",List = {1,2,3,4,5,6},Default = 1,Multi = false,Callback = function(value)
	print(value)
end,})
-- dropdown.Add(value)
-- dropdown.Clear()

local toggle = page16.Toggle({Title = "BUY-CHIP",Default = false,Callback = function(value)
	print(value)
end,})
-- toggle.SetValue(false)

local toggle = page16.Toggle({Title = "START-RAIDS",Default = false,Callback = function(value)
	_G.St = value
	while _G.St do wait (1)
		fireclickdetector(game:GetService("Workspace").Map["Boat Castle"].RaidSummon2.Button.Main.ClickDetector)
	end
end,})
-- toggle.SetValue(false)

local toggle = page16.Toggle({Title = "AWAKENING",Default = false,Callback = function(value)
	print(value)
end,})
-- toggle.SetValue(false)

local toggle = page16.Toggle({Title = "KILL-AURA",Default = false,Callback = function(value)
	_G.KL = value
	while _G.KL do wait ()
		for i,v in pairs(game:GetService("Workspace").Enemies:GetDescendants()) do
			if v.ClassName == "Model" and v.Humanoid.Health > 0 then
				v.Humanoid.Health = Die
				sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius",  math.huge)
			end
		end
	end
	end,})
-- toggle.SetValue(false)

-----TAB7----TP

local dropdown = page17.Dropdown({Title = "SELECT-ISLAND",List = {1,2,3,4,5,6},Default = 1,Multi = false,Callback = function(value)
	print(value)
end,})
-- dropdown.Add(value)
-- dropdown.Clear()

local toggle = page17.Toggle({Title = "TELEPORT",Default = false,Callback = function(value)
	print(value)
end,})
-- toggle.SetValue(false)

local Label = page18.Label({Title = "TELEPORT TO SEA3"})
--Label.SetValue().Text = "Test"

page18.Button({Title = "TELEPORT",Callback = function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelZou")
end,})

local Label = page18.Label({Title = "TELEPORT TO SEA2"})
--Label.SetValue().Text = "Test"

page18.Button({Title = "TELEPORT",Callback = function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa")
end,})

local Label = page18.Label({Title = "TELEPORT TO SEA1"})
--Label.SetValue().Text = "Test"

page18.Button({Title = "TELEPORT",Callback = function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelMain")
end,})

-----TAB8----other

local toggle = page19.Toggle({Title = "TELEPORT TO FRUITE",Default = false,Callback = function(value)
	print(value)
end,})
-- toggle.SetValue(false)

local toggle = page19.Toggle({Title = "HOP SERVER",Default = false,Callback = function(value)
	_G.Hop = value
	while _G.Hop do wait ()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/Jelly-plays/Rejoin-script/main/obf_L744By559M18BbuseSG6en8r1zL31daK9060LV7WyvmS4bQp92aONWfwRE36FdcZ.lua.txt"))()
	end
end,})
-- toggle.SetValue(false)

local toggle = page19.Toggle({Title = "REJOIN",Default = false,Callback = function(value)
	_G.Rej = value
	while _G.Rej do wait ()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/Jelly-plays/Rejoin-script/main/obf_L744By559M18BbuseSG6en8r1zL31daK9060LV7WyvmS4bQp92aONWfwRE36FdcZ.lua.txt"))()
	end
end,})
-- toggle.SetValue(false)
