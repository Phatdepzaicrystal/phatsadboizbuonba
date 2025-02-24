return function(Tabs) -- Nhận Tabs từ script chính

    local SettingFarm = Tabs.Setting:AddSection("Setting")
    local ToggleFastAttack = Tabs.Setting:AddToggle("ToggleFastAttack", {Title = "Fast Attack", Default = true})

        ToggleFastAttack:OnChanged(
            function(Value)
                _G.FastAttackFiFai = Value
            end
        )
        Options.ToggleFastAttack:SetValue(true)

        spawn(
            function()
                while wait(0.4) do
                    pcall(
                        function()
                            if _G.FastAttackFiFai then
                                repeat
                                    wait(0)
                                until not _G.FastAttack
                            end
                        end
                    )
                end
            end
        )
        local Camera = require(game.ReplicatedStorage.Util.CameraShaker)
        Camera:Stop()

        local ToggleBringMob =
            Tabs.Setting:AddToggle("ToggleBringMob", {Title = " Enable Bring Mob / Magnet", Default = false})
        ToggleBringMob:OnChanged(
            function(Value)
                _G.BringMob = Value
            end
        )
        Options.ToggleBringMob:SetValue(false)
        spawn(
            function()
                while wait() do
                    pcall(
                        function()
                            for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if _G.BringMob and bringmob then
                                    if v.Name == MonFarm and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                                        if v.Name == "Factory Staff" then
                                            if (v.HumanoidRootPart.Position - FarmPos.Position).Magnitude <= 500 then
                                                v.Head.CanCollide = false
                                                v.HumanoidRootPart.CanCollide = false
                                                v.HumanoidRootPart.Size = Vector3.new(1, 1, 1)
                                                v.HumanoidRootPart.CFrame = FarmPos
                                                sethiddenproperty(
                                                    game.Players.LocalPlayer,
                                                    "SimulationRadius",
                                                    math.huge
                                                )
                                            end
                                        elseif v.Name == MonFarm then
                                            if (v.HumanoidRootPart.Position - FarmPos.Position).Magnitude <= 500 then
                                                v.Head.CanCollide = false
                                                v.HumanoidRootPart.CanCollide = false
                                                v.HumanoidRootPart.Size = Vector3.new(1, 1, 1)
                                                v.HumanoidRootPart.CFrame = FarmPos
                                                sethiddenproperty(
                                                    game.Players.LocalPlayer,
                                                    "SimulationRadius",
                                                    math.huge
                                                )
                                            end
                                        end
                                    end
                                end
                            end
                        end
                    )
                end
            end
        )

        local ToggleBypassTP = Tabs.Setting:AddToggle("ToggleBypassTP", {Title = "Enable Bypass Tp", Default = false})
        ToggleBypassTP:OnChanged(
            function(Value)
                BypassTP = Value
            end
        )
        Options.ToggleBypassTP:SetValue(false)

        local v153 =
            Tabs.Setting:AddToggle(
            "ToggleAntiBand",
            {
                Title = "Anti Band",
                Description = "",
                Default = true
            }
        )
        v153:OnChanged(
            function(v384)
                _G.AntiBand = v384
            end
        )
        local v154 = {
            17884881,
            120173604,
            912348
        }
        spawn(
            function()
                while wait() do
                    if _G.AntiBand then
                        for v809, v810 in pairs(game:GetService("Players"):GetPlayers()) do
                            if table.find(v154, v810.UserId) then
                                Hop()
                            end
                        end
                    end
                end
            end
        )
        local ToggleRemove =
            Tabs.Setting:AddToggle("ToggleRemove", {Title = " Enable Remove Dame Text", Default = true})
        ToggleRemove:OnChanged(
            function(Value)
                FaiFaoRemovetext = Value
            end
        )
        Options.ToggleRemove:SetValue(true)

        spawn(
            function()
                while wait() do
                    if FaiFaoRemovetext then
                        game:GetService("ReplicatedStorage").Assets.GUI.DamageCounter.Enabled = false
                    else
                        game:GetService("ReplicatedStorage").Assets.GUI.DamageCounter.Enabled = true
                    end
                end
            end
        )

        local ToggleRemoveNotify =
            Tabs.Setting:AddToggle("ToggleRemoveNotify", {Title = " Enable Remove All Notify", Default = false})
        ToggleRemoveNotify:OnChanged(
            function(Value)
                RemoveNotify = Value
            end
        )
        Options.ToggleRemoveNotify:SetValue(false)

        spawn(
            function()
                while wait() do
                    if RemoveNotify then
                        game.Players.LocalPlayer.PlayerGui.Notifications.Enabled = false
                    else
                        game.Players.LocalPlayer.PlayerGui.Notifications.Enabled = true
                    end
                end
            end
        )

        local ToggleWhite = Tabs.Setting:AddToggle("ToggleWhite", {Title = " Enable White Screen", Default = false})
        ToggleWhite:OnChanged(
            function(Value)
                _G.WhiteScreen = Value
                if _G.WhiteScreen == true then
                    game:GetService("RunService"):Set3dRenderingEnabled(false)
                elseif _G.WhiteScreen == false then
                    game:GetService("RunService"):Set3dRenderingEnabled(true)
                end
            end
        )
        Options.ToggleWhite:SetValue(false)

        Tabs.Setting:AddButton(
            {
                Title = "Fps Booster",
                Description = "Boost your fps",
                Callback = function()
                    FPSBooster()
                end
            }
        )

        function FPSBooster()
            local decalsyeeted = true
            local g = game
            local w = g.Workspace
            local l = g.Lighting
            local t = w.Terrain
            sethiddenproperty(l, "Technology", 2)
            sethiddenproperty(t, "Decoration", false)
            t.WaterWaveSize = 0
            t.WaterWaveSpeed = 0
            t.WaterReflectance = 0
            t.WaterTransparency = 0
            l.GlobalShadows = false
            l.FogEnd = 9e9
            l.Brightness = 0
            settings().Rendering.QualityLevel = "Level01"
            for i, v in pairs(g:GetDescendants()) do
                if v:IsA("Part") or v:IsA("Union") or v:IsA("CornerWedgePart") or v:IsA("TrussPart") then
                    v.Material = "Plastic"
                    v.Reflectance = 0
                elseif v:IsA("Decal") or v:IsA("Texture") and decalsyeeted then
                    v.Transparency = 1
                elseif v:IsA("ParticleEmitter") or v:IsA("Trail") then
                    v.Lifetime = NumberRange.new(0)
                elseif v:IsA("Explosion") then
                    v.BlastPressure = 1
                    v.BlastRadius = 1
                elseif v:IsA("Fire") or v:IsA("SpotLight") or v:IsA("Smoke") or v:IsA("Sparkles") then
                    v.Enabled = false
                elseif v:IsA("MeshPart") then
                    v.Material = "Plastic"
                    v.Reflectance = 0
                    v.TextureID = 10385902758728957
                end
            end
            for i, e in pairs(l:GetChildren()) do
                if
                    e:IsA("BlurEffect") or e:IsA("SunRaysEffect") or e:IsA("ColorCorrectionEffect") or
                        e:IsA("BloomEffect") or
                        e:IsA("DepthOfFieldEffect")
                 then
                    e.Enabled = false
                end
            end
        end

        local SKill = Tabs.Setting:AddSection("Settings Mastery")
        local ToggleZ = Tabs.Setting:AddToggle("ToggleZ", {Title = "Skill Z", Default = true})
        ToggleZ:OnChanged(
            function(Value)
                SkillZ = Value
            end
        )
        Options.ToggleZ:SetValue(true)

        local ToggleX = Tabs.Setting:AddToggle("ToggleX", {Title = "Skill X", Default = true})
        ToggleX:OnChanged(
            function(Value)
                SkillX = Value
            end
        )
        Options.ToggleX:SetValue(true)

        local ToggleC = Tabs.Setting:AddToggle("ToggleC", {Title = "Skill C", Default = true})
        ToggleC:OnChanged(
            function(Value)
                SkillC = Value
            end
        )
        Options.ToggleC:SetValue(true)

        local ToggleV = Tabs.Setting:AddToggle("ToggleV", {Title = "Skill V", Default = true})
        ToggleV:OnChanged(
            function(Value)
                SkillV = Value
            end
        )
        Options.ToggleV:SetValue(true)

        local ToggleF = Tabs.Setting:AddToggle("ToggleF", {Title = "Skill F", Default = false})
        ToggleF:OnChanged(
            function(Value)
                SkillF = Value
            end
        )
        Options.ToggleF:SetValue(false)

        local Pos = Tabs.Setting:AddSection("Distance Farm")

        local SliderPosX =
            Tabs.Setting:AddSlider(
            "SliderPosX",
            {
                Title = "Pos X",
                Description = "",
                Default = 10,
                Min = -60,
                Max = 60,
                Rounding = 1,
                Callback = function(Value)
                    posX = Value
                end
            }
        )
        SliderPosX:OnChanged(
            function(Value)
                posX = Value
            end
        )
        SliderPosX:SetValue(10)

        local SliderPosY =
            Tabs.Setting:AddSlider(
            "SliderPosY",
            {
                Title = "Pos Y",
                Description = "",
                Default = 30,
                Min = -60,
                Max = 60,
                Rounding = 1,
                Callback = function(Value)
                    posY = Value
                end
            }
        )
        SliderPosY:OnChanged(
            function(Value)
                posY = Value
            end
        )
        SliderPosY:SetValue(30)

        local SliderPosZ =
            Tabs.Setting:AddSlider(
            "SliderPosZ",
            {
                Title = "Pos Z",
                Description = "",
                Default = 10,
                Min = -60,
                Max = 60,
                Rounding = 1,
                Callback = function(Value)
                    posZ = Value
                end
            }
        )
        SliderPosZ:OnChanged(
            function(Value)
                posZ = Value
            end
        )
        SliderPosZ:SetValue(10)
        local AutoStasts = Tabs.Setting:AddSection("AutoStasts")

        local ToggleMelee = Tabs.Setting:AddToggle("ToggleMelee", {Title = "Add Melee", Default = false})
        ToggleMelee:OnChanged(
            function(Value)
                _G.Auto_Stats_Melee = Value
            end
        )
        Options.ToggleMelee:SetValue(false)

        local ToggleDe = Tabs.Setting:AddToggle("ToggleDe", {Title = "Add Defense", Default = false})
        ToggleDe:OnChanged(
            function(Value)
                _G.Auto_Stats_Defense = Value
            end
        )
        Options.ToggleDe:SetValue(false)

        local ToggleSword = Tabs.Setting:AddToggle("ToggleSword", {Title = "Add Sword", Default = false})
        ToggleSword:OnChanged(
            function(Value)
                _G.Auto_Stats_Sword = Value
            end
        )
        Options.ToggleSword:SetValue(false)

        local ToggleGun = Tabs.Setting:AddToggle("ToggleGun", {Title = "Add Gun", Default = false})
        ToggleGun:OnChanged(
            function(Value)
                _G.Auto_Stats_Gun = Value
            end
        )
        Options.ToggleGun:SetValue(false)

        local ToggleFruit = Tabs.Setting:AddToggle("ToggleFruit", {Title = "Add Demon Fruit", Default = false})
        ToggleFruit:OnChanged(
            function(Value)
                _G.Auto_Stats_Devil_Fruit = Value
            end
        )
        Options.ToggleFruit:SetValue(false)

        spawn(
            function()
                while wait() do
                    if _G.Auto_Stats_Devil_Fruit then
                        local args = {
                            [1] = "AddPoint",
                            [2] = "Demon Fruit",
                            [3] = 3
                        }

                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                    end
                end
            end
        )

        spawn(
            function()
                while wait() do
                    if _G.Auto_Stats_Gun then
                        local args = {
                            [1] = "AddPoint",
                            [2] = "Gun",
                            [3] = 3
                        }

                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                    end
                end
            end
        )

        spawn(
            function()
                while wait() do
                    if _G.Auto_Stats_Sword then
                        local args = {
                            [1] = "AddPoint",
                            [2] = "Sword",
                            [3] = 3
                        }

                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                    end
                end
            end
        )

        spawn(
            function()
                while wait() do
                    if _G.Auto_Stats_Defense then
                        local args = {
                            [1] = "AddPoint",
                            [2] = "Defense",
                            [3] = 3
                        }

                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                    end
                end
            end
        )

        spawn(
            function()
                while wait() do
                    if _G.Auto_Stats_Melee then
                        local args = {
                            [1] = "AddPoint",
                            [2] = "Melee",
                            [3] = 3
                        }

                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                    end
                end
            end
        )

        local test = Tabs.Setting:AddSection("Local Player")

        local ToggleInfSoru = Tabs.Setting:AddToggle("ToggleInfSoru", {Title = "Inf Soru", Default = false})
        ToggleInfSoru:OnChanged(
            function(v537)
                ToggleInfSoru = v537
            end
        )
        spawn(
            function()
                while wait() do
                    pcall(
                        function()
                            if
                                (ToggleInfSoru and
                                    (game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart") ~=
                                        nil))
                             then
                                for v1680, v1681 in next, getgc() do
                                    if game:GetService("Players").LocalPlayer.Character.Soru then
                                        if
                                            ((typeof(v1681) == "function") and
                                                (getfenv(v1681).script ==
                                                    game:GetService("Players").LocalPlayer.Character.Soru))
                                         then
                                            for v2309, v2310 in next, getupvalues(v1681) do
                                                if (typeof(v2310) == "table") then
                                                    repeat
                                                        wait(0.1)
                                                        v2310.LastUse = 0
                                                    until not _G.Infsoru or
                                                        (game:GetService("Players").LocalPlayer.Character.Humanoid.Health <=
                                                            0)
                                                end
                                            end
                                        end
                                    end
                                end
                            end
                        end
                    )
                end
            end
        )

        local ToggleNoClipz = Tabs.Setting:AddToggle("ToggleNoClipz", {Title = "No Clip", Default = true})
        ToggleNoClipz:OnChanged(
            function(Value)
                ToggleNoClipz = Value
            end
        )
        Options.ToggleNoClipz:SetValue(false)
        spawn(
            function()
                pcall(
                    function()
                        game:GetService("RunService").Stepped:Connect(
                            function()
                                if _G.LOf then
                                    for v868, v869 in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
                                        if v869:IsA("BasePart") then
                                            v869.CanCollide = false
                                        end
                                    end
                                end
                            end
                        )
                    end
                )
            end
        )

        local AutoV3 =
            Tabs.Setting:AddToggle(
            "ToggleAutoT",
            {
                Title = "Auto Active V3",
                Description = "",
                Default = false
            }
        )
        AutoV3:OnChanged(
            function(Siu)
                _G.AutoT = Siu
            end
        )
        Options.ToggleAutoT:SetValue(false)
        spawn(
            function()
                while wait() do
                    pcall(
                        function()
                            if _G.AutoT then
                                game:GetService("VirtualInputManager"):SendKeyEvent(true, "T", false, game)
                                wait()
                                game:GetService("VirtualInputManager"):SendKeyEvent(false, "T", false, game)
                            end
                        end
                    )
                end
            end
        )

        local v86 =
            Tabs.Setting:AddToggle(
            "ToggleAutoY",
            {
                Title = "Auto Active V4",
                Description = "",
                Default = false
            }
        )
        v86:OnChanged(
            function(v274)
                _G.AutoY = v274
            end
        )
        Options.ToggleAutoY:SetValue(false)
        spawn(
            function()
                while wait() do
                    pcall(
                        function()
                            if _G.AutoY then
                                game:GetService("VirtualInputManager"):SendKeyEvent(true, "Y", false, game)
                                wait()
                                game:GetService("VirtualInputManager"):SendKeyEvent(false, "Y", false, game)
                            end
                        end
                    )
                end
            end
        )

        local v88 =
            Tabs.Setting:AddToggle(
            "ToggleSaveSpawn",
            {
                Title = "Auto Save Spawn",
                Description = "",
                Default = false
            }
        )
        v88:OnChanged(
            function(v276)
                _G.SaveSpawn = v276
                if v276 then
                    local v648 = {
                        [1] = "SetSpawnPoint"
                    }
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(v648))
                end
            end
        )
        Options.ToggleSaveSpawn:SetValue(false)
        spawn(
            function()
                while wait() do
                    pcall(
                        function()
                            if _G.SaveSpawn then
                                local v797 = {
                                    [1] = "SetSpawnPoint"
                                }
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(v797))
                            end
                        end
                    )
                end
            end
        )
