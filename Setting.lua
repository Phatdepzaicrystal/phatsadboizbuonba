return function(Tabs) -- Nhận `Tabs` từ script chính

    -- 🔹 Tạo các phần trong tab Settings
    local SettingFarm = Tabs.Setting:AddSection("General Settings")
    local AutoStats = Tabs.Setting:AddSection("Auto Stats")
    local SkillSettings = Tabs.Setting:AddSection("Skill Settings")
    local LocalPlayerSettings = Tabs.Setting:AddSection("Local Player")

    -- 🟢 Fast Attack Toggle
    local ToggleFastAttack = SettingFarm:AddToggle("ToggleFastAttack", {Title = "Fast Attack", Default = true})
    ToggleFastAttack:OnChanged(function(Value) 
        _G.FastAttackFiFai = Value 
    end)
    Options.ToggleFastAttack:SetValue(true)

    -- 🟢 Bring Mob Toggle
    local ToggleBringMob = SettingFarm:AddToggle("ToggleBringMob", {Title = "Enable Bring Mob / Magnet", Default = false})
    ToggleBringMob:OnChanged(function(Value) 
        _G.BringMob = Value 
    end)
    Options.ToggleBringMob:SetValue(false)

    -- 🟢 Bypass TP Toggle
    local ToggleBypassTP = SettingFarm:AddToggle("ToggleBypassTP", {Title = "Enable Bypass TP", Default = false})
    ToggleBypassTP:OnChanged(function(Value) 
        _G.BypassTP = Value 
    end)
    Options.ToggleBypassTP:SetValue(false)

    -- 🟢 Anti Ban Toggle
    local ToggleAntiBan = SettingFarm:AddToggle("ToggleAntiBan", {Title = "Anti Ban", Default = true})
    ToggleAntiBan:OnChanged(function(Value) 
        _G.AntiBan = Value 
    end)
    Options.ToggleAntiBan:SetValue(true)

    -- ✅ Xử lý Fast Attack
    spawn(function()
        while wait(0.2) do
            pcall(function()
                if _G.FastAttackFiFai then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("FastAttack", true)
                end
            end)
        end
    end)

    -- ✅ Xử lý Bring Mob
    spawn(function()
        while wait(0.2) do
            pcall(function()
                if _G.BringMob then
                    for _, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and v:FindFirstChild("HumanoidRootPart") then
                            v.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
                        end
                    end
                end
            end)
        end
    end)

    -- ✅ FPS Booster Button
    local function FPSBooster()
        local g = game
        local w = g.Workspace
        local l = g.Lighting
        local t = w.Terrain
        l.GlobalShadows = false
        l.FogEnd = 9e9
        l.Brightness = 0
        settings().Rendering.QualityLevel = "Level01"
        for _, v in pairs(g:GetDescendants()) do
            if v:IsA("Part") or v:IsA("MeshPart") then
                v.Material = "Plastic"
                v.Reflectance = 0
            end
        end
    end
    SettingFarm:AddButton({Title = "FPS Booster", Callback = FPSBooster})

    -- ✅ Auto Stats
    local ToggleMelee = AutoStats:AddToggle("ToggleMelee", {Title = "Auto Add Melee", Default = false})
    ToggleMelee:OnChanged(function(Value) _G.Auto_Stats_Melee = Value end)
    Options.ToggleMelee:SetValue(false)

    local ToggleDefense = AutoStats:AddToggle("ToggleDefense", {Title = "Auto Add Defense", Default = false})
    ToggleDefense:OnChanged(function(Value) _G.Auto_Stats_Defense = Value end)
    Options.ToggleDefense:SetValue(false)

    -- ✅ Auto Skill Toggles
    local ToggleSkillZ = SkillSettings:AddToggle("ToggleZ", {Title = "Skill Z", Default = true})
    ToggleSkillZ:OnChanged(function(Value) _G.SkillZ = Value end)
    Options.ToggleZ:SetValue(true)

    local ToggleSkillX = SkillSettings:AddToggle("ToggleX", {Title = "Skill X", Default = true})
    ToggleSkillX:OnChanged(function(Value) _G.SkillX = Value end)
    Options.ToggleX:SetValue(true)

    -- ✅ Infinite Soru Toggle
    local ToggleInfSoru = LocalPlayerSettings:AddToggle("ToggleInfSoru", {Title = "Infinite Soru", Default = false})
    ToggleInfSoru:OnChanged(function(Value) _G.InfSoru = Value end)
    Options.ToggleInfSoru:SetValue(false)

    -- ✅ No Clip Toggle
    local ToggleNoClip = LocalPlayerSettings:AddToggle("ToggleNoClip", {Title = "No Clip", Default = false})
    ToggleNoClip:OnChanged(function(Value) _G.NoClip = Value end)
    Options.ToggleNoClip:SetValue(false)

    -- ✅ Auto Save Spawn Toggle
    local ToggleSaveSpawn = SettingFarm:AddToggle("ToggleSaveSpawn", {Title = "Auto Save Spawn", Default = false})
    ToggleSaveSpawn:OnChanged(function(Value) 
        _G.SaveSpawn = Value 
        if Value then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
        end
    end)
    Options.ToggleSaveSpawn:SetValue(false)

end
