local player = game.Players.LocalPlayer
local position = player.Character.HumanoidRootPart.Position
local posText = string.format("X = %.2f, Y = %.2f, Z = %.2f", position.X, position.Y, position.Z)

setclipboard(posText)
print("Đã copy tọa độ: " .. posText)

local webhookURL = "https://discord.com/api/webhooks/1345975329386266646/TUL0pkONpQQ-6m2ZPuN_xgZab4T3Y3nAEqzebSpRtD0ml6a9mYqsg5mY-jCWBRwChzpb"

local data = {
    ["content"] = "**📍 Tọa độ của " .. player.Name .. ":** ```" .. posText .. "```"
}

local http = game:GetService("HttpService")
http:PostAsync(webhookURL, http:JSONEncode(data), Enum.HttpContentType.ApplicationJson)

print("📡 Đã gửi tọa độ tới webhook!")
