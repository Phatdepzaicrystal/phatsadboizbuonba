-- Troll Script: Giả vờ bị ban acc
-- Dùng trong LocalScript (vd: Script GUI hoặc executor client)

local Players = game:GetService("Players")
local player = Players.LocalPlayer

wait(5) -- Chờ 5 giây cho kịch tính :v

-- Hiện GUI giả vờ bị ban acc
local banGui = Instance.new("ScreenGui")
banGui.Name = "BanTrollGui"
banGui.Parent = player:WaitForChild("PlayerGui")

local frame = Instance.new("Frame")
frame.Size = UDim2.new(0.5, 0, 0.3, 0)
frame.Position = UDim2.new(0.25, 0, 0.35, 0)
frame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
frame.BorderSizePixel = 0
frame.Parent = banGui

local title = Instance.new("TextLabel")
title.Size = UDim2.new(1, 0, 0.3, 0)
title.Position = UDim2.new(0, 0, 0, 0)
title.BackgroundTransparency = 1
title.Text = "⚠ Account Banned ⚠"
title.TextColor3 = Color3.fromRGB(255, 70, 70)
title.TextScaled = true
title.Font = Enum.Font.GothamBold
title.Parent = frame

local reason = Instance.new("TextLabel")
reason.Size = UDim2.new(1, 0, 0.5, 0)
reason.Position = UDim2.new(0, 0, 0.3, 0)
reason.BackgroundTransparency = 1
reason.Text = "Reason: Exploiting Game Assets\nAppeal at: roblox.com/support"
reason.TextColor3 = Color3.fromRGB(255, 255, 255)
reason.TextScaled = true
reason.Font = Enum.Font.Gotham
reason.Parent = frame

local button = Instance.new("TextButton")
button.Size = UDim2.new(0.4, 0, 0.2, 0)
button.Position = UDim2.new(0.3, 0, 0.8, 0)
button.Text = "Exit Game"
button.BackgroundColor3 = Color3.fromRGB(200, 50, 50)
button.TextColor3 = Color3.fromRGB(255, 255, 255)
button.Font = Enum.Font.GothamBold
button.TextScaled = true
button.Parent = frame

button.MouseButton1Click:Connect(function()
    player:Kick("You have been banned.")
end)
