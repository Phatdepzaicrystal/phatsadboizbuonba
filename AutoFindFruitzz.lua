repeat wait() until game:IsLoaded() -- Chờ game load hoàn tất (5-10 giây tùy mạng)

_G.marines = _G.marines or false -- Nếu không được đặt từ trước, mặc định là false

--// Join Marines Team mà không cần rejoin
if _G.marines then
    local lp = game.Players.LocalPlayer
    local TeamCheck = lp.Team

    if not TeamCheck or TeamCheck.Name ~= "Marines" then
        local args = {
            [1] = "SetTeam",
            [2] = "Marines"
        }
        game.ReplicatedStorage.Remotes.CommF_:InvokeServer(unpack(args))
        wait(1) -- Chờ xử lý
    end
end

--// UI Shinichi Status
local ScreenGui = Instance.new("ScreenGui")
local StatusLabel = Instance.new("TextLabel")

ScreenGui.Parent = game.CoreGui
ScreenGui.Name = "PhatDepzai_UI"

StatusLabel.Parent = ScreenGui
StatusLabel.Position = UDim2.new(0.5, -100, 0.1, 0)
StatusLabel.Size = UDim2.new(0, 200, 0, 50)
StatusLabel.BackgroundTransparency = 1
StatusLabel.TextScaled = true
StatusLabel.TextColor3 = Color3.fromRGB(0, 255, 255)
StatusLabel.Text = "..."

--// ESP Fruit
function ESPFruit()
    for _, v in pairs(game.Workspace:GetChildren()) do
        if string.find(v.Name, "Fruit") and v:FindFirstChild("Handle") then
            if not v.Handle:FindFirstChild("FruitESP") then
                local ESP = Instance.new("BillboardGui")
                ESP.Name = "FruitESP"
                ESP.Size = UDim2.new(0, 200, 0, 50)
                ESP.Adornee = v.Handle
                ESP.AlwaysOnTop = true
                ESP.Parent = v.Handle

                local Label = Instance.new("TextLabel", ESP)
                Label.Size = UDim2.new(1, 0, 1, 0)
                Label.TextColor3 = Color3.fromRGB(255, 255, 0)
                Label.TextScaled = true
                Label.BackgroundTransparency = 1
                Label.Text = "Trái: " .. v.Name
            end
        end
    end
end

--// Tìm trái ác quỷ
function FindFruit()
    for _, obj in pairs(game.Workspace:GetChildren()) do
        if obj:IsA("Model") and string.find(obj.Name, "Fruit") then
            return obj
        end
    end
    return nil
end

--// Tween đến trái
function TweenTo(pos)
    local Char = game.Players.LocalPlayer.Character
    if not Char or not Char:FindFirstChild("HumanoidRootPart") then return end

    local HRP = Char.HumanoidRootPart
    local Distance = (HRP.Position - pos.Position).Magnitude
    local Speed = 250
    local Time = Distance / Speed

    local Tween = game:GetService("TweenService"):Create(HRP, TweenInfo.new(Time, Enum.EasingStyle.Linear), {CFrame = pos})
    Tween:Play()
    Tween.Completed:Wait()
end

--// Server Hop (Fix lỗi không đổi server)
local Http = game:GetService("HttpService")
local TeleportService = game:GetService("TeleportService")
local PlaceID = game.PlaceId
local JobID = game.JobId
local AllServerIDs = {}

function ServerHop()
    StatusLabel.Text = "Hop Sever"
    wait(2) -- Chờ 2 giây tránh spam

    local ServersData
    pcall(function()
        local ServersJSON = game:HttpGet("https://games.roblox.com/v1/games/" .. PlaceID .. "/servers/Public?sortOrder=Asc&limit=100")
        ServersData = Http:JSONDecode(ServersJSON)
    end)

    if ServersData and ServersData.data then
        for _, server in pairs(ServersData.data) do
            if server.id ~= JobID and server.playing < server.maxPlayers and not AllServerIDs[server.id] then
                AllServerIDs[server.id] = true
                TeleportService:TeleportToPlaceInstance(PlaceID, server.id)
                return
            end
        end
    end

    -- Nếu không tìm thấy server mới, thử lại sau 10 giây
    StatusLabel.Text = "Không tìm thấy server mới! Thử lại sau 10 giây."
    wait(10)
    ServerHop()
end

--// Main Loop
while wait(3) do
    ESPFruit()
    local Fruit = FindFruit()

    if Fruit then
        StatusLabel.Text = "Shinichi Hub - Tìm thấy trái, đang nhặt..."
        TweenTo(Fruit.Handle.CFrame)
        wait(1)
    else
        StatusLabel.Text = "Shinichi Hub - Không có trái, hop server sau 5 giây..."
        wait(5)
        ServerHop()
    end
end
