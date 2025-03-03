
local player = game.Players.LocalPlayer
local position = player.Character.HumanoidRootPart.Position
local posText = string.format("X = %.2f, Y = %.2f, Z = %.2f", position.X, position.Y, position.Z)

setclipboard(posText) -- Copy tọa độ vào clipboard
print("Đã copy tọa độ: " .. posText)

-- Webhook URL của bạn
local webhookURL = "https://discord.com/api/webhooks/1345975329386266646/TUL0pkONpQQ-6m2ZPuN_xgZab4T3Y3nAEqzebSpRtD0ml6a9mYqsg5mY-jCWBRwChzpb"

-- Dữ liệu gửi đến webhook
local data = {
    ["content"] = "**📍 Tọa độ của " .. player.Name .. ":** ```" .. posText .. "```"
}

-- Gửi request bằng request()
local success, response = pcall(function()
    return request({
        Url = webhookURL,
        Method = "POST",
        Headers = {["Content-Type"] = "application/json"},
        Body = game:GetService("HttpService"):JSONEncode(data)
    })
end)

if success then
    print("📡 Đã gửi tọa độ tới webhook!")
else
    warn("❌ Lỗi gửi webhook!")
end
