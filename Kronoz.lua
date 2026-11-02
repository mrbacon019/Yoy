return function(...)
local tmp172, tmp173
    local stk0, stk1, stk2, stk3, stk4, stk5, stk6, stk7, stk8, stk9, stk10, stk11 = ...
    local S = {}
    if game:IsLoaded() then
        goto L64
    end
    game.Loaded:Wait()
    ::L64::
    S.Players = game:GetService("Players")
    S.RunService = game:GetService("RunService")
    S.TweenService = game:GetService("TweenService")
    S.UserInputService = game:GetService("UserInputService")
    S.HttpService = game:GetService("HttpService")
    S.v5 = S.Players.LocalPlayer
    if not _G.DELUX_CLEAN then
        goto L17
    end
    pcall(_G.DELUX_CLEAN)
    ::L17::
    S.v7 = {}
    S.v8 = function(a1, a2)
            local v2 = a1:Connect(a2)
            table.insert(S.v6, v2)
            return v2
        end
    S.v9 = "dz_delux_settings.json"
    S.v11 = {scale = 1, border = 1.5, radius = 18}
    S.v13 = {}
    S.v14, S.v15, S.v16 = pairs(S.v10)
    ::L88::
    S.v17, S.v18 = S.v14(S.v15, S.v16)
    S.v16 = S.v17
    if not S.v17 then
        goto L27
    end
    S.v12[S.v17] = S.v18
    goto L88
    ::L27::
    S.v12.accent = 1
    pcall(function()
            stk0 = isfile
            if stk0 then
                local v0 = S.HttpService:JSONDecode(readfile(S.v9))
                for v4, v52 in pairs(v0) do
                    S.v12[v4] = v52
                end
            end
        end)
    if type(S.v12.accent) == "number" then
        goto L59
    end
    S.v12.accent = 1
    ::L59::
    S.v19 = function()
            pcall(function()
                    if writefile then
                        writefile(S.v9, S.HttpService:JSONEncode(S.v12))
                    end
                end)
        end
    S.v20 = 139607718
    S.v21 = "rbxassetid://902942093"
    S.v22 = "rbxassetid://902843398"
    task.spawn(function()
            pcall(function()
                    local v02 = game:GetObjects("rbxassetid://" .. S.v20)
                    for v42, v53 in ipairs(v02) do
                        local v62, v72, v82 = ipairs(v53:GetDescendants())
                        ::L9::
                        while true do
                            local v92, v102 = v62(v72, v82)
                            v82 = v92
                            if not v92 then
                                break
                            end
                            local tmp1 = v102:IsA("MeshPart")
                            stk0 = tmp1
                            if tmp1 then
                            end
                            if not stk0 then
                                local tmp2 = v102:IsA("SpecialMesh")
                                stk0 = tmp2
                                if tmp2 then
                                end
                                if not stk0 then
                                    goto J1
                                end
                                ::L14::
                                goto L9
                                ::J1::
                                goto L14
                            end
                        end
                    end
                    do
                        return
                    end
                    ::L2::
                    S.v22 = v102.TextureID
                    ::L6::
                    do
                        return
                    end
                    ::L5::
                    S.v22 = v102.TextureId
                    ::L17::
                    do
                        return
                    end
                    S.v21 = v102.MeshId
                    if not (v102.TextureId == "") then
                        goto L5
                    end
                    goto L17
                    S.v21 = v102.MeshId
                    if not (v102.TextureID == "") then
                        goto L2
                    end
                    goto L6
                end)
        end)
    S.v23 = "rbxassetid://101851696"
    S.v24 = "rbxassetid://101851254"
    S.v25 = Vector3.new
    S.v26 = function(a12, a22, a3, a4, a5)
            local v54 = {
                key = a12,
                name = a22,
                desc = a3,
                id = a4,
                fx = a5
            }
            local v63 = {size = 1}
            v63.offset = S.v25(0, 0, 0)
            v63.rot = S.v25(0, 0, 0)
            v54.R15 = v63
            local v73 = {size = 1}
            v73.offset = S.v25(0, 0, 0)
            v73.rot = S.v25(0, 0, 0)
            v54.R6 = v73
            return v54
        end
    S.v28 = {}
    S.v28[1] = S.v26("crown", "8 Bit Royal Crown", "Mahkota pixel + efek kilau", 10159600649, "crown")
    S.v28[2] = S.v26("fiery", "Fiery Horns of the Netherworld", "Tanduk api neraka", 215718515)
    S.v28[3] = S.v26("frozen", "Frozen Horns of the Frigid Planes", "Tanduk es beku", 74891470)
    S.v28[4] = S.v26("poison", "Poisoned Horns of the Toxic Wasteland", "Tanduk beracun + efek", 1744060292, "horns")
    S.v28[5] = S.v26("cat", "8 Bit Tabby Cat", "Kucing pixel", 10159617728)
    S.v28[6] = S.v26("hpbar", "8 Bit HP Bar", "Bar HP pixel", 10159610478)
    S.v28[7] = S.v26("fairy", "Winter Fairy", "Peri musim dingin", 141742418)
    S.v28[8] = S.v26("silverking", "Silver King of the Night", "Mahkota raja perak", 439945661)
    S.v28[9] = S.v26("lord", "Lord of the Federation (hat)", "Topi Lord of the Federation", 88885069)
    S.v28[10] = S.v26("heartshades", "Heart Shades Bobux Cloud", "Kacamata hati", 83672858218486)
    S.v28[11] = S.v26("ufo", "Hovering UFO", "UFO melayang", 8151404994)
    S.v28[12] = S.v26("arcane", "Arcane Fedora", "Fedora arcane", 73030805068953)
    for i = 1, S.v26("fedora8", "8-Bit Fedora", "Fedora pixel", 67995931).n do S.v28[#S.v28 + 1] = S.v26("fedora8", "8-Bit Fedora", "Fedora pixel", 67995931)[i] end
    S.tmp3 = not (type(S.v12.accCfg) == "table")
    S.stk0 = S.tmp3
    if type(S.v12.accCfg) == "table" then
        goto L96
    end
    S.v29 = {}
    S.v12.accCfg = S.v29
    ::L96::
    S.v31 = {}
    S.v37 = {"me", "fr"}
    S.v32, S.v33, S.v34 = ipairs(S.v37)
    ::L109::
    S.v35, S.v36 = S.v32(S.v33, S.v34)
    S.v34 = S.v35
    if not S.v35 then
        goto L14
    end
    if type(S.v12.accCfg[S.v36]) == "table" then
        goto L63
    end
    S.v38 = {}
    S.v12.accCfg[S.v36] = S.v38
    ::L63::
    S.tmp4 = S.v12.accCfg[S.v36]
    S.v30[S.v36] = S.tmp4
    goto L109
    ::L14::
    S.v39 = function(a13, a23)
        local v3
            local v27 = S.v30[a13][a23]
            if type(v27) == "table" then
                goto L3
            end
            v3 = {}
            v27 = v3
            S.v30[a13][a23] = v27
            ::L3::
            local tmp5 = tonumber(v27.size)
            stk0 = tmp5
            if tmp5 then
                goto L7
            end
            ::L7::
            v27.size = stk0
            if tonumber(v27.x) then
                goto L5
            end
            ::L5::
            v27.x = stk0
            if tonumber(v27.y) then
                goto L9
            end
            ::L9::
            v27.y = stk0
            if tonumber(v27.z) then
                goto L2
            end
            ::L2::
            v27.z = stk0
            return v27
        end
    S.v40 = function(a14, a24, a32)
            local tmp6 = a14[a24]
            stk0 = tmp6
            if tmp6 then
                goto L2
            end
            ::L2::
            local v310 = stk0
            stk1 = a32
            if a32 then
                goto L4
            end
            ::L4::
            local v43 = stk0(stk1, a14.key)
            local v55 = {
                key = a14.key,
                name = a14.name,
                id = a14.id,
                fx = a14.fx,
                size = v310.size * v43.size
            }
            v55.offset = v310.offset + S.v25(v43.x, v43.y, -v43.z)
            v55.rot = v310.rot
            return v55
        end
    S.v41 = function()
            local v03 = {korblox = false, headless = false}
            local v1 = {}
            v03.items = v1
            local v210 = {}
            v03.cloth = v210
            return v03
        end
    S.v432 = {}
    S.v432.me = S.v41()
    S.v432.fr = S.v41()
    S.v44 = true
    S.v45 = true
    S.v46 = false
    S.v47 = nil
    S.v49 = {N = 5}
    S.v50 = 1
    S.v51 = S.v48.N
    S.v522 = 1
    ::L86::
    if not (0 < S.v522) then
        goto L61
    end
    ::L80::
    if not stk1 then
        goto L21
    end
    S.v532 = {plr = nil, korblox = false, headless = false}
    S.v48[S.v50] = S.v532
    S.v50 = S.v50 + S.v522
    goto L86
    ::L21::
    S.v542 = function(a15)
        local v132, v83, v93, v103, v112, v122, tmp7
            local v311 = {}
            local v410 = {}
            if a15 then
                goto L10
            end
            do
                return v311
            end
            do
                return
            end
            ::L10::
            local v56 = function(a16)
                    stk0 = a16
                    if a16 then
                        if a16:IsA("Model") then
                        end
                    end
                    if stk0 then
                        v410[a16] = true
                        table.insert(v311, a16)
                    end
                end
            local v64 = function(a17)
                    if not a17 then
                        return
                    end
                    for v411, v57 in ipairs(a17:GetChildren()) do
                        if v57.Name == a15.Name then
                            v56(v57)
                        end
                    end
                end
            v64(workspace:FindFirstChild("Rigs"))
            v64(workspace:FindFirstChild("Players"))
            v64(workspace:FindFirstChild("PlayerCache"))
            local Game = workspace:FindFirstChild("Game")
            stk0 = v64
            stk1 = Game
            if not Game then
                goto L3
            end
            ::L3::
            stk0(stk1)
            v56(a15.Character)
            v56(workspace:FindFirstChild(a15.Name))
            if not (#v311 == 0) then
                goto L2
            end
            v83, v93, v103 = ipairs(workspace:GetChildren())
            ::L8::
            v112, v122 = v83(v93, v103)
            v103 = v112
            if not v112 then
                goto L2
            end
            tmp7 = v122:IsA("Folder")
            stk0 = tmp7
            if tmp7 then
                goto L6
            end
            ::L6::
            if not stk0 then
                goto L5
            end
            v132 = v122:FindFirstChild(a15.Name)
            if not v132 then
                goto L5
            end
            v56(v132)
            ::L5::
            goto L8
            ::L2::
            return v311
        end
    S.v552 = function(a18)
            if a18 then
                goto L2
            end
            do
                return nil
            end
            do
                return
            end
            ::L2::
            local tmp8 = S.v542(a18)[1]
            stk0 = tmp8
            if tmp8 then
                goto L4
            end
            ::L4::
            return stk0
        end
    S.v562 = function(a19)
            if not a19 then
                return nil
            end
            if not a19:FindFirstChild("Head") then
                return nil
            end
            if a19:FindFirstChild("UpperTorso") then
                return "R15"
            end
            return "R6"
        end
    S.v572, S.v582 = (function()
            local v110 = {}
            local v212 = function(a110)
                local v211, v65, v123, tmp10, v133, v74, v84, v94, v104, v113
                    local tmp9 = a110:FindFirstChild("Right Leg")
                    stk0 = tmp9
                    if tmp9 then
                        goto L12
                    end
                    ::L12::
                    local v111 = stk0
                    if not v111 then
                        goto L16
                    end
                    ::L16::
                    if not stk0 then
                        goto L10
                    end
                    v211 = {v111}
                    do
                        return v111, v211
                    end
                    do
                        return
                    end
                    ::L10::
                    local RightUpperLeg = a110:FindFirstChild("RightUpperLeg")
                    local RightLowerLeg = a110:FindFirstChild("RightLowerLeg")
                    local RightFoot = a110:FindFirstChild("RightFoot")
                    stk0 = RightUpperLeg
                    if not RightUpperLeg then
                        goto L14
                    end
                    if RightLowerLeg then
                        goto L4
                    end
                    ::L14::
                    if not stk0 then
                        goto L3
                    end
                    v65 = {RightUpperLeg, RightLowerLeg, RightFoot}
                    do
                        return RightUpperLeg, v65
                    end
                    do
                        return
                    end
                    ::L3::
                    v74, v84, v94 = ipairs(a110:GetChildren())
                    ::L8::
                    v104, v113 = v74(v84, v94)
                    v94 = v104
                    if not v104 then
                        goto L19
                    end
                    if v113:IsA("BasePart") then
                        goto L2
                    end
                    ::L7::
                    goto L8
                    ::L2::
                    v123 = v113.Name:lower():gsub("[%s_]", "")
                    tmp10 = v123:find("right", 1, true)
                    stk0 = tmp10
                    if not tmp10 then
                        goto L5
                    end
                    ::L5::
                    if not stk0 then
                        goto L7
                    end
                    v133 = {v113}
                    do
                        return v113, v133
                    end
                    do
                        return
                    end
                    ::L19::
                    do
                        return
                    end
                    do
                        return
                    end
                    ::L4::
                    goto L14
                end
            local v313 = function(a111)
                    local v114 = v110[a111]
                    stk0 = v114
                    if stk0 then
                        return v114
                    end
                    local FakeKorblox = a111:FindFirstChild("FakeKorblox")
                    if FakeKorblox then
                        return FakeKorblox
                    end
                    local v312 = workspace.CurrentCamera
                    stk0 = v312
                    return stk0
                end
            local v413 = function()
                    for v314, v412 in pairs(v110) do
                        if not v314.Parent then
                            pcall(function()
                                    v412:Destroy()
                                end)
                            v110[v314] = nil
                        end
                    end
                end
            local v59 = function(a112, a25, a33, a42)
                local v115, part, specialmesh, weldconstraint, v152
                    local v414, v58, v66 = ipairs(a33)
                    ::L24::
                    local v75, v85 = v414(v58, v66)
                    v66 = v75
                    if not v75 then
                        goto L1
                    end
                    if v85.Transparency == 1 then
                        goto L12
                    end
                    v85.Transparency = 1
                    ::L12::
                    goto L24
                    ::L1::
                    stk0 = a42
                    if not a42 then
                        goto L20
                    end
                    ::L20::
                    if stk0 then
                        goto L22
                    end
                    ::L22::
                    local v95 = stk0
                    local v105 = v313(a112)
                    if not v105 then
                        goto L16
                    end
                    ::L16::
                    if not stk0 then
                        goto L27
                    end
                    v115 = v105:FindFirstChildOfClass("WeldConstraint")
                    stk0 = v115
                    if v115 then
                        goto L26
                    end
                    ::L29::
                    if not stk0 then
                        goto L3
                    end
                    do
                        return
                    end
                    do
                        return
                    end
                    ::L3::
                    v105:Destroy()
                    ::L27::
                    part = Instance.new("Part")
                    part.Name = "FakeKorblox"
                    part.Size = a25.Size
                    part.CanCollide = false
                    part.CanTouch = false
                    part.CanQuery = false
                    part.Massless = true
                    part.Transparency = 0
                    part.Material = Enum.Material.SmoothPlastic
                    part.Color = Color3.fromRGB(64, 64, 64)
                    Color3.fromRGB(64, 64, 64)
                    part.CFrame = a25.CFrame
                    part:SetAttribute("DLX_tag", v95)
                    specialmesh = Instance.new("SpecialMesh")
                    specialmesh.MeshType = Enum.MeshType.FileMesh
                    stk0 = a42
                    if not a42 then
                        goto L10
                    end
                    ::L10::
                    if stk0 then
                        goto L13
                    end
                    ::L13::
                    specialmesh.MeshId = stk0
                    if not a42 then
                        goto L6
                    end
                    ::L6::
                    if stk0 then
                        goto L8
                    end
                    ::L8::
                    specialmesh.TextureId = stk0
                    specialmesh.VertexColor = Vector3.new(1, 1, 1)
                    Vector3.new(1, 1, 1)
                    specialmesh.Scale = Vector3.new(1, 1, 1)
                    Vector3.new(1, 1, 1)
                    specialmesh.Offset = Vector3.new(0, 0, 0)
                    Vector3.new(0, 0, 0)
                    specialmesh.Parent = part
                    weldconstraint = Instance.new("WeldConstraint")
                    weldconstraint.Part0 = a25
                    weldconstraint.Part1 = part
                    weldconstraint.Parent = part
                    v413()
                    v110[a112] = part
                    v152 = workspace.CurrentCamera
                    if not S.v46 then
                        goto L4
                    end
                    ::L4::
                    if not stk0 then
                        goto L15
                    end
                    part.Name = "FakeKorblox_" .. a112.Name
                    part.Parent = v152
                    ::L31::
                    do
                        return
                    end
                    do
                        return
                    end
                    ::L15::
                    part.Parent = a112
                    goto L31
                    ::L26::
                    if not (v115.Part0 == a25) then
                        goto L29
                    end
                    goto L29
                end
            local v67 = function(a113)
                    local tmp11 = a113:FindFirstChild("DLX_KorbloxMesh")
                    stk0 = tmp11
                    if tmp11 then
                        goto L17
                    end
                    ::L17::
                    local v116 = stk0
                    if v116 then
                        goto L2
                    end
                    v116 = Instance.new("SpecialMesh")
                    Instance.new("SpecialMesh")
                    v116.Name = "DLX_KorbloxMesh"
                    v116.MeshType = Enum.MeshType.FileMesh
                    v116.Parent = a113
                    ::L2::
                    local tmp12 = not (v116.Name == "DLX_KorbloxMesh")
                    stk0 = tmp12
                    if v116.Name == "DLX_KorbloxMesh" then
                        goto L7
                    end
                    ::L7::
                    if not stk0 then
                        goto L9
                    end
                    v116:SetAttribute("DLX_oM", v116.MeshId)
                    v116:SetAttribute("DLX_oT", v116.TextureId)
                    v116:SetAttribute("DLX_oS", v116.Scale)
                    ::L9::
                    if v116.MeshId == S.v23 then
                        goto L5
                    end
                    v116.MeshId = S.v23
                    ::L5::
                    if v116.TextureId == S.v24 then
                        goto L11
                    end
                    v116.TextureId = S.v24
                    ::L11::
                    local v213 = v116.Scale
                    local tmp13 = not (v213.X == 1)
                    stk0 = tmp13
                    if tmp13 then
                        goto L15
                    end
                    if v213.Y == 1 then
                        goto L4
                    end
                    ::L15::
                    if not stk0 then
                        goto L13
                    end
                    v116.Scale = Vector3.new(1, 1, 1)
                    Vector3.new(1, 1, 1)
                    ::L13::
                    if a113.Transparency == 0 then
                        goto L19
                    end
                    a113.Transparency = 0
                    ::L19::
                    do
                        return
                    end
                    do
                        return
                    end
                    ::L4::
                    goto L15
                end
            local v76 = function(a114)
                local tmp14
                    local DLX_KorbloxMesh = a114:FindFirstChild("DLX_KorbloxMesh")
                    if not DLX_KorbloxMesh then
                        goto L2
                    end
                    DLX_KorbloxMesh:Destroy()
                    ::L2::
                    local v214 = a114:FindFirstChildOfClass("SpecialMesh")
                    stk0 = v214
                    if not v214 then
                        goto L4
                    end
                    ::L4::
                    if not stk0 then
                        goto L10
                    end
                    v214.MeshId = v214:GetAttribute("DLX_oM")
                    v214:GetAttribute("DLX_oM")
                    tmp14 = v214:GetAttribute("DLX_oT")
                    stk0 = tmp14
                    if not tmp14 then
                        goto L9
                    end
                    ::L6::
                    v214.TextureId = stk0
                    if v214:GetAttribute("DLX_oS") then
                        goto L8
                    end
                    ::L8::
                    v214.Scale = stk0
                    v214:SetAttribute("DLX_oM", nil)
                    v214:SetAttribute("DLX_oT", nil)
                    v214:SetAttribute("DLX_oS", nil)
                    ::L10::
                    a114.Transparency = 0
                    do
                        return
                    end
                    do
                        return
                    end
                    ::L9::
                    goto L6
                end
            local v86 = function(a115)
                    if a115 then
                        goto L6
                    end
                    do
                        return
                    end
                    do
                        return
                    end
                    ::L6::
                    local v117, v215 = v212(a115)
                    if v117 then
                        goto L2
                    end
                    do
                        return
                    end
                    do
                        return
                    end
                    ::L2::
                    local v315 = S.v562(a115) == "R6"
                    stk0 = v315
                    if not v315 then
                        goto L4
                    end
                    if #v215 == 1 then
                        goto L9
                    end
                    ::L4::
                    if not stk0 then
                        goto L8
                    end
                    v67(v117)
                    ::L10::
                    do
                        return
                    end
                    do
                        return
                    end
                    ::L8::
                    v59(a115, v117, v215, v315)
                    goto L10
                    ::L9::
                    goto L4
                end
            local v97 = function(a116)
                local v96
                    if a116 then
                        goto L8
                    end
                    do
                        return
                    end
                    do
                        return
                    end
                    ::L8::
                    local v118 = v313(a116)
                    if not v118 then
                        goto L13
                    end
                    pcall(function()
                            v118:Destroy()
                        end)
                    ::L13::
                    v110[a116] = nil
                    local tmp15 = a116:FindFirstChild("Right Leg")
                    stk0 = tmp15
                    if tmp15 then
                        goto L3
                    end
                    ::L3::
                    local v216 = stk0
                    if not v216 then
                        goto L6
                    end
                    ::L6::
                    if not stk0 then
                        goto L2
                    end
                    pcall(v76, v216)
                    ::L2::
                    local v87 = {
                        "RightUpperLeg",
                        "RightLowerLeg",
                        "RightFoot",
                        "Right Leg",
                        "RightLeg"
                    }
                    local v316, v415, v510 = ipairs(v87)
                    ::L10::
                    local v68, v77 = v316(v415, v510)
                    v510 = v68
                    if not v68 then
                        goto L17
                    end
                    v96 = a116:FindFirstChild(v77)
                    stk0 = v96
                    if v96 then
                        goto L5
                    end
                    ::L15::
                    if not stk0 then
                        goto L12
                    end
                    v96.Transparency = 0
                    ::L12::
                    goto L10
                    ::L5::
                    goto L15
                    ::L17::
                    return
                end
            return v86, v97
        end)()
    S.v592 = function(a117, a26)
        local tmp16
            if a117 then
                goto L8
            end
            do
                return
            end
            do
                return
            end
            ::L8::
            local Head = a117:FindFirstChild("Head")
            if Head then
                goto L15
            end
            do
                return
            end
            do
                return
            end
            ::L15::
            stk0 = a26
            if not a26 then
                goto L5
            end
            ::L5::
            if stk0 then
                goto L10
            end
            ::L10::
            local v317 = stk0
            if Head.Transparency == v317 then
                goto L14
            end
            Head.Transparency = v317
            ::L14::
            local v416, v511, v69 = ipairs(Head:GetChildren())
            ::L12::
            local v78, v88 = v416(v511, v69)
            v69 = v78
            if not v78 then
                goto L17
            end
            tmp16 = v88:IsA("Decal")
            stk0 = tmp16
            if not tmp16 then
                goto L3
            end
            ::L3::
            if not stk0 then
                goto L2
            end
            v88.Transparency = v317
            ::L2::
            goto L12
            ::L17::
            return
        end
    S.v60 = nil
    S.v61 = nil
    S.v622 = nil
    S.v632 = nil
    S.v642 = "rbxasset://textures/particles/sparkles_main.dds"
    S.v652 = function(a118, a27, a34)
            local v318 = Instance.new(a118)
            for v79, v89 in pairs(a27) do
                v318[v79] = v89
            end
            if a34 then
                v318.Parent = a34
            end
            return v318
        end
    S.v662 = function(a119, a28)
            local particleemitter = Instance.new("ParticleEmitter")
            particleemitter.Texture = S.v642
            for v610, v710 in pairs(a28) do
                particleemitter[v610] = v710
            end
            particleemitter.Parent = a119
            return particleemitter
        end
    S.v70 = {}
    S.v71 = {}
    S.v722 = {}
    S.v732 = function(a120)
        local tmp18
            local v119 = S.v672[a120.key]
            if not v119 then
                goto L6
            end
            do
                return v119
            end
            do
                return
            end
            ::L6::
            local tmp17 = S.v682[a120.key]
            stk0 = tmp17
            if tmp17 then
                goto L2
            end
            tmp18 = S.v692[a120.key]
            stk1 = tmp18
            if tmp18 then
                goto L4
            end
            ::L4::
            ::L2::
            if not stk0 then
                goto L8
            end
            do
                return nil
            end
            do
                return
            end
            ::L8::
            S.v682[a120.key] = true
            local tmp19 = tick()
            S.v692[a120.key] = tmp19
            task.spawn(function()
                local tmp21, v217, v319, v417, v512, v611, tmp20, v711, v810, v98, v106, v1110, v124, v134, v142, v153, v162
                    local v04, v120 = pcall(function()
                            return game:GetObjects("rbxassetid://" .. a120.id)
                        end)
                    stk0 = v04
                    if not v04 then
                        goto L10
                    end
                    ::L10::
                    if not stk0 then
                        goto L18
                    end
                    v217, v319, v417 = ipairs(v120)
                    ::L23::
                    v512, v611 = v217(v319, v417)
                    v417 = v512
                    if not v512 then
                        goto L18
                    end
                    tmp20 = v611:IsA("BasePart")
                    stk0 = tmp20
                    if not tmp20 then
                        goto L4
                    end
                    ::L4::
                    if stk0 then
                        goto L6
                    end
                    if not v611:FindFirstChild("Handle", true) then
                        goto L15
                    end
                    ::L6::
                    v711 = stk0
                    if not v711 then
                        goto L12
                    end
                    v810 = CFrame.new()
                    v98 = v711:FindFirstAncestorWhichIsA("Accoutrement")
                    if v98 then
                        goto L22
                    end
                    ::L8::
                    v106 = v711:Clone()
                    v1110, v124, v134 = ipairs(v106:GetDescendants())
                    ::L2::
                    v142, v153 = v1110(v124, v134)
                    v134 = v142
                    if not v142 then
                        goto L14
                    end
                    tmp21 = v153:IsA("LuaSourceContainer")
                    stk0 = tmp21
                    if not tmp21 then
                        goto L13
                    end
                    ::L16::
                    if not stk0 then
                        goto L25
                    end
                    v153:Destroy()
                    ::L25::
                    goto L2
                    ::L13::
                    if v153:IsA("Weld") then
                        goto L16
                    end
                    if v153:IsA("WeldConstraint") then
                        goto L16
                    end
                    goto L16
                    ::L14::
                    v162 = {handle = v106, ap = v810}
                    S.v672[a120.key] = v162
                    ::L18::
                    if S.v672[a120.key] then
                        goto L26
                    end
                    warn(("[DZ Delux] Gagal memuat " .. a120.name) .. " (coba lagi otomatis)")
                    ::L26::
                    S.v682[a120.key] = false
                    do
                        return
                    end
                    do
                        return
                    end
                    ::L22::
                    pcall(function()
                            v810 = v98.AttachmentPoint
                        end)
                    goto L8
                    ::L12::
                    goto L23
                    ::L15::
                    goto L6
                end)
            return nil
        end
    S.v742 = function(a121, a29)
            if not (a29 == 1) then
                goto L3
            end
            do
                return
            end
            do
                return
            end
            ::L3::
            local v218, v320, v418 = ipairs(a121:GetDescendants())
            ::L4::
            local v513, v612 = v218(v320, v418)
            v418 = v513
            if not v513 then
                goto L9
            end
            if v612:IsA("Attachment") then
                goto L2
            end
            if not v612:IsA("SpecialMesh") then
                goto L6
            end
            v612.Scale = v612.Scale * a29
            ::L6::
            goto L4
            ::L2::
            v612.Position = v612.Position * a29
            goto L6
            ::L9::
            a121.Size = a121.Size * a29
            return
        end
    S.v752 = function(a122, a210)
            local v219, v321, v419 = ipairs(a122:GetChildren())
            ::L3::
            while true do
                local v514, v613 = v219(v321, v419)
                v419 = v514
                if not v514 then
                    break
                end
                local tmp22 = v613.Name == a210
                stk0 = tmp22
                if not stk0 then
                    goto L3
                end
            end
            do
                return
            end
            return v613
        end
    S.v762 = function(a123, a211, a35, a43)
        local v1111
            local v420 = nil
            local v515 = nil
            local v614, v712, v811 = ipairs(a123:GetChildren())
            ::L2::
            local v99, v107 = v614(v712, v811)
            v811 = v99
            if not v99 then
                goto L4
            end
            if v107:IsA("Attachment") then
                goto L1
            end
            ::L7::
            goto L2
            ::L1::
            v1111 = S.v752(a211, v107.Name)
            if not v1111 then
                goto L7
            end
            v420 = v107
            v515 = v1111
            ::L4::
            local tmp23 = CFrame.new(a43.offset) * CFrame.Angles(math.rad(a43.rot.X), math.rad(a43.rot.Y), math.rad(a43.rot.Z))
            local v125 = tmp23
            local weld = Instance.new("Weld")
            weld.Name = "DLX_Weld"
            weld.Part0 = a211
            weld.Part1 = a123
            stk0 = v420
            if not v420 then
                goto L8
            end
            ::L8::
            if not stk0 then
                goto L6
            end
            weld.C0 = v515.CFrame * v125
            weld.C1 = v420.CFrame
            ::L11::
            weld.Parent = a123
            do
                return
            end
            do
                return
            end
            ::L6::
            weld.C0 = CFrame.new(0, a211.Size.Y / 2, 0) * (v125 * a35:Inverse())
            goto L11
        end
    S.v772 = {}
    S.v60 = S.v772
    S.v782 = 0.6
    S.v792 = 3
    S.v80 = function(a124)
            local v121 = nil
            if 0 < S.v782 then
                local v220 = {Name = "Glow"}
                v220.Color = Color3.fromRGB(120, 255, 90)
                v220.Brightness = S.v782
                v220.Range = S.v792
                v220.Shadows = false
                v121 = S.v652("PointLight", v220, a124)
                S.v652("PointLight", v220, a124)
            end
            local v421 = {}
            local v516 = {"L"}
            for i = 1, Vector3.new(-0.35, 0.45, 0).n do v516[#v516 + 1] = Vector3.new(-0.35, 0.45, 0)[i] end
            v421[1] = v516
            local v615 = {"R"}
            for i = 1, Vector3.new(0.35, 0.45, 0).n do v615[#v615 + 1] = Vector3.new(0.35, 0.45, 0)[i] end
            v421[2] = v615
            for v108, v1112 in ipairs(v421) do
                local v135 = {Name = "Tip" .. v1112[1], Position = a124.Size * v1112[2]}
                local v126 = S.v652("Attachment", v135, a124)
                local v143 = {Name = "Smoke"}
                v143.Lifetime = NumberRange.new(2, 4)
                v143.Rate = 20
                v143.Speed = NumberRange.new(1, 3)
                v143.SpreadAngle = Vector2.new(45, 45)
                local v154 = {}
                v154[1] = NumberSequenceKeypoint.new(0, 0.3)
                for i = 1, NumberSequenceKeypoint.new(1, 1).n do v154[#v154 + 1] = NumberSequenceKeypoint.new(1, 1)[i] end
                v143.Transparency = NumberSequence.new(v154)
                local v163 = {}
                v163[1] = NumberSequenceKeypoint.new(0, 0.2)
                for i = 1, NumberSequenceKeypoint.new(1, 1.2).n do v163[#v163 + 1] = NumberSequenceKeypoint.new(1, 1.2)[i] end
                v143.Size = NumberSequence.new(v163)
                v143.Color = ColorSequence.new(Color3.fromRGB(50, 200, 30))
                v143.Drag = 2
                v143.LightEmission = 0.5
                S.v662(v126, v143)
                local v172 = {Name = "Spores"}
                v172.Lifetime = NumberRange.new(1.5, 3)
                v172.Rate = 8
                v172.Speed = NumberRange.new(0.5, 2)
                v172.SpreadAngle = Vector2.new(60, 60)
                local v182 = {}
                v182[1] = NumberSequenceKeypoint.new(0, 0)
                for i = 1, NumberSequenceKeypoint.new(1, 1).n do v182[#v182 + 1] = NumberSequenceKeypoint.new(1, 1)[i] end
                v172.Transparency = NumberSequence.new(v182)
                local v192 = {}
                v192[1] = NumberSequenceKeypoint.new(0, 0.1)
                v192[2] = NumberSequenceKeypoint.new(0.5, 0.3)
                for i = 1, NumberSequenceKeypoint.new(1, 0.05).n do v192[#v192 + 1] = NumberSequenceKeypoint.new(1, 0.05)[i] end
                v172.Size = NumberSequence.new(v192)
                local v202 = {}
                v202[1] = ColorSequenceKeypoint.new(0, Color3.fromRGB(150, 255, 100))
                for i = 1, ColorSequenceKeypoint.new(1, Color3.fromRGB(50, 180, 30)).n do v202[#v202 + 1] = ColorSequenceKeypoint.new(1, Color3.fromRGB(50, 180, 30))[i] end
                v172.Color = ColorSequence.new(v202)
                v172.Drag = 1
                v172.LightEmission = 0.6
                S.v662(v126, v172)
                local v2110 = {Name = "Bubbles"}
                v2110.Lifetime = NumberRange.new(1, 2)
                v2110.Rate = 12
                v2110.Speed = NumberRange.new(2, 5)
                v2110.SpreadAngle = Vector2.new(30, 30)
                local v222 = {}
                v222[1] = NumberSequenceKeypoint.new(0, 0.1)
                for i = 1, NumberSequenceKeypoint.new(1, 1).n do v222[#v222 + 1] = NumberSequenceKeypoint.new(1, 1)[i] end
                v2110.Transparency = NumberSequence.new(v222)
                local v232 = {}
                v232[1] = NumberSequenceKeypoint.new(0, 0.08)
                v232[2] = NumberSequenceKeypoint.new(0.5, 0.2)
                for i = 1, NumberSequenceKeypoint.new(1, 0.03).n do v232[#v232 + 1] = NumberSequenceKeypoint.new(1, 0.03)[i] end
                v2110.Size = NumberSequence.new(v232)
                v2110.Color = ColorSequence.new(Color3.fromRGB(80, 220, 50))
                v2110.Drag = 0.5
                v2110.LightEmission = 0.6
                S.v662(v126, v2110)
            end
            local v242 = {handle = a124, light = v121}
            v242.t0 = tick()
            v242.base = S.v782 * 0.7
            v242.amp = S.v782 * 0.3
            v242.speed = 1.5
            table.insert(S.v60, v242)
        end
    S.v81 = function(a125, a212)
            local v221 = nil
            if 0 < S.v782 then
                local v322 = {Name = "CrownGlow"}
                v322.Color = Color3.fromRGB(255, 210, 90)
                v322.Brightness = S.v782
                v322.Range = S.v792
                v322.Shadows = false
                v221 = S.v652("PointLight", v322, a125)
                S.v652("PointLight", v322, a125)
            end
            local v517 = {Name = "CrownTop"}
            v517.Position = a125.Size * Vector3.new(0, 0.5, 0)
            local v422 = S.v652("Attachment", v517, a125)
            local v616 = {Name = "Sparkle"}
            v616.Lifetime = NumberRange.new(0.8, 1.6)
            v616.Rate = 6
            v616.Speed = NumberRange.new(0.5, 2)
            v616.SpreadAngle = Vector2.new(180, 180)
            v616.Drag = 1.5
            v616.LightEmission = 0.7
            v616.Rotation = NumberRange.new(0, 360)
            v616.RotSpeed = NumberRange.new(-60, 60)
            local v713 = {}
            v713[1] = NumberSequenceKeypoint.new(0, 0)
            for i = 1, NumberSequenceKeypoint.new(1, 1).n do v713[#v713 + 1] = NumberSequenceKeypoint.new(1, 1)[i] end
            v616.Transparency = NumberSequence.new(v713)
            local v812 = {}
            v812[1] = NumberSequenceKeypoint.new(0, 0.05)
            v812[2] = NumberSequenceKeypoint.new(0.3, 0.35 * a212)
            for i = 1, NumberSequenceKeypoint.new(1, 0).n do v812[#v812 + 1] = NumberSequenceKeypoint.new(1, 0)[i] end
            v616.Size = NumberSequence.new(v812)
            local v910 = {}
            v910[1] = ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 255, 200))
            for i = 1, ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 190, 40)).n do v910[#v910 + 1] = ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 190, 40))[i] end
            v616.Color = ColorSequence.new(v910)
            S.v662(v422, v616)
            local v109 = {Name = "GoldDust"}
            v109.Lifetime = NumberRange.new(1.5, 2.5)
            v109.Rate = 10
            v109.Speed = NumberRange.new(0.3, 1)
            v109.SpreadAngle = Vector2.new(60, 60)
            v109.Acceleration = Vector3.new(0, 0.8, 0)
            v109.LightEmission = 0.5
            local v1113 = {}
            v1113[1] = NumberSequenceKeypoint.new(0, 0.2)
            for i = 1, NumberSequenceKeypoint.new(1, 1).n do v1113[#v1113 + 1] = NumberSequenceKeypoint.new(1, 1)[i] end
            v109.Transparency = NumberSequence.new(v1113)
            local v127 = {}
            v127[1] = NumberSequenceKeypoint.new(0, 0.12)
            for i = 1, NumberSequenceKeypoint.new(1, 0.02).n do v127[#v127 + 1] = NumberSequenceKeypoint.new(1, 0.02)[i] end
            v109.Size = NumberSequence.new(v127)
            v109.Color = ColorSequence.new(Color3.fromRGB(255, 210, 70))
            S.v662(v422, v109)
            local v136 = {handle = a125, light = v221}
            v136.t0 = tick()
            v136.base = S.v782 * 0.7
            v136.amp = S.v782 * 0.3
            v136.speed = 2
            table.insert(S.v60, v136)
        end
    S.v822 = {}
    S.v832 = {__mode = "k"}
    S.v61 = setmetatable(S.v822, S.v832)
    setmetatable(S.v822, S.v832)
    buildItem = function(a126, a213, a36)
        local v423
            if a126 then
                goto L4
            end
            do
                return
            end
            do
                return
            end
            ::L4::
            local v323 = S.v61[a126]
            if v323 then
                goto L2
            end
            v423 = {}
            v323 = v423
            S.v61[a126] = v323
            ::L2::
            local v518 = v323[a213.key]
            stk0 = v518
            if not v518 then
                goto L8
            end
            ::L8::
            if not stk0 then
                goto L14
            end
            do
                return
            end
            do
                return
            end
            ::L14::
            local v617 = a126:FindFirstChild("Head")
            local v714 = S.v562(a126)
            stk0 = not v617
            if not v617 then
                goto L16
            end
            ::L16::
            if not stk0 then
                goto L6
            end
            do
                return
            end
            do
                return
            end
            ::L6::
            local v813 = S.v732(a213)
            if v813 then
                goto L18
            end
            do
                return
            end
            do
                return
            end
            ::L18::
            local v911 = S.v40(a213, v714, a36)
            local v1010 = v813.handle:Clone()
            v1010.Name = "Handle"
            v1010.Anchored = false
            v1010.CanCollide = false
            v1010.CanTouch = false
            v1010.CanQuery = false
            v1010.Massless = true
            v1010.Transparency = 0
            S.v742(v1010, v911.size)
            local model = Instance.new("Model")
            model.Name = "DLX_" .. a213.key
            v1010.Parent = model
            S.v762(v1010, v617, v813.ap, v911)
            local v128 = workspace.CurrentCamera
            local tmp24 = S.v46
            stk0 = tmp24
            if not tmp24 then
                goto L10
            end
            ::L10::
            if not stk0 then
                goto L23
            end
            model.Parent = v128
            ::L21::
            v323[a213.key] = model
            if not S.v45 then
                goto L24
            end
            if not (v911.fx == "horns") then
                goto L12
            end
            S.v80(v1010)
            ::L24::
            do
                return
            end
            do
                return
            end
            ::L12::
            if not (v911.fx == "crown") then
                goto L24
            end
            S.v81(v1010, v911.size)
            goto L24
            ::L23::
            model.Parent = a126
            goto L21
        end
    removeItem = function(a127, a214)
            if not a127 then
                return
            end
            local v223 = S.v61[a127]
            stk0 = v223
            if stk0 then
                pcall(function()
                        v223[a214]:Destroy()
                    end)
                v223[a214] = nil
            end
            local v324 = a127:FindFirstChild("DLX_" .. a214)
            if v324 then
                v324:Destroy()
            end
        end
    S.v842 = function(a128)
            for v424, v519 in ipairs(S.v272) do
                S.v632(a128, v519.key)
            end
        end
    S.v862 = {}
    S.v872 = {"shirt", "pants", "tee"}
    S.v862.KINDS = S.v872
    S.v892 = {}
    S.v90 = {cls = "Shirt", prop = "ShirtTemplate"}
    S.v892.shirt = S.v90
    S.v91 = {cls = "Pants", prop = "PantsTemplate"}
    S.v892.pants = S.v91
    S.v922 = {cls = "ShirtGraphic", prop = "Graphic"}
    S.v892.tee = S.v922
    S.v942 = {}
    S.v952 = {__mode = "k"}
    S.v932 = setmetatable(S.v942, S.v952)
    S.v972 = {}
    S.v852.parse = function(a129)
            stk0 = tostring
            stk1 = a129
            if a129 then
                goto L2
            end
            ::L2::
            local v129 = stk0(stk1):match("%d+")
            if not v129 then
                goto L5
            end
            ::L5::
            if stk0 then
                goto L4
            end
            ::L4::
            return stk0
        end
    S.v982 = function(a130, a215, a37)
            local v325 = ("%d"):format(a215)
            local v425 = a130 .. v325
            if S.v962[v425] then
                a37(S.v962[v425])
                return
            end
            task.spawn(function()
                local v520, v618, v715, v814, v912, tmp25, v1011, v1114, v1210
                    local v05 = S.v882[a130]
                    local v130 = nil
                    local v224 = false
                    local v326, v426 = pcall(function()
                            return game:GetObjects("rbxassetid://" .. v325)
                        end)
                    stk0 = v326
                    if not v326 then
                        goto L13
                    end
                    if type(v426) == "table" then
                        goto L4
                    end
                    ::L13::
                    if not stk0 then
                        goto L17
                    end
                    v224 = true
                    v520, v618, v715 = ipairs(v426)
                    ::L19::
                    v814, v912 = v520(v618, v715)
                    v715 = v814
                    if not v814 then
                        goto L17
                    end
                    tmp25 = v912:IsA(v05.cls)
                    stk0 = tmp25
                    if not tmp25 then
                        goto L6
                    end
                    ::L6::
                    if stk0 then
                        goto L8
                    end
                    ::L8::
                    v1011 = stk0
                    if not v1011 then
                        goto L5
                    end
                    v1114, v1210 = pcall(function()
                            return v1011[v05.prop]
                        end)
                    stk0 = v1114
                    if not v1114 then
                        goto L2
                    end
                    if not (type(v1210) == "string") then
                        goto L2
                    end
                    ::L2::
                    if not stk0 then
                        goto L5
                    end
                    v130 = v1210
                    ::L17::
                    stk0 = not v130
                    if v130 then
                        goto L21
                    end
                    ::L21::
                    if not stk0 then
                        goto L10
                    end
                    v130 = "rbxassetid://" .. v325
                    ::L10::
                    if not v130 then
                        goto L23
                    end
                    S.v962[v425] = v130
                    ::L23::
                    a37(v130)
                    do
                        return
                    end
                    do
                        return
                    end
                    ::L5::
                    goto L19
                    ::L4::
                    goto L13
                end)
        end
    S.v992 = function(a131, a216, a38)
        local v521, tmp26, v619, tmp27
            local v327 = S.v882[a216]
            local v427 = S.v932[a131]
            if a38 then
                goto L4
            end
            stk0 = not v427
            if v427 then
                goto L19
            end
            ::L20::
            if not stk0 then
                goto L12
            end
            do
                return
            end
            do
                return
            end
            ::L12::
            v521 = a131:FindFirstChildOfClass(v327.cls)
            if not v521 then
                goto L10
            end
            if not (v427[a216] == false) then
                goto L11
            end
            v521:Destroy()
            ::L10::
            v427[a216] = nil
            do
                return
            end
            do
                return
            end
            ::L11::
            tmp26 = v427[a216]
            v521[v327.prop] = tmp26
            goto L10
            ::L19::
            goto L20
            ::L4::
            if v427 then
                goto L6
            end
            v619 = {}
            v427 = v619
            S.v932[a131] = v427
            ::L6::
            local v716 = a131:FindFirstChildOfClass(v327.cls)
            if not (v427[a216] == nil) then
                goto L15
            end
            stk0 = v716
            if v716 then
                goto L2
            end
            ::L8::
            if stk0 then
                goto L3
            end
            ::L3::
            tmp27 = stk0
            v427[a216] = tmp27
            ::L15::
            if v716 then
                goto L17
            end
            v716 = Instance.new(v327.cls)
            Instance.new(v327.cls)
            v716.Parent = a131
            ::L17::
            if v716[v327.prop] == a38 then
                goto L22
            end
            v716[v327.prop] = a38
            ::L22::
            do
                return
            end
            do
                return
            end
            ::L2::
            goto L8
        end
    S.v852.apply = function(a132, a217)
        local v183, v137, v144, v155, v164, v173, v717, v815, v913, v1012, v1115, v1211
            if a217 then
                goto L8
            end
            do
                return
            end
            do
                return
            end
            ::L8::
            local v225, v328, v428 = ipairs(S.v852.KINDS)
            ::L10::
            local v523, v620 = v225(v328, v428)
            v428 = v523
            if not v523 then
                goto L18
            end
            v717 = a217[v620]
            if v717 then
                goto L3
            end
            v137, v144, v155 = ipairs(a132)
            ::L14::
            v164, v173 = v137(v144, v155)
            v155 = v164
            if not v164 then
                goto L4
            end
            v183 = S.v932[v173]
            stk0 = v183
            if v183 then
                goto L7
            end
            ::L12::
            if not stk0 then
                goto L2
            end
            pcall(S.v992, v173, v620, nil)
            ::L2::
            goto L14
            ::L7::
            goto L12
            ::L4::
            goto L10
            ::L3::
            if v717.tpl then
                goto L9
            end
            ::L16::
            goto L4
            ::L9::
            v815, v913, v1012 = ipairs(a132)
            ::L5::
            v1115, v1211 = v815(v913, v1012)
            v1012 = v1115
            if not v1115 then
                goto L16
            end
            pcall(S.v992, v1211, v620, v717.tpl)
            goto L5
            ::L18::
            return
        end
    S.v852.restore = function(a133)
            for v429, v524 in ipairs(S.v542(a133)) do
                for v914, v1013 in ipairs(S.v852.KINDS) do
                    pcall(S.v992, v524, v1013, nil)
                end
            end
        end
    S.v852.set = function(a134, a218, a39, a44)
        local v525, v621, v718, v816, v915
            stk0 = a134 == "me"
            if not (a134 == "me") then
                goto L4
            end
            ::L4::
            if stk0 then
                goto L2
            end
            ::L2::
            local v430 = stk0
            if a39 then
                goto L12
            end
            S.v4210[a134].cloth[a218] = nil
            if not v430 then
                goto L8
            end
            v525, v621, v718 = ipairs(S.v542(v430))
            ::L6::
            v816, v915 = v525(v621, v718)
            v718 = v816
            if not v816 then
                goto L8
            end
            pcall(S.v992, v915, a218, nil)
            goto L6
            ::L8::
            if not a44 then
                goto L10
            end
            a44(true)
            ::L10::
            do
                return
            end
            do
                return
            end
            ::L12::
            local v1116 = {id = a39}
            S.v4210[a134].cloth[a218] = v1116
            S.v982(a218, a39, function(a135)
                    if S.v4210[a134].cloth[a218] == v1116 then
                        goto L7
                    end
                    do
                        return
                    end
                    do
                        return
                    end
                    ::L7::
                    if a135 then
                        goto L9
                    end
                    S.v4210[a134].cloth[a218] = nil
                    if not a44 then
                        goto L4
                    end
                    a44(false)
                    ::L4::
                    do
                        return
                    end
                    do
                        return
                    end
                    ::L9::
                    v1116.tpl = a135
                    local tmp28 = a134 == "me"
                    stk0 = tmp28
                    if not (tmp28) then
                        goto L2
                    end
                    ::L2::
                    if stk0 then
                        goto L12
                    end
                    ::L12::
                    local v131 = stk0
                    if not v131 then
                        goto L5
                    end
                    S.v852.apply(S.v542(v131), S.v4210[a134].cloth)
                    ::L5::
                    if not a44 then
                        goto L14
                    end
                    a44(true)
                    ::L14::
                    return
                end)
            return
        end
    S.v100 = function(a136)
            if not a136 then
                return
            end
            for v431, v526 in ipairs(S.v542(a136)) do
                pcall(S.v582, v526)
                pcall(S.v592, v526, true)
                pcall(S.v842, v526)
            end
            pcall(S.v852.restore, a136)
        end
    S.v48.clear = function(a137)
            stk0 = not a137
            if not a137 then
                goto L2
            end
            ::L2::
            if not stk0 then
                goto L4
            end
            do
                return
            end
            do
                return
            end
            ::L4::
            local v138, v226, v329 = ipairs(S.v542(a137.plr))
            ::L5::
            local v433, v527 = v138(v226, v329)
            v329 = v433
            if not v433 then
                goto L7
            end
            pcall(S.v582, v527)
            pcall(S.v592, v527, true)
            goto L5
            ::L7::
            return
        end
    S.v101 = function(a138, a219, a310)
            local v330 = S.v542(a138)
            local v434 = v330[1]
            if not v434 then
                return
            end
            for v817, v916 in ipairs(v330) do
                if a219.korblox then
                    pcall(S.v572, v916)
                end
                if a219.headless then
                    pcall(S.v592, v916, false)
                end
            end
            for v139, v145 in ipairs(S.v272) do
                if a219.items[v145.key] then
                    pcall(S.v622, v434, v145, a310)
                end
            end
            pcall(S.v852.apply, v330, a219.cloth)
        end
    S.v1022 = function()
            if S.v562(S.v552(S.v5)) then
                S.v101(S.v5, S.v4210.me, "me")
            end
            local tmp29 = S.v47
            stk0 = tmp29
            if stk0 then
                S.v101(S.v47, S.v4210.fr, "fr")
            end
            for v331, v435 in ipairs(S.v48) do
                local tmp30 = v435.plr
                stk0 = tmp30
                if tmp30 then
                    if not v435.korblox then
                        goto J1
                    end
                    ::L18::
                    ::J1::
                    goto L18
                end
                if stk0 then
                    for v818, v917 in ipairs(S.v542(v435.plr)) do
                        if v435.korblox then
                            pcall(S.v572, v917)
                        end
                        if v435.headless then
                            pcall(S.v592, v917, false)
                        end
                    end
                end
            end
        end
    S.v1032 = function()
            local v528 = {S.v5, S.v47}
            for v332, v436 in ipairs(v528) do
                for v918, v1014 in ipairs(S.v542(v436)) do
                    S.v842(v1014)
                end
            end
            S.v1022()
        end
    S.v1042 = function()
            local v06 = 0
            for v437, v529 in pairs(S.v4210.me.items) do
                if v529 then
                    v06 = v06 + 1
                end
            end
            return v06
        end
    S.v1052 = function()
            for v333, v438 in pairs(S.v61) do
                if not v333.Parent then
                    for v819, v919 in pairs(v438) do
                        pcall(function()
                                v919:Destroy()
                            end)
                    end
                    S.v61[v333] = nil
                end
            end
        end
    S.v1062 = 0
    S.v8(S.RunService.Heartbeat, function()
        local v439, tmp31, tmp32, v530
            local v07 = tick()
            if not (1 < v07 - S.v1062) then
                goto L9
            end
            S.v1062 = v07
            S.v1052()
            ::L9::
            local v140 = #S.v60
            local v227 = 1
            local v334 = -1
            ::L13::
            if not (0 < v334) then
                goto L15
            end
            stk0 = v140 <= v227
            ::L10::
            if not stk0 then
                goto L16
            end
            v439 = S.v60[v140]
            tmp31 = v439.handle
            stk0 = tmp31
            if not tmp31 then
                goto L7
            end
            ::L7::
            if stk0 then
                goto L5
            end
            table.remove(S.v60, v140)
            ::L4::
            v140 = v140 + v334
            goto L13
            ::L5::
            tmp32 = v439.light
            stk0 = tmp32
            if not tmp32 then
                goto L2
            end
            ::L2::
            if not stk0 then
                goto L4
            end
            v530 = math.sin((v07 - v439.t0) * v439.speed) * 0.5 + 0.5
            v439.light.Brightness = v439.base + v530 * v439.amp
            goto L4
            ::L16::
            do
                return
            end
            do
                return
            end
            ::L15::
            stk0 = v227 <= v140
            goto L10
        end)
    S.v1072 = function(a139)
        local tmp33, tmp34
            stk0 = a139
            if a139 then
                goto L10
            end
            ::L10::
            local a139 = stk0:lower():gsub("^%s+", ""):gsub("%s+$", "")
            stk0:lower():gsub("^%s+", ""):gsub("%s+$", "")
            if not (a139 == "") then
                goto L5
            end
            do
                return nil
            end
            do
                return
            end
            ::L5::
            local v141, v228, v335 = ipairs(S.Players:GetPlayers())
            ::L8::
            local v440, v531 = v141(v228, v335)
            v335 = v440
            if not v440 then
                goto L7
            end
            tmp33 = v531.Name:lower() == a139
            stk0 = tmp33
            if tmp33 then
                goto L2
            end
            ::L2::
            if not stk0 then
                goto L6
            end
            do
                return v531
            end
            do
                return
            end
            ::L6::
            goto L8
            ::L7::
            local v623, v719, v820 = ipairs(S.Players:GetPlayers())
            ::L16::
            local v920, v1015 = v623(v719, v820)
            v820 = v920
            if not v920 then
                goto L18
            end
            tmp34 = v1015.Name:lower():find(a139, 1, true)
            stk0 = tmp34
            if tmp34 then
                goto L13
            end
            ::L13::
            if not stk0 then
                goto L12
            end
            do
                return v1015
            end
            do
                return
            end
            ::L12::
            goto L16
            ::L18::
            return
        end
    S.v1082 = 0
    S.v8(S.RunService.Heartbeat, function(a140)
            if S.v44 then
                goto L4
            end
            do
                return
            end
            do
                return
            end
            ::L4::
            stk0 = S.v1082
            local tmp35 = tonumber(a140)
            stk1 = tmp35
            if tmp35 then
                goto L2
            end
            ::L2::
            S.v1082 = stk0 + stk1
            if not (S.v1082 < 0.2) then
                goto L6
            end
            do
                return
            end
            do
                return
            end
            ::L6::
            S.v1082 = 0
            pcall(S.v1022)
            return
        end)
    S.v8(S.v5.CharacterAdded, function(a141)
            a141:WaitForChild("Humanoid", 5)
            task.wait(0.5)
            S.v1022()
        end)
    S.v1092 = "v1.2.0"
    S.v1102 = "https://discord.gg/3heart"
    S.v1117 = ""
    S.v1122 = Enum.Font.GothamMedium
    S.v1132 = Enum.Font.GothamBold
    S.v1142 = Color3.fromHex("050505")
    S.v1152 = Color3.fromHex("0A0A0A")
    S.v1162 = Color3.fromHex("101010")
    S.v1172 = Color3.fromHex("0D0D0D")
    S.v1182 = Color3.fromHex("242424")
    S.v1192 = Color3.fromHex("3A3A3A")
    S.v1202 = Color3.fromHex("929292")
    S.v1212 = Color3.fromHex("F5F5F5")
    S.v1222 = Color3.fromHex("FF4D4D")
    S.v1232 = Color3.fromHex("8B1010")
    S.v1242 = Color3.fromHex("22C55E")
    S.v1262 = {}
    S.v1272 = {"Crimson"}
    for i = 1, Color3.fromHex("FF2020").n do S.v1272[#S.v1272 + 1] = Color3.fromHex("FF2020")[i] end
    S.v1262[1] = S.v1272
    S.v1282 = {"Ember"}
    for i = 1, Color3.fromHex("FF6A1F").n do S.v1282[#S.v1282 + 1] = Color3.fromHex("FF6A1F")[i] end
    S.v1262[2] = S.v1282
    S.v1292 = {"Rose"}
    for i = 1, Color3.fromHex("FF3D7F").n do S.v1292[#S.v1292 + 1] = Color3.fromHex("FF3D7F")[i] end
    S.v1262[3] = S.v1292
    S.v1302 = {"Amber"}
    for i = 1, Color3.fromHex("FFB020").n do S.v1302[#S.v1302 + 1] = Color3.fromHex("FFB020")[i] end
    S.v1262[4] = S.v1302
    S.v1312 = {"Ice"}
    for i = 1, Color3.fromHex("3DB8FF").n do S.v1312[#S.v1312 + 1] = Color3.fromHex("3DB8FF")[i] end
    S.v1262[5] = S.v1312
    if S.v1252[S.v12.accent] then
        goto L100
    end
    ::L100::
    S.v1322 = stk6[2]
    S.v1362 = {}
    S.v1372 = {}
    S.v1382 = {}
    S.v1422 = {}
    S.v1432 = {}
    S.v1442 = {}
    S.v1452 = nil
    S.v146 = nil
    S.v147 = nil
    S.v148 = nil
    S.v149 = nil
    S.v150 = function(a142, a220, a311)
            local v336 = Instance.new(a142)
            local tmp36 = v336:IsA("GuiObject")
            stk0 = tmp36
            if not tmp36 then
                goto L14
            end
            ::L14::
            if not stk0 then
                goto L2
            end
            v336.BorderSizePixel = 0
            ::L2::
            local tmp37 = v336:IsA("TextLabel")
            stk0 = tmp37
            if tmp37 then
                goto L10
            end
            if v336:IsA("TextButton") then
                goto L10
            end
            ::L10::
            if not stk0 then
                goto L8
            end
            ::L8::
            if not stk0 then
                goto L13
            end
            v336.Font = S.v1122
            ::L13::
            local v441, v533, v624 = pairs(a220)
            ::L6::
            local v720, v821 = v441(v533, v624)
            v624 = v720
            if not v720 then
                goto L4
            end
            v336[v720] = v821
            goto L6
            ::L4::
            if not a311 then
                goto L16
            end
            v336.Parent = a311
            ::L16::
            return v336
        end
    S.v151 = function(a143, a221)
            local v229 = {}
            v229.CornerRadius = UDim.new(0, a221)
            return S.v150("UICorner", v229, a143)
        end
    S.v1522 = function(a144)
            return S.v151(a144, 8)
        end
    S.v1532 = function(a145, a222, a312, a45)
            local v442 = {}
            stk0 = S.v150
            stk1 = "UIStroke"
            stk2 = a222
            if a222 then
                goto L2
            end
            ::L2::
            v442.Color = stk2
            if a312 then
                goto L5
            end
            ::L5::
            v442.Thickness = stk2
            if a45 then
                goto L4
            end
            ::L4::
            v442.Transparency = stk2
            v442.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
            return stk0(stk1, v442, a145)
        end
    S.v1542 = function(a146)
            S.v1532(a146, S.v1212, 1, 0.88)
        end
    S.v1552 = function(a147, a223, a313, a46, a52)
        local v721, v823, v921, v1016, v1118
            local v625 = {BackgroundTransparency = 1, Text = a223, TextSize = a313}
            stk0 = a46
            if a46 then
                goto L2
            end
            ::L2::
            v625.TextColor3 = stk0
            v625.TextXAlignment = Enum.TextXAlignment.Left
            if not a52 then
                goto L4
            end
            v721, v823, v921 = pairs(a52)
            ::L5::
            v1016, v1118 = v721(v823, v921)
            v921 = v1016
            if not v1016 then
                goto L4
            end
            v625[v1016] = v1118
            goto L5
            ::L4::
            return S.v150("TextLabel", v625, a147)
        end
    S.v156 = function(a148, a224)
            local v230 = {a148, a224}
            table.insert(S.v1332, v230)
            local tmp38 = S.v1322
            a148[a224] = tmp38
        end
    S.v1572 = function(a149)
            S.v1322 = a149
            for v443, v534 in ipairs(S.v1332) do
                pcall(function()
                        local tmp39 = a149
                        v534[1][v534[2]] = tmp39
                    end)
            end
            for v923, v1017 in ipairs(S.v1342) do
                pcall(v1017, a149)
            end
            for v1410, v157 in ipairs(S.v1352) do
                v157:refresh(true)
            end
            for v193, v203 in ipairs(S.v1392) do
                v203[1].Visible = v203[2] == a149
            end
            if S.v1452 then
                S.v1452()
            end
            if S.v146 then
                S.v146()
            end
        end
    S.v158 = function(a150)
            local tmp40 = a150.UserInputType == Enum.UserInputType.MouseButton1
            stk0 = tmp40
            if tmp40 then
                goto L2
            end
            ::L2::
            return stk0
        end
    S.v159 = function(a151)
            local tmp41 = a151.UserInputType == Enum.UserInputType.MouseMovement
            stk0 = tmp41
            if tmp41 then
                goto L2
            end
            ::L2::
            return stk0
        end
    S.v1602 = function(a152, a225)
            local v231 = false
            local v337 = nil
            local v444 = nil
            S.v8(a152.InputBegan, function(a153)
                    if S.v158(a153) then
                        v231 = true
                        v337 = a153.Position
                        v444 = a225.Position
                        a153.Changed:Connect(function()
                                if a153.UserInputState == Enum.UserInputState.End then
                                    v231 = false
                                end
                            end)
                    end
                end)
            S.v8(S.UserInputService.InputChanged, function(a154)
                    local tmp42 = v231
                    stk0 = tmp42
                    if stk0 then
                        local v160 = a154.Position - v337
                        a225.Position = UDim2.new(v444.X.Scale, v444.X.Offset + v160.X, v444.Y.Scale, v444.Y.Offset + v160.Y)
                        UDim2.new(v444.X.Scale, v444.X.Offset + v160.X, v444.Y.Scale, v444.Y.Offset + v160.Y)
                    end
                end)
        end
    S.v1612 = function(a155)
            local v161 = false
            if not setclipboard then
                goto L2
            end
            v161 = pcall(setclipboard, a155)
            pcall(setclipboard, a155)
            ::L4::
            do
                return v161
            end
            do
                return
            end
            ::L2::
            if not toclipboard then
                goto L4
            end
            v161 = pcall(toclipboard, a155)
            pcall(toclipboard, a155)
            goto L4
        end
    S.v1632 = {
        Name = "DZ_DELUX",
        ResetOnSpawn = false,
        IgnoreGuiInset = true,
        DisplayOrder = 999,
        ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    }
    S.v1622 = S.v150("ScreenGui", S.v1632)
    S.v1642 = pcall(function()
            stk0 = gethui
            if not gethui then
                goto L2
            end
            ::L2::
            if stk0 then
                goto L4
            end
            ::L4::
            S.v1622.Parent = stk0
            return
        end)
    if not S.v1642 then
        goto L57
    end
    ::L57::
    if not stk6 then
        goto L77
    end
    S.v1622.Parent = S.v5:WaitForChild("PlayerGui")
    S.v5:WaitForChild("PlayerGui")
    ::L77::
    S.v1652 = function()
        local v165
            local v08 = S.v1622.AbsoluteSize
            if not (v08.X < 10) then
                goto L2
            end
            v165 = workspace.CurrentCamera
            stk0 = v165
            if not v165 then
                goto L3
            end
            ::L3::
            if stk0 then
                goto L5
            end
            ::L5::
            v08 = stk0
            ::L2::
            return v08
        end
    S.v166 = 760
    S.v167 = 500
    S.v168 = 196
    S.v170 = {Name = "Main"}
    S.v170.Size = UDim2.fromOffset(S.v166, S.v167)
    S.v170.AnchorPoint = Vector2.new(0.5, 0.5)
    S.v170.Position = UDim2.fromScale(0.5, 0.5)
    S.v170.BackgroundColor3 = S.v1142
    S.v170.ClipsDescendants = true
    S.v169 = S.v150("Frame", S.v170, S.v1622)
    S.v1722 = {Scale = 1}
    S.v171 = S.v150("UIScale", S.v1722, S.v169)
    table.insert(S.v1402, S.v151(S.v169, S.v12.radius))
    S.v1732 = S.v1532(S.v169, S.v1322, S.v12.border, 0.1)
    S.v156(S.v1732, "Color")
    S.v175 = {}
    S.v175.Size = UDim2.fromScale(1, 1)
    S.v175.BackgroundColor3 = S.v1212
    S.v175.ZIndex = 0
    S.v174 = S.v150("Frame", S.v175, S.v169)
    table.insert(S.v1402, S.v151(S.v174, S.v12.radius))
    S.v177 = {Rotation = 35}
    S.v178 = {}
    S.v178[1] = NumberSequenceKeypoint.new(0, 0.4)
    S.v178[2] = NumberSequenceKeypoint.new(0.55, 1)
    for i = 1, NumberSequenceKeypoint.new(1, 1).n do S.v178[#S.v178 + 1] = NumberSequenceKeypoint.new(1, 1)[i] end
    S.v177.Transparency = NumberSequence.new(S.v178)
    S.v176 = S.v150("UIGradient", S.v177, S.v174)
    table.insert(S.v1342, function(a156)
            S.v176.Color = ColorSequence.new(a156:Lerp(S.v1142, 0.55), S.v1142)
            ColorSequence.new(a156:Lerp(S.v1142, 0.55), S.v1142)
        end)
    S.v179 = false
    S.v1802 = function()
        local v09, v180
            if not S.v179 then
                goto L2
            end
            v09 = S.v1652()
            v180 = math.max(S.v171.Scale, 0.05)
            S.v169.Size = UDim2.fromOffset((v09.X - 20) / v180, (v09.Y - 20) / v180)
            UDim2.fromOffset((v09.X - 20) / v180, (v09.Y - 20) / v180)
            ::L3::
            S.v169.Position = UDim2.fromScale(0.5, 0.5)
            UDim2.fromScale(0.5, 0.5)
            do
                return
            end
            do
                return
            end
            ::L2::
            S.v169.Size = UDim2.fromOffset(S.v166, S.v167)
            UDim2.fromOffset(S.v166, S.v167)
            goto L3
        end
    S.v1812 = function()
            local v010 = S.v1652()
            local v181 = math.clamp(math.min(1, (v010.X - 16) / S.v166, (v010.Y - 16) / S.v167), 0.3, 1)
            S.v171.Scale = v181 * S.v12.scale
            S.v1802()
        end
    S.v1832 = {}
    S.v1832.AnchorPoint = Vector2.new(1, 1)
    S.v1832.Position = UDim2.new(1, -14, 1, -34)
    S.v1832.Size = UDim2.new(0, 250, 0, 220)
    S.v1832.BackgroundTransparency = 1
    S.v1832.ZIndex = 60
    S.v1822 = S.v150("Frame", S.v1832, S.v169)
    S.v184 = {
        VerticalAlignment = Enum.VerticalAlignment.Bottom,
        HorizontalAlignment = Enum.HorizontalAlignment.Right
    }
    S.v184.Padding = UDim.new(0, 6)
    S.v184.SortOrder = Enum.SortOrder.LayoutOrder
    S.v150("UIListLayout", S.v184, S.v1822)
    S.v188 = {}
    S.v186 = nil
    S.v187 = 0
    S.v189 = function(a157, a226)
            stk0 = a226
            if a226 then
                goto L6
            end
            ::L6::
            local a226 = stk0
            local v233 = {}
            v233.t = os.date("%H:%M")
            v233.text = a157
            v233.color = a226
            table.insert(S.v185, 1, v233)
            if not (20 < #S.v185) then
                goto L4
            end
            table.remove(S.v185)
            ::L4::
            if not S.v186 then
                goto L8
            end
            pcall(S.v186)
            ::L8::
            S.v187 = S.v187 + 1
            local v445 = {}
            v445.Size = UDim2.new(1, 0, 0, 30)
            v445.AutomaticSize = Enum.AutomaticSize.Y
            v445.BackgroundColor3 = S.v1162
            v445.LayoutOrder = S.v187
            v445.ZIndex = 60
            local v338 = S.v150("Frame", v445, S.v1822)
            S.v151(v338, 9)
            stk0 = S.v1532
            stk1 = v338
            local tmp43 = a226 == S.v1202
            stk2 = tmp43
            if not (tmp43) then
                goto L2
            end
            ::L2::
            if stk2 then
                goto L10
            end
            ::L10::
            local v535 = stk0(stk1, stk2, 1, 0.35)
            local v626 = {}
            v626.PaddingTop = UDim.new(0, 8)
            v626.PaddingBottom = UDim.new(0, 8)
            v626.PaddingLeft = UDim.new(0, 12)
            v626.PaddingRight = UDim.new(0, 12)
            S.v150("UIPadding", v626, v338)
            local v723 = {}
            v723.Size = UDim2.new(1, 0, 0, 14)
            v723.AutomaticSize = Enum.AutomaticSize.Y
            v723.TextWrapped = true
            v723.ZIndex = 61
            S.v1552(v338, a157, 12, S.v1212, v723)
            task.delay(3, function()
                    if v338.Parent then
                        v338:Destroy()
                    end
                end)
            return
        end
    S.v191 = {}
    S.v191.Size = UDim2.new(1, 0, 0, 54)
    S.v191.BackgroundTransparency = 1
    S.v191.Active = true
    S.v191.ZIndex = 10
    S.v190 = S.v150("Frame", S.v191, S.v169)
    S.v1602(S.v190, S.v169)
    S.v1922 = function(a158, a227, a314)
            if not (S.v1117 == "") then
                local v339 = {
                    BackgroundTransparency = 1,
                    Image = "rbxassetid://" .. S.v1117,
                    ScaleType = Enum.ScaleType.Fit,
                    Size = a227,
                    Position = a314
                }
                return S.v150("ImageLabel", v339, a158)
            end
            local v536 = {
                BackgroundTransparency = 1,
                Text = "DZ",
                Font = Enum.Font.GothamBlack,
                TextScaled = true,
                TextColor3 = S.v1212,
                Size = a227,
                Position = a314
            }
            local v446 = S.v150("TextLabel", v536, a158)
            local v627 = {Rotation = 20}
            local v724 = {}
            v724[1] = ColorSequenceKeypoint.new(0, Color3.fromHex("FF2020"))
            v724[2] = ColorSequenceKeypoint.new(0.55, Color3.fromHex("C01010"))
            for i = 1, ColorSequenceKeypoint.new(1, Color3.fromHex("D8D8D8")).n do v724[#v724 + 1] = ColorSequenceKeypoint.new(1, Color3.fromHex("D8D8D8"))[i] end
            v627.Color = ColorSequence.new(v724)
            S.v150("UIGradient", v627, v446)
            return v446
        end
    S.v1922(S.v190, UDim2.fromOffset(52, 28), UDim2.fromOffset(18, 13))
    S.v194 = {}
    S.v194.Position = UDim2.fromOffset(78, 0)
    S.v194.Size = UDim2.fromOffset(200, 54)
    S.v194.RichText = true
    S.v194.Font = S.v1132
    S.v194.ZIndex = 11
    S.v1932 = S.v1552(S.v190, "", 21, S.v1212, S.v194)
    table.insert(S.v1342, function(a159)
            S.v1932.Text = ("Delux <font color=\"#" .. a159:ToHex()) .. "\">Zephyr</font>"
        end)
    S.v196 = {}
    S.v196.Position = UDim2.fromOffset(214, 0)
    S.v196.Size = UDim2.new(1, -214 - 384, 0, 54)
    S.v196.RichText = true
    S.v196.Font = S.v1132
    S.v196.ZIndex = 11
    S.v196.TextTruncate = Enum.TextTruncate.AtEnd
    S.v195 = S.v1552(S.v190, "", 12, S.v1202, S.v196)
    table.insert(S.v1342, function(a160)
            S.v195.Text = ("TIKTOK: <font color=\"#" .. a160:ToHex()) .. "\">@sherinotame</font>"
        end)
    S.v198 = {}
    S.v198.Position = UDim2.new(1, -286, 0, 11)
    S.v198.Size = UDim2.fromOffset(134, 32)
    S.v198.BackgroundColor3 = S.v1152
    S.v198.ZIndex = 11
    S.v197 = S.v150("Frame", S.v198, S.v190)
    S.v151(S.v197, 9)
    S.v199 = S.v1532(S.v197, S.v1322, 1, 0.55)
    S.v156(S.v199, "Color")
    S.v205 = {6, 12, 8}
    S.v200, S.v201, S.v2022 = ipairs(S.v205)
    ::L75::
    S.v2032, S.v204 = S.v200(S.v201, S.v2022)
    S.v2022 = S.v2032
    if not S.v2032 then
        goto L36
    end
    S.v207 = {}
    S.v207.AnchorPoint = Vector2.new(0, 0.5)
    S.v207.Position = UDim2.new(0, 12 + (S.v2032 - 1) * 5, 0.5, 0)
    S.v207.Size = UDim2.fromOffset(3, S.v204)
    S.v207.ZIndex = 12
    S.v206 = S.v150("Frame", S.v207, S.v197)
    S.v151(S.v206, 1)
    S.v156(S.v206, "BackgroundColor3")
    goto L75
    ::L36::
    S.v209 = {}
    S.v209.Position = UDim2.fromOffset(34, 0)
    S.v209.Size = UDim2.new(1, -40, 1, 0)
    S.v209.RichText = true
    S.v209.ZIndex = 12
    S.v208 = S.v1552(S.v197, "", 12, S.v1212, S.v209)
    table.insert(S.v1342, function(a161)
            S.v208.Text = ("Status: <font color=\"#" .. a161:ToHex()) .. "\">Online</font>"
        end)
    S.v2102 = function(a162, a228, a315, a47, a53)
            local v628 = {}
            v628.Position = UDim2.new(1, a162, 0, 13)
            v628.Size = UDim2.fromOffset(28, 28)
            v628.BackgroundColor3 = S.v1162
            v628.BackgroundTransparency = 1
            v628.Text = ""
            v628.AutoButtonColor = false
            v628.ZIndex = 12
            local v537 = S.v150("TextButton", v628, S.v190)
            S.v151(v537, 8)
            a315(v537)
            local v824 = {}
            v824.AnchorPoint = Vector2.new(0.5, 0)
            v824.Position = UDim2.new(0.5, 0, 1, 6)
            stk0 = S.v1552
            stk1 = v537
            stk2 = a228
            stk3 = 10
            stk4 = S.v1212
            stk5 = UDim2.fromOffset
            stk6 = a53
            if a53 then
                goto L2
            end
            ::L2::
            v824.Size = stk5(stk6, 18)
            v824.BackgroundTransparency = 0
            v824.BackgroundColor3 = S.v1162
            v824.TextXAlignment = Enum.TextXAlignment.Center
            v824.Visible = false
            v824.ZIndex = 40
            local v725 = stk0(stk1, stk2, stk3, stk4, v824)
            S.v151(v725, 5)
            S.v1532(v725, S.v1182, 1)
            S.v8(v537.MouseEnter, function()
                    local v011 = {BackgroundTransparency = 0}
                    S.TweenService:Create(v537, TweenInfo.new(0.15), v011):Play()
                    v725.Visible = true
                end)
            S.v8(v537.MouseLeave, function()
                    local v012 = {BackgroundTransparency = 1}
                    S.TweenService:Create(v537, TweenInfo.new(0.15), v012):Play()
                    v725.Visible = false
                end)
            S.v8(v537.MouseButton1Click, a47)
            return v537
        end
    S.v2112 = function(a163, a229, a316, a48)
            local v447 = {}
            v447.AnchorPoint = Vector2.new(0.5, 0.5)
            v447.Position = UDim2.fromScale(0.5, 0.5)
            v447.Size = UDim2.fromOffset(a229, a316)
            stk0 = S.v150
            stk1 = "Frame"
            stk2 = a48
            if a48 then
                goto L2
            end
            ::L2::
            v447.Rotation = stk2
            v447.BackgroundColor3 = S.v1212
            v447.ZIndex = 13
            return stk0(stk1, v447, a163)
        end
    S.v2102(-110, "Minimize", function(a164)
            S.v2112(a164, 11, 2)
        end, function()
            S.v169.Visible = false
        end)
    S.v2102(-76, "Maximize", function(a165)
            local v234 = {}
            v234.AnchorPoint = Vector2.new(0.5, 0.5)
            v234.Position = UDim2.fromScale(0.5, 0.5)
            v234.Size = UDim2.fromOffset(10, 10)
            v234.BackgroundTransparency = 1
            v234.ZIndex = 13
            local v1100 = S.v150("Frame", v234, a165)
            S.v1532(v1100, S.v1212, 1.5, 0)
        end, function()
            S.v179 = not S.v179
            S.v1802()
        end)
    S.v2102(-42, "Close", function(a166)
            S.v2112(a166, 15, 2, 45)
            S.v2112(a166, 15, 2, -45)
        end, function()
            if _G.DELUX_CLEAN then
                _G.DELUX_CLEAN()
            end
        end)
    S.v2102(-144, "Sembunyikan UI", function(a167)
            local v235 = {}
            v235.AnchorPoint = Vector2.new(0.5, 0.5)
            v235.Position = UDim2.fromScale(0.5, 0.5)
            v235.Size = UDim2.fromOffset(15, 9)
            v235.BackgroundTransparency = 1
            v235.ZIndex = 13
            local v1101 = S.v150("Frame", v235, a167)
            S.v151(v1101, 5)
            S.v1532(v1101, S.v1212, 1.3, 0)
            local v448 = {}
            v448.AnchorPoint = Vector2.new(0.5, 0.5)
            v448.Position = UDim2.fromScale(0.5, 0.5)
            v448.Size = UDim2.fromOffset(4, 4)
            v448.BackgroundColor3 = S.v1212
            v448.ZIndex = 13
            local v340 = S.v150("Frame", v448, v1101)
            S.v151(v340, 2)
            S.v2112(a167, 18, 1.5, -40)
        end, function()
            if S.v4210.hideUI then
                S.v4210.hideUI()
            end
        end, 92)
    S.v2132 = {}
    S.v2132.Position = UDim2.new(1, -368, 0, 11)
    S.v2132.Size = UDim2.fromOffset(74, 32)
    S.v2132.BackgroundColor3 = S.v1152
    S.v2132.Text = ""
    S.v2132.AutoButtonColor = false
    S.v2132.ZIndex = 11
    S.v2122 = S.v150("TextButton", S.v2132, S.v190)
    S.v151(S.v2122, 9)
    S.v156(S.v1532(S.v2122, S.v1322, 1, 0.55), "Color")
    S.v2152 = {}
    S.v2152.Position = UDim2.fromOffset(10, 9)
    S.v2152.Size = UDim2.fromOffset(14, 14)
    S.v2152.BackgroundTransparency = 1
    S.v2152.ZIndex = 12
    S.v2142 = S.v150("Frame", S.v2152, S.v2122)
    S.v151(S.v2142, 7)
    S.v1532(S.v2142, S.v1212, 1.2, 0.1)
    S.v2172 = {}
    S.v2172.AnchorPoint = Vector2.new(0.5, 0.5)
    S.v2172.Position = UDim2.fromScale(0.5, 0.5)
    S.v2172.Size = UDim2.fromOffset(6, 14)
    S.v2172.BackgroundTransparency = 1
    S.v2172.ZIndex = 12
    S.v2162 = S.v150("Frame", S.v2172, S.v2142)
    S.v151(S.v2162, 3)
    S.v1532(S.v2162, S.v1212, 1, 0.35)
    S.v2182 = {}
    S.v2182.AnchorPoint = Vector2.new(0.5, 0.5)
    S.v2182.Position = UDim2.fromScale(0.5, 0.5)
    S.v2182.Size = UDim2.new(1, 0, 0, 1)
    S.v2182.BackgroundColor3 = S.v1212
    S.v2182.BackgroundTransparency = 0.35
    S.v2182.ZIndex = 12
    S.v150("Frame", S.v2182, S.v2142)
    S.v2202 = {}
    S.v2202.Position = UDim2.fromOffset(32, 0)
    S.v2202.Size = UDim2.fromOffset(22, 32)
    S.v2202.Font = S.v1132
    S.v2202.ZIndex = 12
    S.v2192 = S.v1552(S.v2122, "ID", 12, S.v1322, S.v2202)
    S.v156(S.v2192, "TextColor3")
    S.v2262 = {1, -1}
    S.v2212, S.v2222, S.v2232 = ipairs(S.v2262)
    ::L121::
    S.v2242, S.v2252 = S.v2212(S.v2222, S.v2232)
    S.v2232 = S.v2242
    if not S.v2242 then
        goto L19
    end
    S.v2272 = {}
    S.v2272.AnchorPoint = Vector2.new(0.5, 0.5)
    if not (S.v2252 == 1) then
        goto L15
    end
    ::L15::
    if stk11 then
        goto L53
    end
    ::L53::
    S.v2272.Position = stk9(stk10 + stk11, 16)
    S.v2272.Size = UDim2.fromOffset(5, 1.5)
    S.v2272.Rotation = S.v2252 * 40
    S.v2272.BackgroundColor3 = S.v1202
    S.v2272.ZIndex = 12
    stk7(stk8, S.v2272, S.v2122)
    goto L121
    ::L19::
    S.v2292 = {}
    S.v2292.Size = UDim2.fromScale(1, 1)
    S.v2292.BackgroundTransparency = 1
    S.v2292.Text = ""
    S.v2292.AutoButtonColor = false
    S.v2292.Visible = false
    S.v2292.ZIndex = 65
    S.v2282 = S.v150("TextButton", S.v2292, S.v169)
    S.v2312 = {}
    S.v2312.Position = UDim2.new(1, -368, 0, 48)
    S.v2312.Size = UDim2.fromOffset(170, 96)
    S.v2312.BackgroundColor3 = S.v1152
    S.v2312.Visible = false
    S.v2312.ZIndex = 70
    S.v2302 = S.v150("Frame", S.v2312, S.v169)
    S.v151(S.v2302, 10)
    S.v156(S.v1532(S.v2302, S.v1322, 1, 0.3), "Color")
    S.v2322 = {
        BackgroundTransparency = 1,
        Text = "LANGUAGE / BAHASA",
        TextSize = 9,
        TextColor3 = S.v1202,
        Font = S.v1132,
        TextXAlignment = Enum.TextXAlignment.Left
    }
    S.v2322.Position = UDim2.fromOffset(12, 6)
    S.v2322.Size = UDim2.new(1, -24, 0, 14)
    S.v2322.ZIndex = 71
    S.v150("TextLabel", S.v2322, S.v2302)
    S.v2342 = {}
    S.v2352 = {"id", "Bahasa Indonesia", "ID"}
    S.v2342[1] = S.v2352
    S.v236 = {"en", "English", "EN"}
    S.v2342[2] = S.v236
    S.v238 = {}
    S.v239 = function()
            S.v2302.Visible = false
            S.v2282.Visible = false
        end
    S.v240, S.v241, S.v2422 = ipairs(S.v2332)
    ::L2::
    S.v243, S.v244 = S.v240(S.v241, S.v2422)
    S.v2422 = S.v243
    if not S.v243 then
        goto L106
    end
    S.v246 = {}
    S.v246.Position = UDim2.fromOffset(6, 24 + (S.v243 - 1) * 34)
    S.v246.Size = UDim2.new(1, -12, 0, 30)
    S.v246.BackgroundColor3 = S.v1162
    S.v246.BackgroundTransparency = 0.4
    S.v246.Text = ""
    S.v246.AutoButtonColor = false
    S.v246.ZIndex = 71
    S.v245 = S.v150("TextButton", S.v246, S.v2302)
    S.v151(S.v245, 8)
    S.v248 = {}
    S.v248.Position = UDim2.fromOffset(10, 0)
    S.v248.Size = UDim2.fromOffset(22, 30)
    S.v248.Font = S.v1132
    S.v248.ZIndex = 72
    S.v247 = S.v1552(S.v245, S.v244[3], 11, S.v1202, S.v248)
    S.v249 = {}
    S.v249.Position = UDim2.fromOffset(36, 0)
    S.v249.Size = UDim2.new(1, -60, 1, 0)
    S.v249.ZIndex = 72
    S.v1552(S.v245, S.v244[2], 12, S.v1212, S.v249)
    S.v251 = {}
    S.v251.AnchorPoint = Vector2.new(1, 0.5)
    S.v251.Position = UDim2.new(1, -10, 0.5, 0)
    S.v251.Size = UDim2.fromOffset(8, 8)
    S.v251.Visible = false
    S.v251.ZIndex = 72
    S.v250 = S.v150("Frame", S.v251, S.v245)
    S.v151(S.v250, 4)
    S.v156(S.v250, "BackgroundColor3")
    S.v252 = {btn = S.v245, tc = S.v247, dot = S.v250}
    S.v237[S.v244[1]] = S.v252
    S.v8(S.v245.MouseButton1Click, function()
            S.v239()
            if S.v4210.setLang then
                S.v4210.setLang(S.v244[1])
            end
        end)
    S.v8(S.v245.MouseEnter, function()
            S.v245.BackgroundTransparency = 0.15
        end)
    S.v8(S.v245.MouseLeave, function()
            S.v245.BackgroundTransparency = 0.4
        end)
    goto L2
    ::L106::
    S.v4210.langRefresh = function(a168)
            stk0 = a168 == "en"
            if not (a168 == "en") then
                goto L9
            end
            ::L9::
            if stk0 then
                goto L6
            end
            ::L6::
            S.v2192.Text = stk0
            local v1103, v253, v341 = pairs(S.v237)
            ::L7::
            local v449, v538 = v1103(v253, v341)
            v341 = v449
            if not v449 then
                goto L11
            end
            v538.dot.Visible = v449 == a168
            stk0 = v449 == a168
            if v449 == a168 then
                goto L3
            end
            ::L4::
            if stk0 then
                goto L2
            end
            ::L2::
            v538.tc.TextColor3 = stk0
            goto L7
            ::L3::
            goto L4
            ::L11::
            return
        end
    if not (S.v12.lang == "en") then
        goto L37
    end
    ::L37::
    if stk8 then
        goto L54
    end
    ::L54::
    stk7(stk8)
    S.v8(S.v2122.MouseButton1Click, function()
            local v013 = not S.v2302.Visible
            S.v2302.Visible = v013
            S.v2282.Visible = v013
        end)
    S.v8(S.v2282.MouseButton1Click, S.v239)
    S.v254 = {}
    S.v254.Position = UDim2.fromOffset(12, 54)
    S.v254.Size = UDim2.new(0, S.v168, 1, -66)
    S.v254.BackgroundColor3 = S.v1152
    S.v254.ZIndex = 2
    S.v2532 = S.v150("Frame", S.v254, S.v169)
    S.v151(S.v2532, 14)
    S.v1532(S.v2532, S.v1232, 1, 0.35)
    S.v256 = {}
    S.v256.Position = UDim2.fromOffset(8, 8)
    S.v256.Size = UDim2.new(1, -16, 0, 34)
    S.v256.BackgroundColor3 = S.v1162
    S.v256.ZIndex = 3
    S.v255 = S.v150("Frame", S.v256, S.v2532)
    S.v151(S.v255, 9)
    S.v1532(S.v255, S.v1182, 1)
    S.v258 = {}
    S.v258.Position = UDim2.fromOffset(11, 10)
    S.v258.Size = UDim2.fromOffset(11, 11)
    S.v258.BackgroundTransparency = 1
    S.v258.ZIndex = 4
    S.v257 = S.v150("Frame", S.v258, S.v255)
    S.v151(S.v257, 6)
    S.v1532(S.v257, S.v1202, 1.5)
    S.v259 = {}
    S.v259.Position = UDim2.fromOffset(20, 22)
    S.v259.Size = UDim2.fromOffset(6, 2)
    S.v259.Rotation = 45
    S.v259.BackgroundColor3 = S.v1202
    S.v259.ZIndex = 4
    S.v150("Frame", S.v259, S.v255)
    S.v261 = {}
    S.v261.Position = UDim2.fromOffset(34, 0)
    S.v261.Size = UDim2.new(1, -92, 1, 0)
    S.v261.BackgroundTransparency = 1
    S.v261.Text = ""
    S.v261.PlaceholderText = "Search..."
    S.v261.PlaceholderColor3 = S.v1202
    S.v261.TextColor3 = S.v1212
    S.v261.TextSize = 12
    S.v261.ClearTextOnFocus = false
    S.v261.TextXAlignment = Enum.TextXAlignment.Left
    S.v261.ZIndex = 4
    S.v260 = S.v150("TextBox", S.v261, S.v255)
    S.v263 = {}
    S.v263.AnchorPoint = Vector2.new(1, 0.5)
    S.v263.Position = UDim2.new(1, -6, 0.5, 0)
    S.v263.Size = UDim2.fromOffset(44, 18)
    S.v263.BackgroundTransparency = 0
    S.v263.BackgroundColor3 = S.v1152
    S.v263.TextXAlignment = Enum.TextXAlignment.Center
    S.v263.ZIndex = 4
    S.v262 = S.v1552(S.v255, "CTRL K", 9, S.v1202, S.v263)
    S.v151(S.v262, 5)
    S.v8(S.UserInputService.InputBegan, function(a169)
            local tmp44 = a169.KeyCode == Enum.KeyCode.K
            stk0 = tmp44
            if tmp44 then
                if S.v169.Visible then
                    if not S.UserInputService:IsKeyDown(Enum.KeyCode.LeftControl) then
                        goto J1
                    end
                    ::L2::
                    ::J1::
                    goto L2
                end
            end
            if stk0 then
                task.defer(function()
                        S.v260:CaptureFocus()
                    end)
            end
        end)
    S.v265 = {}
    S.v265.Position = UDim2.fromOffset(6, 50)
    S.v265.Size = UDim2.new(1, -12, 1, -128)
    S.v265.BackgroundTransparency = 1
    S.v265.ScrollBarThickness = 2
    S.v265.CanvasSize = UDim2.new()
    S.v265.AutomaticCanvasSize = Enum.AutomaticSize.Y
    S.v265.ZIndex = 3
    S.v264 = S.v150("ScrollingFrame", S.v265, S.v2532)
    S.v156(S.v264, "ScrollBarImageColor3")
    S.v266 = {}
    S.v266.Padding = UDim.new(0, 4)
    S.v266.SortOrder = Enum.SortOrder.LayoutOrder
    S.v150("UIListLayout", S.v266, S.v264)
    S.v268 = {}
    S.v268.AnchorPoint = Vector2.new(0, 1)
    S.v268.Position = UDim2.new(0, 8, 1, -8)
    S.v268.Size = UDim2.new(1, -16, 0, 62)
    S.v268.BackgroundColor3 = S.v1172
    S.v268.ZIndex = 3
    S.v267 = S.v150("Frame", S.v268, S.v2532)
    S.v151(S.v267, 10)
    S.v1532(S.v267, S.v1182, 1)
    S.v270 = {}
    S.v270.Position = UDim2.fromOffset(10, 14)
    S.v270.Size = UDim2.fromOffset(34, 34)
    S.v270.BackgroundTransparency = 0
    S.v270.BackgroundColor3 = S.v1162
    S.v270.Font = S.v1132
    S.v270.TextXAlignment = Enum.TextXAlignment.Center
    S.v270.ZIndex = 4
    S.v269 = S.v1552(S.v267, "</>", 12, S.v1322, S.v270)
    S.v151(S.v269, 8)
    S.v156(S.v269, "TextColor3")
    S.v271 = {}
    S.v271.Position = UDim2.fromOffset(54, 10)
    S.v271.Size = UDim2.new(1, -60, 0, 16)
    S.v271.Font = S.v1132
    S.v271.ZIndex = 4
    S.v1552(S.v267, "DZ Delux Zephyr", 13, S.v1212, S.v271)
    S.v2722 = {}
    S.v2722.Position = UDim2.fromOffset(54, 27)
    S.v2722.Size = UDim2.new(1, -60, 0, 14)
    S.v2722.ZIndex = 4
    S.v1552(S.v267, "Premium Script Hub", 10, S.v1202, S.v2722)
    S.v274 = {}
    S.v274.Position = UDim2.fromOffset(54, 41)
    S.v274.Size = UDim2.new(1, -60, 0, 14)
    S.v274.Font = S.v1132
    S.v274.ZIndex = 4
    S.v273 = S.v1552(S.v267, S.v1092, 10, S.v1322, S.v274)
    S.v156(S.v273, "TextColor3")
    S.v276 = {}
    S.v276.Position = UDim2.fromOffset(S.v168 + 24, 54)
    S.v276.Size = UDim2.new(1, -(S.v168 + 36), 1, -66)
    S.v276.BackgroundColor3 = S.v1152
    S.v276.ClipsDescendants = true
    S.v276.ZIndex = 2
    S.v275 = S.v150("Frame", S.v276, S.v169)
    S.v151(S.v275, 14)
    S.v1532(S.v275, S.v1182, 1)
    S.v278 = {}
    S.v278.Position = UDim2.fromOffset(14, 8)
    S.v278.Size = UDim2.new(1, -28, 0, 28)
    S.v278.BackgroundTransparency = 1
    S.v278.ZIndex = 3
    S.v277 = S.v150("Frame", S.v278, S.v275)
    S.v279 = {FillDirection = Enum.FillDirection.Horizontal}
    S.v279.Padding = UDim.new(0, 8)
    S.v279.VerticalAlignment = Enum.VerticalAlignment.Center
    S.v279.SortOrder = Enum.SortOrder.LayoutOrder
    S.v150("UIListLayout", S.v279, S.v277)
    S.v281 = {}
    S.v281.Size = UDim2.fromOffset(0, 20)
    S.v281.AutomaticSize = Enum.AutomaticSize.X
    S.v281.Font = S.v1132
    S.v281.LayoutOrder = 1
    S.v281.ZIndex = 4
    S.v280 = S.v1552(S.v277, "OV", 12, S.v1322, S.v281)
    S.v156(S.v280, "TextColor3")
    S.v283 = {}
    S.v283.Size = UDim2.fromOffset(0, 20)
    S.v283.AutomaticSize = Enum.AutomaticSize.X
    S.v283.LayoutOrder = 2
    S.v283.ZIndex = 4
    S.v282 = S.v1552(S.v277, "Overview", 15, S.v1212, S.v283)
    S.v284 = {}
    S.v284.Size = UDim2.fromOffset(1, 14)
    S.v284.BackgroundColor3 = S.v1182
    S.v284.LayoutOrder = 3
    S.v284.ZIndex = 4
    S.v150("Frame", S.v284, S.v277)
    S.v286 = {}
    S.v286.Size = UDim2.fromOffset(0, 20)
    S.v286.AutomaticSize = Enum.AutomaticSize.X
    S.v286.LayoutOrder = 4
    S.v286.ZIndex = 4
    S.v285 = S.v1552(S.v277, "Dashboard", 12, S.v1202, S.v286)
    S.v288 = {}
    S.v288.AnchorPoint = Vector2.new(0, 1)
    S.v288.Position = UDim2.new(0, 14, 1, -6)
    S.v288.Size = UDim2.new(1, -28, 0, 16)
    S.v288.ZIndex = 4
    S.v287 = S.v1552(S.v275, "", 10, S.v1202, S.v288)
    S.v289 = function()
            stk0 = "Rig: %s  |  Item: %d  |  Teman: %s"
            stk1 = "Rig: %s  |  Item: %d  |  Teman: %s"
            local tmp45 = S.v562(S.v552(S.v5))
            stk2 = tmp45
            if tmp45 then
                goto L4
            end
            ::L4::
            if not S.v47 then
                goto L2
            end
            ::L2::
            if stk4 then
                goto L6
            end
            ::L6::
            S.v287.Text = stk0(stk1, stk2, stk3, stk4)
            stk0(stk1, stk2, stk3, stk4)
            return
        end
    S.v297 = {}
    S.v298 = {}
    S.v299 = {}
    S.v300 = {}
    S.v301 = {}
    S.v302 = {}
    S.v303 = {}
    S.v305 = {}
    S.v306 = "Overview"
    S.v308 = {}
    S.v309 = {"OV", "Dashboard"}
    S.v308.Overview = S.v309
    S.v3102 = {"KR", "Korblox & Headless"}
    S.v308.Karakter = S.v3102
    S.v3112 = {"FR", "Target"}
    S.v308.Teman = S.v3112
    S.v3122 = {"AC", "Visual Accessories"}
    S.v308.Accessories = S.v3122
    S.v3132 = {"</>", "Loader"}
    S.v308.Scripts = S.v3132
    S.v3142 = {"CH", "Emote & Unusual"}
    S.v308.Changer = S.v3142
    S.v3152 = {"ST", "Preferences"}
    S.v308.Settings = S.v3152
    S.v3162 = {"DC", "Community"}
    S.v308.Discord = S.v3162
    S.v1452 = function()
        local v825, v726, v539, v629, v1018
            local v014, v1104, v290 = pairs(S.v292)
            ::L20::
            local v342, v450 = v014(v1104, v290)
            v290 = v342
            if not v342 then
                goto L4
            end
            v539 = v342 == S.v306
            v629 = {}
            stk0 = S.TweenService
            stk1 = S.TweenService
            stk2 = v450
            stk3 = TweenInfo.new(0.18)
            stk4 = v539
            if v539 then
                goto L16
            end
            ::L17::
            if stk4 then
                goto L7
            end
            ::L7::
            v629.BackgroundTransparency = stk4
            stk0(stk1, stk2, stk3, v629):Play()
            S.v295[v342].Visible = v539
            if not v539 then
                goto L22
            end
            ::L22::
            if stk0 then
                goto L1
            end
            ::L1::
            S.v294[v342].TextColor3 = stk0
            if not v539 then
                goto L9
            end
            ::L9::
            if stk0 then
                goto L12
            end
            ::L12::
            S.v293[v342].TextColor3 = stk0
            S.v296[v342].Color = ColorSequence.new(S.v1322:Lerp(S.v1142, 0.5), S.v1322:Lerp(S.v1142, 0.85))
            ColorSequence.new(S.v1322:Lerp(S.v1142, 0.5), S.v1322:Lerp(S.v1142, 0.85))
            v726 = S.v291[v342]
            if not v539 then
                goto L6
            end
            if v726.Visible then
                goto L3
            end
            if not v726:IsA("CanvasGroup") then
                goto L11
            end
            v726.GroupTransparency = 1
            v726.Visible = true
            v825 = {GroupTransparency = 0}
            S.TweenService:Create(v726, TweenInfo.new(0.22), v825):Play()
            ::L3::
            ::L14::
            goto L20
            ::L11::
            v726.Visible = true
            goto L3
            ::L6::
            v726.Visible = false
            goto L14
            ::L16::
            goto L17
            ::L4::
            local tmp46 = S.v307[S.v306]
            stk0 = tmp46
            if tmp46 then
                goto L24
            end
            v1018 = {"--", ""}
            ::L24::
            local v924 = stk0
            S.v280.Text = v924[1]
            S.v282.Text = S.v306
            S.v285.Text = v924[2]
            return
        end
    S.v3172 = function(a170)
            if not S.v2902[a170] then
                return false
            end
            if S.v149 then
                S.v149()
            end
            S.v306 = a170
            S.v1452()
            if S.v146 then
                S.v146()
            end
            return true
        end
    S.v3182 = function(a171, a230, a317)
        local v451
            S.v304[a171] = a230
            local tmp47 = S.v307[a171]
            stk0 = tmp47
            if tmp47 then
                goto L2
            end
            v451 = {}
            v451[1] = a171:sub(1, 2):upper()
            v451[2] = ""
            ::L2::
            local v343 = stk0
            local v630 = {}
            v630.Size = UDim2.new(1, 0, 0, 36)
            v630.BackgroundColor3 = S.v1212
            v630.BackgroundTransparency = 1
            v630.Text = ""
            v630.AutoButtonColor = false
            v630.LayoutOrder = a230
            v630.ZIndex = 4
            local v540 = S.v150("TextButton", v630, S.v264)
            S.v151(v540, 9)
            local v727 = {}
            local tmp48 = S.v150("UIGradient", v727, v540)
            S.v296[a171] = tmp48
            local v925 = {}
            v925.Position = UDim2.fromOffset(0, 7)
            v925.Size = UDim2.new(0, 3, 1, -14)
            v925.Visible = false
            v925.ZIndex = 5
            local v826 = S.v150("Frame", v925, v540)
            S.v151(v826, 2)
            S.v156(v826, "BackgroundColor3")
            S.v295[a171] = v826
            S.v292[a171] = v540
            local v1019 = {}
            v1019.Position = UDim2.fromOffset(8, 0)
            v1019.Size = UDim2.fromOffset(32, 36)
            v1019.Font = S.v1132
            v1019.TextXAlignment = Enum.TextXAlignment.Center
            v1019.ZIndex = 5
            local tmp49 = S.v1552(v540, v343[1], 11, S.v1202, v1019)
            S.v293[a171] = tmp49
            local v1119 = {}
            v1119.Position = UDim2.fromOffset(46, 0)
            v1119.Size = UDim2.new(1, -50, 1, 0)
            v1119.ZIndex = 5
            local tmp50 = S.v1552(v540, a171, 13, S.v1202, v1119)
            S.v294[a171] = tmp50
            local v1310 = {}
            v1310.Position = UDim2.fromOffset(8, 42)
            v1310.Size = UDim2.new(1, -16, 1, -66)
            v1310.BackgroundTransparency = 1
            v1310.Visible = false
            v1310.GroupTransparency = 1
            local v1213 = S.v150("CanvasGroup", v1310, S.v275)
            local v1510 = {}
            v1510.Size = UDim2.fromScale(1, 1)
            v1510.BackgroundTransparency = 1
            v1510.ScrollBarThickness = 3
            v1510.CanvasSize = UDim2.new()
            v1510.AutomaticCanvasSize = Enum.AutomaticSize.Y
            local v1411 = S.v150("ScrollingFrame", v1510, v1213)
            S.v156(v1411, "ScrollBarImageColor3")
            local v1610 = {}
            v1610.Padding = UDim.new(0, 6)
            v1610.SortOrder = Enum.SortOrder.LayoutOrder
            S.v150("UIListLayout", v1610, v1411)
            local v1710 = {}
            v1710.PaddingRight = UDim.new(0, 8)
            v1710.PaddingBottom = UDim.new(0, 8)
            S.v150("UIPadding", v1710, v1411)
            S.v2902[a171] = v1411
            S.v291[a171] = v1213
            S.v8(v540.MouseEnter, function()
                    if not (a171 == S.v306) then
                        v540.BackgroundTransparency = 0.82
                    end
                end)
            S.v8(v540.MouseLeave, function()
                    if not (a171 == S.v306) then
                        v540.BackgroundTransparency = 1
                    end
                end)
            S.v8(v540.MouseButton1Click, function()
                    S.v3172(a171)
                end)
            return v1411
        end
    S.v3192 = {}
    S.v3202 = {}
    S.v3192.hidden = S.v3202
    S.v3212 = {}
    S.v3192.range = S.v3212
    S.v4210.ui = S.v3192
    S.v4210.ui.apply = function()
        local v728, v631
            local v015 = S.v260.Text:lower()
            local v1105, v2100, v344 = pairs(S.v292)
            ::L10::
            local v452, v541 = v1105(v2100, v344)
            v344 = v452
            if not v452 then
                goto L12
            end
            v631 = S.v307[v452]
            stk0 = v015 == ""
            if not (v015 == "") then
                goto L5
            end
            ::L8::
            v728 = stk0
            if not v728 then
                goto L4
            end
            ::L4::
            v541.Visible = stk0
            goto L10
            ::L5::
            if not (v452:lower():find(v015, 1, true) == nil) then
                goto L8
            end
            if not (S.v294[v452] == nil) then
                goto L3
            end
            ::L6::
            if stk0 then
                goto L8
            end
            if v631 == nil then
                goto L8
            end
            goto L8
            ::L3::
            goto L6
            ::L12::
            return
        end
    S.v8(S.v260:GetPropertyChangedSignal("Text"), function()
            S.v4210.ui.apply()
        end)
    S.v3222 = function(a172, a231, a318)
            local v453 = {}
            v453.Size = UDim2.new(1, 0, 0, 24)
            v453.BackgroundTransparency = 1
            v453.LayoutOrder = a318
            local v345 = S.v150("Frame", v453, a172)
            local v633 = {}
            v633.Position = UDim2.fromOffset(2, 6)
            v633.Size = UDim2.new(1, -4, 0, 16)
            v633.Font = S.v1132
            local v543 = S.v1552(v345, a231:upper(), 11, S.v1322, v633)
            S.v156(v543, "TextColor3")
            return v345
        end
    S.v3232 = function(a173, a232, a319, a49, a54, a6)
        local v1120
            local v729 = {}
            stk0 = S.v150
            stk1 = "Frame"
            stk2 = UDim2.new
            stk3 = 1
            stk4 = 0
            stk5 = 0
            stk6 = a54
            if a54 then
                goto L2
            end
            ::L2::
            v729.Size = stk2(stk3, stk4, stk5, stk6)
            v729.BackgroundColor3 = S.v1172
            v729.LayoutOrder = a49
            local v634 = stk0(stk1, v729, a173)
            S.v151(v634, 10)
            S.v1532(v634, S.v1182, 1)
            if a6 then
                goto L10
            end
            ::L10::
            local v827 = stk0 + stk1
            if not a319 then
                goto L14
            end
            ::L14::
            local v926 = stk0
            local v1020 = {}
            stk1 = v634
            stk2 = a232
            stk3 = 13
            stk4 = S.v1212
            stk5 = v926
            if not v926 then
                goto L6
            end
            ::L6::
            if stk5 then
                goto L8
            end
            ::L8::
            v1020.Position = stk5
            if not v926 then
                goto L4
            end
            ::L4::
            if stk5 then
                goto L12
            end
            ::L12::
            v1020.Size = stk5
            v1020.TextTruncate = Enum.TextTruncate.AtEnd
            stk0(stk1, stk2, stk3, stk4, v1020)
            if not v926 then
                goto L16
            end
            v1120 = {}
            v1120.Position = UDim2.fromOffset(v827, 28)
            v1120.Size = UDim2.new(1, -(v827 + 150), 0, 16)
            v1120.TextTruncate = Enum.TextTruncate.AtEnd
            S.v1552(v634, a319, 10, S.v1202, v1120)
            ::L16::
            return v634
        end
    S.v3242 = function(a174, a233, a320)
            local v454 = {}
            v454.AnchorPoint = Vector2.new(1, 0.5)
            v454.Position = UDim2.new(1, -14, 0.5, 0)
            v454.Size = UDim2.fromOffset(40, 20)
            v454.BackgroundColor3 = S.v1192
            v454.ZIndex = 3
            local v346 = S.v150("Frame", v454, a174)
            S.v151(v346, 10)
            local v635 = {}
            v635.AnchorPoint = Vector2.new(0, 0.5)
            v635.Position = UDim2.new(0, 3, 0.5, 0)
            v635.Size = UDim2.fromOffset(14, 14)
            v635.BackgroundColor3 = S.v1212
            v635.ZIndex = 4
            local v544 = S.v150("Frame", v635, v346)
            S.v151(v544, 7)
            local v828 = {on = a233}
            v828.refresh = function(a175, a234)
                    stk0 = TweenInfo.new
                    stk1 = a234
                    if not a234 then
                        goto L6
                    end
                    ::L6::
                    if stk1 then
                        goto L10
                    end
                    ::L10::
                    local v2101 = stk0(stk1, Enum.EasingStyle.Quad)
                    local v347 = {}
                    stk2 = v346
                    stk3 = v2101
                    local tmp51 = a175.on
                    stk4 = tmp51
                    if not tmp51 then
                        goto L4
                    end
                    ::L4::
                    if stk4 then
                        goto L8
                    end
                    ::L8::
                    v347.BackgroundColor3 = stk4
                    stk0(stk1, stk2, stk3, v347):Play()
                    local v455 = {}
                    if not a175.on then
                        goto L2
                    end
                    ::L2::
                    if stk4 then
                        goto L12
                    end
                    ::L12::
                    v455.Position = stk4
                    stk0(stk1, stk2, stk3, v455):Play()
                    return
                end
            v828.set = function(a176, a235, a321)
                    a176.on = a235
                    a176:refresh()
                    if not a321 then
                        a320(a235)
                    end
                end
            local v1021 = {}
            v1021.Size = UDim2.fromScale(1, 1)
            v1021.BackgroundTransparency = 1
            v1021.Text = ""
            v1021.ZIndex = 6
            local v927 = S.v150("TextButton", v1021, a174)
            S.v8(v927.MouseButton1Click, function()
                    v828:set(not v828.on)
                end)
            table.insert(S.v1352, v828)
            v828:refresh(true)
            return v828
        end
    S.v3252 = function(a177, a236, a322, a410)
            local v545 = {}
            v545.AnchorPoint = Vector2.new(1, 0.5)
            v545.Position = UDim2.new(1, -12, 0.5, 0)
            v545.Size = UDim2.fromOffset(84, 28)
            v545.Text = a236
            v545.Font = S.v1132
            v545.TextSize = 12
            v545.TextColor3 = S.v1212
            v545.AutoButtonColor = false
            v545.ZIndex = 4
            local v456 = S.v150("TextButton", v545, a177)
            S.v151(v456, 8)
            if not a322 then
                goto L3
            end
            v456.BackgroundColor3 = S.v1232
            S.v1532(v456, S.v1222, 1, 0.45)
            ::L2::
            S.v8(v456.MouseButton1Click, function()
                    v456.Size = UDim2.fromOffset(78, 25)
                    UDim2.fromOffset(78, 25)
                    local v016 = {}
                    v016.Size = UDim2.fromOffset(84, 28)
                    S.TweenService:Create(v456, TweenInfo.new(0.2, Enum.EasingStyle.Back, Enum.EasingDirection.Out), v016):Play()
                    a410()
                end)
            do
                return v456
            end
            do
                return
            end
            ::L3::
            S.v156(v456, "BackgroundColor3")
            goto L2
        end
    S.v3262 = function(a178, a237, a323, a411, a55, a62, a7)
            local v730 = a178.Parent
            local v928 = {}
            v928.AnchorPoint = Vector2.new(1, 0.5)
            v928.Position = UDim2.new(1, -16, 0.5, 0)
            v928.Size = UDim2.fromOffset(100, 6)
            v928.BackgroundColor3 = S.v1192
            v928.ZIndex = 3
            local v829 = S.v150("Frame", v928, a178)
            S.v151(v829, 3)
            local v1121 = {}
            v1121.Size = UDim2.fromScale(0, 1)
            v1121.ZIndex = 3
            local v1023 = S.v150("Frame", v1121, v829)
            S.v151(v1023, 3)
            S.v156(v1023, "BackgroundColor3")
            local v1311 = {}
            v1311.AnchorPoint = Vector2.new(0.5, 0.5)
            v1311.Position = UDim2.fromScale(0, 0.5)
            v1311.Size = UDim2.fromOffset(14, 14)
            v1311.BackgroundColor3 = S.v1212
            v1311.ZIndex = 4
            local v1214 = S.v150("Frame", v1311, v829)
            S.v151(v1214, 7)
            local v1511 = {}
            v1511.AnchorPoint = Vector2.new(1, 0.5)
            v1511.Position = UDim2.new(1, -124, 0.5, 0)
            v1511.Size = UDim2.fromOffset(40, 16)
            v1511.TextXAlignment = Enum.TextXAlignment.Right
            v1511.ZIndex = 3
            local v1412 = S.v1552(a178, "", 11, S.v1202, v1511)
            local v1711 = {value = a55}
            v1711.set = function(a179, a238, a324)
                    local a238 = a237 + math.floor((a238 - a237) / a411 + 0.5) * a411
                    a238 = math.clamp(a238, a237, a323)
                    math.clamp(a238, a237, a323)
                    a179.value = a238
                    local v348 = (a238 - a237) / (a323 - a237)
                    v1023.Size = UDim2.fromScale(v348, 1)
                    UDim2.fromScale(v348, 1)
                    v1214.Position = UDim2.fromScale(v348, 0.5)
                    UDim2.fromScale(v348, 0.5)
                    v1412.Text = string.format(("%." .. a62) .. "f", a238)
                    string.format(("%." .. a62) .. "f", a238)
                    local tmp52 = a7
                    stk0 = tmp52
                    if stk0 then
                        a7(a238)
                    end
                end
            local v1910 = {}
            v1910.AnchorPoint = Vector2.new(0.5, 0.5)
            v1910.Position = UDim2.fromScale(0.5, 0.5)
            v1910.Size = UDim2.new(1, 16, 0, 28)
            v1910.BackgroundTransparency = 1
            v1910.Text = ""
            v1910.ZIndex = 6
            local v1810 = S.v150("TextButton", v1910, v829)
            local v2010 = false
            local v2111 = function(a180)
                    local tmp53 = (a180.Position.X - v829.AbsolutePosition.X) / math.max(v829.AbsoluteSize.X, 1)
                    local v1106 = math.clamp(tmp53, 0, 1)
                    v1711:set(a237 + (a323 - a237) * v1106)
                end
            S.v8(v1810.InputBegan, function(a181)
                    if S.v158(a181) then
                        v2010 = true
                        v730.ScrollingEnabled = false
                        v2111(a181)
                    end
                end)
            S.v8(S.UserInputService.InputChanged, function(a182)
                    local tmp54 = v2010
                    stk0 = tmp54
                    if stk0 then
                        v2111(a182)
                    end
                end)
            S.v8(S.UserInputService.InputEnded, function(a183)
                    local tmp55 = v2010
                    stk0 = tmp55
                    if stk0 then
                        v2010 = false
                        v730.ScrollingEnabled = true
                        S.v19()
                    end
                end)
            v1711:set(a55, true)
            return v1711
        end
    S.v3282 = {}
    S.v3292 = nil
    S.v3302 = nil
    S.v3312 = function(a184)
            if a184 == "me" then
                return S.v5
            end
            return S.v47
        end
    S.v3322 = function(a185, a239)
            stk0 = a185 == "fr"
            if stk0 then
                S.v189("Set target dulu di tab Teman", S.v1222)
                if S.v147 then
                    S.v147("Set target dulu", S.v1222)
                end
                a239:set(false, true)
                return false
            end
            return true
        end
    S.v3332 = function(a186, a240, a325, a412)
        local v731, v929, v1024, v1123, v1215, v1313, v1413, v1512, v1611, v1712, v1811
            local v457 = S.v4210[a186]
            local v546 = S.v3312(a186)
            stk0 = v546
            if not v546 then
                goto L21
            end
            ::L21::
            if stk0 then
                goto L13
            end
            v731 = {}
            ::L13::
            local v636 = stk0
            local v830 = v636[1]
            if not (a240 == "korblox") then
                goto L9
            end
            v457.korblox = a325
            v929, v1024, v1123 = ipairs(v636)
            ::L5::
            v1215, v1313 = v929(v1024, v1123)
            v1123 = v1215
            if not v1215 then
                goto L20
            end
            if a325 then
                goto L25
            end
            pcall(S.v582, v1313)
            ::L15::
            goto L5
            ::L25::
            pcall(S.v572, v1313)
            goto L15
            ::L20::
            ::L3::
            S.v289()
            if not S.v3292 then
                goto L31
            end
            S.v3292()
            ::L31::
            do
                return
            end
            do
                return
            end
            ::L9::
            if not (a240 == "headless") then
                goto L11
            end
            v457.headless = a325
            v1413, v1512, v1611 = ipairs(v636)
            ::L7::
            v1712, v1811 = v1413(v1512, v1611)
            v1611 = v1712
            if not v1712 then
                goto L28
            end
            pcall(S.v592, v1811, not a325)
            goto L7
            ::L28::
            goto L3
            ::L11::
            v457.items[a412.key] = a325
            stk0 = a325
            if not a325 then
                goto L23
            end
            if not (a186 == "me") then
                goto L23
            end
            ::L23::
            if not stk0 then
                goto L29
            end
            pcall(S.v4210.catUnwearId, a412.id)
            ::L29::
            if not a325 then
                goto L2
            end
            if not v830 then
                goto L16
            end
            pcall(S.v622, v830, a412, a186)
            ::L16::
            task.spawn(function()
                local v349, v458, v547, v637
                    local v017 = 1
                    local v1107 = 8
                    local v2103 = 1
                    ::L6::
                    if not (0 < v2103) then
                        goto L16
                    end
                    stk0 = v017 <= v1107
                    ::L1::
                    if not stk0 then
                        goto L20
                    end
                    task.wait(1)
                    if v457.items[a412.key] then
                        goto L17
                    end
                    do
                        return
                    end
                    do
                        return
                    end
                    ::L17::
                    v349 = S.v3312(a186)
                    stk0 = v349
                    if not v349 then
                        goto L14
                    end
                    ::L14::
                    v458 = stk0
                    if not v458 then
                        goto L12
                    end
                    ::L12::
                    v547 = stk0
                    if not v547 then
                        goto L8
                    end
                    ::L8::
                    v637 = stk0
                    if not v637 then
                        goto L3
                    end
                    ::L3::
                    if not stk0 then
                        goto L10
                    end
                    do
                        return
                    end
                    do
                        return
                    end
                    ::L10::
                    if not v458 then
                        goto L5
                    end
                    pcall(S.v622, v458, a412, a186)
                    ::L5::
                    v017 = v017 + v2103
                    goto L6
                    ::L20::
                    do
                        return
                    end
                    do
                        return
                    end
                    ::L16::
                    stk0 = v1107 <= v017
                    goto L1
                end)
            goto L3
            ::L2::
            local v1911, v2011, v2113 = ipairs(v636)
            ::L17::
            local v2210, v2310 = v1911(v2011, v2113)
            v2113 = v2210
            if not v2210 then
                goto L3
            end
            pcall(S.v632, v2310, a412.key)
            goto L17
        end
    S.v3342 = function(a187, a241, a326, a413, a56, a63)
            local v638 = S.v3232(a187, a413, a56, a326)
            local v733 = nil
            v733 = S.v3242(v638, false, function(a188)
                    stk0 = a188
                    if stk0 then
                        return
                    end
                    S.v3332(a241, a63, a188)
                end)
            S.v3242(v638, false, function(a189)
                    stk0 = a189
                    if stk0 then
                        return
                    end
                    S.v3332(a241, a63, a189)
                end)
            local v831 = {side = a241, kind = a63, sw = v733}
            table.insert(S.v3272, v831)
        end
    S.v3352 = function(a190, a242, a327)
            S.v3342(a190, a242, a327 + 1, "Korblox", "Kaki kanan Korblox - otomatis R6 & R15", "korblox")
            S.v3342(a190, a242, a327 + 2, "Headless", "Hilangkan kepala & wajah - otomatis R6 & R15", "headless")
            return a327 + 2
        end
    S.v3362 = nil
    S.v3382 = {
        shirt = "Baju (Shirt)",
        pants = "Celana (Pants)",
        tee = "T-Shirt (Graphic)"
    }
    S.v3402 = {shirt = "Shirt", pants = "Pants", tee = "Tee"}
    S.v3412 = 30
    S.v3432 = {}
    S.v3442 = {}
    S.v3432.me = S.v3442
    S.v3452 = {}
    S.v3432.fr = S.v3452
    S.v4210.clothRefresh = function(a191)
        local v639
            stk0 = ipairs
            local tmp56 = S.v3422[a191]
            stk1 = tmp56
            if tmp56 then
                goto L2
            end
            v639 = {}
            ::L2::
            local v1108, v2104, v350 = stk0(stk1)
            ::L3::
            local v459, v548 = v1108(v2104, v350)
            v350 = v459
            if not v459 then
                goto L5
            end
            pcall(v548)
            goto L3
            ::L5::
            return
        end
    S.v4210.clothClear = function(a192)
            for v460, v549 in ipairs(S.v852.KINDS) do
                S.v852.set(a192, v549, nil)
            end
            S.v4210.clothRefresh(a192)
        end
    S.v3462 = function(a193)
            stk0 = tostring
            stk1 = a193
            if a193 then
                goto L2
            end
            ::L2::
            return stk0(stk1):gsub("^%s+", ""):gsub("%s+$", "")
        end
    S.v3472 = function(a194, a243, a328, a414)
            local v550 = {}
            v550.Position = UDim2.fromOffset(12, a328)
            v550.Size = a414
            v550.BackgroundColor3 = S.v1162
            v550.Text = ""
            v550.PlaceholderText = a243
            v550.PlaceholderColor3 = S.v1202
            v550.TextColor3 = S.v1212
            v550.Font = S.v1122
            v550.TextSize = 12
            v550.ClearTextOnFocus = false
            v550.TextXAlignment = Enum.TextXAlignment.Left
            v550.ZIndex = 3
            local v461 = S.v150("TextBox", v550, a194)
            S.v151(v461, 8)
            S.v1532(v461, S.v1182, 1)
            local v640 = {}
            v640.PaddingLeft = UDim.new(0, 10)
            v640.PaddingRight = UDim.new(0, 10)
            S.v150("UIPadding", v640, v461)
            return v461
        end
    S.v3482 = function(a195, a244, a329, a415)
            local v551 = {}
            v551.AnchorPoint = Vector2.new(1, 0)
            v551.Position = UDim2.new(1, -12, 0, a329)
            stk0 = S.v150
            stk1 = "TextButton"
            stk2 = UDim2.fromOffset
            stk3 = a415
            if a415 then
                goto L2
            end
            ::L2::
            v551.Size = stk2(stk3, 30)
            v551.Text = a244
            v551.Font = S.v1132
            v551.TextSize = 12
            v551.TextColor3 = S.v1212
            v551.AutoButtonColor = false
            v551.ZIndex = 4
            local v462 = stk0(stk1, v551, a195)
            S.v151(v462, 8)
            S.v156(v462, "BackgroundColor3")
            return v462
        end
    S.v3492 = function(a196, a245, a330, a416)
            local v553 = {}
            v553.Size = UDim2.new(1, 0, 0, 78)
            v553.BackgroundColor3 = S.v1172
            v553.LayoutOrder = a416
            local v463 = S.v150("Frame", v553, a196)
            S.v151(v463, 10)
            S.v1532(v463, S.v1182, 1)
            local v641 = {}
            v641.Position = UDim2.fromOffset(14, 8)
            v641.Size = UDim2.new(0.55, 0, 0, 18)
            S.v1552(v463, S.v3372[a330], 13, S.v1212, v641)
            local v833 = {}
            v833.AnchorPoint = Vector2.new(1, 0)
            v833.Position = UDim2.new(1, -14, 0, 10)
            v833.Size = UDim2.new(0.4, 0, 0, 14)
            v833.TextXAlignment = Enum.TextXAlignment.Right
            local v734 = S.v1552(v463, "Belum dipasang", 10, S.v1202, v833)
            local v930 = S.v3472(v463, "Asset ID / link...", 36, UDim2.new(1, -112, 0, 30))
            local v1025 = S.v3482(v463, "Pasang", 36)
            local v1124 = function()
                    local v018 = S.v4210[a245].cloth[a330]
                    if not v018 then
                        goto L5
                    end
                    v1025.Text = "Lepas"
                    if v018.tpl then
                        goto L3
                    end
                    v734.Text = "Memuat..."
                    v734.TextColor3 = S.v1202
                    ::L2::
                    v930.Text = ("%d"):format(v018.id)
                    ("%d"):format(v018.id)
                    ::L6::
                    do
                        return
                    end
                    do
                        return
                    end
                    ::L3::
                    v734.Text = "Terpasang"
                    v734.TextColor3 = S.v1242
                    goto L2
                    ::L5::
                    v1025.Text = "Pasang"
                    v734.Text = "Belum dipasang"
                    v734.TextColor3 = S.v1202
                    goto L6
                end
            local v1216 = function()
                    local v019 = S.v4210[a245].cloth[a330]
                    local v1109 = S.v852.parse(v930.Text)
                    stk0 = v019
                    if v019 then
                        if v1109 then
                            goto J1
                        end
                        ::L4::
                        ::J1::
                        goto L4
                    end
                    if stk0 then
                        S.v852.set(a245, a330, nil)
                        v1124()
                        return
                    end
                    local tmp57 = a245 == "fr"
                    stk0 = tmp57
                    if stk0 then
                        S.v189("Set target dulu di tab Teman", S.v1222)
                        return
                    end
                    if not v1109 then
                        S.v189("ID tidak valid", S.v1222)
                        return
                    end
                    S.v852.set(a245, a330, v1109, function(a197)
                            v1124()
                            if not a197 then
                                S.v189("Gagal memuat ID itu", S.v1222)
                            end
                        end)
                    v1124()
                end
            S.v8(v1025.MouseButton1Click, v1216)
            S.v8(v930.FocusLost, function(a198)
                    if a198 then
                        v1216()
                    end
                end)
            S.v8(v930:GetPropertyChangedSignal("Text"), function()
                local v1125
                    local v020 = S.v4210[a245].cloth[a330]
                    if not v020 then
                        goto L8
                    end
                    v1125 = S.v852.parse(v930.Text)
                    stk0 = v1125
                    if v1125 then
                        goto L5
                    end
                    ::L2::
                    if not stk0 then
                        goto L6
                    end
                    ::L6::
                    if stk0 then
                        goto L4
                    end
                    ::L4::
                    v1025.Text = stk0
                    ::L8::
                    do
                        return
                    end
                    do
                        return
                    end
                    ::L5::
                    goto L2
                end)
            table.insert(S.v3422[a245], v1124)
            v1124()
        end
    S.v3502 = function(a199)
        local v1314, v1414, v1513, v1613, v1713, v1813, v1912, tmp59, v2510
            local v1126 = S.v4210[a199]
            local v351 = {}
            local tmp58 = v1126.korblox
            stk0 = tmp58
            if not tmp58 then
                goto L18
            end
            ::L18::
            if stk0 then
                goto L12
            end
            ::L12::
            v351.korblox = stk0
            if not v1126.headless then
                goto L14
            end
            ::L14::
            if stk0 then
                goto L20
            end
            ::L20::
            v351.headless = stk0
            local v464 = {}
            v351.items = v464
            local v554 = {}
            v351.cat = v554
            local v643 = {}
            v351.cloth = v643
            local v735, v834, v931 = pairs(v1126.items)
            ::L16::
            local v1026, v1127 = v735(v834, v931)
            v931 = v1026
            if not v1026 then
                goto L3
            end
            if not v1127 then
                goto L6
            end
            v351.items[#v351.items + 1] = v1026
            ::L6::
            goto L16
            ::L3::
            table.sort(v351.items)
            local v1217 = S.v4210["catWorn_" .. a199]
            if not v1217 then
                goto L9
            end
            v1314, v1414 = pcall(v1217)
            stk0 = v1314
            if not v1314 then
                goto L10
            end
            ::L10::
            if not stk0 then
                goto L9
            end
            v1513, v1613, v1713 = ipairs(v1414)
            ::L21::
            v1813, v1912 = v1513(v1613, v1713)
            v1713 = v1813
            if not v1813 then
                goto L9
            end
            v351.cat[#v351.cat + 1] = v1912
            goto L21
            ::L9::
            local v2012, v2114, v2211 = ipairs(S.v852.KINDS)
            ::L24::
            local v2311, v2410 = v2012(v2114, v2211)
            v2211 = v2311
            if not v2311 then
                goto L7
            end
            v2510 = v1126.cloth[v2410]
            if not v2510 then
                goto L2
            end
            tmp59 = v2510.id
            v351.cloth[v2410] = tmp59
            ::L2::
            goto L24
            ::L7::
            return v351
        end
    S.v3512 = function(a1100)
            local tmp60 = not a1100.korblox
            stk0 = tmp60
            return stk0
        end
    S.v352 = function(a1101)
            local v2105 = {}
            if a1101.korblox then
                v2105[#v2105 + 1] = "Korblox"
            end
            if a1101.headless then
                v2105[#v2105 + 1] = "Headless"
            end
            local tmp61 = type(a1101.items) == "table"
            stk0 = tmp61
            if stk0 then
                local tmp62 = "Item " .. #a1101.items
                v2105[#v2105 + 1] = tmp62
            end
            local tmp63 = type(a1101.cat) == "table"
            stk0 = tmp63
            if stk0 then
                local tmp64 = "Acc " .. #a1101.cat
                v2105[#v2105 + 1] = tmp64
            end
            if type(a1101.cloth) == "table" then
                local v465 = {}
                for v835, v933 in ipairs(S.v852.KINDS) do
                    if a1101.cloth[v933] then
                        local tmp65 = S.v3392[v933]
                        v465[#v465 + 1] = tmp65
                    end
                end
                if 0 < #v465 then
                    local tmp66 = table.concat(v465, " ")
                    v2105[#v2105 + 1] = tmp66
                end
            end
            if #v2105 == 0 then
                return "Kosong"
            end
            return table.concat(v2105, " | ")
        end
    S.v3532 = function(a1102, a246)
        local v934, tmp68, tmp69, v1514, v1714, v1913, v2013, tmp71, v2610, v2115, v2213, v2313, v2411, v2511
            stk0 = a1102 == "fr"
            if not (a1102 == "fr") then
                goto L8
            end
            ::L8::
            if not stk0 then
                goto L40
            end
            S.v189("Set target dulu di tab Teman", S.v1222)
            do
                return
            end
            do
                return
            end
            ::L40::
            local v353 = {}
            stk0 = ipairs
            local tmp67 = type(a246.items) == "table"
            stk1 = tmp67
            if not (tmp67) then
                goto L2
            end
            ::L2::
            if stk1 then
                goto L24
            end
            v934 = {}
            ::L24::
            local v466, v555, v644 = stk0(stk1)
            ::L46::
            local v736, v836 = v466(v555, v644)
            v644 = v736
            if not v736 then
                goto L35
            end
            v353[v836] = true
            goto L46
            ::L35::
            local v1027, v1128, v1218 = ipairs(S.v3272)
            ::L38::
            local v1315, v1415 = v1027(v1128, v1218)
            v1218 = v1315
            if not v1315 then
                goto L36
            end
            if v1415.side == a1102 then
                goto L4
            end
            ::L33::
            goto L38
            ::L4::
            v1514 = nil
            if not (v1415.kind == "korblox") then
                goto L13
            end
            tmp68 = a246.korblox
            stk0 = tmp68
            if tmp68 then
                goto L5
            end
            ::L48::
            if stk0 then
                goto L43
            end
            ::L43::
            v1514 = stk0
            ::L31::
            stk0 = not (v1514 == nil)
            if v1514 == nil then
                goto L15
            end
            ::L15::
            if not stk0 then
                goto L33
            end
            pcall(function()
                    v1415.sw:set(v1514)
                end)
            goto L33
            ::L5::
            goto L48
            ::L13::
            if not (v1415.kind == "headless") then
                goto L18
            end
            tmp69 = a246.headless
            stk0 = tmp69
            if tmp69 then
                goto L12
            end
            ::L25::
            if stk0 then
                goto L11
            end
            ::L11::
            v1514 = stk0
            goto L31
            ::L12::
            goto L25
            ::L18::
            if not v1415.key then
                goto L31
            end
            v1514 = v353[v1415.key] == true
            goto L31
            ::L36::
            local tmp70 = type(a246.cat) == "table"
            stk0 = tmp70
            if not (tmp70) then
                goto L20
            end
            ::L20::
            if stk0 then
                goto L44
            end
            v1714 = {}
            ::L44::
            local v1614 = stk0
            local v1814 = S.v4210["catWear_" .. a1102]
            if not v1814 then
                goto L17
            end
            v1913, v2013 = pcall(v1814, v1614)
            stk0 = v1913
            if not v1913 then
                goto L22
            end
            if type(v2013) == "number" then
                goto L10
            end
            ::L22::
            if not stk0 then
                goto L17
            end
            S.v189("Beberapa aksesori set tidak ada di katalog", S.v1202)
            ::L17::
            v2115, v2213, v2313 = ipairs(S.v852.KINDS)
            ::L6::
            v2411, v2511 = v2115(v2213, v2313)
            v2313 = v2411
            if not v2411 then
                goto L50
            end
            tmp71 = type(a246.cloth) == "table"
            stk0 = tmp71
            if not (tmp71) then
                goto L28
            end
            ::L28::
            if stk0 then
                goto L34
            end
            ::L34::
            v2610 = stk0
            S.v852.set(a1102, v2511, v2610, function()
                    S.v4210.clothRefresh(a1102)
                end)
            goto L6
            ::L50::
            S.v4210.clothRefresh(a1102)
            S.v289()
            S.v189("Set dipakai", S.v1242)
            do
                return
            end
            do
                return
            end
            ::L10::
            goto L22
        end
    S.v3542 = function(a1103, a247, a331)
        local v467
            stk0 = a247 == "me"
            if not (a247 == "me") then
                goto L4
            end
            ::L4::
            if stk0 then
                goto L2
            end
            ::L2::
            local v354 = stk0
            if type(S.v12[v354]) == "table" then
                goto L8
            end
            v467 = {}
            S.v12[v354] = v467
            ::L8::
            local v556 = S.v12[v354]
            stk0 = S.v3222
            stk1 = a1103
            stk2 = a247 == "me"
            if not (a247 == "me") then
                goto L6
            end
            ::L6::
            if stk2 then
                goto L10
            end
            ::L10::
            stk0(stk1, stk2, a331 + 1)
            local v737 = {}
            v737.Size = UDim2.new(1, 0, 0, 52)
            v737.BackgroundColor3 = S.v1172
            v737.LayoutOrder = a331 + 2
            local v645 = S.v150("Frame", v737, a1103)
            S.v151(v645, 10)
            S.v1532(v645, S.v1182, 1)
            local v837 = S.v3472(v645, "Nama set...", 11, UDim2.new(1, -112, 0, 30))
            local v935 = S.v3482(v645, "Simpan", 11)
            local v1129 = {}
            v1129.Size = UDim2.new(1, 0, 0, 0)
            v1129.AutomaticSize = Enum.AutomaticSize.Y
            v1129.BackgroundTransparency = 1
            v1129.LayoutOrder = a331 + 3
            local v1028 = S.v150("Frame", v1129, a1103)
            local v1219 = {}
            v1219.Padding = UDim.new(0, 6)
            v1219.SortOrder = Enum.SortOrder.LayoutOrder
            S.v150("UIListLayout", v1219, v1028)
            local v1416 = {}
            v1416.Size = UDim2.new(1, 0, 0, 24)
            v1416.LayoutOrder = 0
            local v1316 = S.v1552(v1028, "Belum ada set tersimpan", 11, S.v1202, v1416)
            local v1515 = {}
            v1515.PaddingLeft = UDim.new(0, 8)
            S.v150("UIPadding", v1515, v1316)
            local v1615 = nil
            v1615 = function()
                local v1131, v1029, tmp72, v1220, v1317, v1516, v1417, v1715, v1616
                    local v021, v1130, v2106 = ipairs(v1028:GetChildren())
                    ::L8::
                    local v355, v468 = v021(v1130, v2106)
                    v2106 = v355
                    if not v355 then
                        goto L6
                    end
                    if v468:IsA("Frame") then
                        goto L1
                    end
                    ::L5::
                    goto L8
                    ::L1::
                    v468:Destroy()
                    goto L5
                    ::L6::
                    v1316.Visible = #v556 == 0
                    local v557, v646, v738 = ipairs(v556)
                    ::L3::
                    local v838, v936 = v557(v646, v738)
                    v738 = v838
                    if not v838 then
                        goto L10
                    end
                    v1131 = {}
                    v1131.Size = UDim2.new(1, 0, 0, 52)
                    v1131.BackgroundColor3 = S.v1172
                    v1131.LayoutOrder = v838
                    v1029 = S.v150("Frame", v1131, v1028)
                    S.v151(v1029, 10)
                    S.v1532(v1029, S.v1182, 1)
                    stk0 = S.v1552
                    stk1 = v1029
                    stk2 = tostring
                    tmp72 = v936.name
                    stk3 = tmp72
                    if tmp72 then
                        goto L2
                    end
                    ::L2::
                    v1220 = {}
                    v1220.Position = UDim2.fromOffset(14, 9)
                    v1220.Size = UDim2.new(1, -140, 0, 18)
                    v1220.TextTruncate = Enum.TextTruncate.AtEnd
                    stk0(stk1, stk2(stk3), 13, S.v1212, v1220)
                    v1317 = {}
                    v1317.Position = UDim2.fromOffset(14, 28)
                    v1317.Size = UDim2.new(1, -140, 0, 16)
                    v1317.TextTruncate = Enum.TextTruncate.AtEnd
                    S.v1552(v1029, S.v352(v936), 10, S.v1202, v1317)
                    v1516 = {}
                    v1516.AnchorPoint = Vector2.new(1, 0.5)
                    v1516.Position = UDim2.new(1, -52, 0.5, 0)
                    v1516.Size = UDim2.fromOffset(70, 28)
                    v1516.Text = "Pakai"
                    v1516.Font = S.v1132
                    v1516.TextSize = 12
                    v1516.TextColor3 = S.v1212
                    v1516.AutoButtonColor = false
                    v1516.ZIndex = 4
                    v1417 = S.v150("TextButton", v1516, v1029)
                    S.v151(v1417, 8)
                    S.v156(v1417, "BackgroundColor3")
                    v1715 = {}
                    v1715.AnchorPoint = Vector2.new(1, 0.5)
                    v1715.Position = UDim2.new(1, -12, 0.5, 0)
                    v1715.Size = UDim2.fromOffset(32, 28)
                    v1715.Text = "X"
                    v1715.Font = S.v1132
                    v1715.TextSize = 12
                    v1715.TextColor3 = S.v1212
                    v1715.AutoButtonColor = false
                    v1715.BackgroundColor3 = S.v1232
                    v1715.ZIndex = 4
                    v1616 = S.v150("TextButton", v1715, v1029)
                    S.v151(v1616, 8)
                    S.v1532(v1616, S.v1222, 1, 0.45)
                    v1417.MouseButton1Click:Connect(function()
                            S.v3532(a247, v936)
                        end)
                    v1616.MouseButton1Click:Connect(function()
                            table.remove(v556, v838)
                            S.v19()
                            v1615()
                            S.v189("Set dihapus", S.v1202)
                        end)
                    goto L3
                    ::L10::
                    return
                end
            local v1716 = function()
                    local v022 = S.v3502(a247)
                    if not S.v3512(v022) then
                        goto L7
                    end
                    S.v189("Belum ada yang bisa disimpan", S.v1222)
                    do
                        return
                    end
                    do
                        return
                    end
                    ::L7::
                    local v1133 = S.v3462(v837.Text):sub(1, 24)
                    if not (v1133 == "") then
                        goto L11
                    end
                    v1133 = "Set " .. #v556 + 1
                    ::L11::
                    v022.name = v1133
                    local v2107 = nil
                    local v356, v469, v558 = ipairs(v556)
                    ::L2::
                    local v647, v739 = v356(v469, v558)
                    v558 = v647
                    if not v647 then
                        goto L12
                    end
                    if v739.name == v1133 then
                        goto L9
                    end
                    goto L2
                    ::L9::
                    v2107 = v647
                    ::L12::
                    if not v2107 then
                        goto L5
                    end
                    v556[v2107] = v022
                    S.v189("Set diperbarui", S.v1242)
                    ::L14::
                    v837.Text = ""
                    S.v19()
                    v1615()
                    do
                        return
                    end
                    do
                        return
                    end
                    ::L5::
                    if not (S.v3412 <= #v556) then
                        goto L4
                    end
                    S.v189("Maksimal 30 set", S.v1222)
                    do
                        return
                    end
                    do
                        return
                    end
                    ::L4::
                    v556[#v556 + 1] = v022
                    S.v189("Set tersimpan", S.v1242)
                    goto L14
                end
            S.v8(v935.MouseButton1Click, v1716)
            S.v8(v837.FocusLost, function(a1104)
                    if a1104 then
                        v1716()
                    end
                end)
            v1615()
            return a331 + 3
        end
    S.v3362 = function(a1105, a248, a332)
            S.v3222(a1105, "Pakaian Classic", a332 + 1)
            S.v3492(a1105, a248, "shirt", a332 + 2)
            S.v3492(a1105, a248, "pants", a332 + 3)
            S.v3492(a1105, a248, "tee", a332 + 4)
            return S.v3542(a1105, a248, a332 + 4)
        end
    S.v3562 = {side = "me", cfg = nil}
    S.v357 = {}
    S.v3562.refreshers = S.v357
    S.v359 = {Name = "AdjustOverlay"}
    S.v359.Size = UDim2.fromScale(1, 1)
    S.v359.BackgroundColor3 = S.v1142
    S.v359.BackgroundTransparency = 0.15
    S.v359.Visible = false
    S.v359.Active = true
    S.v359.ZIndex = 30
    S.v358 = S.v150("Frame", S.v359, S.v275)
    S.v151(S.v358, 14)
    S.v361 = {}
    S.v361.AnchorPoint = Vector2.new(0.5, 0.5)
    S.v361.Position = UDim2.fromScale(0.5, 0.5)
    S.v361.Size = UDim2.new(1, -24, 1, -24)
    S.v361.BackgroundColor3 = S.v1152
    S.v361.ZIndex = 31
    S.v360 = S.v150("Frame", S.v361, S.v358)
    S.v151(S.v360, 14)
    S.v156(S.v1532(S.v360, S.v1322, 1, 0.3), "Color")
    S.v363 = {}
    S.v363.Position = UDim2.fromOffset(16, 10)
    S.v363.Size = UDim2.new(1, -32, 0, 22)
    S.v363.Font = S.v1132
    S.v363.RichText = true
    S.v363.ZIndex = 32
    S.v362 = S.v1552(S.v360, "", 16, S.v1212, S.v363)
    table.insert(S.v1342, function(a1106)
            S.v362.Text = ("Ukuran <font color=\"#" .. a1106:ToHex()) .. "\">&amp; Posisi</font>"
        end)
    S.v365 = {}
    S.v365.Position = UDim2.fromOffset(16, 33)
    S.v365.Size = UDim2.new(1, -32, 0, 16)
    S.v365.TextTruncate = Enum.TextTruncate.AtEnd
    S.v365.ZIndex = 32
    S.v364 = S.v1552(S.v360, "", 11, S.v1202, S.v365)
    S.v366 = {}
    S.v366.Position = UDim2.fromOffset(16, 55)
    S.v366.Size = UDim2.new(1, -32, 0, 1)
    S.v366.BackgroundColor3 = S.v1182
    S.v366.ZIndex = 32
    S.v150("Frame", S.v366, S.v360)
    S.v368 = {}
    S.v368.Position = UDim2.fromOffset(12, 62)
    S.v368.Size = UDim2.new(1, -24, 1, -118)
    S.v368.BackgroundTransparency = 1
    S.v368.ScrollBarThickness = 3
    S.v368.CanvasSize = UDim2.new()
    S.v368.AutomaticCanvasSize = Enum.AutomaticSize.Y
    S.v368.ZIndex = 32
    S.v367 = S.v150("ScrollingFrame", S.v368, S.v360)
    S.v156(S.v367, "ScrollBarImageColor3")
    S.v369 = {}
    S.v369.Padding = UDim.new(0, 6)
    S.v369.SortOrder = Enum.SortOrder.LayoutOrder
    S.v150("UIListLayout", S.v369, S.v367)
    S.v370 = {}
    S.v370.PaddingRight = UDim.new(0, 6)
    S.v150("UIPadding", S.v370, S.v367)
    S.v372 = {}
    S.v3732 = function(a1107, a249)
            local v2108 = a1107 .. a249.key
            if S.v371[v2108] then
                return
            end
            S.v371[v2108] = true
            task.delay(0.06, function()
                    S.v371[v2108] = nil
                    local v023 = S.v3312(a1107)
                    stk0 = not v023
                    if not v023 then
                        goto L2
                    end
                    ::L2::
                    if not stk0 then
                        goto L8
                    end
                    do
                        return
                    end
                    do
                        return
                    end
                    ::L8::
                    local v1134 = S.v542(v023)
                    local v2109, v373, v470 = ipairs(v1134)
                    ::L6::
                    local v559, v648 = v2109(v373, v470)
                    v470 = v559
                    if not v559 then
                        goto L4
                    end
                    pcall(S.v632, v648, a249.key)
                    goto L6
                    ::L4::
                    if not v1134[1] then
                        goto L9
                    end
                    pcall(S.v622, v1134[1], a249, a1107)
                    ::L9::
                    return
                end)
        end
    S.v374 = function(a1108, a250, a333, a417, a57, a64)
            local v740 = {}
            v740.Size = UDim2.new(1, 0, 0, 66)
            v740.BackgroundColor3 = S.v1172
            v740.LayoutOrder = a1108
            v740.ZIndex = 33
            local v649 = S.v150("Frame", v740, S.v367)
            S.v151(v649, 10)
            S.v1532(v649, S.v1182, 1)
            local v839 = {}
            v839.Position = UDim2.fromOffset(14, 8)
            v839.Size = UDim2.new(0.5, 0, 0, 18)
            v839.ZIndex = 34
            S.v1552(v649, a250, 13, S.v1212, v839)
            local v1030 = {}
            v1030.Position = UDim2.fromOffset(14, 26)
            v1030.Size = UDim2.new(0.5, 0, 0, 14)
            v1030.ZIndex = 34
            local v937 = S.v1552(v649, "", 11, S.v1202, v1030)
            local v1221 = {}
            v1221.AnchorPoint = Vector2.new(1, 0)
            v1221.Position = UDim2.new(1, -12, 0, 8)
            v1221.Size = UDim2.fromOffset(74, 26)
            v1221.BackgroundColor3 = S.v1162
            v1221.Text = ""
            v1221.PlaceholderText = "ketik"
            v1221.PlaceholderColor3 = S.v1202
            v1221.TextColor3 = S.v1212
            v1221.TextSize = 12
            v1221.ClearTextOnFocus = true
            v1221.ZIndex = 34
            local v1135 = S.v150("TextBox", v1221, v649)
            S.v151(v1135, 7)
            S.v1532(v1135, S.v1182, 1)
            local v1418 = {}
            v1418.Position = UDim2.fromOffset(14, 50)
            v1418.Size = UDim2.new(1, -28, 0, 6)
            v1418.BackgroundColor3 = S.v1192
            v1418.ZIndex = 34
            local v1318 = S.v150("Frame", v1418, v649)
            S.v151(v1318, 3)
            local v1617 = {}
            v1617.Size = UDim2.fromScale(0, 1)
            v1617.ZIndex = 35
            local v1517 = S.v150("Frame", v1617, v1318)
            S.v151(v1517, 3)
            S.v156(v1517, "BackgroundColor3")
            local v1815 = {}
            v1815.AnchorPoint = Vector2.new(0.5, 0.5)
            v1815.Position = UDim2.fromScale(0, 0.5)
            v1815.Size = UDim2.fromOffset(16, 16)
            v1815.BackgroundColor3 = S.v1212
            v1815.ZIndex = 36
            local v1717 = S.v150("Frame", v1815, v1318)
            S.v151(v1717, 8)
            local v2014 = {}
            v2014.AnchorPoint = Vector2.new(0.5, 0.5)
            v2014.Position = UDim2.fromScale(0.5, 0.5)
            v2014.Size = UDim2.new(1, 16, 0, 30)
            v2014.BackgroundTransparency = 1
            v2014.Text = ""
            v2014.ZIndex = 37
            local v1914 = S.v150("TextButton", v2014, v1318)
            local v2116 = function()
                    if not S.v3552.cfg then
                        return
                    end
                    local v024 = S.v39(S.v3552.side, S.v3552.cfg.key)[a333]
                    local v1136 = math.clamp((v024 - a417) / (a57 - a417), 0, 1)
                    v1517.Size = UDim2.fromScale(v1136, 1)
                    UDim2.fromScale(v1136, 1)
                    v1717.Position = UDim2.fromScale(v1136, 0.5)
                    UDim2.fromScale(v1136, 0.5)
                    v937.Text = string.format("%.2f %s", v024, a64)
                    string.format("%.2f %s", v024, a64)
                    v1135.Text = tostring(math.floor(v024 * 100 + 0.5) / 100)
                    tostring(math.floor(v024 * 100 + 0.5) / 100)
                end
            table.insert(S.v3552.refreshers, v2116)
            local v2214 = function(a1109)
                    if not S.v3552.cfg then
                        return
                    end
                    local a1109 = math.floor(a1109 * 100 + 0.5) / 100
                    S.v39(S.v3552.side, S.v3552.cfg.key)[a333] = a1109
                    v2116()
                    S.v3732(S.v3552.side, S.v3552.cfg)
                end
            local v2314 = false
            local v2412 = function(a1110)
                    local tmp73 = (a1110.Position.X - v1318.AbsolutePosition.X) / math.max(v1318.AbsoluteSize.X, 1)
                    local v1137 = math.clamp(tmp73, 0, 1)
                    v2214(a417 + (a57 - a417) * v1137)
                end
            S.v8(v1914.InputBegan, function(a1111)
                    if S.v158(a1111) then
                        v2314 = true
                        S.v367.ScrollingEnabled = false
                        v2412(a1111)
                    end
                end)
            S.v8(S.UserInputService.InputChanged, function(a1112)
                    local tmp74 = v2314
                    stk0 = tmp74
                    if stk0 then
                        v2412(a1112)
                    end
                end)
            S.v8(S.UserInputService.InputEnded, function(a1113)
                    local tmp75 = v2314
                    stk0 = tmp75
                    if stk0 then
                        v2314 = false
                        S.v367.ScrollingEnabled = true
                        S.v19()
                    end
                end)
            S.v8(v1135.FocusLost, function()
                    local v025 = tonumber(v1135.Text)
                    if not v025 then
                        goto L2
                    end
                    if not (a333 == "size") then
                        goto L3
                    end
                    v025 = math.clamp(v025, 0.05, 20)
                    math.clamp(v025, 0.05, 20)
                    ::L5::
                    v2214(v025)
                    S.v19()
                    ::L6::
                    do
                        return
                    end
                    do
                        return
                    end
                    ::L3::
                    v025 = math.clamp(v025, -50, 50)
                    math.clamp(v025, -50, 50)
                    goto L5
                    ::L2::
                    v2116()
                    goto L6
                end)
        end
    S.v374(1, "Ukuran", "size", 0.1, 5, "x")
    S.v374(2, "Geser Naik / Turun", "y", -5, 5, "stud")
    S.v374(3, "Geser Kiri / Kanan", "x", -5, 5, "stud")
    S.v374(4, "Geser Maju / Mundur", "z", -5, 5, "stud")
    S.v3752 = function(a1114, a251, a334)
            local v471 = {}
            v471.AnchorPoint = Vector2.new(0, 1)
            stk0 = S.v150
            stk1 = "TextButton"
            stk2 = a251
            if not a251 then
                goto L4
            end
            ::L4::
            if stk2 then
                goto L2
            end
            ::L2::
            v471.Position = stk2
            v471.Size = UDim2.new(0.5, -16, 0, 34)
            v471.Text = a1114
            v471.Font = S.v1132
            v471.TextSize = 12
            v471.TextColor3 = S.v1212
            v471.AutoButtonColor = false
            v471.ZIndex = 33
            local v375 = stk0(stk1, v471, S.v360)
            S.v151(v375, 9)
            if not a334 then
                goto L7
            end
            v375.BackgroundColor3 = S.v1232
            S.v1532(v375, S.v1222, 1, 0.45)
            ::L6::
            do
                return v375
            end
            do
                return
            end
            ::L7::
            S.v156(v375, "BackgroundColor3")
            goto L6
        end
    S.v376 = S.v3752("Reset Ukuran & Posisi", true, true)
    S.v377 = S.v3752("Tutup Pengaturan", false, false)
    S.v8(S.v376.MouseButton1Click, function()
            if not S.v3552.cfg then
                return
            end
            local v026 = S.v39(S.v3552.side, S.v3552.cfg.key)
            v026.size = 1
            v026.x = 0
            v026.y = 0
            v026.z = 0
            for v472, v560 in ipairs(S.v3552.refreshers) do
                v560()
            end
            S.v3732(S.v3552.side, S.v3552.cfg)
            S.v19()
            S.v189("Ukuran & posisi direset", S.v1242)
        end)
    S.v149 = function()
            S.v358.Visible = false
        end
    S.v8(S.v377.MouseButton1Click, function()
            S.v149()
            S.v19()
        end)
    S.v3302 = function(a1115, a252)
            S.v3552.side = a1115
            S.v3552.cfg = a252
            stk0 = a1115 == "me"
            if not (a1115 == "me") then
                goto L4
            end
            ::L4::
            if stk0 then
                goto L6
            end
            ::L6::
            S.v364.Text = (stk0 .. "  -  ") .. a252.name
            local v2117, v378, v473 = ipairs(S.v3552.refreshers)
            ::L2::
            local v561, v650 = v2117(v378, v473)
            v473 = v561
            if not v561 then
                goto L7
            end
            v650()
            goto L2
            ::L7::
            S.v358.Visible = true
            return
        end
    S.v3782 = function(a1116, a253, a335, a418, a58)
            local v651 = {}
            v651.Size = UDim2.new(1, 0, 0, 58)
            v651.BackgroundColor3 = S.v1172
            v651.LayoutOrder = a418
            local v563 = S.v150("Frame", v651, a1116)
            S.v151(v563, 12)
            local v741 = S.v1532(v563, S.v1182, 1)
            local v938 = {}
            v938.Position = UDim2.fromOffset(0, 12)
            v938.Size = UDim2.new(0, 3, 1, -24)
            v938.Visible = false
            v938.ZIndex = 4
            local v840 = S.v150("Frame", v938, v563)
            S.v151(v840, 2)
            S.v156(v840, "BackgroundColor3")
            stk0 = S.v1552
            stk1 = v563
            stk2 = string.format
            stk3 = "%02d"
            stk4 = a58
            if a58 then
                goto L2
            end
            ::L2::
            local v1138 = {}
            v1138.Position = UDim2.fromOffset(12, 11)
            v1138.Size = UDim2.fromOffset(36, 36)
            v1138.BackgroundTransparency = 0
            v1138.BackgroundColor3 = S.v1162
            v1138.Font = S.v1132
            v1138.TextXAlignment = Enum.TextXAlignment.Center
            v1138.ZIndex = 4
            local v1031 = stk0(stk1, stk2(stk3, stk4), 12, S.v1202, v1138)
            S.v151(v1031, 9)
            S.v1532(v1031, S.v1182, 1)
            local v1223 = {}
            v1223.Position = UDim2.fromOffset(58, 10)
            v1223.Size = UDim2.new(1, -196, 0, 18)
            v1223.TextTruncate = Enum.TextTruncate.AtEnd
            v1223.ZIndex = 4
            S.v1552(v563, a253.name, 13, S.v1212, v1223)
            local v1319 = {}
            v1319.Position = UDim2.fromOffset(58, 30)
            v1319.Size = UDim2.new(1, -196, 0, 16)
            v1319.TextTruncate = Enum.TextTruncate.AtEnd
            v1319.ZIndex = 4
            S.v1552(v563, (a253.desc .. "  |  ID ") .. tostring(a253.id), 10, S.v1202, v1319)
            local v1419 = function(a1117)
                    v840.Visible = a1117
                    stk0 = a1117
                    if not a1117 then
                        goto L4
                    end
                    ::L4::
                    if stk0 then
                        goto L2
                    end
                    ::L2::
                    v741.Color = stk0
                    if not a1117 then
                        goto L6
                    end
                    ::L6::
                    if stk0 then
                        goto L8
                    end
                    ::L8::
                    v1031.TextColor3 = stk0
                    return
                end
            local v1518 = nil
            v1518 = S.v3242(v563, false, function(a1118)
                    stk0 = a1118
                    if stk0 then
                        return
                    end
                    S.v3332(a335, "item", a1118, a253)
                    v1419(a1118)
                end)
            S.v3242(v563, false, function(a1119)
                    stk0 = a1119
                    if stk0 then
                        return
                    end
                    S.v3332(a335, "item", a1119, a253)
                    v1419(a1119)
                end)
            table.insert(S.v1342, function()
                    if v1518.on then
                        v1419(true)
                    end
                end)
            local v1618 = {
                side = a335,
                key = a253.key,
                sw = v1518,
                visual = v1419
            }
            table.insert(S.v3272, v1618)
            local v1816 = {}
            v1816.AnchorPoint = Vector2.new(1, 0.5)
            v1816.Position = UDim2.new(1, -66, 0.5, 0)
            v1816.Size = UDim2.fromOffset(64, 28)
            v1816.BackgroundColor3 = S.v1162
            v1816.Text = "Atur"
            v1816.Font = S.v1132
            v1816.TextSize = 12
            v1816.TextColor3 = S.v1212
            v1816.AutoButtonColor = false
            v1816.ZIndex = 8
            local v1718 = S.v150("TextButton", v1816, v563)
            S.v151(v1718, 8)
            S.v156(S.v1532(v1718, S.v1322, 1, 0.45), "Color")
            S.v8(v1718.MouseButton1Click, function()
                    S.v3302(a335, a253)
                end)
            return v563
        end
    S.v379 = S.v3182("Karakter", 1, "rig")
    S.v381 = {}
    S.v381.Size = UDim2.new(1, -8, 0, 22)
    S.v381.LayoutOrder = 0
    S.v381.ZIndex = 4
    S.v380 = S.v1552(S.v379, "", 11, S.v1202, S.v381)
    S.v382 = {}
    S.v382.PaddingLeft = UDim.new(0, 8)
    S.v150("UIPadding", S.v382, S.v380)
    S.v14110.main = S.v380
    S.v3222(S.v379, "Karakter kamu", 1)
    S.v383 = S.v3352(S.v379, "me", 1)
    S.v383 = S.v3362(S.v379, "me", S.v383)
    S.v3362(S.v379, "me", S.v383)
    S.v3222(S.v379, "Lainnya", S.v383 + 1)
    S.v384 = S.v3232(S.v379, "Reset Karakter", "Matikan Korblox & Headless", S.v383 + 2)
    S.v3252(S.v384, "Reset", true, function()
            for v385, v474 in ipairs(S.v3272) do
                local tmp76 = v474.side == "me"
                stk0 = tmp76
                if stk0 then
                    v474.sw:set(false)
                end
            end
            if S.v4210.clothClear then
                S.v4210.clothClear("me")
            end
            S.v289()
        end)
    S.v3852 = nil
    S.v3852 = function(a1120)
            xpcall(function()
                    local S189 = {}
                    S189.v027 = a1120.side
                    S189.v1139 = function()
                            return a1120.getPlr()
                        end
                    S189.MarketplaceService = game:GetService("MarketplaceService")
                    S189.v386 = 100
                    S189.v475 = Color3.fromRGB(255, 200, 60)
                    S189.v653 = {
                        [8] = true,
                        [10] = true,
                        [41] = true,
                        [42] = true,
                        [43] = true,
                        [44] = true,
                        [45] = true,
                        [46] = true,
                        [47] = true
                    }
                    S189.v743 = function(a1121)
                            return ("rbxthumb://type=Asset&id=" .. a1121) .. "&w=150&h=150"
                        end
                    if a1120.root then
                        goto L17
                    end
                    S189.v3182("Accessories", 5, "cat")
                    S189.v841 = S189.v291["Accessories"]
                    S189.v1033 = {
                        Name = "KatalogRoot",
                        Position = S189.v841.Position,
                        Size = S189.v841.Size,
                        BackgroundTransparency = 1,
                        Visible = false
                    }
                    S189.v939 = S189.v150("Frame", S189.v1033, S189.v275)
                    S189.v841:Destroy()
                    S189.v291["Accessories"] = S189.v939
                    S189.v2902["Accessories"] = S189.v939
                    ::L17::
                    S189.tmp77 = a1120.root
                    S189.stk0 = S189.tmp77
                    if S189.tmp77 then
                        goto L22
                    end
                    ::L22::
                    S189.v1140 = stk0
                    S189.v1224 = function(a1122, a254, a336, a419, a59, a65)
                            local v744 = {
                                Position = a336,
                                Size = a419,
                                Text = a254,
                                Font = S189.v1132
                            }
                            stk0 = S189.v150
                            stk1 = "TextButton"
                            stk2 = a65
                            if a65 then
                                goto L7
                            end
                            ::L7::
                            v744.TextSize = stk2
                            v744.TextColor3 = S189.v1212
                            v744.AutoButtonColor = true
                            if not (a59 == "danger") then
                                goto L3
                            end
                            ::L3::
                            if stk2 then
                                goto L9
                            end
                            ::L9::
                            v744.BackgroundColor3 = stk2
                            local v654 = stk0(stk1, v744, a1122)
                            S189.v151(v654, 7)
                            if not (a59 == "danger") then
                                goto L5
                            end
                            S189.v1532(v654, S189.v1222, 1, 0.45)
                            ::L11::
                            do
                                return v654
                            end
                            do
                                return
                            end
                            ::L5::
                            if not (a59 == "accent") then
                                goto L2
                            end
                            S189.v156(v654, "BackgroundColor3")
                            goto L11
                            ::L2::
                            S189.v1532(v654, S189.v1212, 1, 0.88)
                            goto L11
                        end
                    S189.v1320 = function(a1123, a255, a337, a420)
                            local v564 = {Position = a337, Size = a420, BackgroundColor3 = S189.v1172}
                            local v476 = S189.v150("Frame", v564, a1123)
                            S189.v151(v476, 8)
                            S189.v1532(v476, S189.v1182, 1)
                            local v745 = {}
                            v745.Position = UDim2.fromOffset(8, 0)
                            v745.Size = UDim2.new(1, -16, 1, 0)
                            v745.BackgroundTransparency = 1
                            v745.Text = ""
                            v745.PlaceholderText = a255
                            v745.PlaceholderColor3 = S189.v1202
                            v745.TextColor3 = S189.v1212
                            v745.TextSize = 11
                            v745.ClearTextOnFocus = false
                            v745.TextXAlignment = Enum.TextXAlignment.Left
                            local v655 = S189.v150("TextBox", v745, v476)
                            return v655, v476
                        end
                    S189.v1420 = function(a1124, a256)
                            local v2118 = 0
                            S189.v8(a1124.InputBegan, function(a1125)
                                    if S189.v158(a1125) then
                                        v2118 = v2118 + 1
                                        local v1141 = v2118
                                        a256()
                                        task.spawn(function()
                                                task.wait(0.4)
                                                ::L3::
                                                while true do
                                                    local tmp78 = v2118 == v1141
                                                    stk0 = tmp78
                                                    if stk0 then
                                                        a256()
                                                        task.wait(0.06)
                                                        goto L3
                                                    end
                                                end
                                            end)
                                    end
                                end)
                            S189.v8(S189.UserInputService.InputEnded, function(a1126)
                                    if S189.v158(a1126) then
                                        v2118 = v2118 + 1
                                    end
                                end)
                        end
                    S189.v1519 = 168
                    S189.v1719 = {}
                    S189.v1719.Size = UDim2.new(0, S189.v1519, 1, 0)
                    S189.v1719.BackgroundColor3 = S189.v1162
                    S189.v1619 = S189.v150("Frame", S189.v1719, S189.v1140)
                    S189.v151(S189.v1619, 12)
                    S189.v1532(S189.v1619, S189.v1182, 1)
                    S189.v1915 = {}
                    S189.v1915.Position = UDim2.fromOffset(6, 6)
                    S189.v1915.Size = UDim2.new(1, -12, 0, 208)
                    S189.v1915.BackgroundColor3 = S189.v1142
                    S189.v1915.Ambient = Color3.fromRGB(190, 190, 190)
                    S189.v1915.LightColor = Color3.new(1, 1, 1)
                    S189.v1915.LightDirection = Vector3.new(-1, -1, -1)
                    S189.v1817 = S189.v150("ViewportFrame", S189.v1915, S189.v1619)
                    S189.v151(S189.v1817, 10)
                    S189.v1532(S189.v1817, S189.v1182, 1)
                    S189.camera = Instance.new("Camera")
                    S189.camera.FieldOfView = 40
                    S189.camera.Parent = S189.v1817
                    S189.v1817.CurrentCamera = S189.camera
                    S189.v2119 = {}
                    S189.v2119.Position = UDim2.fromOffset(8, 4)
                    S189.v2119.Size = UDim2.new(1, -16, 0, 12)
                    S189.v1552(S189.v1817, "geser = putar avatar", 9, S189.v1202, S189.v2119)
                    S189.v2315 = {}
                    S189.v2315.Size = UDim2.fromScale(1, 1)
                    S189.v2315.TextXAlignment = Enum.TextXAlignment.Center
                    S189.v2315.Visible = false
                    S189.v2215 = S189.v1552(S189.v1817, "Preview tidak tersedia", 11, S189.v1202, S189.v2315)
                    S189.v2413 = S189.v1224(S189.v1817, "+", UDim2.new(1, -28, 1, -54), UDim2.fromOffset(22, 22))
                    S189.v2512 = S189.v1224(S189.v1817, "-", UDim2.new(1, -28, 1, -28), UDim2.fromOffset(22, 22))
                    S189.v2710 = {}
                    S189.v2710.Position = UDim2.fromOffset(10, 220)
                    S189.v2710.Size = UDim2.new(1, -20, 0, 16)
                    S189.v2611 = S189.v1552(S189.v1619, "", 11, S189.v1212, S189.v2710)
                    S189.v2910 = {}
                    S189.v2910.Position = UDim2.fromOffset(10, 238)
                    S189.v2910.Size = UDim2.new(1, -20, 0, 40)
                    S189.v2910.TextWrapped = true
                    S189.v2910.TextYAlignment = Enum.TextYAlignment.Top
                    S189.v2910.TextTruncate = Enum.TextTruncate.AtEnd
                    S189.v2810 = S189.v1552(S189.v1619, "", 10, S189.v1202, S189.v2910)
                    S189.v3010 = S189.v1224(S189.v1619, "Segarkan", UDim2.fromOffset(6, 282), UDim2.new(0.5, -9, 0, 28), nil, 10)
                    S189.v3110 = S189.v1224(S189.v1619, "Lepas Semua", UDim2.new(0.5, 3, 0, 282), UDim2.new(0.5, -9, 0, 28), "danger", 10)
                    S189.v3210 = S189.v1224(S189.v1619, "Pulihkan Bawaan", UDim2.fromOffset(6, 316), UDim2.new(1, -12, 0, 28), nil, 10)
                    S189.v3410 = {}
                    S189.v3410.Position = UDim2.fromOffset(S189.v1519 + 8, 0)
                    S189.v3410.Size = UDim2.new(1, -(S189.v1519 + 8), 1, 0)
                    S189.v3410.BackgroundTransparency = 1
                    S189.v3310 = S189.v150("Frame", S189.v3410, S189.v1140)
                    S189.v3510 = S189.v1224(S189.v3310, "Semua", UDim2.fromOffset(0, 0), UDim2.fromOffset(66, 26))
                    S189.v3610 = S189.v1224(S189.v3310, "Favorit", UDim2.fromOffset(72, 0), UDim2.fromOffset(74, 26))
                    S189.v387 = {}
                    S189.v387.Position = UDim2.fromOffset(152, 0)
                    S189.v387.Size = UDim2.new(1, -152, 0, 26)
                    S189.v387.TextXAlignment = Enum.TextXAlignment.Right
                    S189.v3710 = S189.v1552(S189.v3310, "0 item", 11, S189.v1202, S189.v387)
                    S189.v392, S189.v402 = S189.v1320(S189.v3310, "Cari nama / ID...", UDim2.fromOffset(0, 32), UDim2.new(1, -218, 0, 30))
                    S189.v4110, S189.v4211 = S189.v1320(S189.v3310, "Asset ID / link", UDim2.new(1, -90, 0, 32), UDim2.fromOffset(122, 30))
                    S189.v4211.AnchorPoint = Vector2.new(1, 0)
                    Vector2.new(1, 0)
                    S189.v4310 = S189.v1224(S189.v3310, "Tambah", UDim2.new(1, -84, 0, 32), UDim2.fromOffset(84, 30), "accent", 12)
                    S189.v4510 = {}
                    S189.v4510.Position = UDim2.fromOffset(0, 68)
                    S189.v4510.Size = UDim2.new(1, 0, 1, -68)
                    S189.v4510.BackgroundColor3 = S189.v1172
                    S189.v4510.ScrollBarThickness = 3
                    S189.v4510.CanvasSize = UDim2.new()
                    S189.v4510.AutomaticCanvasSize = Enum.AutomaticSize.Y
                    S189.v4410 = S189.v150("ScrollingFrame", S189.v4510, S189.v3310)
                    S189.v151(S189.v4410, 10)
                    S189.v1532(S189.v4410, S189.v1182, 1)
                    S189.v156(S189.v4410, "ScrollBarImageColor3")
                    S189.v4610 = {}
                    S189.v4610.CellSize = UDim2.fromOffset(102, 150)
                    S189.v4610.CellPadding = UDim2.fromOffset(5, 5)
                    S189.v4610.SortOrder = Enum.SortOrder.LayoutOrder
                    S189.v4610.HorizontalAlignment = Enum.HorizontalAlignment.Center
                    S189.v150("UIGridLayout", S189.v4610, S189.v4410)
                    S189.v477 = {}
                    S189.v477.PaddingTop = UDim.new(0, 5)
                    S189.v477.PaddingBottom = UDim.new(0, 5)
                    S189.v150("UIPadding", S189.v477, S189.v4410)
                    S189.v492 = {}
                    S189.v492.Position = UDim2.fromOffset(20, 90)
                    S189.v492.Size = UDim2.new(1, -40, 0, 120)
                    S189.v492.TextWrapped = true
                    S189.v492.TextXAlignment = Enum.TextXAlignment.Center
                    S189.v492.Visible = false
                    S189.v482 = S189.v1552(S189.v3310, "", 12, S189.v1202, S189.v492)
                    S189.v5110 = {}
                    S189.v5210 = {
                        "size",
                        "Ukuran",
                        0.1,
                        0.1,
                        5
                    }
                    S189.v5110[1] = S189.v5210
                    S189.v5310 = {
                        "x",
                        "Posisi X",
                        0.05,
                        -5,
                        5
                    }
                    S189.v5110[2] = S189.v5310
                    S189.v5410 = {
                        "y",
                        "Posisi Y",
                        0.05,
                        -5,
                        5
                    }
                    S189.v5110[3] = S189.v5410
                    S189.v5510 = {
                        "z",
                        "Posisi Z",
                        0.05,
                        -5,
                        5
                    }
                    S189.v5110[4] = S189.v5510
                    S189.v565 = {
                        "rx",
                        "Rotasi X",
                        10,
                        -180,
                        180
                    }
                    S189.v5110[5] = S189.v565
                    S189.v573 = {
                        "ry",
                        "Rotasi Y",
                        10,
                        -180,
                        180
                    }
                    S189.v5110[6] = S189.v573
                    S189.v583 = {
                        "rz",
                        "Rotasi Z",
                        10,
                        -180,
                        180
                    }
                    S189.v5110[7] = S189.v583
                    S189.v602 = {}
                    S189.v6110, S189.v6210, S189.v6310 = ipairs(S189.v502)
                    ::L48::
                    S189.v6410, S189.v656 = S189.v6110(S189.v6210, S189.v6310)
                    S189.v6310 = S189.v6410
                    if not S189.v6410 then
                        goto L45
                    end
                    S189.v593[S189.v656[1]] = S189.v656
                    goto L48
                    ::L45::
                    S189.v663 = function()
                            local v028 = {
                                size = 1,
                                x = 0,
                                y = 0,
                                z = 0,
                                rx = 0,
                                ry = 0,
                                rz = 0
                            }
                            return v028
                        end
                    S189.v673 = function(a1127, a257)
                            local v2120 = S189.v593[a1127]
                            local a257 = math.floor(a257 * 1000 + 0.5) / 1000
                            return math.clamp(a257, v2120[4], v2120[5])
                        end
                    S189.v7110 = {}
                    S189.v7210 = {}
                    S189.v7310 = {}
                    S189.v773 = {}
                    S189.v783 = {}
                    S189.v793 = {}
                    S189.v802 = nil
                    S189.v8110 = nil
                    S189.v8210 = "all"
                    S189.v8310 = ""
                    if type(S189.v12[a1120.storeKey]) == "table" then
                        goto L53
                    end
                    S189.v843 = {}
                    S189.v12[a1120.storeKey] = S189.v843
                    ::L53::
                    S189.v853 = S189.v12[a1120.storeKey]
                    if type(S189.v853.items) == "table" then
                        goto L51
                    end
                    S189.v863 = {}
                    S189.v853.items = S189.v863
                    ::L51::
                    if type(S189.v853.removed) == "table" then
                        goto L19
                    end
                    S189.v873 = {}
                    S189.v853.removed = S189.v873
                    ::L19::
                    S189.v883 = false
                    S189.v893 = function()
                            if S189.v883 then
                                return
                            end
                            S189.v883 = true
                            task.delay(0.6, function()
                                    S189.v883 = false
                                    pcall(function()
                                        local v746, v844, tmp79
                                            local v1143 = {}
                                            local v2121, v388, v478 = ipairs(S189.v693)
                                            ::L3::
                                            local v566, v657 = v2121(v388, v478)
                                            v478 = v566
                                            if not v566 then
                                                goto L9
                                            end
                                            v746 = S189.v683[v657]
                                            if v746 then
                                                goto L8
                                            end
                                            ::L5::
                                            goto L3
                                            ::L8::
                                            v844 = {id = v746.id, name = v746.name}
                                            tmp79 = v746.fav
                                            stk0 = tmp79
                                            if tmp79 then
                                                goto L1
                                            end
                                            ::L6::
                                            if stk0 then
                                                goto L2
                                            end
                                            ::L2::
                                            v844.fav = stk0
                                            v844.cfg = v746.cfg
                                            v1143[#v1143 + 1] = v844
                                            goto L5
                                            ::L1::
                                            goto L6
                                            ::L9::
                                            S189.v853.items = v1143
                                            S189.v19()
                                            return
                                        end)
                                end)
                        end
                    S189.v902 = function(a1128)
                        local tmp81, tmp80, v940, v1034, v1145, v1225, v1321, v1421, v1520, v1620, v1720, v1818
                            if not S189.v763[a1128] then
                                goto L20
                            end
                            do
                                return S189.v763[a1128]
                            end
                            do
                                return
                            end
                            ::L20::
                            local v1144, v2123 = pcall(function()
                                    return game:GetObjects("rbxassetid://" .. a1128)
                                end)
                            stk0 = not v1144
                            if not v1144 then
                                goto L27
                            end
                            ::L27::
                            if not stk0 then
                                goto L24
                            end
                            do
                                return nil
                            end
                            do
                                return
                            end
                            ::L24::
                            local v389 = nil
                            local v479, v567, v658 = ipairs(v2123)
                            ::L32::
                            local v747, v845 = v479(v567, v658)
                            v658 = v747
                            if not v747 then
                                goto L14
                            end
                            if v389 then
                                goto L23
                            end
                            tmp80 = v845:IsA("BasePart")
                            stk0 = tmp80
                            if tmp80 then
                                goto L10
                            end
                            ::L30::
                            if stk0 then
                                goto L18
                            end
                            if v845:FindFirstChild("Handle", true) then
                                goto L18
                            end
                            ::L18::
                            v940 = stk0
                            if not v940 then
                                goto L23
                            end
                            v1034 = CFrame.new()
                            v1145 = v940:FindFirstAncestorWhichIsA("Accoutrement")
                            if not v1145 then
                                goto L5
                            end
                            pcall(function()
                                    v1034 = v1145.AttachmentPoint
                                end)
                            ::L5::
                            v1225 = v940:Clone()
                            v1321, v1421, v1520 = ipairs(v1225:GetDescendants())
                            ::L8::
                            v1620, v1720 = v1321(v1421, v1520)
                            v1520 = v1620
                            if not v1620 then
                                goto L29
                            end
                            tmp81 = v1720:IsA("LuaSourceContainer")
                            stk0 = tmp81
                            if tmp81 then
                                goto L6
                            end
                            if v1720:IsA("Weld") then
                                goto L6
                            end
                            if not v1720:IsA("WeldConstraint") then
                                goto L4
                            end
                            ::L6::
                            if not stk0 then
                                goto L16
                            end
                            v1720:Destroy()
                            ::L16::
                            goto L8
                            ::L4::
                            goto L6
                            ::L29::
                            v1818 = {handle = v1225, ap = v1034}
                            v389 = v1818
                            ::L23::
                            goto L32
                            ::L10::
                            goto L30
                            ::L14::
                            local v1916, v2015, v2124 = ipairs(v2123)
                            ::L2::
                            local v2216, v2316 = v1916(v2015, v2124)
                            v2124 = v2216
                            if not v2216 then
                                goto L12
                            end
                            pcall(function()
                                    v2316:Destroy()
                                end)
                            goto L2
                            ::L12::
                            if not v389 then
                                goto L15
                            end
                            S189.v763[a1128] = v389
                            ::L15::
                            return v389
                        end
                    S189.v9110 = false
                    S189.v9210 = function(a1129)
                            if a1129.tmpl then
                                return true
                            end
                            local tmp82 = a1129.failedAt
                            stk0 = tmp82
                            if stk0 then
                                return false
                            end
                            local v1146 = 0
                            ::L13::
                            while true do
                                local tmp83 = S189.v9110
                                stk0 = tmp83
                                if stk0 then
                                    task.wait(0.1)
                                    v1146 = v1146 + 0.1
                                    goto L13
                                end
                            end
                            ::L5::
                            if stk0 then
                                a1129.failedAt = tick()
                                tick()
                                return false
                            end
                            a1129.failedAt = nil
                            a1129.tmpl = v390
                            do
                                return true
                            end
                            if a1129.tmpl then
                                return true
                            end
                            S189.v9110 = true
                            local v2125, v390 = pcall(S189.v902, a1129.id)
                            S189.v9110 = false
                            stk0 = not v2125
                            if v2125 then
                                goto J1
                            end
                            ::L10::
                            goto L5
                            ::J1::
                            goto L10
                        end
                    S189.v9310 = function(a1130)
                            local v1147, v2126 = pcall(function()
                                    return S189.MarketplaceService:GetProductInfo(a1130, Enum.InfoType.Asset)
                                end)
                            stk0 = v1147
                            if stk0 then
                                return v2126
                            end
                            return nil
                        end
                    S189.v943 = function(a1131, a258)
                            local v2127, v391, v480 = ipairs(a1131:GetChildren())
                            ::L1::
                            while true do
                                local v568, v659 = v2127(v391, v480)
                                v480 = v568
                                if not v568 then
                                    break
                                end
                                local tmp84 = v659.Name == a258
                                stk0 = tmp84
                                if not stk0 then
                                    goto L1
                                end
                            end
                            do
                                return
                            end
                            return v659
                        end
                    S189.v953 = function()
                            return S189.v552(S189.v1139())
                        end
                    S189.v963 = function(a1132, a259, a338, a421)
                        local v941, v1035, v1148, v1226, v1323, v2711, v2217, v2317, v2414, v2513, v2612, v3111, v3211, tmp85, v2811, v2911, v3011
                            local v481 = a259.tmpl
                            local v569 = a259.cfg
                            local v660 = a1132:FindFirstChild("Head")
                            if v660 then
                                goto L31
                            end
                            do
                                return nil
                            end
                            do
                                return
                            end
                            ::L31::
                            local v748 = v481.handle:Clone()
                            v748.Name = "Handle"
                            stk0 = a421
                            if not a421 then
                                goto L9
                            end
                            ::L9::
                            if stk0 then
                                goto L23
                            end
                            ::L23::
                            v748.Anchored = stk0
                            v748.CanCollide = false
                            v748.CanTouch = false
                            v748.CanQuery = false
                            v748.Massless = true
                            v748.Transparency = 0
                            local v846 = v569.size
                            if v846 == 1 then
                                goto L22
                            end
                            v941, v1035, v1148 = ipairs(v748:GetDescendants())
                            ::L5::
                            v1226, v1323 = v941(v1035, v1148)
                            v1148 = v1226
                            if not v1226 then
                                goto L18
                            end
                            if not v1323:IsA("Attachment") then
                                goto L16
                            end
                            v1323.Position = v1323.Position * v846
                            ::L33::
                            goto L5
                            ::L16::
                            if not v1323:IsA("SpecialMesh") then
                                goto L33
                            end
                            v1323.Scale = v1323.Scale * v846
                            goto L33
                            ::L18::
                            v748.Size = v748.Size * v846
                            ::L22::
                            local v1423 = nil
                            local v1521 = nil
                            local v1621 = nil
                            local v1721, v1819, v1917 = ipairs(v748:GetChildren())
                            ::L2::
                            local v2016, v2128 = v1721(v1819, v1917)
                            v1917 = v2016
                            if not v2016 then
                                goto L13
                            end
                            if not v2128:IsA("Attachment") then
                                goto L8
                            end
                            v2217, v2317, v2414 = ipairs(a1132:GetChildren())
                            ::L29::
                            v2513, v2612 = v2217(v2317, v2414)
                            v2414 = v2513
                            if not v2513 then
                                goto L25
                            end
                            if not v2612:IsA("BasePart") then
                                goto L7
                            end
                            v2711 = S189.v943(v2612, v2128.Name)
                            if not v2711 then
                                goto L7
                            end
                            v1423 = v2128
                            v1521 = v2711
                            v1621 = v2612
                            ::L25::
                            if not v1423 then
                                goto L8
                            end
                            ::L13::
                            tmp85 = CFrame.new(v569.x, v569.y, v569.z) * CFrame.Angles(math.rad(v569.rx), math.rad(v569.ry), math.rad(v569.rz))
                            v2811 = tmp85
                            v2911 = nil
                            v3011 = nil
                            if not v1423 then
                                goto L28
                            end
                            v2911 = v1521.CFrame * v2811
                            v3011 = v1423.CFrame
                            ::L11::
                            v3111 = Instance.new("Model")
                            v3111.Name = "AC_" .. a259.id
                            v748.Parent = v3111
                            if not a421 then
                                goto L15
                            end
                            v748.CFrame = v1621.CFrame * (v2911 * v3011:Inverse())
                            ::L21::
                            v3111.Parent = a338
                            do
                                return v3111, v1621
                            end
                            do
                                return
                            end
                            ::L15::
                            v3211 = Instance.new("Weld")
                            v3211.Name = "AC_Weld"
                            v3211.Part0 = v1621
                            v3211.Part1 = v748
                            v3211.C0 = v2911
                            v3211.C1 = v3011
                            v3211.Parent = v748
                            goto L21
                            ::L28::
                            v1621 = v660
                            v2911 = CFrame.new(0, v660.Size.Y / 2, 0) * (v2811 * v481.ap:Inverse())
                            v3011 = CFrame.new()
                            CFrame.new()
                            goto L11
                            ::L8::
                            goto L2
                            ::L7::
                            goto L29
                        end
                    S189.v973 = function(a1133)
                            local v1149 = workspace.CurrentCamera
                            local tmp86 = S189.v46
                            stk0 = tmp86
                            if stk0 then
                                return v1149
                            end
                            return a1133
                        end
                    S189.v983 = function(a1134)
                            if a1134.extras then
                                for v483, v570 in pairs(a1134.extras) do
                                    pcall(function()
                                            v570.model:Destroy()
                                        end)
                                end
                                a1134.extras = nil
                            end
                            if a1134.model then
                                pcall(function()
                                        a1134.model:Destroy()
                                    end)
                                a1134.model = nil
                            end
                            a1134.part0 = nil
                        end
                    S189.v993 = function()
                            local v1150 = {}
                            for v571, v661 in ipairs(S189.v542(S189.v1139())) do
                                if v661:FindFirstChild("Head") then
                                    v1150[#v1150 + 1] = v661
                                end
                            end
                            if #v1150 == 0 then
                                local v749 = S189.v953()
                                if v749 then
                                    v1150[1] = v749
                                end
                            end
                            return v1150
                        end
                    S189.v1002 = function(a1135, a260)
                        local v574, tmp87, v664
                            local v2129, v393, v484 = pcall(S189.v963, a260, a1135, S189.v973(a260), false)
                            stk0 = v2129
                            if not v2129 then
                                goto L7
                            end
                            ::L7::
                            if not stk0 then
                                goto L4
                            end
                            tmp87 = a1135.extras
                            stk0 = tmp87
                            if tmp87 then
                                goto L2
                            end
                            v574 = {}
                            ::L2::
                            a1135.extras = stk0
                            v664 = {model = v393, part0 = v484}
                            a1135.extras[a260] = v664
                            if not a1135.model then
                                goto L9
                            end
                            ::L9::
                            if stk0 then
                                goto L5
                            end
                            a1135.model = v393
                            a1135.part0 = v484
                            ::L5::
                            do
                                return true
                            end
                            do
                                return
                            end
                            ::L4::
                            return false
                        end
                    S189.v10110 = function(a1136)
                            S189.v983(a1136)
                            local tmp88 = not a1136.worn
                            stk0 = tmp88
                            if tmp88 then
                                goto L3
                            end
                            ::L3::
                            if not stk0 then
                                goto L2
                            end
                            do
                                return
                            end
                            do
                                return
                            end
                            ::L2::
                            local v1151, v2130, v394 = ipairs(S189.v993())
                            ::L5::
                            local v485, v575 = v1151(v2130, v394)
                            v394 = v485
                            if not v485 then
                                goto L7
                            end
                            S189.v1002(a1136, v575)
                            goto L5
                            ::L7::
                            return
                        end
                    S189.v10210 = nil
                    S189.v1036 = nil
                    S189.v1043 = nil
                    S189.v1053 = 0
                    S189.v1063 = 9
                    S189.v1073 = false
                    S189.v1083 = function()
                            if not S189.v1036 then
                                return
                            end
                            local v029 = S189.v1043 - S189.v1043.Position
                            local v1153 = CFrame.new(S189.v1036) * (v029 * CFrame.Angles(0, S189.v1053, 0))
                            local v2131 = (v1153 * CFrame.new(0, 0.4, -S189.v1063)).Position
                            S189.camera.CFrame = CFrame.lookAt(v2131, S189.v1036)
                            CFrame.lookAt(v2131, S189.v1036)
                        end
                    S189.v1093 = function()
                        local tmp90, tmp91, v3213, v3311, v3411, v3511
                            if not S189.v10210 then
                                goto L47
                            end
                            S189.v10210:Destroy()
                            S189.v10210 = nil
                            ::L47::
                            S189.v2215.Visible = true
                            local tmp89 = S189.v027 == "fr"
                            stk0 = tmp89
                            if not (tmp89) then
                                goto L43
                            end
                            ::L43::
                            if not stk0 then
                                goto L39
                            end
                            ::L39::
                            if stk0 then
                                goto L31
                            end
                            ::L31::
                            S189.v2215.Text = stk0
                            local v030 = S189.v953()
                            if v030 then
                                goto L55
                            end
                            do
                                return
                            end
                            do
                                return
                            end
                            ::L55::
                            pcall(function()
                                    v030.Archivable = true
                                end)
                            local v1154, v2133 = pcall(function()
                                    return v030:Clone()
                                end)
                            stk0 = not v1154
                            if not v1154 then
                                goto L14
                            end
                            ::L14::
                            if not stk0 then
                                goto L53
                            end
                            do
                                return
                            end
                            do
                                return
                            end
                            ::L53::
                            local v395, v486, v576 = ipairs(v2133:GetDescendants())
                            ::L19::
                            local v665, v750 = v395(v486, v576)
                            v576 = v665
                            if not v665 then
                                goto L42
                            end
                            tmp90 = v750:IsA("LuaSourceContainer")
                            stk0 = tmp90
                            if tmp90 then
                                goto L37
                            end
                            ::L37::
                            if not stk0 then
                                goto L9
                            end
                            v750:Destroy()
                            ::L9::
                            goto L19
                            ::L42::
                            local v847, v944, v1037 = ipairs(v2133:GetChildren())
                            ::L57::
                            local v1155, v1227 = v847(v944, v1037)
                            v1037 = v1155
                            if not v1155 then
                                goto L49
                            end
                            if v1227.Name:sub(1, 3) == "AC_" then
                                goto L23
                            end
                            ::L34::
                            goto L57
                            ::L23::
                            v1227:Destroy()
                            goto L34
                            ::L49::
                            local v1324 = v2133:FindFirstChildOfClass("Humanoid")
                            if not v1324 then
                                goto L33
                            end
                            v1324.DisplayDistanceType = Enum.HumanoidDisplayDistanceType.None
                            ::L33::
                            local v1424, v1523, v1623 = ipairs(v2133:GetDescendants())
                            ::L17::
                            local v1723, v1820 = v1424(v1523, v1623)
                            v1623 = v1723
                            if not v1723 then
                                goto L30
                            end
                            if v1820:IsA("BasePart") then
                                goto L10
                            end
                            ::L41::
                            goto L17
                            ::L10::
                            v1820.Anchored = true
                            goto L41
                            ::L30::
                            local v2017 = {}
                            local v2134, v2218, v2318 = ipairs(S189.v702)
                            ::L26::
                            local v2415, v2514 = v2134(v2218, v2318)
                            v2318 = v2415
                            if not v2415 then
                                goto L45
                            end
                            if S189.v683[v2514] then
                                goto L16
                            end
                            ::L35::
                            goto L26
                            ::L16::
                            tmp91 = S189.v683[v2514]
                            v2017[#v2017 + 1] = tmp91
                            goto L35
                            ::L45::
                            local tmp92 = S189.v802
                            stk0 = tmp92
                            if not tmp92 then
                                goto L11
                            end
                            ::L11::
                            local v2613 = stk0
                            if not v2613 then
                                goto L28
                            end
                            ::L28::
                            if not stk0 then
                                goto L22
                            end
                            v2017[#v2017 + 1] = v2613
                            ::L22::
                            local v2712, v2812, v2912 = ipairs(v2017)
                            ::L4::
                            local v3012, v3113 = v2712(v2812, v2912)
                            v2912 = v3012
                            if not v3012 then
                                goto L7
                            end
                            if v3113.tmpl then
                                goto L36
                            end
                            ::L6::
                            goto L4
                            ::L36::
                            pcall(S189.v963, v2133, v3113, v2133, true)
                            goto L6
                            ::L7::
                            v2133.Parent = S189.v1817
                            S189.v10210 = v2133
                            local tmp93 = v2133:FindFirstChild("HumanoidRootPart")
                            stk0 = tmp93
                            if tmp93 then
                                goto L51
                            end
                            if not v2133:FindFirstChild("Head") then
                                goto L13
                            end
                            ::L51::
                            v3213 = stk0
                            if v3213 then
                                goto L2
                            end
                            do
                                return
                            end
                            do
                                return
                            end
                            ::L2::
                            S189.v1043 = v3213.CFrame
                            S189.v1036 = v3213.Position
                            v3311, v3411, v3511 = pcall(function()
                                    return v2133:GetBoundingBox()
                                end)
                            stk0 = v3311
                            if not v3311 then
                                goto L24
                            end
                            ::L24::
                            if not stk0 then
                                goto L59
                            end
                            S189.v1036 = v3411.Position
                            if not S189.v1073 then
                                goto L54
                            end
                            ::L59::
                            S189.v2215.Visible = false
                            S189.v1083()
                            do
                                return
                            end
                            do
                                return
                            end
                            ::L54::
                            S189.v1073 = true
                            S189.v1063 = math.clamp(v3511.Y * 2.1, 6, 18)
                            math.clamp(v3511.Y * 2.1, 6, 18)
                            goto L59
                            ::L13::
                            goto L51
                        end
                    S189.v11010 = false
                    S189.v11110 = function()
                            if S189.v11010 then
                                return
                            end
                            S189.v11010 = true
                            task.delay(0.15, function()
                                    S189.v11010 = false
                                    local tmp94 = S189.v1140.Parent
                                    stk0 = tmp94
                                    if stk0 then
                                        pcall(S189.v1093)
                                    end
                                end)
                        end
                    S189.v11210 = false
                    S189.v11310 = 0
                    S189.v8(S189.v1817.InputBegan, function(a1137)
                            if S189.v158(a1137) then
                                S189.v11210 = true
                                S189.v11310 = a1137.Position.X
                            end
                        end)
                    S189.v8(S189.UserInputService.InputChanged, function(a1138)
                            local tmp95 = S189.v11210
                            stk0 = tmp95
                            if stk0 then
                                local v1156 = a1138.Position.X - S189.v11310
                                S189.v11310 = a1138.Position.X
                                S189.v1053 = S189.v1053 - math.rad(v1156 * 0.8)
                                S189.v1083()
                            end
                        end)
                    S189.v8(S189.UserInputService.InputEnded, function(a1139)
                            if S189.v158(a1139) then
                                S189.v11210 = false
                            end
                        end)
                    S189.v8(S189.v2413.MouseButton1Click, function()
                            S189.v1063 = math.max(3, S189.v1063 - 1.5)
                            math.max(3, S189.v1063 - 1.5)
                            S189.v1083()
                        end)
                    S189.v8(S189.v2512.MouseButton1Click, function()
                            S189.v1063 = math.min(24, S189.v1063 + 1.5)
                            math.min(24, S189.v1063 + 1.5)
                            S189.v1083()
                        end)
                    S189.v8(S189.v3010.MouseButton1Click, function()
                            S189.v11110()
                        end)
                    S189.v8(S189.v291[a1120.tabName]:GetPropertyChangedSignal("Visible"), function()
                            if S189.v291[a1120.tabName].Visible then
                                S189.v11110()
                            end
                        end)
                    S189.v11410 = function(a1140)
                            local v1157 = S189.v7410[a1140]
                            local v2135 = S189.v683[a1140]
                            stk0 = not v1157
                            if not v1157 then
                                goto L24
                            end
                            ::L24::
                            if not stk0 then
                                goto L20
                            end
                            do
                                return
                            end
                            do
                                return
                            end
                            ::L20::
                            local tmp96 = S189.v802 == a1140
                            stk0 = tmp96
                            if tmp96 then
                                goto L6
                            end
                            ::L6::
                            v1157.stroke.Enabled = stk0
                            v1157.stroke.Color = S189.v1322
                            if not (S189.v802 == a1140) then
                                goto L10
                            end
                            ::L10::
                            if stk0 then
                                goto L2
                            end
                            ::L2::
                            v1157.stroke.Transparency = stk0
                            if not v2135.fav then
                                goto L16
                            end
                            ::L16::
                            if stk0 then
                                goto L12
                            end
                            ::L12::
                            v1157.fav.Text = stk0
                            if not v2135.fav then
                                goto L14
                            end
                            ::L14::
                            if stk0 then
                                goto L8
                            end
                            ::L8::
                            v1157.fav.TextColor3 = stk0
                            if S189.v802 == a1140 then
                                goto L18
                            end
                            ::L18::
                            v1157.gear.Visible = stk0
                            if not v2135.worn then
                                goto L26
                            end
                            ::L26::
                            if stk0 then
                                goto L4
                            end
                            ::L4::
                            v1157.mainB.Text = stk0
                            if not v2135.worn then
                                goto L22
                            end
                            ::L22::
                            if stk0 then
                                goto L28
                            end
                            ::L28::
                            v1157.mainB.BackgroundColor3 = stk0
                            return
                        end
                    S189.v1158 = function()
                            for v396 in pairs(S189.v7410) do
                                S189.v11410(v396)
                            end
                        end
                    S189.v1163 = function()
                            local tmp97 = S189.v8210 == "all"
                            stk0 = tmp97
                            if not (tmp97) then
                                goto L6
                            end
                            ::L6::
                            if stk0 then
                                goto L2
                            end
                            ::L2::
                            S189.v3510.BackgroundColor3 = stk0
                            if not (S189.v8210 == "fav") then
                                goto L4
                            end
                            ::L4::
                            if stk0 then
                                goto L8
                            end
                            ::L8::
                            S189.v3610.BackgroundColor3 = stk0
                            return
                        end
                    S189.v1173 = function()
                            S189.v2611.Text = (("Terpasang: " .. #S189.v702) .. "  |  Total: ") .. #S189.v693
                        end
                    S189.v1183 = function()
                            local tmp98 = S189.v802
                            stk0 = tmp98
                            if not tmp98 then
                                goto L3
                            end
                            ::L3::
                            local v031 = stk0
                            if not v031 then
                                goto L2
                            end
                            S189.v2810.Text = (("Dipilih: " .. v031.name) .. "\nID ") .. v031.id
                            ::L5::
                            do
                                return
                            end
                            do
                                return
                            end
                            ::L2::
                            S189.v2810.Text = "Belum ada item dipilih.\nTekan Pilih / Pasang pada kartu."
                            goto L5
                        end
                    S189.v1193 = function()
                            local v2136 = {}
                            local v397 = {}
                            for v751, v848 in ipairs(S189.v693) do
                                local v945 = S189.v683[v848]
                                if v945 then
                                    if v945.seed then
                                        v397[#v397 + 1] = v848
                                        goto L6
                                    end
                                    table.insert(v2136, 1, v848)
                                end
                                ::L6::
                            end
                            for v1325, v1425 in ipairs(v397) do
                                v2136[#v2136 + 1] = v1425
                            end
                            return v2136
                        end
                    S189.v1203 = function()
                        local tmp100, v946, tmp99, v753, v849, tmp101
                            local v032 = S189.v8310:lower()
                            local v1159 = 0
                            local v2137, v398, v487 = ipairs(S189.v1193())
                            ::L15::
                            local v577, v666 = v2137(v398, v487)
                            v487 = v577
                            if not v577 then
                                goto L20
                            end
                            v753 = S189.v683[v666]
                            v849 = S189.v7410[v666]
                            stk0 = v753
                            if not v753 then
                                goto L1
                            end
                            ::L1::
                            if not stk0 then
                                goto L22
                            end
                            v946 = true
                            tmp99 = S189.v8210 == "fav"
                            stk0 = tmp99
                            if tmp99 then
                                goto L9
                            end
                            ::L11::
                            if not stk0 then
                                goto L13
                            end
                            v946 = false
                            ::L13::
                            stk0 = v946
                            if not v946 then
                                goto L7
                            end
                            ::L7::
                            if not stk0 then
                                goto L3
                            end
                            tmp100 = v753.name:lower():find(v032, 1, true)
                            stk0 = tmp100
                            if tmp100 then
                                goto L5
                            end
                            ::L5::
                            if stk0 then
                                goto L3
                            end
                            v946 = false
                            ::L3::
                            v849.frame.Visible = v946
                            v849.frame.LayoutOrder = v577
                            if not v946 then
                                goto L22
                            end
                            v1159 = v1159 + 1
                            ::L22::
                            goto L15
                            ::L9::
                            goto L11
                            ::L20::
                            S189.v3710.Text = v1159 .. " item"
                            S189.v482.Visible = v1159 == 0
                            if not (#S189.v693 == 0) then
                                goto L18
                            end
                            S189.v482.Text = "Katalog kosong. Masukkan Asset ID lalu tekan Tambah,\natau tekan Pulihkan Bawaan."
                            ::L24::
                            do
                                return
                            end
                            do
                                return
                            end
                            ::L18::
                            if not (S189.v8210 == "fav") then
                                goto L17
                            end
                            tmp101 = ("Belum ada favorit yang cocok. Tekan " .. utf8.char(9734)) .. " pada kartu untuk menambah."
                            S189.v482.Text = tmp101
                            goto L24
                            ::L17::
                            S189.v482.Text = "Tidak ada item yang cocok dengan pencarian."
                            goto L24
                        end
                    S189.v12110 = function(a1141)
                            a1141.worn = false
                            S189.v983(a1141)
                            local v1160, v2138, v399 = ipairs(S189.v702)
                            ::L1::
                            while true do
                                local v488, v578 = v1160(v2138, v399)
                                v399 = v488
                                if not v488 then
                                    break
                                end
                                if not (v578 == a1141.id) then
                                    goto L1
                                end
                            end
                            ::L5::
                            do
                                return
                            end
                            table.remove(S189.v702, v488)
                            goto L5
                        end
                    S189.v1228 = function(a1142)
                            for v489, v579 in ipairs(S189.v272) do
                                local tmp102 = v579.id == a1142
                                stk0 = tmp102
                                if stk0 then
                                    for v947, v1038 in ipairs(S189.v3272) do
                                        local tmp103 = v1038.side == S189.v027
                                        stk0 = tmp103
                                        if stk0 then
                                            pcall(function()
                                                    v1038.sw:set(false)
                                                end)
                                        end
                                    end
                                end
                            end
                        end
                    S189.v1233 = nil
                    S189.v1243 = nil
                    S189.v1253 = function(a1143)
                            local v1161 = S189.v683[a1143]
                            if not v1161 then
                                return
                            end
                            S189.v802 = a1143
                            S189.v1158()
                            S189.v1183()
                            local tmp104 = S189.v8110
                            stk0 = tmp104
                            if stk0 then
                                S189.v1233(a1143)
                            end
                            S189.v11110()
                            if not v1161.tmpl then
                                task.spawn(function()
                                        if not S189.v9210(v1161) then
                                            goto L2
                                        end
                                        S189.v11110()
                                        ::L3::
                                        do
                                            return
                                        end
                                        do
                                            return
                                        end
                                        ::L2::
                                        S189.v189(("Gagal memuat " .. v1161.name) .. " (bukan aksesori / tidak tersedia)", S189.v1222)
                                        goto L3
                                    end)
                            end
                        end
                    S189.v1263 = function(a1144)
                            local v1164 = S189.v683[a1144]
                            stk0 = not v1164
                            if not v1164 then
                                goto L2
                            end
                            ::L2::
                            if not stk0 then
                                goto L4
                            end
                            do
                                return
                            end
                            do
                                return
                            end
                            ::L4::
                            if not v1164.worn then
                                goto L6
                            end
                            S189.v12110(v1164)
                            S189.v11410(a1144)
                            S189.v1173()
                            S189.v11110()
                            S189.v189("Dilepas: " .. v1164.name, S189.v1202)
                            do
                                return
                            end
                            do
                                return
                            end
                            ::L6::
                            v1164.busy = true
                            task.spawn(function()
                                    local v033 = S189.v9210(v1164)
                                    v1164.busy = false
                                    if S189.v683[a1144] == v1164 then
                                        goto L6
                                    end
                                    do
                                        return
                                    end
                                    do
                                        return
                                    end
                                    ::L6::
                                    if v033 then
                                        goto L12
                                    end
                                    S189.v189(("Gagal memuat " .. v1164.name) .. " (bukan aksesori / tidak tersedia)", S189.v1222)
                                    do
                                        return
                                    end
                                    do
                                        return
                                    end
                                    ::L12::
                                    if not v1164.worn then
                                        goto L10
                                    end
                                    do
                                        return
                                    end
                                    do
                                        return
                                    end
                                    ::L10::
                                    local tmp105 = S189.v027 == "fr"
                                    stk0 = tmp105
                                    if not (tmp105) then
                                        goto L8
                                    end
                                    ::L8::
                                    if not stk0 then
                                        goto L14
                                    end
                                    S189.v189("Set target dulu di tab Teman", S189.v1222)
                                    do
                                        return
                                    end
                                    do
                                        return
                                    end
                                    ::L14::
                                    local v1165 = S189.v953()
                                    stk0 = not v1165
                                    if not v1165 then
                                        goto L4
                                    end
                                    ::L4::
                                    if not stk0 then
                                        goto L2
                                    end
                                    S189.v189("Karakter belum siap", S189.v1222)
                                    do
                                        return
                                    end
                                    do
                                        return
                                    end
                                    ::L2::
                                    S189.v1228(a1144)
                                    v1164.worn = true
                                    local tmp106 = a1144
                                    S189.v702[#S189.v702 + 1] = tmp106
                                    S189.v10110(v1164)
                                    if v1164.model then
                                        goto L16
                                    end
                                    S189.v12110(v1164)
                                    S189.v11410(a1144)
                                    S189.v1173()
                                    S189.v189("Gagal memasang " .. v1164.name, S189.v1222)
                                    do
                                        return
                                    end
                                    do
                                        return
                                    end
                                    ::L16::
                                    S189.v11410(a1144)
                                    S189.v1173()
                                    S189.v11110()
                                    S189.v189("Terpasang: " .. v1164.name, S189.v1242)
                                    return
                                end)
                            return
                        end
                    S189.v1273 = nil
                    S189.v1283 = function(a1145)
                            S189.v683[a1145.id] = a1145
                            local tmp107 = a1145.id
                            S189.v693[#S189.v693 + 1] = tmp107
                            S189.v1273(a1145)
                        end
                    S189.v1293 = function(a1146)
                            local v1166 = S189.v683[a1146]
                            if not v1166 then
                                return
                            end
                            if v1166.worn then
                                S189.v12110(v1166)
                            end
                            local v2139 = S189.v7410[a1146]
                            if v2139 then
                                v2139.frame:Destroy()
                            end
                            S189.v7410[a1146] = nil
                            S189.v683[a1146] = nil
                            local v3100, v490, v580 = ipairs(S189.v693)
                            ::L8::
                            while true do
                                local v667, v754 = v3100(v490, v580)
                                v580 = v667
                                if not v667 then
                                    break
                                end
                                if not (v754 == a1146) then
                                    goto L8
                                end
                            end
                            ::L15::
                            if v1166.seed then
                                S189.v853.removed[tostring(a1146)] = true
                            end
                            if S189.v802 == a1146 then
                                S189.v802 = nil
                                S189.v1183()
                            end
                            if S189.v8110 == a1146 then
                                S189.v1243()
                            end
                            S189.v1173()
                            S189.v1203()
                            S189.v893()
                            S189.v11110()
                            S189.v189("Dihapus dari katalog: " .. v1166.name, S189.v1202)
                            do
                                return
                            end
                            table.remove(S189.v693, v667)
                            goto L15
                        end
                    S189.v1273 = function(a1147)
                            local v1167 = a1147.id
                            local v3101 = {BackgroundColor3 = S189.v1162}
                            local v2140 = S189.v150("Frame", v3101, S189.v4410)
                            S189.v151(v2140, 10)
                            local v491 = S189.v1532(v2140, S189.v1322, 2, 0)
                            v491.Enabled = false
                            local v668 = {}
                            v668.Position = UDim2.fromOffset(17, 5)
                            v668.Size = UDim2.fromOffset(68, 68)
                            v668.BackgroundColor3 = S189.v1142
                            local v581 = S189.v150("Frame", v668, v2140)
                            S189.v151(v581, 8)
                            local v755 = {}
                            v755.Size = UDim2.fromScale(1, 1)
                            v755.BackgroundTransparency = 1
                            v755.Image = S189.v743(v1167)
                            v755.ScaleType = Enum.ScaleType.Fit
                            S189.v150("ImageLabel", v755, v581)
                            local v850 = {}
                            v850.Position = UDim2.fromOffset(4, 76)
                            v850.Size = UDim2.fromOffset(94, 24)
                            v850.TextWrapped = true
                            v850.TextTruncate = Enum.TextTruncate.AtEnd
                            v850.TextYAlignment = Enum.TextYAlignment.Top
                            v850.TextXAlignment = Enum.TextXAlignment.Center
                            S189.v1552(v2140, a1147.name, 10, S189.v1212, v850)
                            local v948 = S189.v1224(v2140, utf8.char(9734), UDim2.fromOffset(4, 4), UDim2.fromOffset(22, 22), nil, 13)
                            local v1039 = S189.v1224(v2140, utf8.char(9881), UDim2.fromOffset(76, 4), UDim2.fromOffset(22, 22), nil, 13)
                            local v1168 = S189.v1224(v2140, "Pasang", UDim2.fromOffset(4, 102), UDim2.fromOffset(94, 22))
                            local v1229 = S189.v1224(v2140, "Pilih", UDim2.fromOffset(4, 127), UDim2.fromOffset(45, 19), nil, 10)
                            local v1326 = S189.v1224(v2140, "Hapus", UDim2.fromOffset(53, 127), UDim2.fromOffset(45, 19), "danger", 10)
                            local v1426 = {
                                frame = v2140,
                                stroke = v491,
                                fav = v948,
                                gear = v1039,
                                mainB = v1168
                            }
                            S189.v7410[v1167] = v1426
                            S189.v8(v1168.MouseButton1Click, function()
                                    S189.v1263(v1167)
                                end)
                            S189.v8(v1229.MouseButton1Click, function()
                                    S189.v1253(v1167)
                                end)
                            S189.v8(v1326.MouseButton1Click, function()
                                    S189.v1293(v1167)
                                end)
                            S189.v8(v948.MouseButton1Click, function()
                                    local v034 = S189.v683[v1167]
                                    if v034 then
                                        goto L4
                                    end
                                    do
                                        return
                                    end
                                    do
                                        return
                                    end
                                    ::L4::
                                    v034.fav = not v034.fav
                                    S189.v11410(v1167)
                                    S189.v1203()
                                    S189.v893()
                                    stk0 = S189.v189
                                    local tmp108 = v034.fav
                                    stk1 = tmp108
                                    if not tmp108 then
                                        goto L2
                                    end
                                    ::L2::
                                    if stk1 then
                                        goto L6
                                    end
                                    ::L6::
                                    stk0(stk1, S189.v1202)
                                    return
                                end)
                            S189.v8(v1039.MouseButton1Click, function()
                                    S189.v1253(v1167)
                                    S189.v1233(v1167)
                                end)
                            S189.v11410(v1167)
                        end
                    S189.v13110 = {}
                    S189.v13110.Size = UDim2.fromScale(1, 1)
                    S189.v13110.BackgroundColor3 = S189.v1142
                    S189.v13110.BackgroundTransparency = 0.12
                    S189.v13110.Visible = false
                    S189.v13110.Active = true
                    S189.v13110.ZIndex = 30
                    S189.v1303 = S189.v150("Frame", S189.v13110, S189.v1140)
                    S189.v151(S189.v1303, 14)
                    S189.v1333 = {}
                    S189.v1333.AnchorPoint = Vector2.new(0.5, 0.5)
                    S189.v1333.Position = UDim2.fromScale(0.5, 0.5)
                    S189.v1333.Size = UDim2.new(1, -16, 1, -16)
                    S189.v1333.BackgroundColor3 = S189.v1152
                    S189.v1327 = S189.v150("Frame", S189.v1333, S189.v1303)
                    S189.v151(S189.v1327, 14)
                    S189.v156(S189.v1532(S189.v1327, S189.v1322, 1, 0.3), "Color")
                    S189.v1353 = {}
                    S189.v1353.Position = UDim2.fromOffset(16, 10)
                    S189.v1353.Size = UDim2.new(1, -64, 0, 22)
                    S189.v1353.Font = S189.v1132
                    S189.v1353.TextTruncate = Enum.TextTruncate.AtEnd
                    S189.v1343 = S189.v1552(S189.v1327, "Atur aksesori", 15, S189.v1212, S189.v1353)
                    S189.v1363 = {}
                    S189.v1363.Position = UDim2.fromOffset(16, 32)
                    S189.v1363.Size = UDim2.new(1, -32, 0, 14)
                    S189.v1552(S189.v1327, "Hanya mengubah aksesori ini, bukan ukuran karakter.", 10, S189.v1202, S189.v1363)
                    S189.v1373 = S189.v1224(S189.v1327, "X", UDim2.new(1, -40, 0, 8), UDim2.fromOffset(28, 24), "danger")
                    S189.v1383 = S189.v1224(S189.v1327, "Reset", UDim2.fromOffset(16, 312), UDim2.new(0.5, -22, 0, 30), nil, 12)
                    S189.v1393 = S189.v1224(S189.v1327, "Tutup", UDim2.new(0.5, 6, 0, 312), UDim2.new(0.5, -22, 0, 30), "accent", 12)
                    S189.v1403 = function()
                            local tmp109 = S189.v8110
                            stk0 = tmp109
                            if not tmp109 then
                                goto L7
                            end
                            ::L7::
                            local v035 = stk0
                            local v1169, v2141, v3103 = pairs(S189.v756)
                            ::L5::
                            local v493, v584 = v1169(v2141, v3103)
                            v3103 = v493
                            if not v493 then
                                goto L9
                            end
                            stk0 = v035
                            if not v035 then
                                goto L3
                            end
                            ::L3::
                            if stk0 then
                                goto L2
                            end
                            ::L2::
                            v584.Text = stk0
                            goto L5
                            ::L9::
                            return
                        end
                    S189.v1233 = function(a1148)
                            stk0 = a1148
                            local v1170 = stk0
                            if not v1170 then
                                S189.v189("Pilih aksesori dulu", S189.v1222)
                                return
                            end
                            S189.v8110 = a1148
                            S189.v1343.Text = "Atur: " .. v1170.name
                            S189.v1403()
                            S189.v1303.Visible = true
                        end
                    S189.v1243 = function()
                            S189.v8110 = nil
                            S189.v1303.Visible = false
                        end
                    S189.v14111 = function(a1149, a261)
                            local tmp110 = S189.v8110
                            stk0 = tmp110
                            local v2143 = stk0
                            if not v2143 then
                                return
                            end
                            local a261 = S189.v673(a1149, a261)
                            S189.v673(a1149, a261)
                            v2143.cfg[a1149] = a261
                            S189.v756[a1149].Text = tostring(a261)
                            tostring(a261)
                            if v2143.worn then
                                S189.v10110(v2143)
                            end
                            S189.v11110()
                            S189.v893()
                        end
                    S189.v1427, S189.v1433, S189.v1443 = ipairs(S189.v502)
                    ::L26::
                    S189.v1453, S189.v1462 = S189.v1427(S189.v1433, S189.v1443)
                    S189.v1443 = S189.v1453
                    if not S189.v1453 then
                        goto L58
                    end
                    S189.v1472 = S189.v1462[1]
                    S189.v1482 = S189.v1462[2]
                    S189.v1492 = S189.v1462[3]
                    S189.v1502 = 54 + (S189.v1453 - 1) * 36
                    S189.v15110 = {}
                    S189.v15110.Position = UDim2.fromOffset(16, S189.v1502)
                    S189.v15110.Size = UDim2.fromOffset(90, 28)
                    S189.v1552(S189.v1327, S189.v1482, 12, S189.v1212, S189.v15110)
                    S189.v1524 = S189.v1224(S189.v1327, "-", UDim2.fromOffset(112, S189.v1502), UDim2.fromOffset(52, 28), nil, 14)
                    S189.v1533, S189.v1543 = S189.v1320(S189.v1327, "0", UDim2.fromOffset(170, S189.v1502), UDim2.fromOffset(150, 28))
                    S189.v1533.TextXAlignment = Enum.TextXAlignment.Center
                    S189.v756[S189.v1472] = S189.v1533
                    S189.v1553 = S189.v1224(S189.v1327, "+", UDim2.fromOffset(326, S189.v1502), UDim2.fromOffset(52, 28), nil, 14)
                    S189.v1420(S189.v1524, function()
                            local tmp111 = S189.v8110
                            stk0 = tmp111
                            local v036 = stk0
                            if v036 then
                                S189.v14111(S189.v1472, v036.cfg[S189.v1472] - S189.v1492)
                            end
                        end)
                    S189.v1420(S189.v1553, function()
                            local tmp112 = S189.v8110
                            stk0 = tmp112
                            local v037 = stk0
                            if v037 then
                                S189.v14111(S189.v1472, v037.cfg[S189.v1472] + S189.v1492)
                            end
                        end)
                    S189.v8(S189.v1533.FocusLost, function()
                            local v038 = tonumber(S189.v1533.Text)
                            if not v038 then
                                goto L2
                            end
                            S189.v14111(S189.v1472, v038)
                            ::L3::
                            do
                                return
                            end
                            do
                                return
                            end
                            ::L2::
                            S189.v1403()
                            goto L3
                        end)
                    goto L26
                    ::L58::
                    S189.v8(S189.v1383.MouseButton1Click, function()
                            local tmp113 = S189.v8110
                            stk0 = tmp113
                            local v039 = stk0
                            if not v039 then
                                return
                            end
                            v039.cfg = S189.v663()
                            S189.v663()
                            S189.v1403()
                            if v039.worn then
                                S189.v10110(v039)
                            end
                            S189.v11110()
                            S189.v893()
                            S189.v189("Pengaturan direset", S189.v1202)
                        end)
                    S189.v8(S189.v1393.MouseButton1Click, S189.v1243)
                    S189.v8(S189.v1373.MouseButton1Click, S189.v1243)
                    S189.v1562 = function(a1150)
                            stk0 = a1150
                            if a1150 then
                                goto L7
                            end
                            ::L7::
                            local a1150 = stk0
                            if a1150:match("catalog/(%d+)") then
                                goto L4
                            end
                            if a1150:match("library/(%d+)") then
                                goto L4
                            end
                            if a1150:match("rbxassetid://(%d+)") then
                                goto L4
                            end
                            if a1150:match("[?&]id=(%d+)") then
                                goto L4
                            end
                            ::L4::
                            local v1171 = stk0
                            if not v1171 then
                                goto L13
                            end
                            ::L13::
                            local v2144 = stk0
                            if not v2144 then
                                goto L2
                            end
                            if not (1 <= v2144) then
                                goto L2
                            end
                            ::L2::
                            if not stk0 then
                                goto L9
                            end
                            do
                                return math.floor(v2144)
                            end
                            do
                                return
                            end
                            ::L9::
                            return nil
                        end
                    S189.v1573 = false
                    S189.v1582 = 0
                    S189.v1592 = function(a1151)
                            local v1174 = S189.v1562(a1151)
                            if v1174 then
                                goto L4
                            end
                            S189.v189("ID tidak valid. Isi angka Asset ID atau link item", S189.v1222)
                            do
                                return
                            end
                            do
                                return
                            end
                            ::L4::
                            if not S189.v683[v1174] then
                                goto L6
                            end
                            S189.v1253(v1174)
                            S189.v189("Sudah ada di katalog", S189.v1202)
                            do
                                return
                            end
                            do
                                return
                            end
                            ::L6::
                            if not (S189.v386 <= #S189.v693) then
                                goto L2
                            end
                            S189.v189(("Katalog penuh (maks " .. S189.v386) .. " item)", S189.v1222)
                            do
                                return
                            end
                            do
                                return
                            end
                            ::L2::
                            local tmp114 = S189.v1573
                            stk0 = tmp114
                            if tmp114 then
                                goto L8
                            end
                            ::L8::
                            if not stk0 then
                                goto L10
                            end
                            S189.v189("Tunggu sebentar...", S189.v1202)
                            do
                                return
                            end
                            do
                                return
                            end
                            ::L10::
                            S189.v1573 = true
                            S189.v1582 = tick()
                            tick()
                            S189.v189(("Memuat " .. v1174) .. "...", S189.v1202)
                            task.spawn(function()
                                    local v1175 = {id = v1174, name = "ID " .. v1174, fav = false}
                                    v1175.cfg = S189.v663()
                                    local v2145 = S189.v9310(v1174)
                                    stk0 = v2145
                                    if not v2145 then
                                        goto L4
                                    end
                                    if not v2145.Name then
                                        goto L4
                                    end
                                    ::L4::
                                    if not stk0 then
                                        goto L23
                                    end
                                    v1175.name = tostring(v2145.Name):sub(1, 60)
                                    tostring(v2145.Name):sub(1, 60)
                                    ::L23::
                                    stk0 = v2145
                                    if not v2145 then
                                        goto L20
                                    end
                                    ::L20::
                                    local v3104 = stk0
                                    if not v3104 then
                                        goto L6
                                    end
                                    ::L6::
                                    if not stk0 then
                                        goto L27
                                    end
                                    S189.v1573 = false
                                    stk0 = 64 <= v3104
                                    if not (64 <= v3104) then
                                        goto L12
                                    end
                                    ::L12::
                                    if not stk0 then
                                        goto L2
                                    end
                                    S189.v189("Aksesori layered belum didukung: " .. v1175.name, S189.v1222)
                                    ::L3::
                                    do
                                        return
                                    end
                                    do
                                        return
                                    end
                                    ::L2::
                                    S189.v189(((("ID " .. v1174) .. " bukan aksesori (tipe ") .. v3104) .. ")", S189.v1222)
                                    goto L3
                                    ::L27::
                                    local v494, v586 = pcall(S189.v9210, v1175)
                                    S189.v1573 = false
                                    stk0 = not v494
                                    if not v494 then
                                        goto L10
                                    end
                                    ::L10::
                                    if not stk0 then
                                        goto L25
                                    end
                                    S189.v189(("Gagal memuat ID " .. v1174) .. " (bukan aksesori / tidak tersedia)", S189.v1222)
                                    do
                                        return
                                    end
                                    do
                                        return
                                    end
                                    ::L25::
                                    local tmp115 = S189.v683[v1174]
                                    stk0 = tmp115
                                    if tmp115 then
                                        goto L8
                                    end
                                    ::L8::
                                    if not stk0 then
                                        goto L17
                                    end
                                    do
                                        return
                                    end
                                    do
                                        return
                                    end
                                    ::L17::
                                    local v669, v757, v851 = ipairs(S189.v272)
                                    ::L14::
                                    local v949, v1040 = v669(v757, v851)
                                    v851 = v949
                                    if not v949 then
                                        goto L29
                                    end
                                    if not (v1040.id == v1174) then
                                        goto L18
                                    end
                                    v1175.seed = true
                                    ::L29::
                                    S189.v853.removed[tostring(v1174)] = nil
                                    S189.v1283(v1175)
                                    S189.v1203()
                                    S189.v1253(v1174)
                                    S189.v893()
                                    S189.v4110.Text = ""
                                    S189.v189("Ditambahkan: " .. v1175.name, S189.v1242)
                                    do
                                        return
                                    end
                                    do
                                        return
                                    end
                                    ::L18::
                                    goto L14
                                end)
                            return
                        end
                    S189.v8(S189.v4310.MouseButton1Click, function()
                            S189.v1592(S189.v4110.Text)
                        end)
                    S189.v8(S189.v4110.FocusLost, function(a1152)
                            if a1152 then
                                S189.v1592(S189.v4110.Text)
                            end
                        end)
                    S189.v1603 = function(a1153)
                            S189.v8210 = a1153
                            S189.v1163()
                            S189.v1203()
                        end
                    S189.v8(S189.v3510.MouseButton1Click, function()
                            S189.v1603("all")
                        end)
                    S189.v8(S189.v3610.MouseButton1Click, function()
                            S189.v1603("fav")
                        end)
                    S189.v8(S189.v392:GetPropertyChangedSignal("Text"), function()
                            S189.v8310 = S189.v392.Text
                            S189.v1203()
                        end)
                    S189.v16110 = function()
                            local v1177 = {}
                            for v587, v670 in ipairs(S189.v702) do
                                v1177[#v1177 + 1] = v670
                            end
                            for v1041, v1176 in ipairs(v1177) do
                                local v1230 = S189.v683[v1176]
                                if v1230 then
                                    S189.v12110(v1230)
                                    S189.v11410(v1176)
                                end
                            end
                            S189.v1173()
                            S189.v11110()
                        end
                    S189.v8(S189.v3110.MouseButton1Click, function()
                            S189.v16110()
                            S189.v189("Semua aksesori katalog dilepas", S189.v1202)
                        end)
                    S189.v1633 = {}
                    S189.v1643, S189.v1653, S189.v1662 = ipairs(S189.v853.items)
                    ::L39::
                    S189.v1672, S189.v1682 = S189.v1643(S189.v1653, S189.v1662)
                    S189.v1662 = S189.v1672
                    if not S189.v1672 then
                        goto L12
                    end
                    if not (type(S189.v1682) == "table") then
                        goto L36
                    end
                    S189.v1692 = tonumber(S189.v1682.id)
                    if not S189.v1692 then
                        goto L36
                    end
                    S189.v1624[S189.v1692] = S189.v1682
                    ::L36::
                    goto L39
                    ::L12::
                    S189.v1702 = function(a1154)
                            local v1178 = S189.v663()
                            local tmp116 = type(a1154) == "table"
                            stk0 = tmp116
                            if stk0 then
                                for v588 in pairs(v1178) do
                                    local v671 = tonumber(a1154.cfg[v588])
                                    if v671 then
                                        local tmp117 = S189.v673(v588, v671)
                                        v1178[v588] = tmp117
                                    end
                                end
                            end
                            return v1178
                        end
                    S189.v1724 = {}
                    S189.v1733, S189.v1742, S189.v1752 = ipairs(S189.v272)
                    ::L2::
                    S189.v1762, S189.v1772 = S189.v1733(S189.v1742, S189.v1752)
                    S189.v1752 = S189.v1762
                    if not S189.v1762 then
                        goto L23
                    end
                    if not (type(S189.v1772.id) == "number") then
                        goto L28
                    end
                    S189.v17110[#S189.v17110 + 1] = S189.v1772
                    ::L28::
                    goto L2
                    ::L23::
                    S189.v1782, S189.v1792, S189.v1803 = ipairs(S189.v17110)
                    ::L15::
                    S189.v18110, S189.v1823 = S189.v1782(S189.v1792, S189.v1803)
                    S189.v1803 = S189.v18110
                    if not S189.v18110 then
                        goto L31
                    end
                    S189.tmp118 = not S189.v853.removed[tostring(S189.v1823.id)]
                    S189.stk0 = S189.tmp118
                    if S189.v853.removed[tostring(S189.v1823.id)] then
                        goto L5
                    end
                    ::L5::
                    if not stk0 then
                        goto L50
                    end
                    S189.v1833 = S189.v1624[S189.v1823.id]
                    S189.v1842 = {id = S189.v1823.id, name = S189.v1823.name, seed = true}
                    S189.stk0 = S189.v1283
                    S189.stk1 = S189.v1833
                    if not S189.v1833 then
                        goto L24
                    end
                    ::L24::
                    if stk1 then
                        goto L13
                    end
                    ::L13::
                    S189.v1842.fav = stk1
                    S189.v1842.cfg = S189.v1702(S189.v1833)
                    stk0(S189.v1842)
                    ::L50::
                    goto L15
                    ::L31::
                    S189.v1852, S189.v1862, S189.v1872 = ipairs(S189.v853.items)
                    ::L10::
                    S189.v1882, S189.v1892 = S189.v1852(S189.v1862, S189.v1872)
                    S189.v1872 = S189.v1882
                    if not S189.v1882 then
                        goto L55
                    end
                    if type(S189.v1892) == "table" then
                        goto L4
                    end
                    ::L20::
                    goto L10
                    ::L4::
                    S189.v1902 = tonumber(S189.v1892.id)
                    S189.stk0 = S189.v1902
                    if not S189.v1902 then
                        goto L37
                    end
                    if 1 <= S189.v1902 then
                        goto L32
                    end
                    ::L37::
                    if not stk0 then
                        goto L20
                    end
                    S189.v1918 = false
                    S189.v1923, S189.v1933, S189.v1942 = ipairs(S189.v17110)
                    ::L8::
                    S189.v1952, S189.v1962 = S189.v1923(S189.v1933, S189.v1942)
                    S189.v1942 = S189.v1952
                    if not S189.v1952 then
                        goto L29
                    end
                    if not (S189.v1962.id == S189.v1902) then
                        goto L7
                    end
                    S189.v1918 = true
                    ::L29::
                    if S189.v1918 then
                        goto L20
                    end
                    S189.v1972 = {id = S189.v1902}
                    S189.stk0 = S189.v1283
                    S189.stk1 = tostring
                    S189.tmp119 = S189.v1892.name
                    S189.stk2 = S189.tmp119
                    if S189.tmp119 then
                        goto L34
                    end
                    ::L34::
                    S189.v1972.name = stk1(stk2):sub(1, 60)
                    S189.v1972.fav = S189.v1892.fav == true
                    S189.v1972.cfg = S189.v1702(S189.v1892)
                    stk0(S189.v1972)
                    goto L20
                    ::L7::
                    goto L8
                    ::L32::
                    if S189.v683[S189.v1902] then
                        goto L37
                    end
                    goto L37
                    ::L55::
                    S189.v8(S189.v3210.MouseButton1Click, function()
                        local v674
                            local v040 = 0
                            local v1179, v2146, v3105 = ipairs(S189.v17110)
                            ::L2::
                            local v495, v589 = v1179(v2146, v3105)
                            v3105 = v495
                            if not v495 then
                                goto L9
                            end
                            if not S189.v683[v589.id] then
                                goto L1
                            end
                            ::L8::
                            goto L2
                            ::L1::
                            S189.v853.removed[tostring(v589.id)] = nil
                            v674 = {
                                id = v589.id,
                                name = v589.name,
                                seed = true,
                                fav = false
                            }
                            v674.cfg = S189.v663()
                            S189.v1283(v674)
                            v040 = v040 + 1
                            goto L8
                            ::L9::
                            S189.v1203()
                            S189.v893()
                            stk0 = S189.v189
                            stk1 = 0 < v040
                            if not (0 < v040) then
                                goto L6
                            end
                            ::L6::
                            if stk1 then
                                goto L11
                            end
                            ::L11::
                            if not (0 < v040) then
                                goto L4
                            end
                            ::L4::
                            if stk2 then
                                goto L13
                            end
                            ::L13::
                            stk0(stk1, stk2)
                            return
                        end)
                    S189.v1982 = 0
                    S189.v8(S189.RunService.Heartbeat, function()
                        local v950, v1525, v1625, v1725, v1821, v1919, v2018, tmp120, v1044, v1181, v1231, v1328, v1428, v2148, v2219, v2319, v2416, v2515, v2614, v854
                            local v041 = tick()
                            if not (v041 - S189.v1982 < 0.4) then
                                goto L33
                            end
                            do
                                return
                            end
                            do
                                return
                            end
                            ::L33::
                            S189.v1982 = v041
                            if not (#S189.v702 == 0) then
                                goto L18
                            end
                            do
                                return
                            end
                            do
                                return
                            end
                            ::L18::
                            local v1180 = S189.v993()
                            if not (#v1180 == 0) then
                                goto L39
                            end
                            do
                                return
                            end
                            do
                                return
                            end
                            ::L39::
                            local v2147 = false
                            local v3106, v496, v590 = ipairs(S189.v702)
                            ::L29::
                            local v675, v758 = v3106(v496, v590)
                            v590 = v675
                            if not v675 then
                                goto L26
                            end
                            v854 = S189.v683[v758]
                            stk0 = v854
                            if v854 then
                                goto L20
                            end
                            ::L31::
                            if not stk0 then
                                goto L38
                            end
                            tmp120 = v854.extras
                            stk0 = tmp120
                            if tmp120 then
                                goto L35
                            end
                            v950 = {}
                            ::L35::
                            v854.extras = stk0
                            v1044, v1181, v1231 = pairs(v854.extras)
                            ::L11::
                            v1328, v1428 = v1044(v1181, v1231)
                            v1231 = v1328
                            if not v1328 then
                                goto L23
                            end
                            v1525 = false
                            v1625, v1725, v1821 = ipairs(v1180)
                            ::L24::
                            v1919, v2018 = v1625(v1725, v1821)
                            v1821 = v1919
                            if not v1919 then
                                goto L16
                            end
                            if v2018 == v1328 then
                                goto L9
                            end
                            goto L24
                            ::L9::
                            v1525 = true
                            ::L16::
                            stk0 = not v1525
                            if not v1525 then
                                goto L4
                            end
                            ::L4::
                            if not stk0 then
                                goto L8
                            end
                            pcall(function()
                                    v1428.model:Destroy()
                                end)
                            v854.extras[v1328] = nil
                            if not (v854.model == v1428.model) then
                                goto L8
                            end
                            v854.model = nil
                            v854.part0 = nil
                            ::L8::
                            goto L11
                            ::L23::
                            v2148, v2219, v2319 = ipairs(v1180)
                            ::L2::
                            v2416, v2515 = v2148(v2219, v2319)
                            v2319 = v2416
                            if not v2416 then
                                goto L38
                            end
                            v2614 = v854.extras[v2515]
                            stk0 = v2614
                            if v2614 then
                                goto L10
                            end
                            ::L36::
                            if stk0 then
                                goto L21
                            end
                            if not v2614 then
                                goto L6
                            end
                            pcall(function()
                                    v2614.model:Destroy()
                                end)
                            v854.extras[v2515] = nil
                            ::L6::
                            if not S189.v1002(v854, v2515) then
                                goto L21
                            end
                            v2147 = true
                            ::L21::
                            goto L2
                            ::L10::
                            if not v2614.model.Parent then
                                goto L36
                            end
                            if not v2614.part0 then
                                goto L36
                            end
                            goto L36
                            ::L38::
                            goto L29
                            ::L20::
                            if not v854.worn then
                                goto L31
                            end
                            goto L31
                            ::L26::
                            if not v2147 then
                                goto L42
                            end
                            S189.v11110()
                            ::L42::
                            return
                        end)
                    S189.v1992 = function()
                            for v3107, v497 in pairs(S189.v683) do
                                v497.worn = false
                                S189.v983(v497)
                            end
                            local v591 = {}
                            S189.v702 = v591
                        end
                    S189.v4210["catWorn_" .. S189.v027] = function()
                            local v1185 = {}
                            for v595, v677 in ipairs(S189.v702) do
                                v1185[#v1185 + 1] = v677
                            end
                            return v1185
                        end
                    S189.v4210["catWear_" .. S189.v027] = function(a1156)
                            S189.v16110()
                            local v1187 = 0
                            for v597, v679 in ipairs(a1156) do
                                local v760 = S189.v683[v679]
                                if v760 then
                                    v1187 = v1187 + 1
                                    if not v760.worn then
                                        S189.v1263(v679)
                                    end
                                end
                            end
                            return v1187
                        end
                    if not (S189.v027 == "me") then
                        goto L14
                    end
                    S189.v4210.catUnwearId = function(a1157)
                            local v1188 = S189.v683[a1157]
                            stk0 = v1188
                            if stk0 then
                                S189.v12110(v1188)
                                S189.v11410(a1157)
                                S189.v1173()
                                S189.v11110()
                            end
                        end
                    S189.v4210.catClear = function()
                            S189.v16110()
                        end
                    S189.v4210.catClean = S189.v1992
                    ::L59::
                    table.insert(S189.v1342, function()
                            S189.v1163()
                            S189.v1158()
                        end)
                    S189.v1163()
                    S189.v1173()
                    S189.v1183()
                    S189.v1203()
                    do
                        return
                    end
                    do
                        return
                    end
                    ::L14::
                    S189.v4210.catFrClear = function()
                            S189.v16110()
                        end
                    S189.v4210.catFrClean = S189.v1992
                    S189.v4210.catFrPreview = function()
                            S189.v11110()
                        end
                    goto L59
                end, function(a1158)
                    warn("[DZ Delux] Katalog gagal dimuat: " .. tostring(a1158))
                end)
        end
    S.v3862 = {side = "me", tabName = "Accessories", storeKey = "catalog"}
    S.v3862.getPlr = function()
            return S.v5
        end
    S.v3852(S.v3862)
    S.v146 = function()
            local tmp121 = S.v562(S.v552(S.v5))
            stk0 = tmp121
            if tmp121 then
                goto L3
            end
            ::L3::
            local v042 = stk0
            local v1189 = S.v14110.main
            if not v1189 then
                goto L8
            end
            v1189.Text = ("Rig terdeteksi: %s  -  Korblox & Headless otomatis cocok"):format(v042)
            ("Rig terdeteksi: %s  -  Korblox & Headless otomatis cocok"):format(v042)
            stk0 = not (v042 == "?")
            if not (v042 == "?") then
                goto L2
            end
            ::L6::
            if stk0 then
                goto L5
            end
            ::L5::
            v1189.TextColor3 = stk0
            ::L8::
            do
                return
            end
            do
                return
            end
            ::L2::
            goto L6
        end
    S.v3872 = S.v3182("Teman", 4, "user")
    S.v3882 = S.v291["Teman"]
    S.v3902 = {
        Position = S.v3882.Position,
        Size = S.v3882.Size,
        BackgroundTransparency = 1,
        Visible = false
    }
    S.v3892 = S.v150("Frame", S.v3902, S.v275)
    S.v3872.Parent = S.v3892
    S.v3882:Destroy()
    S.v291["Teman"] = S.v3892
    S.v3222(S.v3872, "Target", 1)
    S.v3922 = {}
    S.v3922.Size = UDim2.new(1, -8, 0, 92)
    S.v3922.BackgroundTransparency = 1
    S.v3922.LayoutOrder = 2
    S.v3922.ZIndex = 3
    S.v3912 = S.v150("Frame", S.v3922, S.v3872)
    S.v3932 = {}
    S.v3932.Position = UDim2.fromOffset(8, 4)
    S.v3932.Size = UDim2.new(1, -16, 0, 18)
    S.v3932.BackgroundTransparency = 1
    S.v3932.Text = "Target Teman"
    S.v3932.Font = S.v1122
    S.v3932.TextSize = 14
    S.v3932.TextColor3 = S.v1212
    S.v3932.TextXAlignment = Enum.TextXAlignment.Left
    S.v3932.ZIndex = 4
    S.v150("TextLabel", S.v3932, S.v3912)
    S.v3952 = {}
    S.v3952.Position = UDim2.fromOffset(8, 28)
    S.v3952.Size = UDim2.new(1, -108, 0, 32)
    S.v3952.BackgroundColor3 = S.v1152
    S.v3952.BackgroundTransparency = 0.35
    S.v3952.Text = ""
    S.v3952.PlaceholderText = "Username / display name..."
    S.v3952.PlaceholderColor3 = S.v1202
    S.v3952.TextColor3 = S.v1212
    S.v3952.Font = S.v1122
    S.v3952.TextSize = 13
    S.v3952.ClearTextOnFocus = false
    S.v3952.TextXAlignment = Enum.TextXAlignment.Left
    S.v3952.ZIndex = 5
    S.v3942 = S.v150("TextBox", S.v3952, S.v3912)
    S.v1522(S.v3942)
    S.v3962 = {Thickness = 1, Color = S.v1212, Transparency = 0.8}
    S.v150("UIStroke", S.v3962, S.v3942)
    S.v3972 = {}
    S.v3972.PaddingLeft = UDim.new(0, 14)
    S.v3972.PaddingRight = UDim.new(0, 14)
    S.v150("UIPadding", S.v3972, S.v3942)
    S.v3992 = {}
    S.v3992.AnchorPoint = Vector2.new(1, 0)
    S.v3992.Position = UDim2.new(1, -12, 0, 28)
    S.v3992.Size = UDim2.fromOffset(80, 32)
    S.v3992.Text = "Set"
    S.v3992.Font = S.v1122
    S.v3992.TextSize = 13
    S.v3992.TextColor3 = S.v1212
    S.v3992.AutoButtonColor = false
    S.v3992.ZIndex = 5
    S.v3982 = S.v150("TextButton", S.v3992, S.v3912)
    S.v1522(S.v3982)
    S.v156(S.v3982, "BackgroundColor3")
    S.v401 = {}
    S.v401.Position = UDim2.fromOffset(8, 66)
    S.v401.Size = UDim2.new(1, -16, 0, 16)
    S.v401.BackgroundTransparency = 1
    S.v401.Text = "Belum ada target"
    S.v401.Font = S.v1122
    S.v401.TextSize = 12
    S.v401.TextColor3 = S.v1202
    S.v401.TextXAlignment = Enum.TextXAlignment.Left
    S.v401.TextTruncate = Enum.TextTruncate.AtEnd
    S.v401.ZIndex = 4
    S.v400 = S.v150("TextLabel", S.v401, S.v3912)
    S.v4022 = {}
    S.v4022.AnchorPoint = Vector2.new(0, 1)
    S.v4022.Position = UDim2.new(0, 6, 1, 0)
    S.v4022.Size = UDim2.new(1, -12, 0, 1)
    S.v4022.BackgroundColor3 = S.v1212
    S.v4022.BackgroundTransparency = 0.92
    S.v4022.BorderSizePixel = 0
    S.v4022.ZIndex = 3
    S.v150("Frame", S.v4022, S.v3912)
    S.v147 = function(a1159, a262)
            S.v400.Text = a1159
            stk0 = a262
            if a262 then
                goto L2
            end
            ::L2::
            S.v400.TextColor3 = stk0
            return
        end
    S.v403 = function(a1160)
            local v1190 = S.v1072(a1160)
            if v1190 then
                goto L7
            end
            S.v147("Player tidak ketemu di server ini", S.v1222)
            do
                return
            end
            do
                return
            end
            ::L7::
            local v2149, v3108, v498 = ipairs(S.v48)
            ::L13::
            local v598, v680 = v2149(v3108, v498)
            v498 = v598
            if not v598 then
                goto L10
            end
            if v680.plr == v1190 then
                goto L2
            end
            goto L13
            ::L2::
            S.v147(("%s sudah ada di slot %d"):format(v1190.Name, v598 + 1), S.v1222)
            do
                return
            end
            do
                return
            end
            ::L10::
            local tmp122 = S.v47
            stk0 = tmp122
            if not tmp122 then
                goto L3
            end
            ::L3::
            if not stk0 then
                goto L5
            end
            S.v100(S.v47)
            ::L5::
            S.v47 = v1190
            local tmp123 = S.v562(S.v552(v1190))
            stk0 = tmp123
            if tmp123 then
                goto L8
            end
            ::L8::
            local v761 = stk0
            S.v147(("Target: %s (@%s) - %s"):format(v1190.DisplayName, v1190.Name, v761), S.v1322)
            S.v289()
            if not S.v4210.catFrPreview then
                goto L15
            end
            S.v4210.catFrPreview()
            ::L15::
            return
        end
    S.v8(S.v3982.MouseButton1Click, function()
            S.v403(S.v3942.Text)
        end)
    S.v8(S.v3942.FocusLost, function(a1161)
            if a1161 then
                S.v403(S.v3942.Text)
            end
        end)
    S.v3222(S.v3872, "Teman - Karakter", 3)
    S.v404 = S.v3352(S.v3872, "fr", 3)
    S.v404 = S.v3362(S.v3872, "fr", S.v404)
    S.v3362(S.v3872, "fr", S.v404)
    S.v3222(S.v3872, "Teman - Aksesoris", S.v404 + 1)
    S.v406 = {Name = "KatalogTeman"}
    S.v406.Size = UDim2.new(1, 0, 0, 440)
    S.v406.BackgroundTransparency = 1
    S.v406.LayoutOrder = S.v404 + 2
    S.v405 = S.v150("Frame", S.v406, S.v3872)
    S.v407 = {
        side = "fr",
        tabName = "Teman",
        storeKey = "catalogFr",
        root = S.v405
    }
    S.v407.getPlr = function()
            return S.v47
        end
    S.v3852(S.v407)
    S.v404 = S.v404 + 2
    S.v3222(S.v3872, "Lainnya", S.v404 + 1)
    S.v408 = S.v3232(S.v3872, "Reset Teman", "Normalkan karakter teman", S.v404 + 2)
    S.v148 = function()
            if S.v47 then
                S.v100(S.v47)
            end
            S.v4210.fr = S.v41()
            S.v41()
            if S.v4210.clothRefresh then
                S.v4210.clothRefresh("fr")
            end
            for v3109, v499 in ipairs(S.v3272) do
                if v499.side == "fr" then
                    v499.sw:set(false, true)
                    if v499.visual then
                        v499.visual(false)
                    end
                end
            end
            if S.v4210.catFrClear then
                pcall(S.v4210.catFrClear)
            end
            if S.v4210.resetExtras then
                pcall(S.v4210.resetExtras)
            end
            S.v47 = nil
            S.v3942.Text = ""
            S.v147("Belum ada target", S.v1202)
            S.v289()
        end
    S.v3252(S.v408, "Reset", true, function()
            S.v148()
        end)
    S.v409 = S.v404 + 3
    S.v4132 = {}
    S.v4142 = {}
    S.v4122 = false
    S.v4162 = {}
    S.v4162.Size = UDim2.new(1, 0, 0, 44)
    S.v4162.BackgroundColor3 = S.v1172
    S.v4162.Text = ""
    S.v4162.AutoButtonColor = false
    S.v4162.LayoutOrder = S.v409
    S.v4152 = S.v150("TextButton", S.v4162, S.v3872)
    S.v151(S.v4152, 10)
    S.v1532(S.v4152, S.v1182, 1)
    S.v4182 = {}
    S.v4182.AnchorPoint = Vector2.new(0.5, 0.5)
    S.v4182.Position = UDim2.new(0, 24, 0.5, 0)
    S.v4182.Size = UDim2.fromOffset(20, 20)
    S.v4182.TextXAlignment = Enum.TextXAlignment.Center
    S.v4182.Font = S.v1132
    S.v4182.ZIndex = 4
    S.v4172 = S.v1552(S.v4152, ">", 16, S.v1322, S.v4182)
    S.v156(S.v4172, "TextColor3")
    S.v4202 = {}
    S.v4202.Position = UDim2.fromOffset(44, 0)
    S.v4202.Size = UDim2.new(1, -56, 1, 0)
    S.v4202.Font = S.v1132
    S.v4202.ZIndex = 4
    S.v4192 = S.v1552(S.v4152, "", 13, S.v1212, S.v4202)
    S.v4212 = function()
            local v043 = 0
            for v4100, v599 in ipairs(S.v48) do
                if v599.plr then
                    v043 = v043 + 1
                end
            end
            return v043
        end
    S.v4222 = function(a1162)
        local v1191, v2150
            if not a1162 then
                goto L5
            end
            v1191 = S.v4102[a1162]
            v2150 = S.v48[a1162]
            if not v2150.plr then
                goto L3
            end
            v1191.badge.BackgroundColor3 = S.v1322
            v1191.status.Text = ("%s (@%s)"):format(v2150.plr.DisplayName, v2150.plr.Name)
            ("%s (@%s)"):format(v2150.plr.DisplayName, v2150.plr.Name)
            v1191.status.TextColor3 = S.v1242
            v1191.setBtn.Text = "Ganti"
            ::L4::
            v1191.swK:set(v2150.korblox, true)
            v1191.swH:set(v2150.headless, true)
            ::L5::
            S.v4192.Text = ("Slot teman 2-%d   (%d/%d terisi)"):format(S.v48.N + 1, S.v4212(), S.v48.N)
            ("Slot teman 2-%d   (%d/%d terisi)"):format(S.v48.N + 1, S.v4212(), S.v48.N)
            do
                return
            end
            do
                return
            end
            ::L3::
            v1191.badge.BackgroundColor3 = S.v1192
            v1191.status.Text = "Kosong - isi username lalu Set"
            v1191.status.TextColor3 = S.v1202
            v1191.setBtn.Text = "Set"
            goto L4
        end
    S.v4232 = function(a1163, a263, a339)
            stk0 = a339
            if not a339 then
                goto L3
            end
            ::L3::
            if stk0 then
                goto L11
            end
            ::L11::
            local tmp124 = stk0
            a1163[a263] = tmp124
            if a1163.plr then
                goto L14
            end
            do
                return
            end
            do
                return
            end
            ::L14::
            local v3114, v4101, v5100 = ipairs(S.v542(a1163.plr))
            ::L9::
            local v681, v764 = v3114(v4101, v5100)
            v5100 = v681
            if not v681 then
                goto L15
            end
            if not (a263 == "korblox") then
                goto L6
            end
            if not a339 then
                goto L7
            end
            pcall(S.v572, v764)
            ::L5::
            ::L2::
            goto L9
            ::L7::
            pcall(S.v582, v764)
            goto L5
            ::L6::
            pcall(S.v592, v764, not a339)
            goto L2
            ::L15::
            return
        end
    S.v4242 = function(a1164)
            local v1194 = S.v48[a1164]
            S.v48.clear(v1194)
            v1194.plr = nil
            v1194.korblox = false
            v1194.headless = false
            S.v4102[a1164].box.Text = ""
            S.v4222(a1164)
        end
    S.v4252 = function(a1165, a264)
            local v2151 = S.v4102[a1165]
            local v3115 = S.v48[a1165]
            local v4103 = S.v1072(a264)
            if not v4103 then
                v2151.status.Text = "Player tidak ketemu di server ini"
                v2151.status.TextColor3 = S.v1222
                return
            end
            if v4103 == S.v5 then
                S.v189("Itu kamu - pakai tab Karakter", S.v1222)
                return
            end
            if v4103 == S.v47 then
                S.v189("Itu sudah jadi Target Teman (slot 1)", S.v1222)
                return
            end
            local v5101, v684, v765 = ipairs(S.v48)
            ::L10::
            while true do
                local v855, v951 = v5101(v684, v765)
                v765 = v855
                if not v855 then
                    break
                end
                stk0 = not (v855 == a1165)
                if not stk0 then
                    goto L10
                end
            end
            local tmp125 = v3115.plr
            stk0 = tmp125
            if stk0 then
                S.v48.clear(v3115)
            end
            v3115.plr = v4103
            v2151.box.Text = ""
            S.v4222(a1165)
            S.v189(("Slot %d: %s"):format(a1165 + 1, v4103.DisplayName), S.v1242)
            do
                return
            end
            S.v189(("%s sudah ada di slot %d"):format(v4103.Name, v855 + 1), S.v1222)
        end
    S.v4262 = 1
    S.v4272 = S.v48.N
    S.v4282 = 1
    ::L78::
    if not (0 < S.v4282) then
        goto L104
    end
    ::L29::
    if not stk7 then
        goto L51
    end
    S.v4302 = {}
    S.v4302.Size = UDim2.new(1, 0, 0, 168)
    S.v4302.BackgroundColor3 = S.v1172
    S.v4302.LayoutOrder = S.v409 + S.v4262
    S.v4302.Visible = false
    S.v4292 = S.v150("Frame", S.v4302, S.v3872)
    S.v151(S.v4292, 12)
    S.v1532(S.v4292, S.v1182, 1)
    S.v4112[#S.v4112 + 1] = S.v4292
    S.v4322 = {}
    S.v4322.Position = UDim2.fromOffset(12, 12)
    S.v4322.Size = UDim2.fromOffset(30, 32)
    S.v4322.BackgroundColor3 = S.v1192
    S.v4322.Text = tostring(S.v4262 + 1)
    S.v4322.Font = S.v1132
    S.v4322.TextSize = 14
    S.v4322.TextColor3 = S.v1212
    S.v4322.ZIndex = 4
    S.v4312 = S.v150("TextLabel", S.v4322, S.v4292)
    S.v151(S.v4312, 8)
    S.v4342 = {}
    S.v4342.Position = UDim2.fromOffset(50, 12)
    S.v4342.Size = UDim2.new(1, -160, 0, 32)
    S.v4342.BackgroundColor3 = S.v1162
    S.v4342.Text = ""
    S.v4342.PlaceholderText = "Username / display name..."
    S.v4342.PlaceholderColor3 = S.v1202
    S.v4342.TextColor3 = S.v1212
    S.v4342.TextSize = 12
    S.v4342.ClearTextOnFocus = false
    S.v4342.TextXAlignment = Enum.TextXAlignment.Left
    S.v4342.ZIndex = 5
    S.v4332 = S.v150("TextBox", S.v4342, S.v4292)
    S.v1522(S.v4332)
    S.v1532(S.v4332, S.v1212, 1, 0.8)
    S.v4352 = {}
    S.v4352.PaddingLeft = UDim.new(0, 10)
    S.v4352.PaddingRight = UDim.new(0, 10)
    S.v150("UIPadding", S.v4352, S.v4332)
    S.v4372 = {}
    S.v4372.AnchorPoint = Vector2.new(1, 0)
    S.v4372.Position = UDim2.new(1, -48, 0, 12)
    S.v4372.Size = UDim2.fromOffset(56, 32)
    S.v4372.Text = "Set"
    S.v4372.Font = S.v1132
    S.v4372.TextSize = 12
    S.v4372.TextColor3 = S.v1212
    S.v4372.AutoButtonColor = false
    S.v4372.ZIndex = 5
    S.v4362 = S.v150("TextButton", S.v4372, S.v4292)
    S.v1522(S.v4362)
    S.v156(S.v4362, "BackgroundColor3")
    S.v4392 = {}
    S.v4392.AnchorPoint = Vector2.new(1, 0)
    S.v4392.Position = UDim2.new(1, -12, 0, 12)
    S.v4392.Size = UDim2.fromOffset(30, 32)
    S.v4392.BackgroundColor3 = S.v1232
    S.v4392.Text = "X"
    S.v4392.Font = S.v1132
    S.v4392.TextSize = 12
    S.v4392.TextColor3 = S.v1212
    S.v4392.AutoButtonColor = false
    S.v4392.ZIndex = 5
    S.v4382 = S.v150("TextButton", S.v4392, S.v4292)
    S.v1522(S.v4382)
    S.v4412 = {}
    S.v4412.Position = UDim2.fromOffset(14, 50)
    S.v4412.Size = UDim2.new(1, -28, 0, 14)
    S.v4412.TextTruncate = Enum.TextTruncate.AtEnd
    S.v4412.ZIndex = 4
    S.v4402 = S.v1552(S.v4292, "", 11, S.v1202, S.v4412)
    S.v4432 = {
        badge = S.v4312,
        box = S.v4332,
        setBtn = S.v4362,
        status = S.v4402
    }
    S.v4102[S.v4262] = S.v4422
    S.v4442 = S.v3232(S.v4292, "Korblox", "Kaki kanan Korblox", 1, 44)
    S.v4442.Position = UDim2.fromOffset(8, 70)
    UDim2.fromOffset(8, 70)
    S.v4442.Size = UDim2.new(1, -16, 0, 44)
    UDim2.new(1, -16, 0, 44)
    S.v4422.swK = S.v3242(S.v4442, false, function(a1166)
            stk0 = a1166
            if stk0 then
                S.v189(("Isi target slot %d dulu"):format(S.v4262 + 1), S.v1222)
                S.v4422.swK:set(false, true)
                return
            end
            S.v4232(S.v48[S.v4262], "korblox", a1166)
        end)
    S.v3242(S.v4442, false, function(a1167)
            stk0 = a1167
            if stk0 then
                S.v189(("Isi target slot %d dulu"):format(S.v4262 + 1), S.v1222)
                S.v4422.swK:set(false, true)
                return
            end
            S.v4232(S.v48[S.v4262], "korblox", a1167)
        end)
    S.v4452 = S.v3232(S.v4292, "Headless", "Hilangkan kepala", 2, 44)
    S.v4452.Position = UDim2.fromOffset(8, 118)
    UDim2.fromOffset(8, 118)
    S.v4452.Size = UDim2.new(1, -16, 0, 44)
    UDim2.new(1, -16, 0, 44)
    S.v4422.swH = S.v3242(S.v4452, false, function(a1168)
            stk0 = a1168
            if stk0 then
                S.v189(("Isi target slot %d dulu"):format(S.v4262 + 1), S.v1222)
                S.v4422.swH:set(false, true)
                return
            end
            S.v4232(S.v48[S.v4262], "headless", a1168)
        end)
    S.v3242(S.v4452, false, function(a1169)
            stk0 = a1169
            if stk0 then
                S.v189(("Isi target slot %d dulu"):format(S.v4262 + 1), S.v1222)
                S.v4422.swH:set(false, true)
                return
            end
            S.v4232(S.v48[S.v4262], "headless", a1169)
        end)
    S.v8(S.v4362.MouseButton1Click, function()
            S.v4252(S.v4262, S.v4332.Text)
        end)
    S.v8(S.v4332.FocusLost, function(a1170)
            if a1170 then
                S.v4252(S.v4262, S.v4332.Text)
            end
        end)
    S.v8(S.v4382.MouseButton1Click, function()
            S.v4242(S.v4262)
        end)
    S.v4222(S.v4262)
    S.v4262 = S.v4262 + S.v4282
    goto L78
    ::L51::
    S.v8(S.v4152.MouseButton1Click, function()
            S.v4122 = not S.v4122
            local v044, v1195, v2153 = ipairs(S.v4112)
            ::L5::
            local v3116, v4104 = v044(v1195, v2153)
            v2153 = v3116
            if not v3116 then
                goto L1
            end
            v4104.Visible = S.v4122
            goto L5
            ::L1::
            local v5102 = {}
            stk0 = S.TweenService
            stk1 = S.TweenService
            stk2 = S.v4172
            stk3 = TweenInfo.new(0.15)
            local tmp126 = S.v4122
            stk4 = tmp126
            if not tmp126 then
                goto L3
            end
            ::L3::
            if stk4 then
                goto L7
            end
            ::L7::
            v5102.Rotation = stk4
            stk0(stk1, stk2, stk3, v5102):Play()
            return
        end)
    S.v8(S.Players.PlayerRemoving, function(a1171)
            for v4105, v5103 in ipairs(S.v48) do
                if v5103.plr == a1171 then
                    v5103.plr = nil
                    v5103.korblox = false
                    v5103.headless = false
                    S.v4222(v4105)
                    S.v189(("Slot %d: target keluar server"):format(v4105 + 1), S.v1222)
                end
            end
        end)
    S.v4210.resetExtras = function()
            local v045 = 1
            local v1196 = S.v48.N
            local v2154 = 1
            ::L4::
            if not (0 < v2154) then
                goto L3
            end
            stk0 = v045 <= v1196
            ::L1::
            if not stk0 then
                goto L6
            end
            S.v4242(v045)
            v045 = v045 + v2154
            goto L4
            ::L6::
            do
                return
            end
            do
                return
            end
            ::L3::
            stk0 = v1196 <= v045
            goto L1
        end
    S.v4222()
    S.v8(S.Players.PlayerRemoving, function(a1172)
            if a1172 == S.v47 then
                if S.v4210.catFrClear then
                    pcall(S.v4210.catFrClear)
                end
                S.v47 = nil
                S.v4210.fr = S.v41()
                S.v41()
                if S.v4210.clothRefresh then
                    S.v4210.clothRefresh("fr")
                end
                for v4106, v5104 in ipairs(S.v3272) do
                    if v5104.side == "fr" then
                        v5104.sw:set(false, true)
                        if v5104.visual then
                            v5104.visual(false)
                        end
                    end
                end
                S.v147("Target keluar dari server", S.v1222)
                S.v289()
            end
        end)
    S.v4462 = function()
        local v856, v954, v1045, v1198, v1329, v1234, v1429, v1626, v1526, v1726, v1824, v2019, v1920, v2220, v2156, v2320, v2417, v2516, v2615, v2713, v3013, v2913, v3120, v3214
        local v3313, v3513, v3611, v3711, v3810, v4115, v4213, v4311, v4411, v4511, v4611, v4710, v4910, v503, v5112, v5211, v5311, v5411, v5511, v5610, v5810, v5910, v603, v6111
            local ReplicatedStorage = game:GetService("ReplicatedStorage")
            local v1197 = 0
            local v766 = {"Items", "Objects", "Events"}
            local v2155, v3117, v4107 = ipairs(v766)
            ::L6::
            local v5105, v685 = v2155(v3117, v4107)
            v4107 = v5105
            if not v5105 then
                goto L2
            end
            if not ReplicatedStorage:FindFirstChild(v685) then
                goto L4
            end
            v1197 = v1197 + 1
            ::L4::
            goto L6
            ::L2::
            stk0 = 2 <= v1197
            if 2 <= v1197 then
                goto L9
            end
            if workspace:FindFirstChild("PlayerCache") == nil then
                goto L5
            end
            ::L9::
            v856 = stk0
            if v856 then
                goto L12
            end
            do
                return
            end
            do
                return
            end
            ::L12::
            v954 = {"CA", "Copy Avatar"}
            S.v307["Copy Ava"] = v954
            v1045 = S.v3182("Copy Ava", 2, "ava")
            v1198 = function(a1173, a265, a340)
                local v955
                    local v3118 = Instance.new(a1173)
                    stk0 = pairs
                    stk1 = a265
                    if a265 then
                        goto L2
                    end
                    v955 = {}
                    ::L2::
                    local v4108, v5106, v686 = stk0(stk1)
                    ::L3::
                    local v767, v857 = v4108(v5106, v686)
                    v686 = v767
                    if not v767 then
                        goto L6
                    end
                    v3118[v767] = v857
                    goto L3
                    ::L6::
                    if not a340 then
                        goto L5
                    end
                    v3118.Parent = a340
                    ::L5::
                    return v3118
                end
            S.v3222(v1045, "Copy Avatar", 1)
            v1329 = {}
            v1329.Size = UDim2.new(1, -8, 0, 92)
            v1329.BackgroundTransparency = 1
            v1329.LayoutOrder = 2
            v1329.ZIndex = 3
            v1234 = S.v150("Frame", v1329, v1045)
            v1429 = {}
            v1429.Position = UDim2.fromOffset(8, 4)
            v1429.Size = UDim2.new(1, -16, 0, 18)
            v1429.BackgroundTransparency = 1
            v1429.Text = "Username Roblox"
            v1429.Font = S.v1122
            v1429.TextSize = 14
            v1429.TextColor3 = S.v1212
            v1429.TextXAlignment = Enum.TextXAlignment.Left
            v1429.ZIndex = 4
            S.v150("TextLabel", v1429, v1234)
            v1626 = {}
            v1626.Position = UDim2.fromOffset(8, 28)
            v1626.Size = UDim2.new(1, -108, 0, 32)
            v1626.BackgroundColor3 = S.v1152
            v1626.BackgroundTransparency = 0.35
            v1626.Text = ""
            v1626.PlaceholderText = "Username (orangnya tidak harus ada di server)"
            v1626.PlaceholderColor3 = S.v1202
            v1626.TextColor3 = S.v1212
            v1626.Font = S.v1122
            v1626.TextSize = 13
            v1626.ClearTextOnFocus = false
            v1626.TextXAlignment = Enum.TextXAlignment.Left
            v1626.ZIndex = 5
            v1526 = S.v150("TextBox", v1626, v1234)
            S.v1522(v1526)
            v1726 = {Thickness = 1, Color = S.v1212, Transparency = 0.8}
            S.v150("UIStroke", v1726, v1526)
            v1824 = {}
            v1824.PaddingLeft = UDim.new(0, 14)
            v1824.PaddingRight = UDim.new(0, 14)
            S.v150("UIPadding", v1824, v1526)
            v2019 = {}
            v2019.AnchorPoint = Vector2.new(1, 0)
            v2019.Position = UDim2.new(1, -12, 0, 28)
            v2019.Size = UDim2.fromOffset(80, 32)
            v2019.Text = "Copy"
            v2019.Font = S.v1122
            v2019.TextSize = 13
            v2019.TextColor3 = S.v1212
            v2019.AutoButtonColor = false
            v2019.ZIndex = 5
            v1920 = S.v150("TextButton", v2019, v1234)
            S.v1522(v1920)
            S.v156(v1920, "BackgroundColor3")
            v2220 = {}
            v2220.Position = UDim2.fromOffset(8, 66)
            v2220.Size = UDim2.new(1, -16, 0, 16)
            v2220.BackgroundTransparency = 1
            v2220.Text = "Siap. Hanya terlihat di layarmu."
            v2220.Font = S.v1122
            v2220.TextSize = 12
            v2220.TextColor3 = S.v1202
            v2220.TextXAlignment = Enum.TextXAlignment.Left
            v2220.TextTruncate = Enum.TextTruncate.AtEnd
            v2220.ZIndex = 4
            v2156 = S.v150("TextLabel", v2220, v1234)
            v2320 = {}
            v2320.AnchorPoint = Vector2.new(0, 1)
            v2320.Position = UDim2.new(0, 6, 1, 0)
            v2320.Size = UDim2.new(1, -12, 0, 1)
            v2320.BackgroundColor3 = S.v1212
            v2320.BackgroundTransparency = 0.92
            v2320.BorderSizePixel = 0
            v2320.ZIndex = 3
            S.v150("Frame", v2320, v1234)
            v2417 = function(a1174, a266)
                    v2156.Text = a1174
                    stk0 = a266
                    if a266 then
                        goto L2
                    end
                    ::L2::
                    v2156.TextColor3 = stk0
                    return
                end
            S.v3222(v1045, "Lainnya", 3)
            v2516 = S.v3232(v1045, "Reset Visual", "Kembalikan avatar asli", 4)
            v2615 = S.v3252(v2516, "Reset", true, function()

                end)
            v2713 = S.v3232(v1045, "Khusus Evade", "Visual lokal, cuma terlihat di layarmu", 5)
            v3013 = {}
            v2913 = 0
            v3120 = function(a1175)
                local tmp127
                    stk0 = not a1175
                    if a1175 then
                        goto L5
                    end
                    ::L5::
                    if not stk0 then
                        goto L13
                    end
                    do
                        return v3013
                    end
                    do
                        return
                    end
                    ::L13::
                    v2913 = os.clock()
                    os.clock()
                    local v2157 = {}
                    local v3119, v4109, v5107 = ipairs(workspace:GetDescendants())
                    ::L8::
                    local v687, v768 = v3119(v4109, v5107)
                    v5107 = v687
                    if not v687 then
                        goto L14
                    end
                    tmp127 = v768:IsA("Model")
                    stk0 = tmp127
                    if tmp127 then
                        goto L7
                    end
                    ::L11::
                    if not stk0 then
                        goto L2
                    end
                    v2157[#v2157 + 1] = v768
                    ::L2::
                    goto L8
                    ::L7::
                    if v768.Name == S.v5.Name then
                        goto L3
                    end
                    ::L3::
                    if not stk0 then
                        goto L11
                    end
                    goto L11
                    ::L14::
                    v3013 = v2157
                    return v2157
                end
            v3214 = function(a1176)
                local v858, tmp128, v769, v956, v1046, v1199, v1235, v1330, v1527, v1627, v1727, v1825, v1921, tmp129, Rigs, v2020, v2158, v2221, v2321, v2418
                    local v3121 = {}
                    local v4111 = {}
                    local v5108 = function(a1177)
                            stk0 = a1177
                            if a1177 then
                                if a1177:IsA("Model") then
                                end
                            end
                            if stk0 then
                                v4111[a1177] = true
                                v3121[#v3121 + 1] = a1177
                            end
                        end
                    local PlayerCache = workspace:FindFirstChild("PlayerCache")
                    if not PlayerCache then
                        goto L15
                    end
                    tmp128 = PlayerCache:FindFirstChild(S.v5.Name)
                    stk0 = tmp128
                    if tmp128 then
                        goto L4
                    end
                    ::L4::
                    v769 = stk0
                    if v769 then
                        goto L11
                    end
                    v858 = PlayerCache:GetChildren()
                    if #v858 == 1 then
                        goto L9
                    end
                    ::L11::
                    if not v769 then
                        goto L15
                    end
                    v956, v1046, v1199 = ipairs(v769:GetChildren())
                    ::L20::
                    v1235, v1330 = v956(v1046, v1199)
                    v1199 = v1235
                    if not v1235 then
                        goto L15
                    end
                    v5108(v1330)
                    goto L20
                    ::L15::
                    Rigs = workspace:FindFirstChild("Rigs")
                    if not Rigs then
                        goto L17
                    end
                    v1527, v1627, v1727 = ipairs(Rigs:GetChildren())
                    ::L2::
                    v1825, v1921 = v1527(v1627, v1727)
                    v1727 = v1825
                    if not v1825 then
                        goto L17
                    end
                    tmp129 = v1921.Name == S.v5.Name
                    stk0 = tmp129
                    if not (tmp129) then
                        goto L6
                    end
                    ::L13::
                    if not stk0 then
                        goto L19
                    end
                    v5108(v1921)
                    ::L19::
                    goto L2
                    ::L6::
                    goto L13
                    ::L17::
                    v5108(S.v5.Character)
                    v2020, v2158, v2221 = ipairs(v3120(a1176))
                    ::L7::
                    v2321, v2418 = v2020(v2158, v2221)
                    v2221 = v2321
                    if not v2321 then
                        goto L18
                    end
                    v5108(v2418)
                    goto L7
                    ::L18::
                    do
                        return v3121
                    end
                    do
                        return
                    end
                    ::L9::
                    v769 = v858[1]
                    goto L11
                end
            v3313 = function(a1178)
                    stk0 = not a1178
                    if not a1178 then
                        goto L2
                    end
                    ::L2::
                    if not stk0 then
                        goto L4
                    end
                    do
                        return nil
                    end
                    do
                        return
                    end
                    ::L4::
                    local v1200, v2159 = pcall(function()
                            return game:GetObjects("rbxassetid://" .. a1178)
                        end)
                    stk0 = v1200
                    if not v1200 then
                        goto L8
                    end
                    if v2159 then
                        goto L7
                    end
                    ::L8::
                    if stk0 then
                        goto L6
                    end
                    ::L6::
                    do
                        return stk0
                    end
                    do
                        return
                    end
                    ::L7::
                    goto L8
                end
            v3513 = {
                Head = "HeadColor",
                UpperTorso = "TorsoColor",
                LowerTorso = "TorsoColor",
                Torso = "TorsoColor",
                LeftUpperArm = "LeftArmColor",
                LeftLowerArm = "LeftArmColor",
                LeftHand = "LeftArmColor",
                ["Left Arm"] = "LeftArmColor",
                RightUpperArm = "RightArmColor",
                RightLowerArm = "RightArmColor",
                RightHand = "RightArmColor",
                ["Right Arm"] = "RightArmColor",
                LeftUpperLeg = "LeftLegColor",
                LeftLowerLeg = "LeftLegColor",
                LeftFoot = "LeftLegColor",
                ["Left Leg"] = "LeftLegColor",
                RightUpperLeg = "RightLegColor",
                RightLowerLeg = "RightLegColor",
                RightFoot = "RightLegColor",
                ["Right Leg"] = "RightLegColor"
            }
            v3611 = function(a1179)
                    local tmp130 = a1179:IsA("Accessory")
                    stk0 = tmp130
                    if tmp130 then
                        goto L4
                    end
                    if a1179:IsA("Shirt") then
                        goto L4
                    end
                    if a1179:IsA("Pants") then
                        goto L4
                    end
                    if not a1179:IsA("ShirtGraphic") then
                        goto L2
                    end
                    ::L4::
                    do
                        return stk0
                    end
                    do
                        return
                    end
                    ::L2::
                    if a1179:IsA("BodyColors") then
                        goto L4
                    end
                    goto L4
                end
            v3711 = function(a1180)
                    local v2160 = {}
                    local v3123 = {}
                    v2160.items = v3123
                    local v4113 = {}
                    v2160.colors = v4113
                    v2160.face = nil
                    for v859, v957 in ipairs(a1180:GetChildren()) do
                        if v3611(v957) then
                            local v1047, v11100 = pcall(function()
                                    return v957:Clone()
                                end)
                            stk0 = v1047
                            if stk0 then
                                v2160.items[#v2160.items + 1] = v11100
                            end
                        end
                    end
                    for v1528 in pairs(v3513) do
                        local v1628 = a1180:FindFirstChild(v1528)
                        stk0 = v1628
                        if stk0 then
                            local tmp131 = v1628.Color
                            local tmp131 = v1628.Color
                            v2160.colors[v1628] = tmp131
                        end
                    end
                    local v1728 = a1180:FindFirstChild("Head")
                    stk0 = v1728
                    local v1826 = stk0
                    if v1826 then
                        local v1924 = {v1826, v1826.Texture}
                        v2160.face = v1924
                    end
                    return v2160
                end
            v3810 = function(a1181, a267)
                    local v2161 = a1181:FindFirstChildOfClass("Humanoid")
                    local v3124, v4114, v5109 = ipairs(a1181:GetChildren())
                    ::L19::
                    local v688, v770 = v3124(v4114, v5109)
                    v5109 = v688
                    if not v688 then
                        goto L3
                    end
                    if not v3611(v770) then
                        goto L11
                    end
                    v770:Destroy()
                    ::L11::
                    goto L19
                    ::L3::
                    local v860, v958, v1048 = ipairs(a267.items)
                    ::L7::
                    local v11101, v1236 = v860(v958, v1048)
                    v1048 = v11101
                    if not v11101 then
                        goto L10
                    end
                    if v1236:IsA("Accessory") then
                        goto L12
                    end
                    v1236.Parent = a1181
                    ::L1::
                    goto L7
                    ::L12::
                    if v2161 then
                        goto L4
                    end
                    ::L9::
                    goto L1
                    ::L4::
                    pcall(function()
                            v2161:AddAccessory(v1236)
                        end)
                    goto L9
                    ::L10::
                    local v1331, v1430, v1529 = pairs(a267.colors)
                    ::L5::
                    local v1629, v1729 = v1331(v1430, v1529)
                    v1529 = v1629
                    if not v1629 then
                        goto L17
                    end
                    if not v1629.Parent then
                        goto L2
                    end
                    v1629.Color = v1729
                    ::L2::
                    goto L5
                    ::L17::
                    local tmp132 = a267.face
                    stk0 = tmp132
                    if not tmp132 then
                        goto L13
                    end
                    ::L13::
                    if not stk0 then
                        goto L22
                    end
                    a267.face[1].Texture = a267.face[2]
                    ::L22::
                    return
                end
            v4115 = {}
            v4213 = {}
            v4311 = nil
            v4411 = false
            v4511 = true
            v4611 = false
            v4710 = function(a1182, a268)
                    local v2163 = a1182:FindFirstChildOfClass("Humanoid")
                    if not v2163 then
                        return false
                    end
                    for v689, v771 in ipairs(a1182:GetChildren()) do
                        if v3611(v771) then
                            v771:Destroy()
                        end
                    end
                    local v861 = {
                        HeadColor3 = a268.HeadColor,
                        TorsoColor3 = a268.TorsoColor,
                        LeftArmColor3 = a268.LeftArmColor,
                        RightArmColor3 = a268.RightArmColor,
                        LeftLegColor3 = a268.LeftLegColor,
                        RightLegColor3 = a268.RightLegColor
                    }
                    v1198("BodyColors", v861, a1182)
                    for v1237, v1334 in pairs(v3513) do
                        local v1431 = a1182:FindFirstChild(v1237)
                        stk0 = v1431
                        if stk0 then
                            pcall(function()
                                    v1431.Color = a268[v1334]
                                end)
                        end
                    end
                    local v1530 = v3313(a268.Shirt)
                    stk0 = v1530
                    if stk0 then
                        local v1630 = {ShirtTemplate = v1530.ShirtTemplate}
                        v1198("Shirt", v1630, a1182)
                    end
                    v1530 = v3313(a268.Pants)
                    v3313(a268.Pants)
                    stk0 = v1530
                    if stk0 then
                        local v1730 = {PantsTemplate = v1530.PantsTemplate}
                        v1198("Pants", v1730, a1182)
                    end
                    v1530 = v3313(a268.GraphicTShirt)
                    v3313(a268.GraphicTShirt)
                    stk0 = v1530
                    if stk0 then
                        local v1827 = {Graphic = v1530.Graphic}
                        v1198("ShirtGraphic", v1827, a1182)
                    end
                    local v1925 = a1182:FindFirstChild("Head")
                    stk0 = v1925
                    local v2021 = stk0
                    v1530 = v3313(a268.Face)
                    v3313(a268.Face)
                    if stk0 then
                        v2021.Texture = v1530.Texture
                    end
                    for v2419, v2517 in ipairs(a268:GetAccessories(true)) do
                        local v2616 = v3313(v2517.AssetId)
                        stk0 = v2616
                        if stk0 then
                            pcall(function()
                                    v2163:AddAccessory(v2616)
                                end)
                        end
                    end
                    return true
                end
            v4910 = {}
            v503 = function(a1183, a269, a341)
                local v3125, v959, v864
                    stk0 = not a1183
                    if not a1183 then
                        goto L13
                    end
                    ::L13::
                    if not stk0 then
                        goto L2
                    end
                    do
                        return nil
                    end
                    do
                        return
                    end
                    ::L2::
                    local tmp133 = v4910[a269]
                    stk0 = tmp133
                    if tmp133 then
                        goto L17
                    end
                    v3125 = {}
                    ::L17::
                    local tmp134 = stk0
                    v4910[a269] = tmp134
                    local v4116 = v4910[a269][a1183]
                    if not v4116 then
                        goto L19
                    end
                    do
                        return v4116
                    end
                    do
                        return
                    end
                    ::L19::
                    local v5111 = 1
                    local v690 = 3
                    local v774 = 1
                    ::L11::
                    if not (0 < v774) then
                        goto L20
                    end
                    stk0 = v5111 <= v690
                    ::L4::
                    if not stk0 then
                        goto L10
                    end
                    v864 = v3313(a1183)
                    stk0 = v864
                    if v864 then
                        goto L9
                    end
                    ::L15::
                    if not stk0 then
                        goto L21
                    end
                    v959 = v864[a341]
                    stk0 = v959
                    if not v959 then
                        goto L6
                    end
                    ::L6::
                    if not stk0 then
                        goto L21
                    end
                    v4910[a269][a1183] = v959
                    do
                        return v959
                    end
                    do
                        return
                    end
                    ::L21::
                    task.wait(0.3)
                    v5111 = v5111 + v774
                    goto L11
                    ::L9::
                    goto L15
                    ::L10::
                    do
                        return nil
                    end
                    do
                        return
                    end
                    ::L20::
                    stk0 = v690 <= v5111
                    goto L4
                end
            v5112 = function(a1184, a270, a342, a422, a510)
                local v1238, v1335, v1434, v1531, v1631
                    if v4311 == a510 then
                        goto L8
                    end
                    do
                        return
                    end
                    do
                        return
                    end
                    ::L8::
                    local v691 = {}
                    local v775, v865, v960 = ipairs(a1184:GetDescendants())
                    ::L19::
                    local v1049, v11102 = v775(v865, v960)
                    v960 = v1049
                    if not v1049 then
                        goto L4
                    end
                    if not v11102:IsA(a270) then
                        goto L18
                    end
                    v691[#v691 + 1] = v11102
                    ::L18::
                    goto L19
                    ::L4::
                    if not (a422 == 0) then
                        goto L12
                    end
                    v1238, v1335, v1434 = ipairs(v691)
                    ::L14::
                    v1531, v1631 = v1238(v1335, v1434)
                    v1434 = v1531
                    if not v1531 then
                        goto L21
                    end
                    v1631:Destroy()
                    goto L14
                    ::L21::
                    do
                        return
                    end
                    do
                        return
                    end
                    ::L12::
                    local v1731 = v503(a422, a270, a342)
                    stk0 = not v1731
                    if not v1731 then
                        goto L9
                    end
                    ::L9::
                    if not stk0 then
                        goto L2
                    end
                    do
                        return
                    end
                    do
                        return
                    end
                    ::L2::
                    local tmp135 = v691[1]
                    stk0 = tmp135
                    if tmp135 then
                        goto L22
                    end
                    ::L22::
                    local v1828 = stk0
                    local v1926 = 2
                    local v2023 = #v691
                    local v2164 = 1
                    ::L16::
                    if not (0 < v2164) then
                        goto L11
                    end
                    stk0 = v1926 <= v2023
                    ::L6::
                    if not stk0 then
                        goto L24
                    end
                    v691[v1926]:Destroy()
                    v1926 = v1926 + v2164
                    goto L16
                    ::L24::
                    if v1828[a342] == v1731 then
                        goto L26
                    end
                    v1828[a342] = v1731
                    ::L26::
                    do
                        return
                    end
                    do
                        return
                    end
                    ::L11::
                    stk0 = v2023 <= v1926
                    goto L6
                end
            v5211 = function(a1185, a271)
                    if not (v4311 == a271) then
                        return
                    end
                    pcall(v5112, a1185, "Pants", "PantsTemplate", a271.Pants, a271)
                    pcall(v5112, a1185, "Shirt", "ShirtTemplate", a271.Shirt, a271)
                    pcall(v5112, a1185, "ShirtGraphic", "Graphic", a271.GraphicTShirt, a271)
                end
            v5311 = function(a1186, a272)
                    v5211(a1186, a272)
                    local v2165 = a1186:FindFirstChildOfClass("BodyColors")
                    if v2165 then
                        pcall(function()
                                v2165.HeadColor3 = a272.HeadColor
                                v2165.TorsoColor3 = a272.TorsoColor
                                v2165.LeftArmColor3 = a272.LeftArmColor
                                v2165.RightArmColor3 = a272.RightArmColor
                                v2165.LeftLegColor3 = a272.LeftLegColor
                                v2165.RightLegColor3 = a272.RightLegColor
                            end)
                    end
                    for v694, v776 in pairs(v3513) do
                        local v866 = a1186:FindFirstChild(v694)
                        stk0 = v866
                        if stk0 then
                            pcall(function()
                                    v866.Color = a272[v776]
                                end)
                        end
                    end
                end
            v5411 = function(a1187)
                local v867, tmp136
                    local v2166 = {}
                    local v3126, v4117, v5113 = ipairs(a1187)
                    ::L4::
                    local v695, v777 = v3126(v4117, v5113)
                    v5113 = v695
                    if not v695 then
                        goto L7
                    end
                    v867 = v777:FindFirstChildOfClass("Humanoid")
                    stk0 = v777:GetFullName():gsub("^Workspace%.", "") .. " ["
                    stk1 = v867
                    if not v867 then
                        goto L1
                    end
                    ::L1::
                    if stk1 then
                        goto L3
                    end
                    ::L3::
                    tmp136 = (stk0 .. stk1) .. "]"
                    v2166[#v2166 + 1] = tmp136
                    goto L4
                    ::L7::
                    return table.concat(v2166, ", ")
                end
            v5511 = function(a1188)
                local v4118, tmp137
                    local v1201 = a1188:FindFirstChildOfClass("Humanoid")
                    stk0 = not v1201
                    if not v1201 then
                        goto L23
                    end
                    ::L23::
                    if not stk0 then
                        goto L25
                    end
                    do
                        return false
                    end
                    do
                        return
                    end
                    ::L25::
                    local v2167 = v4311
                    if v4115[a1188] then
                        goto L2
                    end
                    v4118 = {}
                    v4118.snap = v3711(a1188)
                    pcall(function()
                            v4118.desc = v1201:GetAppliedDescription()
                            v1201:GetAppliedDescription()
                        end)
                    v4115[a1188] = v4118
                    ::L2::
                    local v5114, v696, v778 = ipairs(a1188:GetDescendants())
                    ::L18::
                    local v868, v961 = v5114(v696, v778)
                    v778 = v868
                    if not v868 then
                        goto L4
                    end
                    tmp137 = v961:IsA("Accessory")
                    stk0 = tmp137
                    if tmp137 then
                        goto L14
                    end
                    if v961:IsA("Pants") then
                        goto L14
                    end
                    if v961:IsA("Shirt") then
                        goto L14
                    end
                    ::L14::
                    if not stk0 then
                        goto L20
                    end
                    pcall(function()
                            v961:Destroy()
                        end)
                    ::L20::
                    goto L18
                    ::L4::
                    local v1050 = pcall(function()
                            v1201:ApplyDescription(v2167)
                        end)
                    if v4311 == v2167 then
                        goto L8
                    end
                    do
                        return false
                    end
                    do
                        return
                    end
                    ::L8::
                    if not v1050 then
                        goto L10
                    end
                    task.wait(0.4)
                    if not (v4311 == v2167) then
                        goto L3
                    end
                    pcall(v5311, a1188, v2167)
                    ::L27::
                    stk0 = v1050
                    if not v1050 then
                        goto L12
                    end
                    ::L12::
                    if not stk0 then
                        goto L21
                    end
                    v4213[a1188] = v2167
                    ::L21::
                    do
                        return v1050
                    end
                    do
                        return
                    end
                    ::L3::
                    do
                        return false
                    end
                    do
                        return
                    end
                    ::L10::
                    v1050 = pcall(v4710, a1188, v2167)
                    pcall(v4710, a1188, v2167)
                    stk0 = v1050
                    if not v1050 then
                        goto L6
                    end
                    ::L6::
                    if not stk0 then
                        goto L27
                    end
                    pcall(v5311, a1188, v2167)
                    goto L27
                end
            v5610 = function(a1189, a273)
                    local v2168 = a1189:FindFirstChildOfClass("Humanoid")
                    local tmp138 = a273.desc
                    stk0 = tmp138
                    if stk0 then
                        for v697, v779 in pairs(a273.snap.colors) do
                            if v697.Parent then
                                v697.Color = v779
                            end
                        end
                        return true
                    end
                    return pcall(v3810, a1189, a273.snap)
                end
            v5810 = {}
            v5910 = function()
                    local v046 = workspace.CurrentCamera
                    stk0 = v046
                    local v1204 = stk0
                    return stk0
                end
            v603 = function(a1190, a274)
                local v4119
                    local v2169 = a274:FindFirstChildOfClass("BodyColors")
                    local v3127 = a274:FindFirstChildOfClass("Shirt")
                    if v5810[a274] then
                        goto L9
                    end
                    v4119 = {}
                    stk0 = v2169
                    if not v2169 then
                        goto L11
                    end
                    ::L11::
                    v4119.l = stk0
                    if not v2169 then
                        goto L15
                    end
                    ::L15::
                    v4119.r = stk0
                    if not v2169 then
                        goto L13
                    end
                    ::L13::
                    v4119.t = stk0
                    if not v3127 then
                        goto L2
                    end
                    ::L2::
                    v4119.shirt = stk0
                    v5810[a274] = v4119
                    ::L9::
                    if not v2169 then
                        goto L7
                    end
                    pcall(function()
                            v2169.LeftArmColor3 = a1190.LeftArmColor
                            v2169.RightArmColor3 = a1190.RightArmColor
                            v2169.TorsoColor3 = a1190.TorsoColor
                        end)
                    ::L7::
                    local v5115 = v3313(a1190.Shirt)
                    stk0 = v5115
                    if not v5115 then
                        goto L4
                    end
                    ::L4::
                    if not stk0 then
                        goto L18
                    end
                    stk0 = v3127
                    if not v3127 then
                        goto L3
                    end
                    ::L6::
                    v3127 = stk0
                    v3127.ShirtTemplate = v5115.ShirtTemplate
                    ::L18::
                    do
                        return true
                    end
                    do
                        return
                    end
                    ::L3::
                    goto L6
                end
            v6111 = function()
                    v4311 = nil
                    local v047 = 0
                    for v4120, v5116 in pairs(v4115) do
                        stk0 = v4120
                        if stk0 then
                            v047 = v047 + 1
                        end
                    end
                    for v964, v1051 in pairs(v5810) do
                        stk0 = v964
                        if stk0 then
                            local v11103 = v964:FindFirstChildOfClass("BodyColors")
                            local v1239 = v964:FindFirstChildOfClass("Shirt")
                            stk0 = v11103
                            if stk0 then
                                pcall(function()
                                        v11103.LeftArmColor3 = v1051.l
                                        v11103.RightArmColor3 = v1051.r
                                        if v1051.t then
                                            v11103.TorsoColor3 = v1051.t
                                        end
                                    end)
                            end
                            stk0 = v1239
                            if stk0 then
                                v1239.ShirtTemplate = v1051.shirt
                            end
                        end
                    end
                    local v1336 = {}
                    local v1435 = {}
                    local v1534 = {}
                    v5810 = v1336
                    v4115 = v1435
                    v4213 = v1534
                    return v047
                end
            S.v8(v1920.MouseButton1Click, function()
                    if v4411 then
                        return
                    end
                    local v048 = v1526.Text:gsub("%s", "")
                    if v048 == "" then
                        v2417("Isi username dulu", S.v1222)
                        S.v189("Isi username dulu", S.v1222)
                        return
                    end
                    v4411 = true
                    task.spawn(function()
                            local v049 = os.clock()
                            ::L6::
                            while true do
                                local tmp139 = v4611
                                stk0 = tmp139
                                if stk0 then
                                    task.wait(0.1)
                                    goto L6
                                end
                            end
                            local v1206, v2171 = pcall(function()
                                    v2417(("Ambil data " .. v048) .. "...")
                                    local v050, v1205 = pcall(function()
                                            return S.Players:GetUserIdFromNameAsync(v048)
                                        end)
                                    stk0 = not v050
                                    if not v050 then
                                        goto L2
                                    end
                                    ::L2::
                                    if not stk0 then
                                        goto L10
                                    end
                                    v2417("Username tidak ditemukan", S.v1222)
                                    do
                                        return
                                    end
                                    do
                                        return
                                    end
                                    ::L10::
                                    local v2170, v3128 = pcall(function()
                                            return S.Players:GetHumanoidDescriptionFromUserId(v1205)
                                        end)
                                    stk0 = not v2170
                                    if not v2170 then
                                        goto L13
                                    end
                                    ::L13::
                                    if not stk0 then
                                        goto L19
                                    end
                                    v2417("Gagal ambil data avatar", S.v1222)
                                    do
                                        return
                                    end
                                    do
                                        return
                                    end
                                    ::L19::
                                    v4311 = v3128
                                    local v4121 = {}
                                    v4213 = v4121
                                    local v5117 = v3214(true)
                                    local v698 = 0
                                    local v780, v869, v965 = ipairs(v5117)
                                    ::L6::
                                    local v1054, v11104 = v780(v869, v965)
                                    v965 = v1054
                                    if not v1054 then
                                        goto L8
                                    end
                                    if v5511(v11104) then
                                        goto L5
                                    end
                                    ::L12::
                                    goto L6
                                    ::L5::
                                    v698 = v698 + 1
                                    goto L12
                                    ::L8::
                                    local v1240 = v5910()
                                    stk0 = v1240
                                    if not v1240 then
                                        goto L17
                                    end
                                    ::L17::
                                    if not stk0 then
                                        goto L15
                                    end
                                    v4213[v1240] = v3128
                                    ::L15::
                                    if not (#v5117 == 0) then
                                        goto L4
                                    end
                                    v2417("Model belum ada. Otomatis dipasang saat muncul.", S.v1202)
                                    ::L20::
                                    do
                                        return
                                    end
                                    do
                                        return
                                    end
                                    ::L4::
                                    v2417(((("Dipasang " .. v698) .. "/") .. #v5117) .. " model", S.v1242)
                                    S.v189(("Avatar " .. v048) .. " dipasang (visual)", S.v1242)
                                    goto L20
                                end)
                            if not v1206 then
                                v2417("Error, cek console", S.v1222)
                                warn("[DZ Delux] copy ava: " .. tostring(v2171))
                            end
                            v4411 = false
                        end)
                end)
            S.v8(v2615.MouseButton1Click, function()
                    if v4411 then
                        return
                    end
                    v4411 = true
                    task.spawn(function()
                            local v051 = os.clock()
                            ::L5::
                            local tmp140 = v4611
                            stk0 = tmp140
                            if not tmp140 then
                                goto L7
                            end
                            ::L7::
                            if not stk0 then
                                goto L9
                            end
                            task.wait(0.1)
                            goto L5
                            ::L9::
                            local v1207, v2173 = pcall(v6111)
                            stk0 = v1207
                            if not v1207 then
                                goto L1
                            end
                            ::L1::
                            if not stk0 then
                                goto L3
                            end
                            v2417(("Visual dikembalikan (" .. v2173) .. " model)", S.v1242)
                            ::L13::
                            v4411 = false
                            do
                                return
                            end
                            do
                                return
                            end
                            ::L3::
                            if not v1207 then
                                goto L12
                            end
                            v2417("Tidak ada yang perlu dikembalikan", S.v1202)
                            goto L13
                            ::L12::
                            v2417("Gagal reset, cek console", S.v1222)
                            warn("[DZ Delux] reset copy ava: " .. tostring(v2173))
                            goto L13
                        end)
                end)
            task.spawn(function()
                    while v4511 do
                        task.wait(1.5)
                        local tmp141 = v4311
                        stk0 = tmp141
                        if stk0 then
                            v4611 = true
                            pcall(function()
                                local tmp142, tmp144, v699, tmp143, tmp145
                                    local v052 = v4311
                                    local v1208, v2174, v3129 = ipairs(v3214())
                                    ::L22::
                                    local v4123, v5118 = v1208(v2174, v3129)
                                    v3129 = v4123
                                    if not v4123 then
                                        goto L18
                                    end
                                    tmp142 = not (v4311 == v052)
                                    stk0 = tmp142
                                    if v4311 == v052 then
                                        goto L3
                                    end
                                    ::L16::
                                    if not stk0 then
                                        goto L1
                                    end
                                    ::L18::
                                    v699 = v5910()
                                    tmp143 = v4311 == v052
                                    stk0 = tmp143
                                    if not (tmp143) then
                                        goto L13
                                    end
                                    if not v4411 then
                                        goto L5
                                    end
                                    ::L13::
                                    if not stk0 then
                                        goto L24
                                    end
                                    task.wait(0.2)
                                    tmp144 = v4311 == v052
                                    stk0 = tmp144
                                    if tmp144 then
                                        goto L7
                                    end
                                    ::L11::
                                    if not stk0 then
                                        goto L24
                                    end
                                    v4213[v699] = v052
                                    ::L24::
                                    do
                                        return
                                    end
                                    do
                                        return
                                    end
                                    ::L7::
                                    goto L11
                                    ::L5::
                                    if not v699 then
                                        goto L13
                                    end
                                    goto L13
                                    ::L1::
                                    if v4213[v5118] == v052 then
                                        goto L20
                                    end
                                    task.wait(0.3)
                                    tmp145 = v4311 == v052
                                    stk0 = tmp145
                                    if tmp145 then
                                        goto L6
                                    end
                                    ::L8::
                                    if not stk0 then
                                        goto L4
                                    end
                                    pcall(v5511, v5118)
                                    ::L4::
                                    ::L15::
                                    goto L22
                                    ::L6::
                                    goto L8
                                    ::L20::
                                    if not v5118.Parent then
                                        goto L15
                                    end
                                    pcall(v5211, v5118, v052)
                                    goto L15
                                    ::L3::
                                    goto L16
                                end)
                            v4611 = false
                        end
                    end
                end)
            S.v4210.copyClean = function()
                    v4511 = false
                    if v4311 then
                        task.spawn(function()
                                pcall(v6111)
                            end)
                    end
                end
            do
                return
            end
            do
                return
            end
            ::L5::
            if not (workspace:FindFirstChild("Rigs") == nil) then
                goto L9
            end
            if game.PlaceId == 9872472334 then
                goto L9
            end
            goto L9
        end
    S.v4472, S.v4482 = pcall(S.v4462)
    if S.v4472 then
        goto L25
    end
    warn("[DZ Delux] Copy Ava gagal dibuat: " .. tostring(S.v4482))
    ::L25::
    S.v4492 = S.v3182("Scripts", 7, "script")
    S.v4512 = {}
    S.v4522 = {
        "Delux Emote",
        "Script emote by Delux (DZ Delux Emotes)",
        "https://raw.githubusercontent.com/deluxx-coder/delux-emot/refs/heads/main/dz-delux-zephyr"
    }
    S.v4512[1] = S.v4522
    if type(S.v12.scripts) == "table" then
        goto L117
    end
    S.v4532 = {}
    S.v12.scripts = S.v4532
    ::L117::
    S.v4552 = {}
    S.v4562, S.v4572, S.v4582 = ipairs(S.v12.scripts)
    ::L40::
    S.v4592, S.v4602 = S.v4562(S.v4572, S.v4582)
    S.v4582 = S.v4592
    if not S.v4592 then
        goto L105
    end
    if type(S.v4602) == "table" then
        goto L45
    end
    ::L73::
    if stk7 then
        goto L62
    end
    S.v4542[#S.v4542 + 1] = S.v4602
    ::L62::
    goto L40
    ::L45::
    if not (type(S.v4602.url) == "string") then
        goto L73
    end
    if S.v4602.url:find("KorlessLARP", 1, true) then
        goto L73
    end
    goto L73
    ::L105::
    S.v12.scripts = S.v4542
    S.v4612 = function(a1191, a275)
            if not loadstring then
                S.v189("Executor tidak support loadstring", S.v1222)
                return
            end
            local v2175 = a275.Text
            a275.Text = "..."
            task.spawn(function()
                local v2176, v3130, v4124, v5119
                    local v053, v1209 = pcall(function()
                            return game:HttpGet(a1191)
                        end)
                    stk0 = not v053
                    if not v053 then
                        goto L2
                    end
                    if type(v1209) == "string" then
                        goto L8
                    end
                    ::L2::
                    if not stk0 then
                        goto L4
                    end
                    a275.Text = v2175
                    S.v189("Gagal download script", S.v1222)
                    do
                        return
                    end
                    do
                        return
                    end
                    ::L4::
                    v2176, v3130 = loadstring(v1209)
                    if v2176 then
                        goto L6
                    end
                    a275.Text = v2175
                    S.v189("Script error: " .. tostring(v3130), S.v1222)
                    warn("[DZ Delux] loadstring: " .. tostring(v3130))
                    do
                        return
                    end
                    do
                        return
                    end
                    ::L6::
                    v4124, v5119 = pcall(v2176)
                    a275.Text = v2175
                    if not v4124 then
                        goto L9
                    end
                    S.v189("Script dijalankan", S.v1242)
                    ::L10::
                    do
                        return
                    end
                    do
                        return
                    end
                    ::L9::
                    S.v189("Script error saat jalan (cek console)", S.v1222)
                    warn("[DZ Delux] script: " .. tostring(v5119))
                    goto L10
                    ::L8::
                    goto L2
                end)
        end
    S.v4622 = function(a1192, a276, a343, a423, a511)
        local v1436, v1337
            local v6100 = {}
            v6100.Size = UDim2.new(1, -8, 0, 58)
            v6100.BackgroundColor3 = S.v1212
            v6100.BackgroundTransparency = 0.93
            v6100.BorderSizePixel = 0
            v6100.LayoutOrder = a423
            v6100.ZIndex = 3
            local v5120 = S.v150("Frame", v6100, S.v4492)
            S.v151(v5120, 16)
            local v781 = {Thickness = 1, Color = S.v1212, Transparency = 0.85}
            S.v150("UIStroke", v781, v5120)
            stk0 = a511
            if not a511 then
                goto L4
            end
            ::L4::
            if stk0 then
                goto L2
            end
            ::L2::
            local v870 = stk0
            local v966 = {}
            v966.Position = UDim2.fromOffset(12, 8)
            v966.Size = UDim2.new(1, -v870, 0, 18)
            v966.BackgroundTransparency = 1
            v966.Text = a1192
            v966.Font = S.v1122
            v966.TextSize = 14
            v966.TextColor3 = S.v1212
            v966.TextXAlignment = Enum.TextXAlignment.Left
            v966.TextTruncate = Enum.TextTruncate.AtEnd
            v966.ZIndex = 4
            S.v150("TextLabel", v966, v5120)
            local v1055 = {}
            v1055.Position = UDim2.fromOffset(12, 28)
            v1055.Size = UDim2.new(1, -v870, 0, 16)
            v1055.BackgroundTransparency = 1
            v1055.Text = a276
            v1055.Font = S.v1122
            v1055.TextSize = 10
            v1055.TextColor3 = S.v1202
            v1055.TextXAlignment = Enum.TextXAlignment.Left
            v1055.TextTruncate = Enum.TextTruncate.AtEnd
            v1055.ZIndex = 4
            S.v150("TextLabel", v1055, v5120)
            local v1241 = {}
            v1241.AnchorPoint = Vector2.new(1, 0.5)
            v1241.Position = UDim2.new(1, -10, 0.5, 0)
            v1241.Size = UDim2.fromOffset(64, 30)
            v1241.Text = "Load"
            v1241.Font = S.v1122
            v1241.TextSize = 13
            v1241.TextColor3 = S.v1212
            v1241.AutoButtonColor = false
            v1241.ZIndex = 5
            local v11105 = S.v150("TextButton", v1241, v5120)
            S.v1522(v11105)
            S.v156(v11105, "BackgroundColor3")
            S.v8(v11105.MouseButton1Click, function()
                    S.v4612(a343, v11105)
                end)
            if not a511 then
                goto L6
            end
            v1436 = {}
            v1436.AnchorPoint = Vector2.new(1, 0.5)
            v1436.Position = UDim2.new(1, -80, 0.5, 0)
            v1436.Size = UDim2.fromOffset(30, 30)
            v1436.BackgroundColor3 = S.v1222
            v1436.Text = "X"
            v1436.Font = S.v1122
            v1436.TextSize = 12
            v1436.TextColor3 = S.v1212
            v1436.AutoButtonColor = false
            v1436.ZIndex = 5
            v1337 = S.v150("TextButton", v1436, v5120)
            S.v1522(v1337)
            S.v1542(v1337)
            S.v8(v1337.MouseButton1Click, function()
                    v5120:Destroy()
                    a511()
                end)
            ::L6::
            return v5120
        end
    S.v4632 = function(a1193)
            local tmp146 = a1193:match("([^/]+)$")
            stk0 = tmp146
            if tmp146 then
                goto L2
            end
            ::L2::
            local v1244 = stk0
            v1244 = v1244:gsub("%%(%x%x)", function(a1194)
                    return string.char(tonumber(a1194, 16))
                end)
            v1244:gsub("%%(%x%x)", function(a1195)
                    return string.char(tonumber(a1195, 16))
                end)
            v1244 = v1244:gsub("%.lua$", ""):gsub("%.txt$", "")
            v1244:gsub("%.lua$", ""):gsub("%.txt$", "")
            if not (28 < #v1244) then
                goto L4
            end
            v1244 = v1244:sub(1, 28)
            v1244:sub(1, 28)
            ::L4::
            return v1244
        end
    S.v3222(S.v4492, "Script bawaan", 1)
    S.v4642, S.v4652, S.v4662 = ipairs(S.v4502)
    ::L113::
    S.v4672, S.v4682 = S.v4642(S.v4652, S.v4662)
    S.v4662 = S.v4672
    if not S.v4672 then
        goto L42
    end
    S.v4622(S.v4682[1], S.v4682[2], S.v4682[3], 1 + S.v4672)
    goto L113
    ::L42::
    S.v4692 = 100
    S.v4702 = function(a1196)
            S.v4692 = S.v4692 + 1
            S.v4622(a1196.name, a1196.url, a1196.url, S.v4692, function()
                    local v054, v1245, v2177 = ipairs(S.v12.scripts)
                    ::L3::
                    while true do
                        local v3131, v4125 = v054(v1245, v2177)
                        v2177 = v3131
                        if not v3131 then
                            break
                        end
                        if not (v4125.url == a1196.url) then
                            goto L3
                        end
                    end
                    ::L5::
                    S.v19()
                    do
                        return
                    end
                    table.remove(S.v12.scripts, v3131)
                    goto L5
                end)
        end
    S.v3222(S.v4492, "Link sendiri", 50)
    S.v4722 = {}
    S.v4722.Size = UDim2.new(1, -8, 0, 88)
    S.v4722.BackgroundTransparency = 1
    S.v4722.LayoutOrder = 51
    S.v4722.ZIndex = 3
    S.v4712 = S.v150("Frame", S.v4722, S.v4492)
    S.v4742 = {}
    S.v4742.Position = UDim2.fromOffset(8, 6)
    S.v4742.Size = UDim2.new(1, -16, 0, 32)
    S.v4742.BackgroundColor3 = S.v1152
    S.v4742.BackgroundTransparency = 0.35
    S.v4742.Text = ""
    S.v4742.PlaceholderText = "Link raw script (https://...)"
    S.v4742.PlaceholderColor3 = S.v1202
    S.v4742.TextColor3 = S.v1212
    S.v4742.Font = S.v1122
    S.v4742.TextSize = 12
    S.v4742.ClearTextOnFocus = false
    S.v4742.TextXAlignment = Enum.TextXAlignment.Left
    S.v4742.ZIndex = 5
    S.v4732 = S.v150("TextBox", S.v4742, S.v4712)
    S.v1522(S.v4732)
    S.v4752 = {Thickness = 1, Color = S.v1212, Transparency = 0.8}
    S.v150("UIStroke", S.v4752, S.v4732)
    S.v4762 = {}
    S.v4762.PaddingLeft = UDim.new(0, 14)
    S.v4762.PaddingRight = UDim.new(0, 14)
    S.v150("UIPadding", S.v4762, S.v4732)
    S.v4782 = {}
    S.v4782.Position = UDim2.fromOffset(8, 46)
    S.v4782.Size = UDim2.new(0.5, -12, 0, 30)
    S.v4782.Text = "Load"
    S.v4782.Font = S.v1122
    S.v4782.TextSize = 13
    S.v4782.TextColor3 = S.v1212
    S.v4782.AutoButtonColor = false
    S.v4782.ZIndex = 5
    S.v4772 = S.v150("TextButton", S.v4782, S.v4712)
    S.v1522(S.v4772)
    S.v156(S.v4772, "BackgroundColor3")
    S.v4802 = {}
    S.v4802.Position = UDim2.new(0.5, 4, 0, 46)
    S.v4802.Size = UDim2.new(0.5, -12, 0, 30)
    S.v4802.BackgroundColor3 = S.v1192
    S.v4802.Text = "Simpan jadi card"
    S.v4802.Font = S.v1122
    S.v4802.TextSize = 13
    S.v4802.TextColor3 = S.v1212
    S.v4802.AutoButtonColor = false
    S.v4802.ZIndex = 5
    S.v4792 = S.v150("TextButton", S.v4802, S.v4712)
    S.v1522(S.v4792)
    S.v1542(S.v4792)
    S.v4812 = {}
    S.v4812.AnchorPoint = Vector2.new(0, 1)
    S.v4812.Position = UDim2.new(0, 6, 1, 0)
    S.v4812.Size = UDim2.new(1, -12, 0, 1)
    S.v4812.BackgroundColor3 = S.v1212
    S.v4812.BackgroundTransparency = 0.92
    S.v4812.BorderSizePixel = 0
    S.v4812.ZIndex = 3
    S.v150("Frame", S.v4812, S.v4712)
    S.v4822 = function()
            local tmp147 = S.v4732.Text
            stk0 = tmp147
            if tmp147 then
                goto L2
            end
            ::L2::
            local v055 = stk0:gsub("^%s+", ""):gsub("%s+$", "")
            if v055:match("^https?://") then
                goto L4
            end
            S.v189("Link harus diawali http:// atau https://", S.v1222)
            do
                return nil
            end
            do
                return
            end
            ::L4::
            return v055
        end
    S.v8(S.v4772.MouseButton1Click, function()
            local v056 = S.v4822()
            if v056 then
                S.v4612(v056, S.v4772)
            end
        end)
    S.v8(S.v4792.MouseButton1Click, function()
            local v057 = S.v4822()
            if not v057 then
                return
            end
            local v1246, v2178, v3133 = ipairs(S.v12.scripts)
            ::L2::
            while true do
                local v4126, v5121 = v1246(v2178, v3133)
                v3133 = v4126
                if not v4126 then
                    break
                end
                if not (v5121.url == v057) then
                    goto L2
                end
            end
            local v784 = {}
            v784.name = S.v4632(v057)
            v784.url = v057
            table.insert(S.v12.scripts, v784)
            S.v19()
            S.v4702(v784)
            S.v4732.Text = ""
            S.v189("Card disimpan: " .. v784.name, S.v1242)
            do
                return
            end
            S.v189("Link sudah ada di daftar", S.v1222)
        end)
    S.v4832, S.v4842, S.v4852 = ipairs(S.v12.scripts)
    ::L49::
    S.v4862, S.v4872 = S.v4832(S.v4842, S.v4852)
    S.v4852 = S.v4862
    if not S.v4862 then
        goto L48
    end
    if type(S.v4872) == "table" then
        goto L39
    end
    ::L55::
    if not stk7 then
        goto L6
    end
    S.v4702(S.v4872)
    ::L6::
    goto L49
    ::L39::
    goto L55
    ::L48::
    S.v4882 = function()
        local v5911, v5811, v604, v6112, v6211, v6311, v6411, v6510, v11610, v11510, v11710, v11810, v11910, v12010, v12111, v12210, v967, v1056, v1248, v11106, v1338, v1437, v1535, v1634
        local v1734, v1829, v2223, v2323, v2420, v2617, v2714, v2813, v2914, v3137, v3215, v3314, v3413, v3514, v3612, v3712, v3811, v3910, v4010, v4138, v4214, v4313, v4413, v4513
        local v4613, v4711, v4810, v4911, v5132, v504, v5212, v5312, v5412, v5512, v5611, v5710, Items2, v6710, v6910, v703, v7111, v7211, v7311, v7411, v7510, v789, v794, v803
        local v8111, v8211, v8311, v8410, v8610, v8710, v8510, v884, v894, v9211, v9311, v9410, v9510, v9610, v975, v984, v994, v10211, v10310, v10410, v10510, v1074, v1065, v1084
        local v1094, v11011, v11115, v11211, v11411, v12310
            local v058 = game:GetService("ReplicatedStorage")
            local v1247 = 0
            local v785 = {"Items", "Objects", "Events"}
            local v2179, v3134, v4127 = ipairs(v785)
            ::L11::
            local v5122, v6101 = v2179(v3134, v4127)
            v4127 = v5122
            if not v5122 then
                goto L59
            end
            if v058:FindFirstChild(v6101) then
                goto L37
            end
            ::L51::
            goto L11
            ::L37::
            v1247 = v1247 + 1
            goto L51
            ::L59::
            stk0 = 2 <= v1247
            if 2 <= v1247 then
                goto L31
            end
            if not (workspace:FindFirstChild("PlayerCache") == nil) then
                goto L31
            end
            if not (workspace:FindFirstChild("Rigs") == nil) then
                goto L31
            end
            if game.PlaceId == 9872472334 then
                goto L31
            end
            ::L31::
            local v871 = stk0
            if not v871 then
                goto L63
            end
            v967 = S.v3182("Changer", 8, "emote")
            v1056 = "https://raw.githubusercontent.com/deluxx-coder/delux-unlock-all/refs/heads/main/dz-delux-zephyr-unlock-all.lua"
            S.v3222(v967, "Unlock All (Evade)", -3)
            v1248 = {}
            v1248.Size = UDim2.new(1, -8, 0, 18)
            v1248.BackgroundTransparency = 1
            v1248.Text = "Buka semua emote, unusual, cosmetic, nametag & carry (visual)."
            v1248.Font = S.v1122
            v1248.TextSize = 11
            v1248.TextColor3 = S.v1202
            v1248.TextXAlignment = Enum.TextXAlignment.Left
            v1248.TextTruncate = Enum.TextTruncate.AtEnd
            v1248.LayoutOrder = -2
            v1248.ZIndex = 4
            v11106 = S.v150("TextLabel", v1248, v967)
            v1338 = {}
            v1338.PaddingLeft = UDim.new(0, 8)
            S.v150("UIPadding", v1338, v11106)
            v1437 = S.v3232(v967, "Unlock All", "Nyala = unlock semua, mati = kembalikan", -1)
            v1535 = nil
            v1634 = nil
            v1535 = S.v3242(v1437, false, function(a1197)
                    if not v1634 then
                        goto L5
                    end
                    v1535:set(not a1197, true)
                    do
                        return
                    end
                    do
                        return
                    end
                    ::L5::
                    if not a1197 then
                        goto L2
                    end
                    v1634 = true
                    task.spawn(function()
                            local v060, v1250 = pcall(function()
                                local v059, v1249, v2180, v3135
                                    if _G.EVADE_UNLOCK then
                                        goto L15
                                    end
                                    if loadstring then
                                        goto L9
                                    end
                                    error("Executor tidak support loadstring", 0)
                                    ::L9::
                                    if not v1056:find("USERNAME", 1, true) then
                                        goto L13
                                    end
                                    error("Link Unlock All belum diisi", 0)
                                    ::L13::
                                    v059, v1249 = pcall(function()
                                            return game:HttpGet(v1056)
                                        end)
                                    stk0 = not v059
                                    if not v059 then
                                        goto L3
                                    end
                                    if not (type(v1249) == "string") then
                                        goto L3
                                    end
                                    ::L3::
                                    if not stk0 then
                                        goto L11
                                    end
                                    error("Gagal download Unlock All", 0)
                                    ::L11::
                                    v2180, v3135 = loadstring(v1249)
                                    if v2180 then
                                        goto L7
                                    end
                                    error("Unlock All error: " .. tostring(v3135), 0)
                                    ::L7::
                                    v2180()
                                    ::L15::
                                    local v4128 = _G.EVADE_UNLOCK
                                    if v4128 then
                                        goto L5
                                    end
                                    error("Unlock All gagal dimuat", 0)
                                    ::L5::
                                    local v5123, v6102 = v4128.Enable()
                                    if v5123 then
                                        goto L19
                                    end
                                    stk0 = error
                                    stk1 = tostring
                                    stk2 = v6102
                                    if v6102 then
                                        goto L2
                                    end
                                    ::L2::
                                    stk0(stk1(stk2), 0)
                                    ::L19::
                                    return
                                end)
                            v1634 = false
                            if not v060 then
                                goto L2
                            end
                            S.v189("Unlock All aktif", S.v1242)
                            ::L3::
                            do
                                return
                            end
                            do
                                return
                            end
                            ::L2::
                            warn("[DZ Delux] Unlock All: " .. tostring(v1250))
                            S.v189(tostring(v1250), S.v1222)
                            v1535:set(false, true)
                            goto L3
                        end)
                    ::L7::
                    do
                        return
                    end
                    do
                        return
                    end
                    ::L2::
                    local v1251 = _G.EVADE_UNLOCK
                    if not v1251 then
                        goto L4
                    end
                    pcall(v1251.Disable)
                    ::L4::
                    S.v189("Unlock All dimatikan", S.v1202)
                    goto L7
                end)
            S.v3242(v1437, false, function(a1198)
                    if not v1634 then
                        goto L5
                    end
                    v1535:set(not a1198, true)
                    do
                        return
                    end
                    do
                        return
                    end
                    ::L5::
                    if not a1198 then
                        goto L2
                    end
                    v1634 = true
                    task.spawn(function()
                            local v062, v1255 = pcall(function()
                                local v061, v1254, v2181, v3136
                                    if _G.EVADE_UNLOCK then
                                        goto L15
                                    end
                                    if loadstring then
                                        goto L9
                                    end
                                    error("Executor tidak support loadstring", 0)
                                    ::L9::
                                    if not v1056:find("USERNAME", 1, true) then
                                        goto L13
                                    end
                                    error("Link Unlock All belum diisi", 0)
                                    ::L13::
                                    v061, v1254 = pcall(function()
                                            return game:HttpGet(v1056)
                                        end)
                                    stk0 = not v061
                                    if not v061 then
                                        goto L3
                                    end
                                    if not (type(v1254) == "string") then
                                        goto L3
                                    end
                                    ::L3::
                                    if not stk0 then
                                        goto L11
                                    end
                                    error("Gagal download Unlock All", 0)
                                    ::L11::
                                    v2181, v3136 = loadstring(v1254)
                                    if v2181 then
                                        goto L7
                                    end
                                    error("Unlock All error: " .. tostring(v3136), 0)
                                    ::L7::
                                    v2181()
                                    ::L15::
                                    local v4129 = _G.EVADE_UNLOCK
                                    if v4129 then
                                        goto L5
                                    end
                                    error("Unlock All gagal dimuat", 0)
                                    ::L5::
                                    local v5124, v6103 = v4129.Enable()
                                    if v5124 then
                                        goto L19
                                    end
                                    stk0 = error
                                    stk1 = tostring
                                    stk2 = v6103
                                    if v6103 then
                                        goto L2
                                    end
                                    ::L2::
                                    stk0(stk1(stk2), 0)
                                    ::L19::
                                    return
                                end)
                            v1634 = false
                            if not v062 then
                                goto L2
                            end
                            S.v189("Unlock All aktif", S.v1242)
                            ::L3::
                            do
                                return
                            end
                            do
                                return
                            end
                            ::L2::
                            warn("[DZ Delux] Unlock All: " .. tostring(v1255))
                            S.v189(tostring(v1255), S.v1222)
                            v1535:set(false, true)
                            goto L3
                        end)
                    ::L7::
                    do
                        return
                    end
                    do
                        return
                    end
                    ::L2::
                    local v1256 = _G.EVADE_UNLOCK
                    if not v1256 then
                        goto L4
                    end
                    pcall(v1256.Disable)
                    ::L4::
                    S.v189("Unlock All dimatikan", S.v1202)
                    goto L7
                end)
            v1734 = typeof(firesignal) == "function"
            v1829 = typeof(buffer) == "table"
            v2223 = {}
            v2323 = {}
            v2420 = {}
            v2617 = {}
            v2714 = false
            v2813 = false
            v2914 = nil
            v3137 = {}
            v3215 = nil
            v3314 = function()
                local v6104, v874, tmp148
                    table.clear(v2617)
                    local Items = v058:FindFirstChild("Items")
                    if Items then
                        goto L5
                    end
                    v2714 = false
                    do
                        return
                    end
                    do
                        return
                    end
                    ::L5::
                    local v1257, v2183, v3138 = ipairs(Items:GetDescendants())
                    ::L6::
                    local v4130, v5125 = v1257(v2183, v3138)
                    v3138 = v4130
                    if not v4130 then
                        goto L13
                    end
                    tmp148 = v5125:IsA("ModuleScript")
                    stk0 = tmp148
                    if not tmp148 then
                        goto L2
                    end
                    ::L3::
                    if not stk0 then
                        goto L10
                    end
                    if v5125.Parent then
                        goto L9
                    end
                    ::L10::
                    if not stk0 then
                        goto L12
                    end
                    v6104 = v5125:GetAttribute("ID")
                    if v6104 then
                        goto L8
                    end
                    ::L12::
                    goto L6
                    ::L8::
                    v874 = {Name = v5125.Name, ID = v6104, Instance = v5125}
                    v2617[v5125.Name:lower()] = v874
                    v2617[tostring(v6104)] = v874
                    goto L12
                    ::L9::
                    goto L10
                    ::L2::
                    goto L3
                    ::L13::
                    v2714 = true
                    return
                end
            v3413 = function(a1199)
                local v3139
                    stk0 = not a1199
                    if not a1199 then
                        goto L4
                    end
                    ::L4::
                    if not stk0 then
                        goto L2
                    end
                    do
                        return nil
                    end
                    do
                        return
                    end
                    ::L2::
                    if v2714 then
                        goto L6
                    end
                    v3314()
                    ::L6::
                    local v1258 = v2617[tostring(a1199):lower()]
                    if not v1258 then
                        goto L8
                    end
                    do
                        return v1258
                    end
                    do
                        return
                    end
                    ::L8::
                    local v2184 = tonumber(a1199)
                    if not v2184 then
                        goto L10
                    end
                    v3139 = {}
                    v3139.Name = tostring(v2184)
                    v3139.ID = v2184
                    do
                        return v3139
                    end
                    do
                        return
                    end
                    ::L10::
                    return nil
                end
            v3514 = function(a1200, a277)
                    if a277[a1200] then
                        return
                    end
                    local v3140 = {}
                    for v786, v875 in ipairs(a1200:GetChildren()) do
                        local v968, v1057 = pcall(function()
                                return v875:Clone()
                            end)
                        stk0 = v968
                        if stk0 then
                            v3140[#v3140 + 1] = v1057
                        end
                    end
                    a277[a1200] = v3140
                end
            v3612 = function(a1201)
                    for v4131, v5126 in ipairs(a1201:GetChildren()) do
                        pcall(function()
                                v5126:Destroy()
                            end)
                    end
                end
            v3712 = function(a1202, a278)
                    stk0 = not a1202
                    if not a1202 then
                        goto L7
                    end
                    ::L7::
                    if not stk0 then
                        goto L9
                    end
                    do
                        return
                    end
                    do
                        return
                    end
                    ::L9::
                    v3612(a1202)
                    local v2185 = 1
                    local v3141 = #a278
                    local v4133 = 1
                    ::L4::
                    if not (0 < v4133) then
                        goto L6
                    end
                    stk0 = v2185 <= v3141
                    ::L2::
                    if not stk0 then
                        goto L10
                    end
                    pcall(function()
                            a278[v2185]:Clone().Parent = a1202
                        end)
                    v2185 = v2185 + v4133
                    goto L4
                    ::L10::
                    do
                        return
                    end
                    do
                        return
                    end
                    ::L6::
                    stk0 = v3141 <= v2185
                    goto L2
                end
            v3811 = function(a1203, a279)
                    local v2186 = a1203.Instance
                    local v3143 = a279.Instance
                    stk0 = not v2186
                    if not v2186 then
                        goto L9
                    end
                    ::L9::
                    if not stk0 then
                        goto L6
                    end
                    do
                        return false
                    end
                    do
                        return
                    end
                    ::L6::
                    v3514(v2186, v2323)
                    local v4135 = function(a1204)
                            local a1204 = tostring(a1204):lower()
                            tostring(a1204):lower()
                            local v6105 = {
                                "icon",
                                "image",
                                "thumb",
                                "preview",
                                "sprite",
                                "picture"
                            }
                            local v1259, v2187, v3144 = ipairs(v6105)
                            ::L4::
                            while true do
                                local v4134, v5127 = v1259(v2187, v3144)
                                v3144 = v4134
                                if not v4134 then
                                    break
                                end
                                if not a1204:find(v5127, 1, true) then
                                    goto L4
                                end
                            end
                            do
                                return false
                            end
                            return true
                        end
                    local v5128 = function(a1205)
                            local tmp149 = a1205:IsA("ImageLabel")
                            stk0 = tmp149
                            if tmp149 then
                                goto L3
                            end
                            if a1205:IsA("ImageButton") then
                                goto L3
                            end
                            if not a1205:IsA("Decal") then
                                goto L2
                            end
                            ::L3::
                            do
                                return stk0
                            end
                            do
                                return
                            end
                            ::L2::
                            goto L3
                        end
                    local v6106, v787, v876 = ipairs(v2186:GetChildren())
                    ::L7::
                    local v969, v1058 = v6106(v787, v876)
                    v876 = v969
                    if not v969 then
                        goto L2
                    end
                    if not v5128(v1058) then
                        goto L11
                    end
                    ::L12::
                    goto L7
                    ::L11::
                    pcall(function()
                            v1058:Destroy()
                        end)
                    goto L12
                    ::L2::
                    local v11107, v1260, v1339 = ipairs(v3143:GetChildren())
                    ::L13::
                    local v1438, v1536 = v11107(v1260, v1339)
                    v1339 = v1438
                    if not v1438 then
                        goto L3
                    end
                    if v5128(v1536) then
                        goto L4
                    end
                    pcall(function()
                            v1536:Clone().Parent = v2186
                        end)
                    ::L4::
                    goto L13
                    ::L3::
                    pcall(function()
                            for v3145, v4136 in pairs(v3143:GetAttributes()) do
                                if not v4135(v3145) then
                                    v2186:SetAttribute(v3145, v4136)
                                end
                            end
                        end)
                    v2420[v2186] = v3143
                    return true
                end
            v3910 = function()
                    for v3146, v4137 in pairs(v2323) do
                        v3712(v3146, v4137)
                    end
                    table.clear(v2323)
                    table.clear(v2420)
                end
            v4010 = function(a1206)
                    local tmp150 = not v1734
                    stk0 = tmp150
                    if tmp150 then
                        goto L6
                    end
                    ::L6::
                    if not stk0 then
                        goto L4
                    end
                    do
                        return
                    end
                    do
                        return
                    end
                    ::L4::
                    local v1261 = S.v5.Character
                    stk0 = not v1261
                    if not v1261 then
                        goto L2
                    end
                    ::L2::
                    if not stk0 then
                        goto L8
                    end
                    do
                        return
                    end
                    do
                        return
                    end
                    ::L8::
                    local v2188 = v1261:GetAttribute("Tag")
                    if v2188 then
                        goto L10
                    end
                    do
                        return
                    end
                    do
                        return
                    end
                    ::L10::
                    pcall(function()
                        local Events, v5129
                            local v063 = buffer.create(2)
                            buffer.writeu16(v063, 0, v2188)
                            local v1264 = nil
                            local Remotes = v058:FindFirstChild("Remotes")
                            stk0 = Remotes
                            if not Remotes then
                                goto L9
                            end
                            ::L9::
                            local v3147 = stk0
                            if not v3147 then
                                goto L7
                            end
                            ::L7::
                            v1264 = stk0
                            if v1264 then
                                goto L2
                            end
                            Events = v058:FindFirstChild("Events")
                            stk0 = Events
                            if not Events then
                                goto L4
                            end
                            ::L4::
                            v1264 = stk0
                            ::L2::
                            if v1264 then
                                goto L16
                            end
                            stk0 = Remotes
                            if not Remotes then
                                goto L12
                            end
                            ::L14::
                            Remotes = stk0
                            if not Remotes then
                                goto L5
                            end
                            ::L5::
                            v3147 = stk0
                            if not v3147 then
                                goto L13
                            end
                            ::L13::
                            v1264 = stk0
                            ::L16::
                            if not v1264 then
                                goto L18
                            end
                            v5129 = {}
                            v5129[1] = buffer.fromstring("\24\1")
                            v5129[2] = a1206
                            v5129[3] = v063
                            firesignal(v1264.OnClientEvent, v5129)
                            ::L18::
                            do
                                return
                            end
                            do
                                return
                            end
                            ::L12::
                            goto L14
                        end)
                    return
                end
            v4138 = nil
            pcall(function()
                    v4138 = require(v058.Objects.Items.Emote)
                    require(v058.Objects.Items.Emote)
                end)
            stk0 = v4138
            if not v4138 then
                goto L49
            end
            ::L49::
            if stk0 then
                goto L40
            end
            ::L40::
            v4214 = stk0
            if not v4138 then
                goto L46
            end
            ::L46::
            if stk0 then
                goto L29
            end
            ::L29::
            v4313 = stk0
            v4413 = function()
                    local tmp151 = not v2813
                    stk0 = tmp151
                    if tmp151 then
                        goto L6
                    end
                    ::L6::
                    if not stk0 then
                        goto L2
                    end
                    do
                        return
                    end
                    do
                        return
                    end
                    ::L2::
                    v2813 = false
                    if not v4214 then
                        goto L4
                    end
                    v4138.Activate = v4214
                    ::L4::
                    if not v4313 then
                        goto L8
                    end
                    v4138.Deactivate = v4313
                    ::L8::
                    v2914 = nil
                    return
                end
            v4513 = function()
                    local tmp152 = v2813
                    stk0 = tmp152
                    if tmp152 then
                        goto L2
                    end
                    if v4138 then
                        goto L4
                    end
                    ::L2::
                    if not stk0 then
                        goto L5
                    end
                    do
                        return
                    end
                    do
                        return
                    end
                    ::L5::
                    v2813 = true
                    v4138.Activate = function(a1207, a280, a344)
                            v4214(a1207, a280, a344)
                            pcall(function()
                                local v3148, v4139, v5130, v1265, v2189
                                    if a1207.Character == S.v5.Character then
                                        goto L8
                                    end
                                    do
                                        return
                                    end
                                    do
                                        return
                                    end
                                    ::L8::
                                    local v064 = _G.EVADE_UNLOCK
                                    stk0 = v064
                                    if not v064 then
                                        goto L20
                                    end
                                    if v064.IsBusy then
                                        goto L15
                                    end
                                    ::L20::
                                    if not stk0 then
                                        goto L2
                                    end
                                    do
                                        return
                                    end
                                    do
                                        return
                                    end
                                    ::L2::
                                    v1265 = a1207.Animations
                                    stk0 = v1265
                                    if not v1265 then
                                        goto L16
                                    end
                                    ::L16::
                                    v2189 = stk0
                                    if not v2189 then
                                        goto L22
                                    end
                                    if v2189.IsPlaying then
                                        goto L12
                                    end
                                    ::L22::
                                    if not stk0 then
                                        goto L18
                                    end
                                    do
                                        return
                                    end
                                    do
                                        return
                                    end
                                    ::L18::
                                    v3148 = a1207.EmoteModule
                                    stk0 = v3148
                                    if not v3148 then
                                        goto L13
                                    end
                                    ::L13::
                                    if stk0 then
                                        goto L10
                                    end
                                    ::L10::
                                    v4139 = stk0
                                    if not (v4139 == v2914) then
                                        goto L6
                                    end
                                    do
                                        return
                                    end
                                    do
                                        return
                                    end
                                    ::L6::
                                    v2914 = v4139
                                    v5130 = v2223[v4139]
                                    stk0 = v5130
                                    if not v5130 then
                                        goto L4
                                    end
                                    ::L4::
                                    if not stk0 then
                                        goto L24
                                    end
                                    v4010(v5130.selectID)
                                    ::L24::
                                    do
                                        return
                                    end
                                    do
                                        return
                                    end
                                    ::L12::
                                    goto L22
                                    ::L15::
                                    goto L20
                                end)
                        end
                    v4138.Deactivate = function(a1208, ...)
                            if v4313 then
                                v4313(a1208, ...)
                            end
                            pcall(function()
                                    if a1208.Character == S.v5.Character then
                                        v2914 = nil
                                    end
                                end)
                        end
                    do
                        return
                    end
                    do
                        return
                    end
                    ::L4::
                    goto L2
                end
            v4613 = function(a1209)
                    return tostring(a1209):gsub("%s+", "")
                end
            v4711 = function()
                local v6107, v788, v877, tmp153, v4140, v5131
                    table.clear(v2223)
                    v3910()
                    local v065 = 0
                    v3314()
                    local v1266 = 1
                    local v2190 = 12
                    local v3149 = 1
                    ::L1::
                    if not (0 < v3149) then
                        goto L14
                    end
                    stk0 = v1266 <= v2190
                    ::L7::
                    if not stk0 then
                        goto L17
                    end
                    v4140 = v4613(v3137[v1266].cur.Text)
                    v5131 = v4613(v3137[v1266].tgt.Text)
                    stk0 = not (v4140 == "")
                    if not (v4140 == "") then
                        goto L4
                    end
                    ::L15::
                    if not stk0 then
                        goto L5
                    end
                    v6107 = v3413(v4140)
                    v788 = v3413(v5131)
                    stk0 = v6107
                    if v6107 then
                        goto L3
                    end
                    ::L12::
                    if not stk0 then
                        goto L5
                    end
                    v877 = {select = v788.Name, selectID = v788.ID}
                    v2223[v6107.Name] = v877
                    tmp153 = v6107.Instance
                    stk0 = tmp153
                    if tmp153 then
                        goto L6
                    end
                    ::L9::
                    if not stk0 then
                        goto L5
                    end
                    if not v3811(v6107, v788) then
                        goto L5
                    end
                    v065 = v065 + 1
                    ::L5::
                    v1266 = v1266 + v3149
                    goto L1
                    ::L6::
                    goto L9
                    ::L3::
                    goto L12
                    ::L4::
                    goto L15
                    ::L17::
                    v4413()
                    v4513()
                    do
                        return v065
                    end
                    do
                        return
                    end
                    ::L14::
                    stk0 = v2190 <= v1266
                    goto L7
                end
            v4810 = function()
                    v4413()
                    v3910()
                    table.clear(v2223)
                end
            v4911 = function()
                    local v066, v1267 = pcall(v4711)
                    if not v066 then
                        goto L2
                    end
                    stk0 = S.v189
                    stk1 = "Emote changer aktif (%d diganti)"
                    stk2 = "Emote changer aktif (%d diganti)"
                    stk3 = v1267
                    if v1267 then
                        goto L3
                    end
                    ::L3::
                    stk0(stk1(stk2, stk3), S.v1242)
                    ::L5::
                    do
                        return
                    end
                    do
                        return
                    end
                    ::L2::
                    warn("[DZ Delux] Emote apply error: " .. tostring(v1267))
                    S.v189("Emote error, cek console (F9)", S.v1222)
                    goto L5
                end
            S.v3222(v967, "Emote Changer (Evade)", 1)
            v5132 = {}
            v5132.Size = UDim2.new(1, -8, 0, 18)
            v5132.BackgroundTransparency = 1
            stk1 = "TextLabel"
            stk2 = v4138
            if not v4138 then
                goto L3
            end
            ::L3::
            if not stk2 then
                goto L15
            end
            ::L15::
            if stk2 then
                goto L54
            end
            ::L54::
            v5132.Text = stk2
            v5132.Font = S.v1122
            v5132.TextSize = 11
            if not v4138 then
                goto L38
            end
            ::L38::
            if not stk2 then
                goto L26
            end
            ::L26::
            if stk2 then
                goto L10
            end
            ::L10::
            v5132.TextColor3 = stk2
            v5132.TextXAlignment = Enum.TextXAlignment.Left
            v5132.TextTruncate = Enum.TextTruncate.AtEnd
            v5132.LayoutOrder = 2
            v5132.ZIndex = 4
            v504 = stk0(stk1, v5132, v967)
            v5212 = {}
            v5212.PaddingLeft = UDim.new(0, 8)
            S.v150("UIPadding", v5212, v504)
            v5312 = S.v3232(v967, "Emote Changer", "Nyala = terapkan, mati = kembalikan", 3)
            v3215 = S.v3242(v5312, false, function(a1210)
                    if not a1210 then
                        goto L2
                    end
                    v4911()
                    ::L3::
                    do
                        return
                    end
                    do
                        return
                    end
                    ::L2::
                    pcall(v4810)
                    S.v189("Emote dikembalikan", S.v1202)
                    goto L3
                end)
            S.v3242(v5312, false, function(a1211)
                    if not a1211 then
                        goto L2
                    end
                    v4911()
                    ::L3::
                    do
                        return
                    end
                    do
                        return
                    end
                    ::L2::
                    pcall(v4810)
                    S.v189("Emote dikembalikan", S.v1202)
                    goto L3
                end)
            v5412 = S.v3232(v967, "Terapkan Ulang", "Setelah ubah isi slot", 4)
            S.v3252(v5412, "Apply", false, function()
                    if not v3215.on then
                        goto L2
                    end
                    v4911()
                    ::L3::
                    do
                        return
                    end
                    do
                        return
                    end
                    ::L2::
                    v3215:set(true)
                    goto L3
                end)
            S.v3222(v967, "Slot (12)", 10)
            v5512 = 1
            v5611 = 12
            v5710 = 1
            ::L43::
            if not (0 < v5710) then
                goto L56
            end
            stk0 = v5512 <= v5611
            ::L24::
            if not stk0 then
                goto L61
            end
            v5911 = {}
            v5911.Size = UDim2.new(1, -8, 0, 66)
            v5911.BackgroundTransparency = 1
            v5911.LayoutOrder = 10 + v5512
            v5911.ZIndex = 3
            v5811 = S.v150("Frame", v5911, v967)
            v604 = {}
            v604.Position = UDim2.fromOffset(8, 4)
            v604.Size = UDim2.new(1, -16, 0, 18)
            v604.BackgroundTransparency = 1
            v604.Text = ("Slot " .. v5512) .. "   (asal  >  pengganti)"
            v604.Font = S.v1122
            v604.TextSize = 13
            v604.TextColor3 = S.v1212
            v604.TextXAlignment = Enum.TextXAlignment.Left
            v604.ZIndex = 4
            S.v150("TextLabel", v604, v5811)
            v6112 = function(a1212, a281, a345)
                    local v4141 = {
                        Position = a1212,
                        Size = a281,
                        BackgroundColor3 = S.v1152,
                        BackgroundTransparency = 0.35,
                        Text = "",
                        PlaceholderText = a345,
                        PlaceholderColor3 = S.v1202,
                        TextColor3 = S.v1212,
                        Font = S.v1122,
                        TextSize = 12,
                        ClearTextOnFocus = false,
                        TextXAlignment = Enum.TextXAlignment.Left,
                        ZIndex = 5
                    }
                    local v3150 = S.v150("TextBox", v4141, v5811)
                    S.v1522(v3150)
                    local v5133 = {Thickness = 1, Color = S.v1212, Transparency = 0.8}
                    S.v150("UIStroke", v5133, v3150)
                    local v6108 = {}
                    v6108.PaddingLeft = UDim.new(0, 12)
                    v6108.PaddingRight = UDim.new(0, 12)
                    S.v150("UIPadding", v6108, v3150)
                    return v3150
                end
            v6211 = v6112(UDim2.fromOffset(8, 26), UDim2.new(0.5, -12, 0, 30), "Emote asal...")
            v6311 = v6112(UDim2.new(0.5, 4, 0, 26), UDim2.new(0.5, -12, 0, 30), "Emote pengganti...")
            v6411 = {cur = v6211, tgt = v6311}
            v3137[v5512] = v6411
            v6510 = {}
            v6510.AnchorPoint = Vector2.new(0, 1)
            v6510.Position = UDim2.new(0, 6, 1, 0)
            v6510.Size = UDim2.new(1, -12, 0, 1)
            v6510.BackgroundColor3 = S.v1212
            v6510.BackgroundTransparency = 0.92
            v6510.BorderSizePixel = 0
            v6510.ZIndex = 3
            S.v150("Frame", v6510, v5811)
            v5512 = v5512 + v5710
            goto L43
            ::L61::
            _G.DELUX_EMOTE_CLEAN = function()
                    pcall(v4810)
                end
            Items2 = v058:FindFirstChild("Items")
            stk0 = Items2
            if not Items2 then
                goto L5
            end
            ::L5::
            v6710 = stk0
            if not v6710 then
                goto L63
            end
            v6910 = {
                ParticleEmitter = true,
                Beam = true,
                Trail = true,
                PointLight = true,
                SpotLight = true,
                SurfaceLight = true,
                Fire = true,
                Smoke = true,
                Sparkles = true
            }
            v703 = 8
            v7111 = function(a1213)
                    if v6910[a1213.ClassName] then
                        return true
                    end
                    local v1268, v2191, v3151 = ipairs(a1213:GetDescendants())
                    ::L3::
                    while true do
                        local v4143, v5134 = v1268(v2191, v3151)
                        v3151 = v4143
                        if not v4143 then
                            break
                        end
                        if not v6910[v5134.ClassName] then
                            goto L3
                        end
                    end
                    do
                        return false
                    end
                    return true
                end
            v7211 = function(a1214)
                    local tmp154 = a1214:IsA("JointInstance")
                    stk0 = tmp154
                    if tmp154 then
                        goto L2
                    end
                    ::L2::
                    return stk0
                end
            v7311 = function(a1215)
                    local tmp155 = not v7211(a1215)
                    stk0 = tmp155
                    if tmp155 then
                        if not a1215:IsA("BasePart") then
                            goto J1
                        end
                        ::L2::
                        ::J1::
                        goto L2
                    end
                    return stk0
                end
            v7411 = function(a1216)
                    return tostring(a1216):lower():gsub("[^%w]", "")
                end
            v7510 = function(a1217)
                    return tostring(a1217):gsub("^%s+", ""):gsub("%s+$", "")
                end
            v789 = {}
            v794 = {}
            v803 = function(a1218, a282)
                local tmp156, v790, v878
                    local v2193, v3153, v4144 = ipairs(a1218:GetChildren())
                    ::L10::
                    local v5135, v6109 = v2193(v3153, v4144)
                    v4144 = v5135
                    if not v5135 then
                        goto L15
                    end
                    if v6109:IsA("Folder") then
                        goto L3
                    end
                    stk0 = a282
                    if not a282 then
                        goto L12
                    end
                    ::L12::
                    if not stk0 then
                        goto L14
                    end
                    tmp156 = v6109:FindFirstChild("Character")
                    stk0 = tmp156
                    if not tmp156 then
                        goto L2
                    end
                    ::L6::
                    if not stk0 then
                        goto L14
                    end
                    v790 = v7411(v6109.Name)
                    if v789[v790] then
                        goto L14
                    end
                    v789[v790] = v6109
                    v878 = {key = v790, name = v6109.Name, inst = v6109}
                    table.insert(v794, v878)
                    ::L14::
                    goto L10
                    ::L2::
                    goto L6
                    ::L3::
                    stk0 = v803
                    stk1 = v6109
                    stk2 = a282
                    if a282 then
                        goto L1
                    end
                    ::L1::
                    stk0(stk1, stk2)
                    goto L14
                    ::L15::
                    return
                end
            pcall(v803, v6710, false)
            v8111 = function(a1219)
                    local v1269 = v7411(a1219)
                    if not (v1269 == "") then
                        goto L9
                    end
                    do
                        return nil
                    end
                    do
                        return
                    end
                    ::L9::
                    if not v789[v1269] then
                        goto L6
                    end
                    do
                        return v789[v1269]
                    end
                    do
                        return
                    end
                    ::L6::
                    local v2194 = nil
                    local v3154, v4145, v5136 = ipairs(v794)
                    ::L15::
                    local v6113, v791 = v3154(v4145, v5136)
                    v5136 = v6113
                    if not v6113 then
                        goto L7
                    end
                    if v791.key:find(v1269, 1, true) then
                        goto L2
                    end
                    ::L3::
                    goto L15
                    ::L2::
                    stk0 = not v2194
                    if v2194 then
                        goto L4
                    end
                    ::L13::
                    if not stk0 then
                        goto L3
                    end
                    v2194 = v791
                    goto L3
                    ::L4::
                    goto L13
                    ::L7::
                    stk0 = v2194
                    if not v2194 then
                        goto L11
                    end
                    ::L11::
                    if stk0 then
                        goto L5
                    end
                    ::L5::
                    return stk0
                end
            v8211 = function(a1220)
                    local v2195 = {}
                    for v6114, v795 in ipairs(a1220:GetChildren()) do
                        table.insert(v2195, v795.Name)
                    end
                    table.sort(v2195)
                    return table.concat(v2195, ",")
                end
            v8311 = function(a1221)
                    local v2196 = {}
                    local v879 = {"Character", "CharacterClassic"}
                    for v6115, v796 in ipairs(v879) do
                        local v970 = a1221:FindFirstChild(v796)
                        if v970 then
                            for v1340, v1439 in ipairs(v970:GetChildren()) do
                                if v1439:IsA("BasePart") then
                                    for v1830, v1927 in ipairs(v1439:GetChildren()) do
                                        if v7311(v1927) then
                                            local v2024 = {part = v1439.Name, cls = v1927.ClassName, name = v1927.Name}
                                            v2024.cs = v8211(v1927)
                                            table.insert(v2196, v2024)
                                        end
                                    end
                                end
                            end
                        end
                    end
                    return v2196
                end
            v8410 = function(a1222, a283)
                local v4146, v3216, v3315, tmp159, tmp158, v4148, v3911, v4011, v4713, v4811, v4912, v505, v5138, v1537, v1831, v1928, v2025, v2199, v2224, v2324, v2421, v2618, v2715, v2814
                local v2915, v3014, v3157, v3414, v3515, v3613, v3713, v3812, v4215, v4314, v4414, v4514, v4614, v5213, v5313, v5413, v5513, v5612, tmp160, v6511, v3155, v797, v880, v971
                local v1059, v11108, v1270, v1341, v1440, v5711, v5912, v605, v6118, v6212, v6312, v6412
                    local v2197 = S.v562(a1222)
                    stk0 = a283
                    stk1 = a283
                    stk2 = v2197 == "R15"
                    if not (v2197 == "R15") then
                        goto L41
                    end
                    ::L41::
                    if stk2 then
                        goto L27
                    end
                    ::L27::
                    if stk0(stk1, stk2) then
                        goto L30
                    end
                    if not a283:FindFirstChild("Character") then
                        goto L17
                    end
                    ::L30::
                    v3155 = stk0
                    if v3155 then
                        goto L8
                    end
                    v4146 = {}
                    do
                        return v4146
                    end
                    do
                        return
                    end
                    ::L8::
                    v797 = {}
                    v880 = {}
                    v971 = function(a1223, a284)
                        local tmp157
                            v880[a1223] = a284
                            local v2198 = a1223:GetDescendants()
                            local v3156 = a284:GetDescendants()
                            local v4147 = 1
                            local v5137 = #v2198
                            local v6116 = 1
                            ::L1::
                            if not (0 < v6116) then
                                goto L3
                            end
                            stk0 = v4147 <= v5137
                            ::L4::
                            if not stk0 then
                                goto L6
                            end
                            tmp157 = v3156[v4147]
                            v880[v2198[v4147]] = tmp157
                            v4147 = v4147 + v6116
                            goto L1
                            ::L6::
                            do
                                return
                            end
                            do
                                return
                            end
                            ::L3::
                            stk0 = v5137 <= v4147
                            goto L4
                        end
                    v1059, v11108, v1270 = ipairs(v3155:GetChildren())
                    ::L13::
                    v1341, v1440 = v1059(v11108, v1270)
                    v1270 = v1341
                    if not v1341 then
                        goto L15
                    end
                    if not v1440:IsA("BasePart") then
                        goto L37
                    end
                    v1537 = a1222:FindFirstChild(v1440.Name)
                    stk0 = v1537
                    if not v1537 then
                        goto L2
                    end
                    ::L2::
                    if not stk0 then
                        goto L37
                    end
                    v880[v1440] = v1537
                    v1831 = {}
                    v1928 = {}
                    v2025, v2199, v2224 = ipairs(v1440:GetChildren())
                    ::L46::
                    v2324, v2421 = v2025(v2199, v2224)
                    v2224 = v2324
                    if not v2324 then
                        goto L10
                    end
                    if v7311(v2421) then
                        goto L4
                    end
                    ::L53::
                    goto L46
                    ::L4::
                    table.insert(v1831, v2421)
                    v1928[v2421] = true
                    goto L53
                    ::L10::
                    v2618 = {}
                    v2715, v2814, v2915 = ipairs(v1440:GetChildren())
                    ::L24::
                    v3014, v3157 = v2715(v2814, v2915)
                    v2915 = v3014
                    if not v3014 then
                        goto L40
                    end
                    tmp158 = v7211(v3157)
                    stk0 = tmp158
                    if not tmp158 then
                        goto L35
                    end
                    ::L35::
                    if not stk0 then
                        goto L21
                    end
                    v3216 = nil
                    v3315 = nil
                    pcall(function()
                            v3216 = v3157.Part0
                            v3315 = v3157.Part1
                        end)
                    tmp159 = v1928[v3216]
                    stk0 = tmp159
                    if not tmp159 then
                        goto L5
                    end
                    ::L48::
                    if not stk0 then
                        goto L21
                    end
                    table.insert(v1831, v3157)
                    if not v1928[v3315] then
                        goto L18
                    end
                    v2618[v3315] = true
                    ::L18::
                    if not v1928[v3216] then
                        goto L21
                    end
                    v2618[v3216] = true
                    ::L21::
                    goto L24
                    ::L5::
                    goto L48
                    ::L40::
                    v3414, v3515, v3613 = ipairs(v1831)
                    ::L60::
                    v3713, v3812 = v3414(v3515, v3613)
                    v3613 = v3713
                    if not v3713 then
                        goto L56
                    end
                    v3911, v4011 = pcall(function()
                            return v3812:Clone()
                        end)
                    stk0 = v3911
                    if v3911 then
                        goto L20
                    end
                    ::L38::
                    if not stk0 then
                        goto L34
                    end
                    v971(v3812, v4011)
                    v4148 = {
                        orig = v3812,
                        clone = v4011,
                        cpart = v1537,
                        tpart = v1440
                    }
                    table.insert(v797, v4148)
                    ::L34::
                    goto L60
                    ::L20::
                    goto L38
                    ::L56::
                    v4215, v4314, v4414 = ipairs(v1831)
                    ::L11::
                    v4514, v4614 = v4215(v4314, v4414)
                    v4414 = v4514
                    if not v4514 then
                        goto L6
                    end
                    if v4614:IsA("BasePart") then
                        goto L22
                    end
                    ::L29::
                    goto L11
                    ::L22::
                    v4713, v4811, v4912 = ipairs(v4614:GetDescendants())
                    ::L43::
                    v505, v5138 = v4713(v4811, v4912)
                    v4912 = v505
                    if not v505 then
                        goto L29
                    end
                    if v7211(v5138) then
                        goto L52
                    end
                    goto L43
                    ::L52::
                    v2618[v4614] = true
                    goto L29
                    ::L6::
                    v5213, v5313, v5413 = ipairs(v797)
                    ::L50::
                    v5513, v5612 = v5213(v5313, v5413)
                    v5413 = v5513
                    if not v5513 then
                        goto L37
                    end
                    tmp160 = v5612.tpart == v1440
                    stk0 = tmp160
                    if tmp160 then
                        goto L9
                    end
                    ::L32::
                    if not stk0 then
                        goto L16
                    end
                    v5612.needWeld = true
                    ::L16::
                    goto L50
                    ::L9::
                    if not v5612.orig:IsA("BasePart") then
                        goto L32
                    end
                    goto L32
                    ::L37::
                    goto L13
                    ::L15::
                    v5711 = function(a1224)
                        local tmp162, v1344, v1274, v798, v881, v974, v1060, v11109, tmp163, v1929, v1441, v1538, v1635, v1735, v1834, v2026, tmp161
                            local v1271 = a1224:GetDescendants()
                            table.insert(v1271, a1224)
                            local v2200, v3158, v4149 = ipairs(v1271)
                            ::L1::
                            local v5139, v6117 = v2200(v3158, v4149)
                            v4149 = v5139
                            if not v5139 then
                                goto L22
                            end
                            tmp161 = v6117:IsA("Beam")
                            stk0 = tmp161
                            if not tmp161 then
                                goto L4
                            end
                            ::L13::
                            if not stk0 then
                                goto L19
                            end
                            v1274 = {"Attachment0", "Attachment1"}
                            v798, v881, v974 = ipairs(v1274)
                            ::L11::
                            v1060, v11109 = v798(v881, v974)
                            v974 = v1060
                            if not v1060 then
                                goto L3
                            end
                            v1344 = v6117[v11109]
                            stk0 = v1344
                            if v1344 then
                                goto L5
                            end
                            ::L17::
                            if not stk0 then
                                goto L10
                            end
                            tmp162 = v880[v1344]
                            v6117[v11109] = tmp162
                            ::L10::
                            goto L11
                            ::L5::
                            goto L17
                            ::L3::
                            ::L21::
                            goto L1
                            ::L19::
                            if not v7211(v6117) then
                                goto L21
                            end
                            v1929 = {"Part0", "Part1"}
                            v1441, v1538, v1635 = ipairs(v1929)
                            ::L6::
                            v1735, v1834 = v1441(v1538, v1635)
                            v1635 = v1735
                            if not v1735 then
                                goto L21
                            end
                            v2026 = v6117[v1834]
                            stk0 = v2026
                            if v2026 then
                                goto L9
                            end
                            ::L15::
                            if not stk0 then
                                goto L8
                            end
                            tmp163 = v880[v2026]
                            v6117[v1834] = tmp163
                            ::L8::
                            goto L6
                            ::L9::
                            goto L15
                            ::L4::
                            goto L13
                            ::L22::
                            return
                        end
                    v5912 = {}
                    v605, v6118, v6212 = ipairs(v797)
                    ::L54::
                    v6312, v6412 = v605(v6118, v6212)
                    v6212 = v6312
                    if not v6312 then
                        goto L7
                    end
                    v6511 = v6412.clone
                    pcall(function()
                            v5711(v6511)
                            local v067 = v6511:GetDescendants()
                            table.insert(v067, v6511)
                            for v4150, v5140 in ipairs(v067) do
                                if v5140:IsA("BasePart") then
                                    v5140.Anchored = false
                                    v5140.CanCollide = false
                                    v5140.CanTouch = false
                                    v5140.CanQuery = false
                                    v5140.Massless = true
                                end
                            end
                            v6511:SetAttribute("DLXU", true)
                            v6511.Parent = v6412.cpart
                            local tmp164 = v6412.needWeld
                            stk0 = tmp164
                            if stk0 then
                                local v6119 = Instance.new("Weld")
                                v6119.Name = "DLXU_Weld"
                                v6119.Part0 = v6412.cpart
                                v6119.Part1 = v6511
                                v6119.C0 = v6412.tpart.CFrame:Inverse() * v6412.orig.CFrame
                                v6119.Parent = v6511
                            end
                        end)
                    table.insert(v5912, v6511)
                    goto L54
                    ::L7::
                    do
                        return v5912
                    end
                    do
                        return
                    end
                    ::L17::
                    goto L30
                end
            v8610 = {}
            v8710 = {__mode = "k"}
            v8510 = setmetatable(v8610, v8710)
            v884 = function(a1225)
                    local v1275 = a1225:GetDescendants()
                    table.insert(v1275, a1225)
                    for v5141, v6120 in ipairs(v1275) do
                        pcall(function()
                            local v068, v1276
                                local tmp165 = v6120:IsA("ParticleEmitter")
                                stk0 = tmp165
                                if tmp165 then
                                    goto L8
                                end
                                if not v6120:IsA("Beam") then
                                    goto L6
                                end
                                ::L8::
                                if not stk0 then
                                    goto L12
                                end
                                if v6120.Enabled then
                                    goto L4
                                end
                                ::L18::
                                ::L19::
                                do
                                    return
                                end
                                do
                                    return
                                end
                                ::L4::
                                if v8510[v6120] == nil then
                                    goto L7
                                end
                                ::L14::
                                v6120.Enabled = false
                                if not v6120:IsA("ParticleEmitter") then
                                    goto L18
                                end
                                v6120:Clear()
                                goto L18
                                ::L7::
                                v068 = {prop = "Enabled", val = true}
                                v8510[v6120] = v068
                                goto L14
                                ::L12::
                                if not v6120:IsA("BasePart") then
                                    goto L19
                                end
                                if not (v6120.Transparency < 1) then
                                    goto L19
                                end
                                if not (v8510[v6120] == nil) then
                                    goto L3
                                end
                                v1276 = {prop = "Transparency", val = v6120.Transparency}
                                v8510[v6120] = v1276
                                ::L3::
                                v6120.Transparency = 1
                                goto L19
                                ::L6::
                                if v6120:IsA("Trail") then
                                    goto L8
                                end
                                if v6120:IsA("Fire") then
                                    goto L8
                                end
                                if v6120:IsA("Smoke") then
                                    goto L8
                                end
                                if v6120:IsA("Sparkles") then
                                    goto L8
                                end
                                goto L8
                            end)
                    end
                end
            v894 = function()
                    local v1278 = {}
                    for v5142, v6121 in pairs(v8510) do
                        local v799 = {v5142, v6121}
                        table.insert(v1278, v799)
                    end
                    for v11111, v1277 in ipairs(v1278) do
                        pcall(function()
                                local tmp166 = v1277[2].val
                                v1277[1][v1277[2].prop] = tmp166
                            end)
                        v8510[v1277[1]] = nil
                    end
                end
            v9211 = {}
            v9311 = {}
            v9410 = false
            v9510 = function(a1226)
                    for v4151, v5143 in ipairs(a1226) do
                        pcall(function()
                                v5143:Destroy()
                            end)
                    end
                end
            v9610 = function(a1227)
                    if a1227.byChar then
                        for v4153, v5144 in pairs(a1227.byChar) do
                            v9510(v5144.list)
                        end
                    end
                    local v6122 = {}
                    a1227.byChar = v6122
                end
            v975 = function(a1228, a285)
                    if not a1228 then
                        return false
                    end
                    if #a1228.list == 0 then
                        return a285 - a1228.t < 1.5
                    end
                    local v2201, v3159, v4154 = ipairs(a1228.list)
                    ::L2::
                    while true do
                        local v5145, v6123 = v2201(v3159, v4154)
                        v4154 = v5145
                        if not v5145 then
                            break
                        end
                        if v6123.Parent then
                            goto L2
                        end
                    end
                    do
                        return true
                    end
                    return false
                end
            v984 = function()
                    for v3160, v4155 in ipairs(v9211) do
                        v9610(v4155)
                    end
                    local v5146 = {}
                    v9211 = v5146
                    local v6124 = {}
                    v9311 = v6124
                    v894()
                end
            v994 = 0
            S.v8(S.RunService.Heartbeat, function()
                local v1280, v1345, v1444, v1539, v1636, v1736, v11112, v6125, v7100, v885, v976, v1061, v3813, v3415, v3516, v3614, v3714, v2423, v2518, v2619, v2716, v2815, v2916, v3015
                local v3163, v3217, v3316
                    local tmp167 = not v9410
                    stk0 = tmp167
                    if tmp167 then
                        goto L11
                    end
                    ::L11::
                    if not stk0 then
                        goto L25
                    end
                    do
                        return
                    end
                    do
                        return
                    end
                    ::L25::
                    local v069 = tick()
                    if not (v069 - v994 < 0.5) then
                        goto L34
                    end
                    do
                        return
                    end
                    do
                        return
                    end
                    ::L34::
                    v994 = v069
                    local v1279, v2203, v3161 = ipairs(S.v542(S.v5))
                    ::L29::
                    local v4156, v5147 = v1279(v2203, v3161)
                    v3161 = v4156
                    if not v4156 then
                        goto L18
                    end
                    v6125, v7100, v885 = ipairs(v5147:GetDescendants())
                    ::L9::
                    v976, v1061 = v6125(v7100, v885)
                    v885 = v976
                    if not v976 then
                        goto L21
                    end
                    v11112 = v9311[v1061.Name]
                    stk0 = v11112
                    if v11112 then
                        goto L6
                    end
                    ::L13::
                    if not stk0 then
                        goto L38
                    end
                    v1280 = v1061.Parent
                    v1345, v1444, v1539 = ipairs(v11112)
                    ::L42::
                    v1636, v1736 = v1345(v1444, v1539)
                    v1539 = v1636
                    if not v1636 then
                        goto L38
                    end
                    stk0 = v1280
                    if not v1280 then
                        goto L31
                    end
                    if v1280.Name == v1736.part then
                        goto L8
                    end
                    ::L31::
                    if not stk0 then
                        goto L20
                    end
                    v884(v1061)
                    ::L38::
                    goto L9
                    ::L20::
                    goto L42
                    ::L8::
                    if not (v1061.ClassName == v1736.cls) then
                        goto L31
                    end
                    goto L31
                    ::L6::
                    goto L13
                    ::L21::
                    goto L29
                    ::L18::
                    local v1835 = S.v542(S.v5)
                    if not (#v1835 == 0) then
                        goto L24
                    end
                    do
                        return
                    end
                    do
                        return
                    end
                    ::L24::
                    local v1930, v2027, v21100 = ipairs(v9211)
                    ::L40::
                    local v2225, v2325 = v1930(v2027, v21100)
                    v21100 = v2225
                    if not v2225 then
                        goto L45
                    end
                    v2423, v2518, v2619 = pairs(v2325.byChar)
                    ::L3::
                    v2716, v2815 = v2423(v2518, v2619)
                    v2619 = v2716
                    if not v2716 then
                        goto L2
                    end
                    if v2716.Parent then
                        goto L7
                    end
                    v9510(v2815.list)
                    v2325.byChar[v2716] = nil
                    ::L7::
                    goto L3
                    ::L2::
                    v2916, v3015, v3163 = ipairs(v1835)
                    ::L36::
                    v3217, v3316 = v2916(v3015, v3163)
                    v3163 = v3217
                    if not v3217 then
                        goto L44
                    end
                    v3415 = v2325.byChar[v3316]
                    if not v975(v3415, v069) then
                        goto L5
                    end
                    ::L33::
                    goto L36
                    ::L5::
                    if not v3415 then
                        goto L15
                    end
                    v9510(v3415.list)
                    ::L15::
                    v3516, v3614 = pcall(v8410, v3316, v2325.tgt)
                    v3714 = {}
                    stk0 = v3516
                    if not v3516 then
                        goto L27
                    end
                    ::L27::
                    if stk0 then
                        goto L17
                    end
                    v3813 = {}
                    ::L17::
                    v3714.list = stk0
                    v3714.t = v069
                    v2325.byChar[v3316] = v3714
                    goto L33
                    ::L44::
                    goto L40
                    ::L45::
                    return
                end)
            v10211 = {}
            v10310 = nil
            v10410 = function()
                local v7101, v886, v977, v1064, v11113, v5148, v6126, v2226, v2326, v1737, v1836, v1931, v2028, v21101, v1284, v1346, v1445, v1540, v1637
                    v984()
                    local v1281 = {}
                    local v2204 = 1
                    local v3164 = v703
                    local v4157 = 1
                    ::L6::
                    if not (0 < v4157) then
                        goto L1
                    end
                    stk0 = v2204 <= v3164
                    ::L21::
                    if not stk0 then
                        goto L14
                    end
                    v5148 = v7510(v10211[v2204].cur.Text)
                    v6126 = v7510(v10211[v2204].tgt.Text)
                    stk0 = not (v5148 == "")
                    if not (v5148 == "") then
                        goto L11
                    end
                    ::L30::
                    if not stk0 then
                        goto L27
                    end
                    v7101 = v8111(v5148)
                    v886 = v8111(v6126)
                    if v7101 then
                        goto L12
                    end
                    table.insert(v1281, v5148)
                    ::L12::
                    if v886 then
                        goto L4
                    end
                    table.insert(v1281, v6126)
                    ::L4::
                    stk0 = v7101
                    if not v7101 then
                        goto L8
                    end
                    ::L8::
                    if not stk0 then
                        goto L27
                    end
                    v977 = v8311(v7101)
                    if not (#v977 == 0) then
                        goto L17
                    end
                    table.insert(v1281, v5148 .. " (tanpa efek)")
                    ::L27::
                    v2204 = v2204 + v4157
                    goto L6
                    ::L17::
                    v1064 = {cur = v7101, tgt = v886, sig = v977}
                    v11113 = {}
                    v1064.byChar = v11113
                    table.insert(v9211, v1064)
                    goto L27
                    ::L11::
                    goto L30
                    ::L14::
                    v1284, v1346, v1445 = ipairs(v9211)
                    ::L19::
                    v1540, v1637 = v1284(v1346, v1445)
                    v1445 = v1540
                    if not v1540 then
                        goto L15
                    end
                    v1737, v1836, v1931 = ipairs(v1637.sig)
                    ::L28::
                    v2028, v21101 = v1737(v1836, v1931)
                    v1931 = v2028
                    if not v2028 then
                        goto L10
                    end
                    v2226 = v9311[v21101.name]
                    if not v2226 then
                        goto L3
                    end
                    ::L23::
                    table.insert(v2226, v21101)
                    goto L28
                    ::L3::
                    v2326 = {}
                    v2226 = v2326
                    v9311[v21101.name] = v2226
                    goto L23
                    ::L10::
                    goto L19
                    ::L15::
                    v9410 = 0 < #v9211
                    v994 = 0
                    if not (0 < #v1281) then
                        goto L2
                    end
                    warn("[DZ Delux] Unusual tidak ketemu: " .. table.concat(v1281, ", "))
                    S.v189("Tidak ketemu: " .. table.concat(v1281, ", "), S.v1222)
                    ::L24::
                    if not (#v9211 == 0) then
                        goto L32
                    end
                    v10310:set(false, true)
                    ::L32::
                    do
                        return
                    end
                    do
                        return
                    end
                    ::L2::
                    S.v189(("Unusual changer aktif (%d slot)"):format(#v9211), S.v1242)
                    goto L24
                    ::L1::
                    stk0 = v3164 <= v2204
                    goto L21
                end
            v10510 = function()
                local v11114, v1286, v1347, v1446
                    local v1285 = {}
                    local v2205, v3165, v4158 = ipairs(v794)
                    ::L6::
                    local v5149, v6127 = v2205(v3165, v4158)
                    v4158 = v5149
                    if not v5149 then
                        goto L14
                    end
                    table.insert(v1285, v6127.name)
                    goto L6
                    ::L14::
                    table.sort(v1285)
                    local v7102 = 1
                    local v887 = #v1285
                    local v978 = 40
                    ::L4::
                    if not (0 < v978) then
                        goto L1
                    end
                    stk0 = v7102 <= v887
                    ::L12::
                    if not stk0 then
                        goto L15
                    end
                    v11114 = {}
                    v1286 = v7102
                    v1347 = math.min(v7102 + 39, #v1285)
                    v1446 = 1
                    ::L9::
                    if not (0 < v1446) then
                        goto L11
                    end
                    stk0 = v1286 <= v1347
                    ::L2::
                    if not stk0 then
                        goto L8
                    end
                    table.insert(v11114, v1285[v1286])
                    v1286 = v1286 + v1446
                    goto L9
                    ::L8::
                    warn("[DZ Delux] cosmetic: " .. table.concat(v11114, ", "))
                    v7102 = v7102 + v978
                    goto L4
                    ::L11::
                    stk0 = v1347 <= v1286
                    goto L2
                    ::L15::
                    S.v189(#v1285 .. " nama dicetak ke console (F9)", S.v1242)
                    do
                        return
                    end
                    do
                        return
                    end
                    ::L1::
                    stk0 = v887 <= v7102
                    goto L12
                end
            S.v3222(v967, "Unusual Changer (Evade)", 101)
            v1074 = {}
            v1074.Size = UDim2.new(1, -8, 0, 18)
            v1074.BackgroundTransparency = 1
            stk0 = S.v150
            stk1 = "TextLabel"
            stk2 = 0 < #v794
            if not (0 < #v794) then
                goto L22
            end
            ::L22::
            if stk2 then
                goto L8
            end
            ::L8::
            v1074.Text = stk2
            v1074.Font = S.v1122
            v1074.TextSize = 11
            if not (0 < #v794) then
                goto L1
            end
            ::L1::
            if stk2 then
                goto L17
            end
            ::L17::
            v1074.TextColor3 = stk2
            v1074.TextXAlignment = Enum.TextXAlignment.Left
            v1074.TextTruncate = Enum.TextTruncate.AtEnd
            v1074.LayoutOrder = 102
            v1074.ZIndex = 4
            v1065 = stk0(stk1, v1074, v967)
            v1084 = {}
            v1084.PaddingLeft = UDim.new(0, 8)
            S.v150("UIPadding", v1084, v1065)
            v1094 = S.v3232(v967, "Unusual Changer", "Nyala = ganti, mati = kembalikan", 103)
            v10310 = S.v3242(v1094, false, function(a1229)
                    if not a1229 then
                        goto L2
                    end
                    v10410()
                    ::L3::
                    do
                        return
                    end
                    do
                        return
                    end
                    ::L2::
                    v9410 = false
                    v984()
                    S.v189("Unusual dikembalikan", S.v1202)
                    goto L3
                end)
            S.v3242(v1094, false, function(a1230)
                    if not a1230 then
                        goto L2
                    end
                    v10410()
                    ::L3::
                    do
                        return
                    end
                    do
                        return
                    end
                    ::L2::
                    v9410 = false
                    v984()
                    S.v189("Unusual dikembalikan", S.v1202)
                    goto L3
                end)
            v11011 = S.v3232(v967, "Terapkan Ulang", "Setelah ubah isi slot", 104)
            S.v3252(v11011, "Apply", false, function()
                    if not v10310.on then
                        goto L2
                    end
                    v10410()
                    ::L3::
                    do
                        return
                    end
                    do
                        return
                    end
                    ::L2::
                    v10310:set(true)
                    goto L3
                end)
            v11115 = S.v3232(v967, "Daftar Nama", "Cetak semua nama ke console (F9)", 105)
            S.v3252(v11115, "Cetak", false, v10510)
            S.v3222(v967, ("Slot Unusual (" .. v703) .. ")", 110)
            v11211 = 1
            v11411 = 1
            ::L20::
            if not (0 < v11411) then
                goto L36
            end
            stk0 = v11211 <= v703
            ::L13::
            if not stk0 then
                goto L28
            end
            v11610 = {}
            v11610.Size = UDim2.new(1, -8, 0, 66)
            v11610.BackgroundTransparency = 1
            v11610.LayoutOrder = 110 + v11211
            v11610.ZIndex = 3
            v11510 = S.v150("Frame", v11610, v967)
            v11710 = {}
            v11710.Position = UDim2.fromOffset(8, 4)
            v11710.Size = UDim2.new(1, -16, 0, 18)
            v11710.BackgroundTransparency = 1
            v11710.Text = ("Slot " .. v11211) .. "   (unusual asal  >  pengganti)"
            v11710.Font = S.v1122
            v11710.TextSize = 13
            v11710.TextColor3 = S.v1212
            v11710.TextXAlignment = Enum.TextXAlignment.Left
            v11710.ZIndex = 4
            S.v150("TextLabel", v11710, v11510)
            v11810 = function(a1231, a286, a346)
                    local v4159 = {
                        Position = a1231,
                        Size = a286,
                        BackgroundColor3 = S.v1152,
                        BackgroundTransparency = 0.35,
                        Text = "",
                        PlaceholderText = a346,
                        PlaceholderColor3 = S.v1202,
                        TextColor3 = S.v1212,
                        Font = S.v1122,
                        TextSize = 12,
                        ClearTextOnFocus = false,
                        TextXAlignment = Enum.TextXAlignment.Left,
                        ZIndex = 5
                    }
                    local v3166 = S.v150("TextBox", v4159, v11510)
                    S.v1522(v3166)
                    local v5150 = {Thickness = 1, Color = S.v1212, Transparency = 0.8}
                    S.v150("UIStroke", v5150, v3166)
                    local v6128 = {}
                    v6128.PaddingLeft = UDim.new(0, 12)
                    v6128.PaddingRight = UDim.new(0, 12)
                    S.v150("UIPadding", v6128, v3166)
                    return v3166
                end
            stk0 = v11810
            stk1 = UDim2.fromOffset(8, 26)
            stk2 = UDim2.new(0.5, -12, 0, 30)
            stk3 = v11211 == 1
            if not (v11211 == 1) then
                goto L18
            end
            ::L18::
            if stk3 then
                goto L33
            end
            ::L33::
            v11910 = stk0(stk1, stk2, stk3)
            if not (v11211 == 1) then
                goto L52
            end
            ::L52::
            if stk3 then
                goto L7
            end
            ::L7::
            v12010 = stk0(stk1, stk2, stk3)
            v12111 = {cur = v11910, tgt = v12010}
            v10211[v11211] = v12111
            v12210 = {}
            v12210.AnchorPoint = Vector2.new(0, 1)
            v12210.Position = UDim2.new(0, 6, 1, 0)
            v12210.Size = UDim2.new(1, -12, 0, 1)
            v12210.BackgroundColor3 = S.v1212
            v12210.BackgroundTransparency = 0.92
            v12210.BorderSizePixel = 0
            v12210.ZIndex = 3
            S.v150("Frame", v12210, v11510)
            v11211 = v11211 + v11411
            goto L20
            ::L28::
            v12310 = _G.DELUX_EMOTE_CLEAN
            _G.DELUX_EMOTE_CLEAN = function()
                    if v12310 then
                        pcall(v12310)
                    end
                    v9410 = false
                    pcall(v984)
                end
            ::L63::
            do
                return
            end
            do
                return
            end
            ::L36::
            stk0 = v703 <= v11211
            goto L13
            ::L56::
            stk0 = v5611 <= v5512
            goto L24
        end
    S.v4882()
    S.v4892 = 116
    S.v4902 = 34
    S.v4922 = {}
    S.v4922.Size = UDim2.fromOffset(S.v4892, S.v4902)
    S.v4922.BackgroundColor3 = S.v1142
    S.v4922.BackgroundTransparency = 0.08
    S.v4922.Text = ""
    S.v4922.AutoButtonColor = false
    S.v4913 = S.v150("TextButton", S.v4922, S.v1622)
    S.v151(S.v4913, 10)
    S.v156(S.v1532(S.v4913, S.v1322, 1.5, 0.1), "Color")
    S.v1922(S.v4913, UDim2.fromOffset(28, 16), UDim2.fromOffset(10, 9))
    S.v4932 = {}
    S.v4932.Position = UDim2.fromOffset(46, 0)
    S.v4932.Size = UDim2.new(1, -50, 1, 0)
    S.v4932.Font = S.v1132
    S.v1552(S.v4913, "DZ Delux", 12, S.v1212, S.v4932)
    S.v4942 = function(a1232, a287)
            local v2206 = S.v1652()
            local a1232 = math.clamp(a1232, 0, math.max(0, v2206.X - S.v4892))
            math.clamp(a1232, 0, math.max(0, v2206.X - S.v4892))
            local a287 = math.clamp(a287, 0, math.max(0, v2206.Y - S.v4902))
            math.clamp(a287, 0, math.max(0, v2206.Y - S.v4902))
            S.v4913.Position = UDim2.fromOffset(a1232, a287)
            UDim2.fromOffset(a1232, a287)
        end
    S.v4952 = function()
            local v070 = S.v1652()
            local tmp168 = S.v12.pillXs
            stk0 = tmp168
            if not tmp168 then
                goto L2
            end
            ::L2::
            if not stk0 then
                goto L4
            end
            S.v4942(S.v12.pillXs * v070.X, S.v12.pillYs * v070.Y)
            ::L5::
            do
                return
            end
            do
                return
            end
            ::L4::
            S.v4942((v070.X - S.v4892) / 2, 10)
            goto L5
        end
    S.v4962 = false
    S.v4972 = false
    S.v4982 = nil
    S.v4992 = nil
    S.v8(S.v4913.InputBegan, function(a1233)
            if S.v158(a1233) then
                S.v4962 = true
                S.v4972 = false
                S.v4982 = a1233.Position
                S.v4992 = S.v4913.AbsolutePosition
                a1233.Changed:Connect(function()
                        local tmp169 = a1233.UserInputState == Enum.UserInputState.End
                        stk0 = tmp169
                        if stk0 then
                            S.v4962 = false
                            if S.v4972 then
                                local v071 = S.v1652()
                                S.v12.pillXs = S.v4913.AbsolutePosition.X / v071.X
                                S.v12.pillYs = S.v4913.AbsolutePosition.Y / v071.Y
                                S.v19()
                                goto L6
                            end
                            S.v169.Visible = not S.v169.Visible
                        end
                        ::L6::
                    end)
            end
        end)
    S.v8(S.UserInputService.InputChanged, function(a1234)
        local v1287, tmp171
            local tmp170 = S.v4962
            stk0 = tmp170
            if not tmp170 then
                goto L4
            end
            ::L4::
            if not stk0 then
                goto L7
            end
            v1287 = a1234.Position - S.v4982
            tmp171 = S.v4972
            stk0 = tmp171
            if tmp171 then
                goto L2
            end
            ::L2::
            if not stk0 then
                goto L7
            end
            S.v4972 = true
            S.v4942(S.v4992.X + v1287.X, S.v4992.Y + v1287.Y)
            ::L7::
            return
        end)
    S.v501 = {
        Karakter = "Character",
        Teman = "Friends",
        ["Karakter kamu"] = "Your Character",
        ["Teman - Aksesoris"] = "Friend - Accessories",
        ["Teman - Karakter"] = "Friend - Character",
        ["Target Teman"] = "Friend Target",
        Lainnya = "Others",
        Sistem = "System",
        Tampilan = "Appearance",
        ["Sosial & Komunitas"] = "Social & Community",
        ["Bahasa & UI"] = "Language & UI",
        ["Ukuran Panel"] = "Panel Size",
        ["Besar / kecilkan UI"] = "Enlarge / shrink the UI",
        ["Tebal Border"] = "Border Thickness",
        ["Garis tepi panel"] = "Panel outline",
        ["Lengkung Sudut"] = "Corner Roundness",
        ["Bulat / kotak sudut panel"] = "Round / square panel corners",
        ["Warna Aksen"] = "Accent Color",
        ["Pilih warna tema"] = "Pick a theme color",
        ["Reset Tampilan"] = "Reset Appearance",
        ["Kembalikan ukuran, border & sudut"] = "Restore size, border & corners",
        ["Reset Posisi Tombol"] = "Reset Button Position",
        ["Tombol DZ Delux ke tengah atas"] = "Move DZ Delux button to top center",
        ["Jaga Terus"] = "Keep Applying",
        ["Pasang ulang tiap frame"] = "Re-apply every frame",
        ["Efek Aksesori"] = "Accessory Effects",
        ["Partikel & cahaya horns/crown"] = "Particles & glow on horns/crown",
        ["Parent ke Kamera"] = "Parent to Camera",
        ["Kalau item dihapus oleh map"] = "If the map removes your items",
        ["Respawn Karakter"] = "Respawn Character",
        ["Reset karakter (kamu mati)"] = "Reset character (you die)",
        ["Reset Semua"] = "Reset Everything",
        ["Matikan semua fitur & tema"] = "Turn off all features & theme",
        ["Info Karakter"] = "Character Info",
        ["Cetak struktur karakter ke console"] = "Print character structure to console",
        ["Tutup UI"] = "Close UI",
        ["Hapus UI & matikan fitur"] = "Delete UI & turn off features",
        Tutup = "Close",
        Hapus = "Delete",
        Cetak = "Print",
        Salin = "Copy",
        Bahasa = "Language",
        ["Pilih bahasa tampilan UI"] = "Choose the UI display language",
        ["Sembunyikan UI"] = "Hide UI",
        Sembunyi = "Hide",
        ["Sembunyikan UI"] = "Hide UI",
        Kamera = "Camera",
        ["Munculkan ikon kamera (tap untuk on/off)"] = "Show the camera icon (tap to toggle)",
        ["Munculkan ikon zoom, front view & leaderboard"] = "Show the zoom, front view & leaderboard icons",
        ["Reset Posisi Free Cam"] = "Reset Free Cam Position",
        ["Ikon mata & bar kecepatan ke awal"] = "Eye icon & speed bar back to default",
        ["Tekan titik hitam kecil untuk memunculkan lagi"] = "Tap the small black dot to bring it back",
        ["UI disembunyikan - tekan titik hitam untuk memunculkan"] = "UI hidden - tap the black dot to bring it back",
        ["Pengaturan direset"] = "Settings reset",
        ["Kaki kanan Korblox - otomatis R6 & R15"] = "Korblox right leg - auto R6 & R15",
        ["Hilangkan kepala & wajah - otomatis R6 & R15"] = "Remove head & face - auto R6 & R15",
        ["Matikan Korblox & Headless"] = "Turn off Korblox & Headless",
        ["Karakter belum siap"] = "Character not ready",
        ["Karakter tidak ketemu"] = "Character not found",
        Kamu = "You",
        ["Belum ada target"] = "No target yet",
        ["Set target dulu"] = "Set a target first",
        ["Set target dulu di tab Teman"] = "Set a target in the Friends tab first",
        ["Player tidak ketemu di server ini"] = "Player not found in this server",
        ["Target keluar dari server"] = "Target left the server",
        ["Normalkan karakter teman"] = "Normalize friend's character",
        ["Reset Teman"] = "Reset Friend",
        ["Username / display name..."] = "Username / display name...",
        Pilih = "Select",
        Pasang = "Apply",
        Lepas = "Remove",
        ["Lepas Semua"] = "Remove All",
        Atur = "Adjust",
        ["Atur aksesori"] = "Adjust accessory",
        Tambah = "Add",
        Favorit = "Favorites",
        Semua = "All",
        Segarkan = "Refresh",
        ["Pulihkan Bawaan"] = "Restore Defaults",
        ["Cari nama / ID..."] = "Search name / ID...",
        ["Asset ID / link"] = "Asset ID / link",
        ["Preview tidak tersedia"] = "Preview unavailable",
        ["geser = putar avatar"] = "drag = rotate avatar",
        Ukuran = "Size",
        ["Posisi X"] = "Position X",
        ["Posisi Y"] = "Position Y",
        ["Posisi Z"] = "Position Z",
        ["Rotasi X"] = "Rotation X",
        ["Rotasi Y"] = "Rotation Y",
        ["Rotasi Z"] = "Rotation Z",
        ["Geser Kiri / Kanan"] = "Move Left / Right",
        ["Geser Maju / Mundur"] = "Move Forward / Back",
        ["Geser Naik / Turun"] = "Move Up / Down",
        ["Reset Ukuran & Posisi"] = "Reset Size & Position",
        ["Ukuran & posisi direset"] = "Size & position reset",
        ["Hanya mengubah aksesori ini, bukan ukuran karakter."] = "Only changes this accessory, not your character size.",
        ["Tutup Pengaturan"] = "Close Adjustments"
    }
    tmp172 = ("Belum ada favorit yang cocok. Tekan " .. utf8.char(9734)) .. " pada kartu untuk menambah."
    tmp173 = ("No matching favorites. Press " .. utf8.char(9734)) .. " on a card to add one."
    tmp172 = ("Belum ada favorit yang cocok. Tekan " .. utf8.char(9734)) .. " pada kartu untuk menambah."
    tmp173 = ("No matching favorites. Press " .. utf8.char(9734)) .. " on a card to add one."
    S.v501[tmp172] = tmp173
    S.v501["Belum ada item dipilih.\nTekan Pilih / Pasang pada kartu."] = "No item selected.\nPress Select / Apply on a card."
    S.v501["Katalog kosong. Masukkan Asset ID lalu tekan Tambah,\natau tekan Pulihkan Bawaan."] = "Catalog is empty. Enter an Asset ID then press Add,\nor press Restore Defaults."
    S.v501["Tidak ada item yang cocok dengan pencarian."] = "No items match your search."
    S.v501["Ditambah ke Favorit"] = "Added to Favorites"
    S.v501["Dihapus dari Favorit"] = "Removed from Favorites"
    S.v501["Pilih aksesori dulu"] = "Select an accessory first"
    S.v501["ID tidak valid. Isi angka Asset ID atau link item"] = "Invalid ID. Enter a numeric Asset ID or item link"
    S.v501["Sudah ada di katalog"] = "Already in the catalog"
    S.v501["Tunggu sebentar..."] = "Please wait..."
    S.v501["Semua aksesori katalog dilepas"] = "All catalog accessories removed"
    S.v501["Semua item bawaan sudah ada"] = "All default items already exist"
    S.v501["Katalog visual + ukuran"] = "Visual catalog + sizing"
    S.v501["Visual lokal, cuma terlihat di layarmu"] = "Local visual, only visible on your screen"
    S.v501["Mahkota pixel + efek kilau"] = "Pixel crown + sparkle effect"
    S.v501["Tanduk api neraka"] = "Hellfire horns"
    S.v501["Tanduk es beku"] = "Frozen ice horns"
    S.v501["Tanduk beracun + efek"] = "Poison horns + effect"
    S.v501["Kucing pixel"] = "Pixel cat"
    S.v501["Bar HP pixel"] = "Pixel HP bar"
    S.v501["Peri musim dingin"] = "Winter fairy"
    S.v501["Mahkota raja perak"] = "Silver king crown"
    S.v501["Topi Lord of the Federation"] = "Lord of the Federation hat"
    S.v501["Kacamata hati"] = "Heart glasses"
    S.v501["UFO melayang"] = "Hovering UFO"
    S.v501["Fedora arcane"] = "Arcane fedora"
    S.v501["Fedora pixel"] = "Pixel fedora"
    S.v501["Username Roblox"] = "Roblox Username"
    S.v501["Username (orangnya tidak harus ada di server)"] = "Username (they don't need to be in the server)"
    S.v501["Isi username dulu"] = "Enter a username first"
    S.v501["Username tidak ditemukan"] = "Username not found"
    S.v501["Gagal ambil data avatar"] = "Failed to fetch avatar data"
    S.v501["Error, cek console"] = "Error, check console"
    S.v501["Model belum ada. Otomatis dipasang saat muncul."] = "Model not found yet. Auto-applied when it appears."
    S.v501["Kembalikan avatar asli"] = "Restore original avatar"
    S.v501["Reset Visual"] = "Reset Visual"
    S.v501["Reset Karakter"] = "Reset Character"
    S.v501["Tidak ada yang perlu dikembalikan"] = "Nothing to restore"
    S.v501["Gagal reset, cek console"] = "Reset failed, check console"
    S.v501["Siap. Hanya terlihat di layarmu."] = "Ready. Only visible on your screen."
    S.v501["Terapkan Ulang"] = "Re-apply"
    S.v501["Khusus Evade"] = "Evade only"
    S.v501["Script bawaan"] = "Built-in scripts"
    S.v501["Script emote (belum diverifikasi)"] = "Emote script (unverified)"
    S.v501["Link sendiri"] = "Your own link"
    S.v501["Link raw script (https://...)"] = "Raw script link (https://...)"
    S.v501["Simpan jadi card"] = "Save as card"
    S.v501["Executor tidak support loadstring"] = "Executor does not support loadstring"
    S.v501["Gagal download script"] = "Failed to download script"
    S.v501["Script dijalankan"] = "Script executed"
    S.v501["Script error saat jalan (cek console)"] = "Script error while running (check console)"
    S.v501["Link harus diawali http:// atau https://"] = "Link must start with http:// or https://"
    S.v501["Link sudah ada di daftar"] = "Link is already in the list"
    S.v501["Unlock All (Evade)"] = "Unlock All (Evade)"
    S.v501["Buka semua emote, unusual, cosmetic, nametag & carry (visual)."] = "Unlock all emotes, unusuals, cosmetics, nametags & carry (visual)."
    S.v501["Nyala = unlock semua, mati = kembalikan"] = "On = unlock everything, off = restore"
    S.v501["Unlock All aktif"] = "Unlock All enabled"
    S.v501["Unlock All dimatikan"] = "Unlock All disabled"
    S.v501["Link Unlock All belum diisi"] = "Unlock All link is not set yet"
    S.v501["Gagal download Unlock All"] = "Failed to download Unlock All"
    S.v501["Unlock All gagal dimuat"] = "Unlock All failed to load"
    S.v501["Gagal mengaktifkan"] = "Failed to enable"
    S.v501["Bukan di Evade / modul tidak ketemu"] = "Not in Evade / modules not found"
    S.v501["Dukung Admin"] = "Support the Admin"
    S.v501["Donate via Saweria"] = "Donate via Saweria"
    S.v501["Traktir admin biar makin semangat update & fitur baru"] = "Treat the admin so updates & new features keep coming"
    S.v501["Link Saweria"] = "Saweria link"
    S.v501["Link Saweria disalin, terima kasih!"] = "Saweria link copied, thank you!"
    S.v501["Nyala = ganti, mati = kembalikan"] = "On = replace, off = restore"
    S.v501["Nyala = terapkan, mati = kembalikan"] = "On = apply, off = restore"
    S.v501["Setelah ubah isi slot"] = "After editing slots"
    S.v501["Isi emote asal & pengganti (nama / ID), lalu nyalakan."] = "Fill in original & replacement emotes (name / ID), then turn it on."
    S.v501["Ketik nama asal & pengganti, contoh: Ducky Waterfall > Toxic Inferno"] = "Type the original & replacement names, e.g. Ducky Waterfall > Toxic Inferno"
    S.v501["Emote asal..."] = "Original emote..."
    S.v501["Emote pengganti..."] = "Replacement emote..."
    S.v501["Unusual asal..."] = "Original unusual..."
    S.v501["Unusual pengganti..."] = "Replacement unusual..."
    S.v501["Emote dikembalikan"] = "Emotes restored"
    S.v501["Unusual dikembalikan"] = "Unusuals restored"
    S.v501["Emote error, cek console (F9)"] = "Emote error, check console (F9)"
    S.v501["Executor/modul tidak lengkap, emote mungkin tidak berubah."] = "Executor/module incomplete, emotes may not change."
    S.v501["Daftar Nama"] = "Name List"
    S.v501["Cetak semua nama ke console (F9)"] = "Print all names to console (F9)"
    S.v501["Tidak ada cosmetic ditemukan di game ini."] = "No cosmetics found in this game."
    S.v501["Slot (12)"] = "Slots (12)"
    S.v501["Changer hanya ada di Evade"] = "Changer is only available in Evade"
    S.v501["coba pakai"] = "try using"
    S.v501["Lighting & Waktu"] = "Lighting & Time"
    S.v501["Waktu Hari"] = "Time of Day"
    S.v501.Subuh = "Dawn"
    S.v501.Pagi = "Morning"
    S.v501.Siang = "Noon"
    S.v501.Sore = "Afternoon"
    S.v501.Senja = "Sunset"
    S.v501.Malam = "Night"
    S.v501["Tengah Malam"] = "Midnight"
    S.v501["Jam 05:30 - langit mulai terang"] = "05:30 - the sky starts to brighten"
    S.v501["Jam 08:00 - cahaya lembut"] = "08:00 - soft light"
    S.v501["Jam 12:00 - matahari terik"] = "12:00 - blazing sun"
    S.v501["Jam 16:30 - cahaya hangat"] = "16:30 - warm light"
    S.v501["Jam 18:20 - matahari terbenam"] = "18:20 - the sun sets"
    S.v501["Jam 20:30 - gelap berbintang"] = "20:30 - dark and starry"
    S.v501["Jam 00:00 - paling gelap"] = "00:00 - darkest hour"
    S.v501["Jam Manual"] = "Manual Time"
    S.v501["Geser untuk pilih jam (0-24)"] = "Drag to pick the hour (0-24)"
    S.v501["Siklus Hari Otomatis"] = "Auto Day Cycle"
    S.v501["Pagi - siang - sore - malam berputar"] = "Morning - noon - evening - night loop"
    S.v501["Kecepatan Siklus"] = "Cycle Speed"
    S.v501["Jam game per detik"] = "Game hours per second"
    S.v501["Waktu Asli"] = "Original Time"
    S.v501["Kembalikan jam bawaan map"] = "Restore the map's own time"
    S.v501.Awan = "Clouds"
    S.v501.Cuaca = "Weather"
    S.v501["Kunci Lighting"] = "Lock Lighting"
    S.v501["Cegah map menimpa pengaturan shader"] = "Stop the map from overriding shader settings"
    S.v501["Matikan Semua Shader"] = "Disable All Shaders"
    S.v501["Matikan shader, awan, cuaca & waktu"] = "Turn off shaders, clouds, weather & time"
    S.v501.Matikan = "Disable"
    S.v501["Nuansa film, hangat & dramatis"] = "Warm, dramatic film look"
    S.v501["Warna pekat & cerah"] = "Rich, bright colors"
    S.v501["Siang natural seperti aslinya"] = "Natural daylight, true to life"
    S.v501["Malam biru gelap"] = "Dark blue night"
    S.v501["Siang realistis, tajam & jernih"] = "Realistic, sharp & clear daytime"
    S.v501["Sunset sinematik oranye"] = "Cinematic orange sunset"
    S.v501["Malam gelap & moody"] = "Dark, moody night"
    S.v501["Warna super hidup & bersih"] = "Super vivid & clean colors"
    S.v501["Cahaya emas sore hari"] = "Golden evening light"
    S.v501["Pantai tropis biru toska"] = "Turquoise tropical beach"
    S.v501["Malam neon ungu-pink"] = "Purple-pink neon night"
    S.v501["Gelap, berkabut & seram"] = "Dark, foggy & creepy"
    S.v501["Warna pastel lembut"] = "Soft pastel colors"
    S.v501["Panas gurun menyengat"] = "Scorching desert heat"
    S.v501["Dingin es kebiruan"] = "Icy blue cold"
    S.v501["Warna pudar ala film jadul"] = "Faded old-film colors"
    S.v501["Hitam putih kontras tinggi"] = "High-contrast black & white"
    S.v501["Bulan darah merah pekat"] = "Deep red blood moon"
    S.v501["Awan Anime"] = "Anime Clouds"
    S.v501["Awan Realistis"] = "Realistic Clouds"
    S.v501["Awan tebal ala anime"] = "Fluffy anime-style clouds"
    S.v501["Awan natural berlapis"] = "Natural layered clouds"
    S.v501.Hujan = "Rain"
    S.v501.Salju = "Snow"
    S.v501.Kabut = "Fog"
    S.v501["Hujan deras + langit mendung"] = "Heavy rain + overcast sky"
    S.v501["Salju turun + langit putih"] = "Falling snow + white sky"
    S.v501["Kabut tebal pagi hari"] = "Thick morning fog"
    S.v501["Pakaian Classic"] = "Classic Clothing"
    S.v501["Baju (Shirt)"] = "Shirt"
    S.v501["Celana (Pants)"] = "Pants"
    S.v501["T-Shirt (Graphic)"] = "T-Shirt (Graphic)"
    S.v501["Belum dipasang"] = "Not applied"
    S.v501["Memuat..."] = "Loading..."
    S.v501.Terpasang = "Applied"
    S.v501.Pasang = "Apply"
    S.v501.Lepas = "Remove"
    S.v501["Asset ID / link..."] = "Asset ID / link..."
    S.v501["Set Kamu"] = "Your Sets"
    S.v501["Set Teman"] = "Friend Sets"
    S.v501["Nama set..."] = "Set name..."
    S.v501.Simpan = "Save"
    S.v501.Pakai = "Use"
    S.v501["Belum ada set tersimpan"] = "No saved sets yet"
    S.v501.Kosong = "Empty"
    S.v501["ID tidak valid"] = "Invalid ID"
    S.v501["Gagal memuat ID itu"] = "Failed to load that ID"
    S.v501["Set tersimpan"] = "Set saved"
    S.v501["Set diperbarui"] = "Set updated"
    S.v501["Set dihapus"] = "Set deleted"
    S.v501["Set dipakai"] = "Set applied"
    S.v501["Belum ada yang bisa disimpan"] = "Nothing to save yet"
    S.v501["Maksimal 30 set"] = "Max 30 sets"
    S.v501["Beberapa aksesori set tidak ada di katalog"] = "Some of the set's accessories are not in the catalog"
    S.v501["Selamat datang di DZ Delux Zephyr!"] = "Welcome to DZ Delux Zephyr!"
    S.v501["Mengukur..."] = "Measuring..."
    S.v501["Umur Akun"] = "Account Age"
    S.v501.Versi = "Version"
    S.v501["Pemain di Server"] = "Players in Server"
    S.v501["Terima kasih sudah memakai script ini"] = "Thank you for using this script"
    S.v501["Dapatkan update, dukungan, dan bergabung bersama komunitas DZ Delux Zephyr."] = "Get updates, support, and join the DZ Delux Zephyr community."
    S.v501["Console dibuka"] = "Console opened"
    S.v501["Console tidak bisa dibuka (tekan F9)"] = "Couldn't open console (press F9)"
    S.v501["Link Discord disalin!"] = "Discord link copied!"
    S.v5032 = {}
    S.v5042, S.v5052, S.v506 = pairs(S.v500)
    ::L7::
    S.v507, S.v508 = S.v5042(S.v5052, S.v506)
    S.v506 = S.v507
    if not S.v507 then
        goto L111
    end
    S.v5022[S.v507:lower()] = S.v508
    goto L7
    ::L111::
    S.v51010 = {}
    S.v51110 = {
        "^Rig: (.-)  |  Item: (%d+)  |  Teman: (.*)$",
        "Rig: %1  |  Items: %2  |  Friends: %3"
    }
    S.v51010[1] = S.v51110
    S.v51210 = {
        "^Rig terdeteksi: (.-)  %-  Korblox & Headless otomatis cocok$",
        "Detected rig: %1  -  Korblox & Headless auto-fit"
    }
    S.v51010[2] = S.v51210
    S.v51310 = {
        "^Terpasang: (%d+)  |  Total: (%d+)$",
        "Worn: %1  |  Total: %2"
    }
    S.v51010[3] = S.v51310
    S.v51410 = {"^Dipilih: (.-)\nID (.*)$", "Selected: %1\nID %2"}
    S.v51010[4] = S.v51410
    S.v5152 = {"^Terpasang: (.*)$", "Applied: %1"}
    S.v51010[5] = S.v5152
    S.v5162 = {"^Dilepas: (.*)$", "Removed: %1"}
    S.v51010[6] = S.v5162
    S.v5172 = {"^Gagal memasang (.*)$", "Failed to apply %1"}
    S.v51010[7] = S.v5172
    S.v5182 = {
        "^Gagal memuat ID (.-) %(bukan aksesori / tidak tersedia%)$",
        "Failed to load ID %1 (not an accessory / unavailable)"
    }
    S.v51010[8] = S.v5182
    S.v5192 = {
        "^Gagal memuat (.-) %(bukan aksesori / tidak tersedia%)$",
        "Failed to load %1 (not an accessory / unavailable)"
    }
    S.v51010[9] = S.v5192
    S.v5202 = {
        "^Dihapus dari katalog: (.*)$",
        "Removed from catalog: %1"
    }
    S.v51010[10] = S.v5202
    S.v5214 = {
        "^Katalog penuh %(maks (%d+) item%)$",
        "Catalog full (max %1 items)"
    }
    S.v51010[11] = S.v5214
    S.v5222 = {"^Memuat (.-)%.%.%.$", "Loading %1..."}
    S.v51010[12] = S.v5222
    S.v5232 = {
        "^Aksesori layered belum didukung: (.*)$",
        "Layered accessories not supported: %1"
    }
    S.v51010[13] = S.v5232
    S.v5242 = {
        "^ID (.-) bukan aksesori %(tipe (.-)%)$",
        "ID %1 is not an accessory (type %2)"
    }
    S.v51010[14] = S.v5242
    S.v5252 = {"^Ditambahkan: (.*)$", "Added: %1"}
    S.v51010[15] = S.v5252
    S.v5262 = {
        "^Dipulihkan: (%d+) item bawaan$",
        "Restored: %1 default items"
    }
    S.v51010[16] = S.v5262
    S.v5272 = {"^Ambil data (.-)%.%.%.$", "Fetching %1 data..."}
    S.v51010[17] = S.v5272
    S.v5282 = {"^Dipasang (%d+)/(%d+) model$", "Applied %1/%2 models"}
    S.v51010[18] = S.v5282
    S.v5292 = {
        "^Avatar (.-) dipasang %(visual%)$",
        "Avatar %1 applied (visual)"
    }
    S.v51010[19] = S.v5292
    S.v5302 = {
        "^Visual dikembalikan %((%d+) model%)$",
        "Visual restored (%1 models)"
    }
    S.v51010[20] = S.v5302
    S.v5314 = {"^Card disimpan: (.*)$", "Card saved: %1"}
    S.v51010[21] = S.v5314
    S.v5322 = {
        "^Emote changer aktif %((%d+) diganti%)$",
        "Emote changer active (%1 replaced)"
    }
    S.v51010[22] = S.v5322
    S.v5332 = {
        "^Unusual changer aktif %((%d+) slot%)$",
        "Unusual changer active (%1 slots)"
    }
    S.v51010[23] = S.v5332
    S.v5342 = {"^Tidak ketemu: (.*)$", "Not found: %1"}
    S.v51010[24] = S.v5342
    S.v5352 = {
        "^(%d+) nama dicetak ke console %(F9%)$",
        "%1 names printed to console (F9)"
    }
    S.v51010[25] = S.v5352
    S.v5362 = {"^(.-): link disalin!$", "%1: link copied!"}
    S.v51010[26] = S.v5362
    S.v5372 = {"^(%d+) item$", "%1 items"}
    S.v51010[27] = S.v5372
    S.v5382 = {"^(%d+) hari$", "%1 days"}
    S.v51010[28] = S.v5382
    S.v5392 = {
        "^Slot (%d+)   %(asal  >  pengganti%)$",
        "Slot %1   (original  >  replacement)"
    }
    S.v51010[29] = S.v5392
    S.v5402 = {
        "^Slot (%d+)   %(unusual asal  >  pengganti%)$",
        "Slot %1   (original unusual  >  replacement)"
    }
    S.v51010[30] = S.v5402
    S.v5414 = {"^SLOT UNUSUAL %((%d+)%)$", "UNUSUAL SLOTS (%1)"}
    S.v51010[31] = S.v5414
    S.v5422 = {"^Atur: (.*)$", "Adjust: %1"}
    S.v51010[32] = S.v5422
    S.v5432 = {"^Kamu  %-  (.*)$", "You  -  %1"}
    S.v51010[33] = S.v5432
    S.v5442 = {"^Teman  %-  (.*)$", "Friend  -  %1"}
    S.v51010[34] = S.v5442
    S.v5452 = function(a1235)
        local tmp175
            local tmp174 = not (type(a1235) == "string")
            stk0 = tmp174
            if tmp174 then
                goto L13
            end
            ::L13::
            if not stk0 then
                goto L8
            end
            do
                return a1235
            end
            do
                return
            end
            ::L8::
            local v1288 = S.v5022[a1235:lower()]
            if not v1288 then
                goto L15
            end
            tmp175 = a1235:find("%a")
            stk0 = tmp175
            if tmp175 then
                goto L3
            end
            ::L5::
            if not stk0 then
                goto L7
            end
            do
                return v1288:upper()
            end
            do
                return
            end
            ::L7::
            do
                return v1288
            end
            do
                return
            end
            ::L3::
            goto L5
            ::L15::
            local v2207, v3167, v4160 = ipairs(S.v509)
            ::L10::
            local v5151, v6129 = v2207(v3167, v4160)
            v4160 = v5151
            if not v5151 then
                goto L12
            end
            if a1235:find(v6129[1]) then
                goto L2
            end
            goto L10
            ::L2::
            do
                return a1235:gsub(v6129[1], v6129[2])
            end
            do
                return
            end
            ::L12::
            return a1235
        end
    if not (S.v12.lang == "en") then
        goto L90
    end
    ::L90::
    if stk7 then
        goto L68
    end
    ::L68::
    S.v5462 = stk7
    S.v5482 = {}
    S.v5492 = {__mode = "k"}
    S.v5472 = setmetatable(S.v5482, S.v5492)
    S.v5514 = {}
    S.v5522 = function(a1236, a288, a347)
        local v4161
            local tmp176 = S.v5462 == "en"
            stk0 = tmp176
            if not (tmp176) then
                goto L2
            end
            ::L2::
            if stk0 then
                goto L4
            end
            ::L4::
            local v3168 = stk0
            if a347.last then
                goto L6
            end
            v4161 = {}
            ::L6::
            a347.last = stk0
            a347.last[a288] = v3168
            if a1236[a288] == v3168 then
                goto L8
            end
            a1236[a288] = v3168
            ::L8::
            return
        end
    S.v5532 = function(a1237, a289)
            local v2208 = S.v5472[a1237]
            local tmp177 = a1237[a289]
            v2208[a289] = tmp177
            S.v5522(a1237, a289, v2208)
            a1237:GetPropertyChangedSignal(a289):Connect(function()
                    local v072 = a1237[a289]
                    local tmp178 = v2208.last
                    stk0 = tmp178
                    if stk0 then
                        return
                    end
                    v2208[a289] = v072
                    S.v5522(a1237, a289, v2208)
                end)
        end
    S.v5542 = function(a1238)
        local v1289
            if not S.v5472[a1238] then
                goto L6
            end
            do
                return
            end
            do
                return
            end
            ::L6::
            if not a1238:IsA("TextBox") then
                goto L2
            end
            v1289 = {}
            S.v5472[a1238] = v1289
            S.v5532(a1238, "PlaceholderText")
            ::L8::
            do
                return
            end
            do
                return
            end
            ::L2::
            local tmp179 = a1238:IsA("TextLabel")
            stk0 = tmp179
            if tmp179 then
                goto L4
            end
            ::L4::
            if not stk0 then
                goto L8
            end
            local v2209 = {}
            S.v5472[a1238] = v2209
            S.v5532(a1238, "Text")
            goto L8
        end
    S.v5552, S.v5562, S.v5572 = ipairs(S.v1622:GetDescendants())
    ::L94::
    S.v5582, S.v5592 = S.v5552(S.v5562, S.v5572)
    S.v5572 = S.v5582
    if not S.v5582 then
        goto L46
    end
    S.v5542(S.v5592)
    goto L94
    ::L46::
    S.v8(S.v1622.DescendantAdded, S.v5542)
    S.v4210.lang = S.v5462
    S.v4210.tr = S.v5452
    S.v4210.langHooks = S.v5502
    S.v4210.setLang = function(a1239)
            stk0 = not (a1239 == "en")
            if stk0 then
                return
            end
            S.v5462 = a1239
            S.v4210.lang = a1239
            S.v12.lang = a1239
            for v4163, v5153 in pairs(S.v5472) do
                if v4163.Parent then
                    for v979, v1066 in pairs(v5153) do
                        if not (v979 == "last") then
                            S.v5522(v4163, v979, v5153)
                        end
                    end
                end
            end
            if S.v4210.langRefresh then
                pcall(S.v4210.langRefresh, a1239)
            end
            for v1447, v1541 in ipairs(S.v5502) do
                pcall(v1541, a1239)
            end
            local tmp180 = S.v4210.ui
            stk0 = tmp180
            if stk0 then
                pcall(S.v4210.ui.apply)
            end
            S.v19()
        end
    if not S.v4210.langRefresh then
        goto L119
    end
    pcall(S.v4210.langRefresh, S.v5462)
    ::L119::
    S.v5602, S.v5613, S.v5622 = ipairs(S.v5502)
    ::L84::
    S.v5632, S.v5642 = S.v5602(S.v5613, S.v5622)
    S.v5622 = S.v5632
    if not S.v5632 then
        goto L82
    end
    pcall(S.v5642, S.v5462)
    goto L84
    ::L82::
    S.v5652 = false
    S.v5662 = 18
    S.v5682 = {}
    S.v5682.Size = UDim2.fromOffset(S.v5662, S.v5662)
    S.v5682.BackgroundColor3 = Color3.new(0, 0, 0)
    S.v5682.BackgroundTransparency = 0
    S.v5682.Text = ""
    S.v5682.AutoButtonColor = false
    S.v5682.Visible = false
    S.v5682.ZIndex = 100
    S.v5672 = S.v150("TextButton", S.v5682, S.v1622)
    S.v151(S.v5672, S.v5662 / 2)
    S.v1532(S.v5672, S.v1212, 1, 0.55)
    S.v5692 = function(a1240, a290)
            local v2227 = S.v1652()
            local a1240 = math.clamp(a1240, 0, math.max(0, v2227.X - S.v5662))
            math.clamp(a1240, 0, math.max(0, v2227.X - S.v5662))
            local a290 = math.clamp(a290, 0, math.max(0, v2227.Y - S.v5662))
            math.clamp(a290, 0, math.max(0, v2227.Y - S.v5662))
            S.v5672.Position = UDim2.fromOffset(a1240, a290)
            UDim2.fromOffset(a1240, a290)
        end
    S.v5702 = function()
            S.v5652 = false
            S.v5672.Visible = false
            S.v169.Visible = true
            S.v4913.Visible = true
        end
    S.v5712 = function()
            S.v5652 = true
            S.v169.Visible = false
            S.v4913.Visible = false
            if not S.v5672.Visible then
                local v073, v1290, v2228 = pcall(function()
                        return S.v4913.AbsolutePosition.X + (S.v4892 - S.v5662) / 2, S.v4913.AbsolutePosition.Y + 4
                    end)
                stk0 = v073
                if stk0 then
                    S.v5692(v1290, v2228)
                    goto L7
                end
                S.v5692(S.v1652().X / 2 - S.v5662 / 2, 12)
            end
            ::L7::
            S.v5672.Visible = true
            pcall(function()
                    local v074 = {Title = "DZ Delux Zephyr"}
                    stk0 = game:GetService("StarterGui")
                    stk1 = game:GetService("StarterGui")
                    stk2 = "SendNotification"
                    local tmp181 = S.v4210.lang == "en"
                    stk3 = tmp181
                    if not (tmp181) then
                        goto L2
                    end
                    ::L2::
                    if stk3 then
                        goto L4
                    end
                    ::L4::
                    v074.Text = stk3
                    v074.Duration = 3
                    stk0(stk1, stk2, v074)
                    return
                end)
        end
    S.v5722 = false
    S.v5732 = false
    S.v5742 = nil
    S.v5752 = nil
    S.v8(S.v5672.InputBegan, function(a1241)
            if S.v158(a1241) then
                S.v5722 = true
                S.v5732 = false
                S.v5742 = a1241.Position
                S.v5752 = S.v5672.AbsolutePosition
                a1241.Changed:Connect(function()
                        local tmp182 = a1241.UserInputState == Enum.UserInputState.End
                        stk0 = tmp182
                        if stk0 then
                            S.v5722 = false
                            if not S.v5732 then
                                S.v5702()
                            end
                        end
                    end)
            end
        end)
    S.v8(S.UserInputService.InputChanged, function(a1242)
        local v1291, tmp184
            local tmp183 = S.v5722
            stk0 = tmp183
            if not tmp183 then
                goto L5
            end
            ::L5::
            if not stk0 then
                goto L7
            end
            v1291 = a1242.Position - S.v5742
            tmp184 = S.v5732
            stk0 = tmp184
            if tmp184 then
                goto L2
            end
            ::L2::
            if not stk0 then
                goto L7
            end
            S.v5732 = true
            S.v5692(S.v5752.X + v1291.X, S.v5752.Y + v1291.Y)
            ::L7::
            return
        end)
    S.v4210.hideUI = function()
            if not S.v5652 then
                goto L2
            end
            S.v5702()
            ::L3::
            do
                return
            end
            do
                return
            end
            ::L2::
            S.v5712()
            goto L3
        end
    S.v4210.isHidden = function()
            return S.v5652
        end
    S.v8(S.UserInputService.InputBegan, function(a1243, a291)
            if a291 then
                return
            end
            if a1243.KeyCode == Enum.KeyCode.RightShift then
                S.v4210.hideUI()
            end
        end)
    S.v5762 = function()
        local v9411, v10511
            local v075 = {"SH", "Lighting & Waktu"}
            S.v307["Shader"] = v075
            local v1294 = S.v3182("Shader", 9, "shader")
            local Lighting = game:GetService("Lighting")
            local v3169 = workspace:FindFirstChildOfClass("Terrain")
            local v4164 = function(a1244, a292, a348)
                    return Color3.fromRGB(a1244, a292, a348)
                end
            local v6130 = {
                "ClockTime",
                "Brightness",
                "ExposureCompensation",
                "GlobalShadows",
                "EnvironmentDiffuseScale",
                "EnvironmentSpecularScale",
                "ShadowSoftness",
                "Ambient",
                "OutdoorAmbient",
                "ColorShift_Top",
                "FogColor",
                "FogStart",
                "FogEnd"
            }
            local v888 = {
                "ClockTime",
                "Brightness",
                "ExposureCompensation",
                "Ambient",
                "OutdoorAmbient",
                "ColorShift_Top"
            }
            local v11116 = {}
            local v1067 = nil
            local v1544 = {}
            local v1638 = {}
            local v1738 = {}
            local v1837 = false
            local v1934 = false
            local v21102 = {}
            local v2229 = nil
            local v2327 = nil
            local v2424 = false
            local v2519 = not (S.v12.shLock == false)
            local tmp185 = tonumber(S.v12.shSpeed)
            stk0 = tmp185
            if tmp185 then
                goto L8
            end
            ::L8::
            local v2620 = stk0
            local v2917 = {}
            local v3016 = {}
            local v3170 = nil
            local v3218 = nil
            local v3317 = nil
            local v3517 = {
                Cinematic = "Nuansa film, hangat & dramatis",
                Vibrant = "Warna pekat & cerah",
                Realistic = "Siang natural seperti aslinya",
                Night = "Malam biru gelap",
                ["Realistic Day HD"] = "Siang realistis, tajam & jernih",
                ["Cinematic Sunset"] = "Sunset sinematik oranye",
                ["Night Moody"] = "Malam gelap & moody",
                ["Ultra Vivid Clean"] = "Warna super hidup & bersih",
                ["Golden Hour"] = "Cahaya emas sore hari",
                ["Tropical Paradise"] = "Pantai tropis biru toska",
                ["Cyberpunk Neon"] = "Malam neon ungu-pink",
                ["Horror Dark"] = "Gelap, berkabut & seram",
                ["Dreamy Pastel"] = "Warna pastel lembut",
                ["Desert Heat"] = "Panas gurun menyengat",
                ["Arctic Frost"] = "Dingin es kebiruan",
                ["Vintage Film"] = "Warna pudar ala film jadul",
                ["Noir B&W"] = "Hitam putih kontras tinggi",
                ["Blood Moon"] = "Bulan darah merah pekat",
                ["Awan Anime"] = "Awan tebal ala anime",
                ["Awan Realistis"] = "Awan natural berlapis",
                Hujan = "Hujan deras + langit mendung",
                Salju = "Salju turun + langit putih",
                Kabut = "Kabut tebal pagi hari"
            }
            local v3715 = {}
            local v3814 = {
                name = "Subuh",
                desc = "Jam 05:30 - langit mulai terang",
                clock = 5.5
            }
            v3715[1] = v3814
            local v3913 = {
                name = "Pagi",
                desc = "Jam 08:00 - cahaya lembut",
                clock = 8
            }
            v3715[2] = v3913
            local v4012 = {
                name = "Siang",
                desc = "Jam 12:00 - matahari terik",
                clock = 12
            }
            v3715[3] = v4012
            local v4165 = {
                name = "Sore",
                desc = "Jam 16:30 - cahaya hangat",
                clock = 16.5
            }
            v3715[4] = v4165
            local v4216 = {
                name = "Senja",
                desc = "Jam 18:20 - matahari terbenam",
                clock = 18.3
            }
            v3715[5] = v4216
            local v4315 = {
                name = "Malam",
                desc = "Jam 20:30 - gelap berbintang",
                clock = 20.5
            }
            v3715[6] = v4315
            local v4415 = {
                name = "Tengah Malam",
                desc = "Jam 00:00 - paling gelap",
                clock = 0
            }
            v3715[7] = v4415
            local v4515 = function(a1245, a293, a349)
                local v6131, v3171, v4166, v5154, v7103, v889, v980, v1068, v11117, v1295
                    stk0 = a1245 == "Atmosphere"
                    if a1245 == "Atmosphere" then
                        goto L13
                    end
                    ::L13::
                    if not stk0 then
                        goto L4
                    end
                    v3171 = #v1544
                    v4166 = 1
                    v5154 = -1
                    ::L2::
                    if not (0 < v5154) then
                        goto L10
                    end
                    stk0 = v3171 <= v4166
                    ::L15::
                    if not stk0 then
                        goto L4
                    end
                    if not (v1544[v3171].ClassName == a1245) then
                        goto L6
                    end
                    v6131 = v1544[v3171]
                    pcall(function()
                            v6131:Destroy()
                        end)
                    table.remove(v1544, v3171)
                    ::L6::
                    v3171 = v3171 + v5154
                    goto L2
                    ::L4::
                    v7103 = Instance.new(a1245)
                    v889, v980, v1068 = pairs(a293)
                    ::L7::
                    v11117, v1295 = v889(v980, v1068)
                    v1068 = v11117
                    if not v11117 then
                        goto L11
                    end
                    v7103[v11117] = v1295
                    goto L7
                    ::L11::
                    stk0 = a349
                    if a349 then
                        goto L5
                    end
                    ::L5::
                    v7103.Parent = stk0
                    v1544[#v1544 + 1] = v7103
                    do
                        return v7103
                    end
                    do
                        return
                    end
                    ::L10::
                    stk0 = v4166 <= v3171
                    goto L15
                end
            local v4615 = function(a1246)
                    for v4167, v5155 in pairs(a1246) do
                        Lighting[v4167] = v5155
                    end
                end
            local v4714 = function()
                    pcall(function()
                            sethiddenproperty(Lighting, "Technology", Enum.Technology.Future)
                        end)
                end
            local v4813 = function()
                local v5156, tmp186, v11118, v6132, v7104, v890, v981, v1069
                    if not v1837 then
                        goto L5
                    end
                    do
                        return
                    end
                    do
                        return
                    end
                    ::L5::
                    v1837 = true
                    local v076, v1296, v2230 = ipairs(Lighting:GetChildren())
                    ::L10::
                    local v3173, v4168 = v076(v1296, v2230)
                    v2230 = v3173
                    if not v3173 then
                        goto L12
                    end
                    tmp186 = v4168:IsA("PostEffect")
                    stk0 = tmp186
                    if not tmp186 then
                        goto L4
                    end
                    ::L6::
                    if not stk0 then
                        goto L15
                    end
                    v5156 = {v4168, Lighting}
                    v1738[#v1738 + 1] = v5156
                    v4168.Parent = nil
                    ::L15::
                    goto L10
                    ::L4::
                    if v4168:IsA("Atmosphere") then
                        goto L6
                    end
                    goto L6
                    ::L12::
                    if not v3169 then
                        goto L16
                    end
                    v6132, v7104, v890 = ipairs(v3169:GetChildren())
                    ::L2::
                    v981, v1069 = v6132(v7104, v890)
                    v890 = v981
                    if not v981 then
                        goto L16
                    end
                    if not v1069:IsA("Clouds") then
                        goto L8
                    end
                    v11118 = {v1069, v3169}
                    v1738[#v1738 + 1] = v11118
                    v1069.Parent = nil
                    ::L8::
                    goto L2
                    ::L16::
                    return
                end
            local v4914 = function()
                    if not v1837 then
                        return
                    end
                    v1837 = false
                    for v3174, v4169 in ipairs(v1738) do
                        pcall(function()
                                v4169[1].Parent = v4169[2]
                            end)
                    end
                    table.clear(v1738)
                end
            local v5010 = function(a1247, a294, a350)
                    local v4170 = {
                        Anchored = true,
                        CanCollide = false,
                        CanQuery = false,
                        CanTouch = false,
                        Transparency = 1,
                        Size = a1247
                    }
                    local v3175 = v4515("Part", v4170, workspace)
                    v4515("ParticleEmitter", a294, v3175)
                    v1638[#v1638 + 1] = S.RunService.RenderStepped:Connect(function()
                            local v078 = workspace.CurrentCamera
                            if v078 then
                                v3175.CFrame = CFrame.new(v078.CFrame.Position + Vector3.new(0, a350, 0))
                                CFrame.new(v078.CFrame.Position + Vector3.new(0, a350, 0))
                            end
                        end)
                    S.RunService.RenderStepped:Connect(function()
                            local v080 = workspace.CurrentCamera
                            if v080 then
                                v3175.CFrame = CFrame.new(v080.CFrame.Position + Vector3.new(0, a350, 0))
                                CFrame.new(v080.CFrame.Position + Vector3.new(0, a350, 0))
                            end
                        end)
                    S.RunService.RenderStepped:Connect(function()
                            local v082 = workspace.CurrentCamera
                            if v082 then
                                v3175.CFrame = CFrame.new(v082.CFrame.Position + Vector3.new(0, a350, 0))
                                CFrame.new(v082.CFrame.Position + Vector3.new(0, a350, 0))
                            end
                        end)
                end
            local v5215 = {
                GlobalShadows = true,
                EnvironmentDiffuseScale = 1,
                EnvironmentSpecularScale = 1
            }
            local v5315 = function(a1248)
                    v4714()
                    v4615(v5215)
                    v4615(a1248.l)
                    v4515("Atmosphere", a1248.a)
                    v4515("BloomEffect", a1248.b)
                    v4515("ColorCorrectionEffect", a1248.c)
                    if a1248.s then
                        v4515("SunRaysEffect", a1248.s)
                    end
                    if a1248.d then
                        v4515("DepthOfFieldEffect", a1248.d)
                    end
                end
            local v5415 = function(a1249, a295, a351)
                    return math.clamp((a351 - a1249) / (a295 - a1249), 0, 1)
                end
            local v5515 = function(a1250)
                    local v1297 = nil
                    if not (a1250 < 5) then
                        goto L8
                    end
                    v1297 = 1
                    ::L5::
                    do
                        return v1297 * (v1297 * (3 - 2 * v1297))
                    end
                    do
                        return
                    end
                    ::L8::
                    if not (a1250 < 7.5) then
                        goto L6
                    end
                    v1297 = 1 - v5415(5, 7.5, a1250)
                    goto L5
                    ::L6::
                    if not (a1250 < 17) then
                        goto L2
                    end
                    v1297 = 0
                    goto L5
                    ::L2::
                    if not (a1250 < 20) then
                        goto L4
                    end
                    v1297 = v5415(17, 20, a1250)
                    v5415(17, 20, a1250)
                    goto L5
                    ::L4::
                    v1297 = 1
                    goto L5
                end
            local v5614 = function(a1251)
                    local v1298 = (a1251 - 6) / 1.1
                    local v2231 = (a1251 - 18) / 1.4
                    return math.max(math.exp(-v1298 * v1298), math.exp(-v2231 * v2231))
                end
            local v5713 = function(a1252)
                    local v2233 = {}
                    for v6133, v7105 in pairs(v2917) do
                        v2233[v6133] = v7105
                    end
                    if a1252 then
                        local v891 = a1252 % 24
                        local v985 = v5515(v891)
                        local v1070 = v5614(v891)
                        v2233.ClockTime = v891
                        v2233.Brightness = v2917.Brightness * (1 - 0.55 * v985)
                        v2233.ExposureCompensation = v2917.ExposureCompensation + 0.25 * v985
                        v2233.Ambient = v2917.Ambient:Lerp(v4164(150, 95, 70), v1070 * 0.2):Lerp(v4164(28, 34, 62), v985 * 0.8)
                        v2917.Ambient:Lerp(v4164(150, 95, 70), v1070 * 0.2):Lerp(v4164(28, 34, 62), v985 * 0.8)
                        v2233.OutdoorAmbient = v2917.OutdoorAmbient:Lerp(v4164(190, 120, 85), v1070 * 0.2):Lerp(v4164(40, 52, 90), v985 * 0.8)
                        v2917.OutdoorAmbient:Lerp(v4164(190, 120, 85), v1070 * 0.2):Lerp(v4164(40, 52, 90), v985 * 0.8)
                        v2233.ColorShift_Top = v2917.ColorShift_Top:Lerp(v4164(255, 170, 100), v1070 * 0.55):Lerp(v4164(120, 140, 200), v985 * 0.5)
                        v2917.ColorShift_Top:Lerp(v4164(255, 170, 100), v1070 * 0.55):Lerp(v4164(120, 140, 200), v985 * 0.5)
                    end
                    return v2233
                end
            local v5812 = function(a1253)
                    for v4171, v5157 in pairs(a1253) do
                        if not (Lighting[v4171] == v5157) then
                            Lighting[v4171] = v5157
                        end
                    end
                end
            local v5913 = function()
                    local v083 = {}
                    v2917 = v083
                    for v4173, v5158 in ipairs(v888) do
                        local tmp187 = Lighting[v5158]
                        v2917[v5158] = tmp187
                    end
                end
            local v606 = {}
            local v6134 = {
                sec = "SHADER",
                name = "Cinematic",
                desc = v3517["Cinematic"],
                grp = "s"
            }
            v6134.fn = function()
                    local v084 = {}
                    local v1299 = {
                        ClockTime = 17.2,
                        Brightness = 2.2,
                        ExposureCompensation = 0.1,
                        ShadowSoftness = 0.2
                    }
                    v1299.Ambient = v4164(70, 65, 80)
                    v1299.OutdoorAmbient = v4164(110, 100, 120)
                    v084.l = v1299
                    local v2234 = {Density = 0.35, Offset = 0.25}
                    v2234.Color = v4164(255, 190, 150)
                    v2234.Decay = v4164(255, 150, 110)
                    v2234.Glare = 0.4
                    v2234.Haze = 0.3
                    v084.a = v2234
                    local v3176 = {Intensity = 1.1, Size = 28, Threshold = 0.85}
                    v084.b = v3176
                    local v4174 = {Saturation = 0.15, Contrast = 0.18}
                    v4174.TintColor = v4164(255, 240, 225)
                    v084.c = v4174
                    local v5159 = {Intensity = 0.18, Spread = 0.6}
                    v084.s = v5159
                    local v6135 = {
                        FarIntensity = 0.12,
                        FocusDistance = 60,
                        InFocusRadius = 45,
                        NearIntensity = 0
                    }
                    v084.d = v6135
                    v5315(v084)
                end
            v606[1] = v6134
            local v6213 = {
                sec = "SHADER",
                name = "Vibrant",
                desc = v3517["Vibrant"],
                grp = "s"
            }
            v6213.fn = function()
                    local v085 = {}
                    local v1300 = {
                        ClockTime = 14,
                        Brightness = 2.5,
                        ExposureCompensation = 0.15,
                        ShadowSoftness = 0.2
                    }
                    v1300.Ambient = v4164(90, 90, 100)
                    v1300.OutdoorAmbient = v4164(130, 130, 140)
                    v085.l = v1300
                    local v2235 = {Density = 0.25, Offset = 0.25}
                    v2235.Color = v4164(190, 215, 255)
                    v2235.Decay = v4164(150, 190, 240)
                    v2235.Glare = 0
                    v2235.Haze = 0
                    v085.a = v2235
                    local v3177 = {Intensity = 0.8, Size = 24, Threshold = 0.9}
                    v085.b = v3177
                    local v4175 = {Saturation = 0.35, Contrast = 0.12}
                    v4175.TintColor = v4164(255, 255, 255)
                    v085.c = v4175
                    local v5160 = {Intensity = 0.12, Spread = 0.7}
                    v085.s = v5160
                    local v6136 = {
                        FarIntensity = 0.12,
                        FocusDistance = 60,
                        InFocusRadius = 45,
                        NearIntensity = 0
                    }
                    v085.d = v6136
                    v5315(v085)
                end
            v606[2] = v6213
            local v6313 = {
                sec = "SHADER",
                name = "Realistic",
                desc = v3517["Realistic"],
                grp = "s"
            }
            v6313.fn = function()
                    local v086 = {}
                    local v1301 = {
                        ClockTime = 13,
                        Brightness = 3,
                        ExposureCompensation = 0,
                        ShadowSoftness = 0.2
                    }
                    v1301.Ambient = v4164(60, 62, 68)
                    v1301.OutdoorAmbient = v4164(100, 102, 110)
                    v086.l = v1301
                    local v2236 = {Density = 0.3, Offset = 0.25}
                    v2236.Color = v4164(199, 215, 235)
                    v2236.Decay = v4164(170, 190, 215)
                    v2236.Glare = 0
                    v2236.Haze = 0
                    v086.a = v2236
                    local v3178 = {Intensity = 0.5, Size = 20, Threshold = 1}
                    v086.b = v3178
                    local v4176 = {Saturation = 0.05, Contrast = 0.1}
                    v4176.TintColor = v4164(255, 250, 245)
                    v086.c = v4176
                    local v5161 = {Intensity = 0.08, Spread = 0.8}
                    v086.s = v5161
                    local v6137 = {
                        FarIntensity = 0.12,
                        FocusDistance = 60,
                        InFocusRadius = 45,
                        NearIntensity = 0
                    }
                    v086.d = v6137
                    v5315(v086)
                end
            v606[3] = v6313
            local v6413 = {
                sec = "SHADER",
                name = "Night",
                desc = v3517["Night"],
                grp = "s"
            }
            v6413.fn = function()
                    local v087 = {}
                    local v1304 = {
                        ClockTime = 0,
                        Brightness = 1.2,
                        ExposureCompensation = 0.3,
                        ShadowSoftness = 0.2
                    }
                    v1304.Ambient = v4164(25, 30, 55)
                    v1304.OutdoorAmbient = v4164(35, 45, 80)
                    v087.l = v1304
                    local v2237 = {Density = 0.4, Offset = 0.25}
                    v2237.Color = v4164(40, 55, 100)
                    v2237.Decay = v4164(30, 40, 80)
                    v2237.Glare = 0
                    v2237.Haze = 0
                    v087.a = v2237
                    local v3179 = {Intensity = 1.4, Size = 30, Threshold = 0.7}
                    v087.b = v3179
                    local v4177 = {Saturation = 0.1, Contrast = 0.2}
                    v4177.TintColor = v4164(200, 215, 255)
                    v087.c = v4177
                    local v5163 = {
                        FarIntensity = 0.12,
                        FocusDistance = 60,
                        InFocusRadius = 45,
                        NearIntensity = 0
                    }
                    v087.d = v5163
                    v5315(v087)
                end
            v606[4] = v6413
            local v6512 = {
                sec = "SHADER",
                name = "Realistic Day HD",
                desc = v3517["Realistic Day HD"],
                grp = "s"
            }
            v6512.fn = function()
                    local v088 = {}
                    local v1305 = {
                        ClockTime = 14,
                        Brightness = 2.6,
                        ExposureCompensation = 0.2,
                        ShadowSoftness = 0.2
                    }
                    v1305.Ambient = v4164(70, 70, 75)
                    v1305.OutdoorAmbient = v4164(110, 115, 125)
                    v1305.ColorShift_Top = v4164(255, 244, 225)
                    v088.l = v1305
                    local v2238 = {Density = 0.3, Offset = 0.25}
                    v2238.Color = v4164(199, 215, 235)
                    v2238.Decay = v4164(255, 240, 220)
                    v2238.Glare = 0.2
                    v2238.Haze = 1.2
                    v088.a = v2238
                    local v3180 = {Intensity = 0.4, Size = 24, Threshold = 1.8}
                    v088.b = v3180
                    local v4178 = {Brightness = 0.02, Contrast = 0.12, Saturation = 0.15}
                    v4178.TintColor = v4164(255, 250, 245)
                    v088.c = v4178
                    local v5164 = {Intensity = 0.12, Spread = 0.8}
                    v088.s = v5164
                    local v6138 = {
                        FarIntensity = 0.1,
                        FocusDistance = 60,
                        InFocusRadius = 50,
                        NearIntensity = 0
                    }
                    v088.d = v6138
                    v5315(v088)
                end
            v606[5] = v6512
            local v6610 = {
                sec = "SHADER",
                name = "Cinematic Sunset",
                desc = v3517["Cinematic Sunset"],
                grp = "s"
            }
            v6610.fn = function()
                    local v089 = {}
                    local v1306 = {
                        ClockTime = 17.8,
                        Brightness = 3,
                        ExposureCompensation = 0.1
                    }
                    v1306.Ambient = v4164(90, 60, 55)
                    v1306.OutdoorAmbient = v4164(140, 100, 90)
                    v1306.ColorShift_Top = v4164(255, 190, 130)
                    v089.l = v1306
                    local v2239 = {Density = 0.35, Offset = 0.1}
                    v2239.Color = v4164(255, 190, 150)
                    v2239.Decay = v4164(255, 120, 80)
                    v2239.Glare = 0.6
                    v2239.Haze = 2
                    v089.a = v2239
                    local v3181 = {Intensity = 0.7, Size = 40, Threshold = 1.2}
                    v089.b = v3181
                    local v4179 = {Contrast = 0.2, Saturation = 0.25}
                    v4179.TintColor = v4164(255, 225, 200)
                    v089.c = v4179
                    local v5165 = {Intensity = 0.3, Spread = 1}
                    v089.s = v5165
                    local v6139 = {
                        FarIntensity = 0.2,
                        FocusDistance = 50,
                        InFocusRadius = 40,
                        NearIntensity = 0
                    }
                    v089.d = v6139
                    v5315(v089)
                end
            v606[6] = v6610
            local v6711 = {
                sec = "SHADER",
                name = "Night Moody",
                desc = v3517["Night Moody"],
                grp = "s"
            }
            v6711.fn = function()
                    local v090 = {}
                    local v1307 = {
                        ClockTime = 0,
                        Brightness = 1.2,
                        ExposureCompensation = 0.4,
                        EnvironmentDiffuseScale = 0.8
                    }
                    v1307.Ambient = v4164(30, 35, 55)
                    v1307.OutdoorAmbient = v4164(45, 55, 85)
                    v1307.ColorShift_Top = v4164(120, 140, 200)
                    v090.l = v1307
                    local v2240 = {Density = 0.4, Offset = 0}
                    v2240.Color = v4164(60, 75, 110)
                    v2240.Decay = v4164(20, 25, 45)
                    v2240.Glare = 0
                    v2240.Haze = 2.5
                    v090.a = v2240
                    local v3183 = {Intensity = 0.9, Size = 36, Threshold = 0.9}
                    v090.b = v3183
                    local v4180 = {Brightness = 0.03, Contrast = 0.18, Saturation = 0.05}
                    v4180.TintColor = v4164(215, 225, 255)
                    v090.c = v4180
                    local v5166 = {
                        FarIntensity = 0.15,
                        FocusDistance = 45,
                        InFocusRadius = 40,
                        NearIntensity = 0
                    }
                    v090.d = v5166
                    v5315(v090)
                end
            v606[7] = v6711
            local v6810 = {
                sec = "SHADER",
                name = "Ultra Vivid Clean",
                desc = v3517["Ultra Vivid Clean"],
                grp = "s"
            }
            v6810.fn = function()
                    local v091 = {}
                    local v1308 = {ClockTime = 12, Brightness = 3.2, ExposureCompensation = 0}
                    v1308.Ambient = v4164(100, 100, 105)
                    v1308.OutdoorAmbient = v4164(130, 135, 145)
                    v1308.ColorShift_Top = v4164(255, 255, 255)
                    v091.l = v1308
                    local v2241 = {Density = 0.2, Offset = 0.3}
                    v2241.Color = v4164(180, 210, 255)
                    v2241.Decay = v4164(255, 255, 255)
                    v2241.Glare = 0.1
                    v2241.Haze = 0.6
                    v091.a = v2241
                    local v3184 = {Intensity = 0.5, Size = 28, Threshold = 1.5}
                    v091.b = v3184
                    local v4181 = {Brightness = 0.02, Contrast = 0.25, Saturation = 0.4}
                    v4181.TintColor = v4164(255, 255, 255)
                    v091.c = v4181
                    local v5167 = {Intensity = 0.1, Spread = 0.7}
                    v091.s = v5167
                    v5315(v091)
                end
            v606[8] = v6810
            local v6911 = {
                sec = "SHADER",
                name = "Golden Hour",
                desc = v3517["Golden Hour"],
                grp = "s"
            }
            v6911.fn = function()
                    local v092 = {}
                    local v1309 = {
                        ClockTime = 18.2,
                        Brightness = 3.2,
                        ExposureCompensation = 0.15,
                        GlobalShadows = true,
                        EnvironmentDiffuseScale = 1,
                        EnvironmentSpecularScale = 1
                    }
                    v1309.Ambient = v4164(110, 80, 60)
                    v1309.OutdoorAmbient = v4164(160, 120, 90)
                    v1309.ColorShift_Top = v4164(255, 200, 120)
                    v092.l = v1309
                    local v2243 = {Density = 0.3, Offset = 0.15}
                    v2243.Color = v4164(255, 205, 150)
                    v2243.Decay = v4164(255, 150, 80)
                    v2243.Glare = 0.5
                    v2243.Haze = 1.8
                    v092.a = v2243
                    local v3185 = {Intensity = 0.6, Size = 36, Threshold = 1.3}
                    v092.b = v3185
                    local v4183 = {Contrast = 0.18, Saturation = 0.3}
                    v4183.TintColor = v4164(255, 230, 190)
                    v092.c = v4183
                    local v5168 = {Intensity = 0.25, Spread = 1}
                    v092.s = v5168
                    local v6140 = {
                        FarIntensity = 0.15,
                        FocusDistance = 55,
                        InFocusRadius = 45,
                        NearIntensity = 0
                    }
                    v092.d = v6140
                    v5315(v092)
                end
            v606[9] = v6911
            local v704 = {
                sec = "SHADER",
                name = "Tropical Paradise",
                desc = v3517["Tropical Paradise"],
                grp = "s"
            }
            v704.fn = function()
                    local v093 = {}
                    local v1348 = {
                        ClockTime = 13,
                        Brightness = 3.4,
                        ExposureCompensation = 0.1,
                        GlobalShadows = true,
                        EnvironmentDiffuseScale = 1,
                        EnvironmentSpecularScale = 1
                    }
                    v1348.Ambient = v4164(110, 120, 120)
                    v1348.OutdoorAmbient = v4164(140, 170, 175)
                    v1348.ColorShift_Top = v4164(255, 255, 240)
                    v093.l = v1348
                    local v2244 = {Density = 0.15, Offset = 0.35}
                    v2244.Color = v4164(120, 220, 235)
                    v2244.Decay = v4164(255, 255, 230)
                    v2244.Glare = 0.1
                    v2244.Haze = 0.5
                    v093.a = v2244
                    local v3186 = {Intensity = 0.5, Size = 28, Threshold = 1.5}
                    v093.b = v3186
                    local v4184 = {Contrast = 0.2, Saturation = 0.5}
                    v4184.TintColor = v4164(240, 255, 255)
                    v093.c = v4184
                    local v5169 = {Intensity = 0.1, Spread = 0.8}
                    v093.s = v5169
                    v5315(v093)
                end
            v606[10] = v704
            local v7112 = {
                sec = "SHADER",
                name = "Cyberpunk Neon",
                desc = v3517["Cyberpunk Neon"],
                grp = "s"
            }
            v7112.fn = function()
                    local v094 = {}
                    local v1349 = {
                        ClockTime = 0,
                        Brightness = 1.5,
                        ExposureCompensation = 0.3,
                        GlobalShadows = true,
                        EnvironmentDiffuseScale = 1,
                        EnvironmentSpecularScale = 1
                    }
                    v1349.Ambient = v4164(60, 20, 90)
                    v1349.OutdoorAmbient = v4164(50, 40, 110)
                    v1349.ColorShift_Top = v4164(255, 60, 200)
                    v094.l = v1349
                    local v2245 = {Density = 0.45, Offset = 0}
                    v2245.Color = v4164(120, 40, 180)
                    v2245.Decay = v4164(30, 10, 60)
                    v2245.Glare = 0
                    v2245.Haze = 2
                    v094.a = v2245
                    local v3187 = {Intensity = 1.2, Size = 40, Threshold = 0.7}
                    v094.b = v3187
                    local v4185 = {Contrast = 0.3, Saturation = 0.5}
                    v4185.TintColor = v4164(255, 200, 255)
                    v094.c = v4185
                    local v5170 = {
                        FarIntensity = 0.2,
                        FocusDistance = 40,
                        InFocusRadius = 35,
                        NearIntensity = 0
                    }
                    v094.d = v5170
                    v5315(v094)
                end
            v606[11] = v7112
            local v7212 = {
                sec = "SHADER",
                name = "Horror Dark",
                desc = v3517["Horror Dark"],
                grp = "s"
            }
            v7212.fn = function()
                    local v095 = {}
                    local v1350 = {
                        ClockTime = 2,
                        Brightness = 0.6,
                        ExposureCompensation = -0.1,
                        GlobalShadows = true,
                        EnvironmentDiffuseScale = 0.6,
                        EnvironmentSpecularScale = 1
                    }
                    v1350.Ambient = v4164(20, 22, 25)
                    v1350.OutdoorAmbient = v4164(28, 32, 38)
                    v1350.ColorShift_Top = v4164(90, 100, 110)
                    v1350.FogColor = v4164(15, 18, 20)
                    v1350.FogStart = 5
                    v1350.FogEnd = 220
                    v095.l = v1350
                    local v2246 = {Density = 0.6, Offset = 0}
                    v2246.Color = v4164(40, 45, 50)
                    v2246.Decay = v4164(10, 12, 14)
                    v2246.Glare = 0
                    v2246.Haze = 3.5
                    v095.a = v2246
                    local v3188 = {Intensity = 0.3, Size = 20, Threshold = 1.2}
                    v095.b = v3188
                    local v4186 = {Contrast = 0.25, Saturation = -0.4}
                    v4186.TintColor = v4164(200, 215, 210)
                    v095.c = v4186
                    local v5171 = {
                        FarIntensity = 0.3,
                        FocusDistance = 30,
                        InFocusRadius = 25,
                        NearIntensity = 0
                    }
                    v095.d = v5171
                    v5315(v095)
                end
            v606[12] = v7212
            local v7312 = {
                sec = "SHADER",
                name = "Dreamy Pastel",
                desc = v3517["Dreamy Pastel"],
                grp = "s"
            }
            v7312.fn = function()
                    local v096 = {}
                    local v1351 = {
                        ClockTime = 15.5,
                        Brightness = 2.8,
                        ExposureCompensation = 0.2,
                        GlobalShadows = true,
                        EnvironmentDiffuseScale = 1,
                        EnvironmentSpecularScale = 1
                    }
                    v1351.Ambient = v4164(150, 130, 160)
                    v1351.OutdoorAmbient = v4164(190, 170, 210)
                    v1351.ColorShift_Top = v4164(255, 220, 245)
                    v096.l = v1351
                    local v2247 = {Density = 0.3, Offset = 0.3}
                    v2247.Color = v4164(230, 200, 255)
                    v2247.Decay = v4164(255, 200, 220)
                    v2247.Glare = 0.3
                    v2247.Haze = 1
                    v096.a = v2247
                    local v3189 = {Intensity = 0.9, Size = 50, Threshold = 1}
                    v096.b = v3189
                    local v4187 = {Brightness = 0.04, Contrast = -0.05, Saturation = 0.3}
                    v4187.TintColor = v4164(255, 235, 250)
                    v096.c = v4187
                    local v5173 = {Intensity = 0.2, Spread = 1}
                    v096.s = v5173
                    local v6141 = {
                        FarIntensity = 0.25,
                        FocusDistance = 50,
                        InFocusRadius = 40,
                        NearIntensity = 0
                    }
                    v096.d = v6141
                    v5315(v096)
                end
            v606[13] = v7312
            local v7412 = {
                sec = "SHADER",
                name = "Desert Heat",
                desc = v3517["Desert Heat"],
                grp = "s"
            }
            v7412.fn = function()
                    local v097 = {}
                    local v1354 = {
                        ClockTime = 12.5,
                        Brightness = 3.8,
                        ExposureCompensation = 0.3,
                        GlobalShadows = true,
                        EnvironmentDiffuseScale = 1,
                        EnvironmentSpecularScale = 1
                    }
                    v1354.Ambient = v4164(130, 100, 70)
                    v1354.OutdoorAmbient = v4164(180, 150, 110)
                    v1354.ColorShift_Top = v4164(255, 235, 190)
                    v097.l = v1354
                    local v2248 = {Density = 0.25, Offset = 0.2}
                    v2248.Color = v4164(240, 205, 150)
                    v2248.Decay = v4164(255, 190, 120)
                    v2248.Glare = 0.4
                    v2248.Haze = 2.2
                    v097.a = v2248
                    local v3190 = {Intensity = 0.5, Size = 30, Threshold = 1.4}
                    v097.b = v3190
                    local v4188 = {Contrast = 0.2, Saturation = 0.2}
                    v4188.TintColor = v4164(255, 240, 210)
                    v097.c = v4188
                    local v5174 = {Intensity = 0.2, Spread = 0.9}
                    v097.s = v5174
                    v5315(v097)
                end
            v606[14] = v7412
            local v7511 = {
                sec = "SHADER",
                name = "Arctic Frost",
                desc = v3517["Arctic Frost"],
                grp = "s"
            }
            v7511.fn = function()
                    local v098 = {}
                    local v1355 = {
                        ClockTime = 11,
                        Brightness = 2.8,
                        ExposureCompensation = 0.2,
                        GlobalShadows = true,
                        EnvironmentDiffuseScale = 1,
                        EnvironmentSpecularScale = 1
                    }
                    v1355.Ambient = v4164(100, 115, 140)
                    v1355.OutdoorAmbient = v4164(150, 175, 210)
                    v1355.ColorShift_Top = v4164(210, 230, 255)
                    v098.l = v1355
                    local v2249 = {Density = 0.3, Offset = 0.2}
                    v2249.Color = v4164(200, 225, 255)
                    v2249.Decay = v4164(220, 235, 255)
                    v2249.Glare = 0.1
                    v2249.Haze = 1.5
                    v098.a = v2249
                    local v3191 = {Intensity = 0.5, Size = 28, Threshold = 1.4}
                    v098.b = v3191
                    local v4189 = {Contrast = 0.15, Saturation = -0.1}
                    v4189.TintColor = v4164(225, 240, 255)
                    v098.c = v4189
                    local v5175 = {Intensity = 0.1, Spread = 0.8}
                    v098.s = v5175
                    v5315(v098)
                end
            v606[15] = v7511
            local v7610 = {
                sec = "SHADER",
                name = "Vintage Film",
                desc = v3517["Vintage Film"],
                grp = "s"
            }
            v7610.fn = function()
                    local v099 = {}
                    local v1356 = {
                        ClockTime = 16,
                        Brightness = 2.2,
                        ExposureCompensation = 0,
                        GlobalShadows = true,
                        EnvironmentDiffuseScale = 1,
                        EnvironmentSpecularScale = 0.8
                    }
                    v1356.Ambient = v4164(95, 80, 65)
                    v1356.OutdoorAmbient = v4164(130, 110, 90)
                    v1356.ColorShift_Top = v4164(255, 225, 180)
                    v099.l = v1356
                    local v2250 = {Density = 0.3, Offset = 0.1}
                    v2250.Color = v4164(220, 195, 160)
                    v2250.Decay = v4164(200, 170, 130)
                    v2250.Glare = 0.2
                    v2250.Haze = 1.6
                    v099.a = v2250
                    local v3193 = {Intensity = 0.4, Size = 26, Threshold = 1.6}
                    v099.b = v3193
                    local v4190 = {Contrast = 0.15, Saturation = -0.35}
                    v4190.TintColor = v4164(255, 230, 190)
                    v099.c = v4190
                    local v5176 = {
                        FarIntensity = 0.2,
                        FocusDistance = 50,
                        InFocusRadius = 40,
                        NearIntensity = 0
                    }
                    v099.d = v5176
                    v5315(v099)
                end
            v606[16] = v7610
            local v7710 = {
                sec = "SHADER",
                name = "Noir B&W",
                desc = v3517["Noir B&W"],
                grp = "s"
            }
            v7710.fn = function()
                    local v0100 = {}
                    local v1357 = {
                        ClockTime = 14,
                        Brightness = 2.4,
                        ExposureCompensation = 0,
                        GlobalShadows = true,
                        EnvironmentDiffuseScale = 1,
                        EnvironmentSpecularScale = 1
                    }
                    v1357.Ambient = v4164(70, 70, 70)
                    v1357.OutdoorAmbient = v4164(110, 110, 110)
                    v1357.ColorShift_Top = v4164(255, 255, 255)
                    v0100.l = v1357
                    local v2251 = {Density = 0.3, Offset = 0.1}
                    v2251.Color = v4164(180, 180, 180)
                    v2251.Decay = v4164(150, 150, 150)
                    v2251.Glare = 0
                    v2251.Haze = 1.5
                    v0100.a = v2251
                    local v3194 = {Intensity = 0.4, Size = 24, Threshold = 1.6}
                    v0100.b = v3194
                    local v4191 = {Contrast = 0.45, Saturation = -1}
                    v4191.TintColor = v4164(255, 255, 255)
                    v0100.c = v4191
                    v5315(v0100)
                end
            v606[17] = v7710
            local v7810 = {
                sec = "SHADER",
                name = "Blood Moon",
                desc = v3517["Blood Moon"],
                grp = "s"
            }
            v7810.fn = function()
                    local v0101 = {}
                    local v1358 = {
                        ClockTime = 0,
                        Brightness = 1.4,
                        ExposureCompensation = 0.2,
                        GlobalShadows = true,
                        EnvironmentDiffuseScale = 0.8,
                        EnvironmentSpecularScale = 1
                    }
                    v1358.Ambient = v4164(70, 20, 20)
                    v1358.OutdoorAmbient = v4164(90, 30, 30)
                    v1358.ColorShift_Top = v4164(255, 70, 50)
                    v1358.FogColor = v4164(60, 10, 10)
                    v1358.FogStart = 20
                    v1358.FogEnd = 600
                    v0101.l = v1358
                    local v2253 = {Density = 0.45, Offset = 0}
                    v2253.Color = v4164(140, 30, 30)
                    v2253.Decay = v4164(60, 10, 10)
                    v2253.Glare = 0.2
                    v2253.Haze = 2.8
                    v0101.a = v2253
                    local v3195 = {Intensity = 0.8, Size = 34, Threshold = 1}
                    v0101.b = v3195
                    local v4193 = {Contrast = 0.25, Saturation = 0.1}
                    v4193.TintColor = v4164(255, 200, 190)
                    v0101.c = v4193
                    v5315(v0101)
                end
            v606[18] = v7810
            local v7910 = {
                sec = "AWAN",
                name = "Awan Anime",
                desc = v3517["Awan Anime"],
                grp = "c"
            }
            v7910.fn = function()
                    local v0102 = {ClockTime = 15, Brightness = 3}
                    v0102.Ambient = v4164(120, 130, 160)
                    v0102.OutdoorAmbient = v4164(150, 170, 210)
                    v0102.ColorShift_Top = v4164(255, 240, 250)
                    v4615(v0102)
                    local v1359 = {Cover = 0.65, Density = 0.8}
                    v1359.Color = v4164(255, 255, 255)
                    v4515("Clouds", v1359, v3169)
                    local v2254 = {Density = 0.25, Offset = 0.3}
                    v2254.Color = v4164(150, 200, 255)
                    v2254.Decay = v4164(255, 200, 230)
                    v2254.Glare = 0.3
                    v2254.Haze = 0.8
                    v4515("Atmosphere", v2254)
                    local v3196 = {Intensity = 0.6, Size = 30, Threshold = 1.3}
                    v4515("BloomEffect", v3196)
                    local v4194 = {Contrast = 0.2, Saturation = 0.55}
                    v4194.TintColor = v4164(255, 245, 255)
                    v4515("ColorCorrectionEffect", v4194)
                    local v5177 = {Intensity = 0.15, Spread = 0.9}
                    v4515("SunRaysEffect", v5177)
                end
            v606[19] = v7910
            local v804 = {
                sec = "AWAN",
                name = "Awan Realistis",
                desc = v3517["Awan Realistis"],
                grp = "c"
            }
            v804.fn = function()
                    local v0103 = {
                        ClockTime = 13,
                        Brightness = 2.4,
                        ExposureCompensation = 0.1
                    }
                    v0103.Ambient = v4164(80, 85, 95)
                    v0103.OutdoorAmbient = v4164(115, 125, 140)
                    v4615(v0103)
                    local v1360 = {Cover = 0.75, Density = 0.5}
                    v1360.Color = v4164(235, 238, 245)
                    v4515("Clouds", v1360, v3169)
                    local v2255 = {Density = 0.3, Offset = 0.25}
                    v2255.Color = v4164(190, 205, 225)
                    v2255.Decay = v4164(240, 235, 225)
                    v2255.Glare = 0.15
                    v2255.Haze = 1.5
                    v4515("Atmosphere", v2255)
                    local v3197 = {Intensity = 0.3, Size = 24, Threshold = 1.8}
                    v4515("BloomEffect", v3197)
                    local v4195 = {Contrast = 0.1, Saturation = 0.05}
                    v4195.TintColor = v4164(255, 252, 248)
                    v4515("ColorCorrectionEffect", v4195)
                    local v5178 = {Intensity = 0.08, Spread = 0.8}
                    v4515("SunRaysEffect", v5178)
                end
            v606[20] = v804
            local v8112 = {
                sec = "CUACA",
                name = "Hujan",
                desc = v3517["Hujan"],
                grp = "p"
            }
            v8112.fn = function()
                    local v0104 = {ClockTime = 16, Brightness = 1.3}
                    v0104.Ambient = v4164(60, 65, 75)
                    v0104.OutdoorAmbient = v4164(80, 90, 105)
                    v4615(v0104)
                    local v1361 = {Cover = 1, Density = 0.9}
                    v1361.Color = v4164(110, 115, 125)
                    v4515("Clouds", v1361, v3169)
                    local v2256 = {Density = 0.45, Offset = 0}
                    v2256.Color = v4164(120, 130, 145)
                    v2256.Decay = v4164(80, 90, 100)
                    v2256.Glare = 0
                    v2256.Haze = 2.5
                    v4515("Atmosphere", v2256)
                    local v3198 = {Contrast = 0.1, Saturation = -0.15}
                    v3198.TintColor = v4164(215, 225, 240)
                    v4515("ColorCorrectionEffect", v3198)
                    local v4196 = {Intensity = 0.3, Size = 20, Threshold = 1.5}
                    v4515("BloomEffect", v4196)
                    local v5179 = {Rate = 1200}
                    v5179.Lifetime = NumberRange.new(1, 1.4)
                    v5179.Speed = NumberRange.new(100, 120)
                    v5179.EmissionDirection = Enum.NormalId.Bottom
                    v5179.Orientation = Enum.ParticleOrientation.VelocityParallel
                    v5179.Size = NumberSequence.new(0.2)
                    v5179.Transparency = NumberSequence.new(0.55)
                    v5179.Color = ColorSequence.new(v4164(190, 210, 235))
                    v5179.LightEmission = 0.2
                    v5179.Drag = 0
                    v5010(Vector3.new(70, 1, 70), v5179, 45)
                end
            v606[21] = v8112
            local v8212 = {
                sec = "CUACA",
                name = "Salju",
                desc = v3517["Salju"],
                grp = "p"
            }
            v8212.fn = function()
                    local v0105 = {ClockTime = 14, Brightness = 2}
                    v0105.Ambient = v4164(110, 120, 140)
                    v0105.OutdoorAmbient = v4164(150, 165, 190)
                    v4615(v0105)
                    local v1364 = {Cover = 0.85, Density = 0.6}
                    v1364.Color = v4164(225, 230, 240)
                    v4515("Clouds", v1364, v3169)
                    local v2257 = {Density = 0.35, Offset = 0.1}
                    v2257.Color = v4164(210, 225, 245)
                    v2257.Decay = v4164(200, 215, 240)
                    v2257.Glare = 0
                    v2257.Haze = 2
                    v4515("Atmosphere", v2257)
                    local v3199 = {Contrast = 0.08, Saturation = -0.05}
                    v3199.TintColor = v4164(230, 240, 255)
                    v4515("ColorCorrectionEffect", v3199)
                    local v4197 = {Intensity = 0.5, Size = 26, Threshold = 1.4}
                    v4515("BloomEffect", v4197)
                    local v5180 = {Rate = 500}
                    v5180.Lifetime = NumberRange.new(6, 8)
                    v5180.Speed = NumberRange.new(7, 12)
                    v5180.EmissionDirection = Enum.NormalId.Bottom
                    v5180.SpreadAngle = Vector2.new(20, 20)
                    v5180.Size = NumberSequence.new(0.18)
                    v5180.Transparency = NumberSequence.new(0.15)
                    v5180.Color = ColorSequence.new(Color3.new(1, 1, 1))
                    v5180.LightEmission = 0.6
                    v5180.RotSpeed = NumberRange.new(-60, 60)
                    v5180.Acceleration = Vector3.new(3, 0, 2)
                    v5010(Vector3.new(80, 1, 80), v5180, 40)
                end
            v606[22] = v8212
            local v8312 = {
                sec = "CUACA",
                name = "Kabut",
                desc = v3517["Kabut"],
                grp = "f"
            }
            v8312.fn = function()
                    local v0106 = {ClockTime = 7, Brightness = 1.6}
                    v0106.Ambient = v4164(110, 115, 120)
                    v0106.OutdoorAmbient = v4164(140, 145, 150)
                    v0106.FogColor = v4164(190, 195, 200)
                    v0106.FogStart = 10
                    v0106.FogEnd = 450
                    v4615(v0106)
                    local v1365 = {Density = 0.55, Offset = 0}
                    v1365.Color = v4164(200, 205, 210)
                    v1365.Decay = v4164(180, 185, 190)
                    v1365.Glare = 0
                    v1365.Haze = 4
                    v4515("Atmosphere", v1365)
                    local v2258 = {Cover = 0.9, Density = 0.6}
                    v2258.Color = v4164(200, 205, 210)
                    v4515("Clouds", v2258, v3169)
                    local v3200 = {Intensity = 0.4, Size = 28, Threshold = 1.4}
                    v4515("BloomEffect", v3200)
                    local v4198 = {Contrast = 0.05, Saturation = -0.1}
                    v4198.TintColor = v4164(235, 240, 245)
                    v4515("ColorCorrectionEffect", v4198)
                end
            v606[23] = v8312
            v3170 = v606
            local v8411 = function()
                local v12100, v1367, v1448, v1545, v1639, v1739, v1838, v1935, v2029, v21103, v2717, v2816, v2260, v2328, v2425, v2520, v2621
                    local v0107, v1366, v2259 = ipairs(v1638)
                    ::L16::
                    local v3201, v4199 = v0107(v1366, v2259)
                    v2259 = v3201
                    if not v3201 then
                        goto L27
                    end
                    v4199:Disconnect()
                    goto L16
                    ::L27::
                    table.clear(v1638)
                    local v5181, v6142, v7106 = ipairs(v1544)
                    ::L25::
                    local v895, v986 = v5181(v6142, v7106)
                    v7106 = v895
                    if not v895 then
                        goto L10
                    end
                    pcall(function()
                            v986:Destroy()
                        end)
                    goto L25
                    ::L10::
                    table.clear(v1544)
                    local v1071 = not (next(v21102) == nil)
                    stk0 = v1071
                    if v1071 then
                        goto L5
                    end
                    ::L5::
                    local v11119 = stk0
                    if not v11119 then
                        goto L3
                    end
                    ::L3::
                    if not stk0 then
                        goto L18
                    end
                    v1934 = true
                    v12100, v1367, v1448 = ipairs(v6130)
                    ::L7::
                    v1545, v1639 = v12100(v1367, v1448)
                    v1448 = v1545
                    if not v1545 then
                        goto L28
                    end
                    pcall(function()
                            local tmp188 = Lighting[v1639]
                            v11116[v1639] = tmp188
                        end)
                    goto L7
                    ::L28::
                    pcall(function()
                            v1067 = gethiddenproperty(Lighting, "Technology")
                            gethiddenproperty(Lighting, "Technology")
                        end)
                    ::L18::
                    if not v1934 then
                        goto L1
                    end
                    v1739, v1838, v1935 = pairs(v11116)
                    ::L12::
                    v2029, v21103 = v1739(v1838, v1935)
                    v1935 = v2029
                    if not v2029 then
                        goto L1
                    end
                    pcall(function()
                            local tmp189 = v21103
                            Lighting[v2029] = tmp189
                        end)
                    goto L12
                    ::L1::
                    if v11119 then
                        goto L30
                    end
                    v4914()
                    if not v1067 then
                        goto L9
                    end
                    pcall(function()
                            sethiddenproperty(Lighting, "Technology", v1067)
                        end)
                    ::L9::
                    v1067 = nil
                    v1934 = false
                    table.clear(v3016)
                    do
                        return
                    end
                    do
                        return
                    end
                    ::L30::
                    if not v1071 then
                        goto L14
                    end
                    v4813()
                    ::L29::
                    v2260, v2328, v2425 = ipairs(v3170)
                    ::L20::
                    v2520, v2621 = v2260(v2328, v2425)
                    v2425 = v2520
                    if not v2520 then
                        goto L32
                    end
                    if not v21102[v2621] then
                        goto L23
                    end
                    v2717, v2816 = pcall(v2621.fn)
                    if not v2717 then
                        goto L22
                    end
                    ::L23::
                    goto L20
                    ::L22::
                    warn((("[DZ Delux] Shader " .. v2621.name) .. ": ") .. tostring(v2816))
                    goto L23
                    ::L32::
                    v5913()
                    v3016 = v5713(v2229)
                    v5713(v2229)
                    v5812(v3016)
                    do
                        return
                    end
                    do
                        return
                    end
                    ::L14::
                    v4914()
                    goto L29
                end
            local v8511 = function(a1254)
                    for v4200, v5183 in ipairs(v3715) do
                        stk0 = not (v5183 == a1254)
                        if stk0 then
                            v5183.sw:set(false, true)
                        end
                    end
                end
            local v8611 = 0
            S.v8(S.RunService.RenderStepped, function(a1255)
                    if v1934 then
                        goto L11
                    end
                    do
                        return
                    end
                    do
                        return
                    end
                    ::L11::
                    local tmp190 = v2424
                    stk0 = tmp190
                    if not tmp190 then
                        goto L6
                    end
                    ::L6::
                    if not stk0 then
                        goto L2
                    end
                    v2229 = (v2229 + a1255 * v2620) % 24
                    v3016 = v5713(v2229)
                    v5713(v2229)
                    v5812(v3016)
                    v8611 = v8611 + a1255
                    if 0.25 < v8611 then
                        goto L14
                    end
                    ::L8::
                    ::L15::
                    do
                        return
                    end
                    do
                        return
                    end
                    ::L14::
                    v8611 = 0
                    if not v3317 then
                        goto L8
                    end
                    v3317:set(v2229, true)
                    goto L8
                    ::L2::
                    if not v2519 then
                        goto L15
                    end
                    local v1368, v2261, v3203 = pairs(v3016)
                    ::L9::
                    local v4201, v5184 = v1368(v2261, v3203)
                    v3203 = v4201
                    if not v4201 then
                        goto L15
                    end
                    if not (Lighting[v4201] == v5184) then
                        goto L5
                    end
                    ::L13::
                    goto L9
                    ::L5::
                    Lighting[v4201] = v5184
                    goto L13
                end)
            local v8711 = 0
            local v8810 = function()
                    v8711 = v8711 + 1
                    return v8711
                end
            S.v3222(v1294, "Waktu Hari", v8810())
            local v896, v903, v9111 = ipairs(v3715)
            ::L6::
            local v9212, v9312 = v896(v903, v9111)
            v9111 = v9212
            if not v9212 then
                goto L9
            end
            v9411 = S.v3232(v1294, v9312.name, v9312.desc, v8810())
            v9312.sw = S.v3242(v9411, false, function(a1256)
                local tmp191
                    if not a1256 then
                        goto L9
                    end
                    v8511(v9312)
                    v2424 = false
                    if v3218 then
                        goto L5
                    end
                    ::L8::
                    v2327 = v9312
                    v2229 = v9312.clock
                    ::L6::
                    tmp191 = v3317
                    stk0 = tmp191
                    if not tmp191 then
                        goto L3
                    end
                    ::L3::
                    if not stk0 then
                        goto L11
                    end
                    v3317:set(v2229, true)
                    ::L11::
                    v8411()
                    do
                        return
                    end
                    do
                        return
                    end
                    ::L5::
                    v3218:set(false, true)
                    goto L8
                    ::L9::
                    if v2327 == v9312 then
                        goto L2
                    end
                    do
                        return
                    end
                    do
                        return
                    end
                    ::L2::
                    v2327 = nil
                    v2229 = nil
                    goto L6
                end)
            S.v3242(v9411, false, function(a1257)
                local tmp192
                    if not a1257 then
                        goto L9
                    end
                    v8511(v9312)
                    v2424 = false
                    if v3218 then
                        goto L5
                    end
                    ::L8::
                    v2327 = v9312
                    v2229 = v9312.clock
                    ::L6::
                    tmp192 = v3317
                    stk0 = tmp192
                    if not tmp192 then
                        goto L3
                    end
                    ::L3::
                    if not stk0 then
                        goto L11
                    end
                    v3317:set(v2229, true)
                    ::L11::
                    v8411()
                    do
                        return
                    end
                    do
                        return
                    end
                    ::L5::
                    v3218:set(false, true)
                    goto L8
                    ::L9::
                    if v2327 == v9312 then
                        goto L2
                    end
                    do
                        return
                    end
                    do
                        return
                    end
                    ::L2::
                    v2327 = nil
                    v2229 = nil
                    goto L6
                end)
            goto L6
            ::L9::
            local v9511 = S.v3232(v1294, "Jam Manual", "Geser untuk pilih jam (0-24)", v8810())
            v3317 = S.v3262(v9511, 0, 24, 0.25, 12, 2, function(a1258)
                    v8511(nil)
                    v2327 = nil
                    v2424 = false
                    if not v3218 then
                        goto L2
                    end
                    v3218:set(false, true)
                    ::L2::
                    local v1369 = v2229 == nil
                    v2229 = a1258
                    stk0 = v1369
                    if v1369 then
                        goto L4
                    end
                    ::L4::
                    if not stk0 then
                        goto L6
                    end
                    v8411()
                    ::L7::
                    do
                        return
                    end
                    do
                        return
                    end
                    ::L6::
                    v3016 = v5713(v2229)
                    v5713(v2229)
                    v5812(v3016)
                    goto L7
                end)
            S.v3262(v9511, 0, 24, 0.25, 12, 2, function(a1259)
                    v8511(nil)
                    v2327 = nil
                    v2424 = false
                    if not v3218 then
                        goto L2
                    end
                    v3218:set(false, true)
                    ::L2::
                    local v1370 = v2229 == nil
                    v2229 = a1259
                    stk0 = v1370
                    if v1370 then
                        goto L4
                    end
                    ::L4::
                    if not stk0 then
                        goto L6
                    end
                    v8411()
                    ::L7::
                    do
                        return
                    end
                    do
                        return
                    end
                    ::L6::
                    v3016 = v5713(v2229)
                    v5713(v2229)
                    v5812(v3016)
                    goto L7
                end)
            local v9611 = S.v3232(v1294, "Siklus Hari Otomatis", "Pagi - siang - sore - malam berputar", v8810())
            v3218 = S.v3242(v9611, false, function(a1260)
                    v2424 = a1260
                    if a1260 then
                        v8511(nil)
                        v2327 = nil
                        if not v2229 then
                            v2229 = Lighting.ClockTime
                        end
                        v8411()
                    end
                end)
            S.v3242(v9611, false, function(a1261)
                    v2424 = a1261
                    if a1261 then
                        v8511(nil)
                        v2327 = nil
                        if not v2229 then
                            v2229 = Lighting.ClockTime
                        end
                        v8411()
                    end
                end)
            local v9710 = S.v3232(v1294, "Kecepatan Siklus", "Jam game per detik", v8810())
            S.v3262(v9710, 0.05, 1, 0.05, math.clamp(v2620, 0.05, 1), 2, function(a1262)
                    v2620 = a1262
                    S.v12.shSpeed = a1262
                end)
            local v987 = S.v3232(v1294, "Waktu Asli", "Kembalikan jam bawaan map", v8810())
            S.v3252(v987, "Reset", false, function()
                    v8511(nil)
                    v2327 = nil
                    v2424 = false
                    if v3218 then
                        v3218:set(false, true)
                    end
                    v2229 = nil
                    v8411()
                end)
            local v995 = nil
            local v1003, v10111, v10212 = ipairs(v3170)
            ::L4::
            local v10311, v10411 = v1003(v10111, v10212)
            v10212 = v10311
            if not v10311 then
                goto L10
            end
            if v10411.sec == v995 then
                goto L2
            end
            v995 = v10411.sec
            S.v3222(v1294, v10411.sec, v8810())
            ::L2::
            v10511 = S.v3232(v1294, v10411.name, v10411.desc, v8810())
            v10411.sw = S.v3242(v10511, false, function(a1263)
                local tmp193, v1371, v2263, v3204, v4203, v5185
                    if not a1263 then
                        goto L9
                    end
                    v1371, v2263, v3204 = ipairs(v3170)
                    ::L6::
                    v4203, v5185 = v1371(v2263, v3204)
                    v3204 = v4203
                    if not v4203 then
                        goto L8
                    end
                    tmp193 = not (v5185 == v10411)
                    stk0 = tmp193
                    if v5185 == v10411 then
                        goto L3
                    end
                    if not (v5185.grp == v10411.grp) then
                        goto L3
                    end
                    ::L3::
                    if not stk0 then
                        goto L2
                    end
                    v21102[v5185] = nil
                    v5185.sw:set(false, true)
                    ::L2::
                    goto L6
                    ::L8::
                    v21102[v10411] = true
                    ::L11::
                    v8411()
                    do
                        return
                    end
                    do
                        return
                    end
                    ::L9::
                    v21102[v10411] = nil
                    goto L11
                end)
            S.v3242(v10511, false, function(a1264)
                local tmp194, v1374, v2264, v3205, v4204, v5186
                    if not a1264 then
                        goto L9
                    end
                    v1374, v2264, v3205 = ipairs(v3170)
                    ::L6::
                    v4204, v5186 = v1374(v2264, v3205)
                    v3205 = v4204
                    if not v4204 then
                        goto L8
                    end
                    tmp194 = not (v5186 == v10411)
                    stk0 = tmp194
                    if v5186 == v10411 then
                        goto L3
                    end
                    if not (v5186.grp == v10411.grp) then
                        goto L3
                    end
                    ::L3::
                    if not stk0 then
                        goto L2
                    end
                    v21102[v5186] = nil
                    v5186.sw:set(false, true)
                    ::L2::
                    goto L6
                    ::L8::
                    v21102[v10411] = true
                    ::L11::
                    v8411()
                    do
                        return
                    end
                    do
                        return
                    end
                    ::L9::
                    v21102[v10411] = nil
                    goto L11
                end)
            goto L4
            ::L10::
            S.v3222(v1294, "Sistem", v8810())
            local v10610 = S.v3232(v1294, "Kunci Lighting", "Cegah map menimpa pengaturan shader", v8810())
            S.v3242(v10610, v2519, function(a1265)
                    v2519 = a1265
                    S.v12.shLock = a1265
                    S.v19()
                end)
            local v1075 = function()
                    table.clear(v21102)
                    for v3206, v4205 in ipairs(v3170) do
                        if v4205.sw then
                            v4205.sw:set(false, true)
                        end
                    end
                    v8511(nil)
                    v2327 = nil
                    v2424 = false
                    if v3218 then
                        v3218:set(false, true)
                    end
                    v2229 = nil
                    v8411()
                end
            local v1085 = S.v3232(v1294, "Matikan Semua Shader", "Matikan shader, awan, cuaca & waktu", v8810())
            S.v3252(v1085, "Matikan", true, v1075)
            S.v4210.shaderOff = v1075
            S.v4210.shaderClean = function()
                    table.clear(v21102)
                    v2424 = false
                    v2229 = nil
                    pcall(v8411)
                end
            return
        end
    S.v5772, S.v5782 = pcall(S.v5762)
    if S.v5772 then
        goto L115
    end
    warn("[DZ Delux] Tab Shader gagal dibuat: " .. tostring(S.v5782))
    ::L115::
    S.v5792 = function()
            local v0108 = game:GetService("ReplicatedStorage")
            local PlayerGui = S.v5:WaitForChild("PlayerGui")
            local v2265 = Vector3.new(2, 1.95, -0.15)
            local v3207 = 4
            local v4206 = 288
            local v5187 = 16
            local v6143 = 416
            local v7107 = 16
            local v897 = 36
            local v988 = 40
            local v1076 = 4
            local v11120 = 400
            local v12101 = 0.25
            local v1375 = false
            local v1449 = false
            local v1546 = Color3.fromRGB(18, 18, 20)
            local v1640 = Color3.fromRGB(0, 130, 70)
            local v1740 = Color3.new(1, 1, 1)
            local v1839 = v6143
            local v1936 = v7107
            local tmp195 = type(S.v12.fcX) == "number"
            stk0 = tmp195
            if stk0 then
                v1839 = S.v12.fcX
                v1936 = S.v12.fcY
            end
            local v2521 = {"DZCam", "DZFreeCam", "DZFrontView"}
            for v2329, v2426 in ipairs(v2521) do
                local v2622 = PlayerGui:FindFirstChild(v2426)
                if v2622 then
                    v2622:Destroy()
                end
                pcall(function()
                        S.RunService:UnbindFromRenderStep(v2426)
                    end)
            end
            local v2718 = function(a1266, a296, a352)
                    local v3208 = Instance.new(a1266)
                    for v7108, v898 in pairs(a296) do
                        v3208[v7108] = v898
                    end
                    v3208.Parent = a352
                    return v3208
                end
            local v2817 = function(a1267, a297)
                    local v2266 = {}
                    stk0 = v2718
                    stk1 = "UICorner"
                    stk2 = a297
                    if a297 then
                        goto L2
                    end
                    ::L2::
                    v2266.CornerRadius = stk2
                    return stk0(stk1, v2266, a1267)
                end
            local v2918 = function(a1268)
                    local tmp196 = a1268.UserInputType == Enum.UserInputType.Touch
                    stk0 = tmp196
                    if tmp196 then
                        goto L2
                    end
                    ::L2::
                    return stk0
                end
            local v3017 = function(a1269, a298)
                    if not a1269 then
                        return false
                    end
                    if a298 == a1269 then
                        return true
                    end
                    local tmp197 = a1269.UserInputType == Enum.UserInputType.MouseButton1
                    stk0 = tmp197
                    return stk0
                end
            local v31100 = false
            local v3219 = false
            local v3318 = false
            local v3416 = true
            local v3615 = Vector3.zero
            local v3716 = 0
            local v3815 = 0
            local v3914 = nil
            local v4013 = 0
            local v41100 = 0
            local v4316 = {}
            local v4416 = nil
            local v4516 = nil
            local v4616 = nil
            local v4715 = nil
            local v4814 = nil
            local v4915 = nil
            local v5011 = nil
            local v5188 = nil
            local v5316 = {
                Name = "DZCam",
                ResetOnSpawn = false,
                DisplayOrder = 500,
                IgnoreGuiInset = true,
                ZIndexBehavior = Enum.ZIndexBehavior.Sibling
            }
            local v5216 = v2718("ScreenGui", v5316, PlayerGui)
            local v5516 = {}
            v5516.Size = UDim2.fromScale(1, 1)
            v5516.BackgroundTransparency = 1
            v5516.Active = true
            v5516.Visible = false
            v5516.ZIndex = 1
            local v5416 = v2718("Frame", v5516, v5216)
            local v5714 = {}
            v5714.Size = UDim2.fromScale(1, 1)
            v5714.BackgroundTransparency = 1
            v5714.Visible = false
            v5714.ZIndex = 2
            local v5615 = v2718("Frame", v5714, v5216)
            local v5813 = false
            local v5914 = function(a1270)
                    if v5813 then
                        return
                    end
                    v5813 = true
                    warn("[DZ Delux] Zoom/Leaderboard: " .. a1270)
                end
            local v607 = function()
                    local v0109 = v0108
                    local v6144 = {
                        "Services",
                        "Client",
                        "KeybindService",
                        "SendKeybindEvent"
                    }
                    for v4207, v5189 in ipairs(v6144) do
                        stk0 = v0109
                        v0109 = stk0
                    end
                    return v0109
                end
            local v6146 = function(a1271, a299)
                    local v2267 = v607()
                    if v2267 then
                        goto L4
                    end
                    v5914("ReplicatedStorage.Services.Client.KeybindService.SendKeybindEvent tidak ketemu")
                    do
                        return
                    end
                    do
                        return
                    end
                    ::L4::
                    local v4208 = {Key = a1271, Down = a299}
                    local v5190 = nil
                    local v6145 = nil
                    if not v2267:IsA("BindableEvent") then
                        goto L7
                    end
                    v6145, v5190 = pcall(function()
                            v2267:Fire(v4208)
                        end)
                    pcall(function()
                            v2267:Fire(v4208)
                        end)
                    pcall(function()
                            v2267:Fire(v4208)
                        end)
                    ::L2::
                    if v5190 then
                        goto L11
                    end
                    v5914(tostring(v6145))
                    ::L11::
                    do
                        return
                    end
                    do
                        return
                    end
                    ::L7::
                    if not v2267:IsA("RemoteEvent") then
                        goto L9
                    end
                    v6145, v5190 = pcall(function()
                            v2267:FireServer(v4208)
                        end)
                    pcall(function()
                            v2267:FireServer(v4208)
                        end)
                    pcall(function()
                            v2267:FireServer(v4208)
                        end)
                    goto L2
                    ::L9::
                    if not v2267:IsA("ModuleScript") then
                        goto L6
                    end
                    v6145, v5190 = pcall(function()
                            require(v2267):Fire(v4208)
                        end)
                    pcall(function()
                            require(v2267):Fire(v4208)
                        end)
                    pcall(function()
                            require(v2267):Fire(v4208)
                        end)
                    goto L2
                    ::L6::
                    v5190 = false
                    v6145 = "tipe tidak dikenal: " .. v2267.ClassName
                    goto L2
                end
            local v6314 = {BackgroundTransparency = 1}
            v6314.Position = UDim2.fromOffset(v4206, v5187)
            v6314.Size = UDim2.fromOffset(v897 * 3 + 12, v897)
            v6314.ZIndex = 10
            v6314.Visible = false
            local v6214 = v2718("Frame", v6314, v5216)
            local v6414 = {FillDirection = Enum.FillDirection.Horizontal}
            v6414.Padding = UDim.new(0, 6)
            v6414.SortOrder = Enum.SortOrder.LayoutOrder
            v2718("UIListLayout", v6414, v6214)
            local v6513 = function(a1272, a2100)
                    local v3209 = {LayoutOrder = a1272}
                    v3209.Size = UDim2.fromOffset(v897, v897)
                    v3209.BackgroundColor3 = v1546
                    v3209.BackgroundTransparency = 0.25
                    v3209.AutoButtonColor = false
                    v3209.Text = ""
                    v3209.ZIndex = 10
                    local v2268 = v2718("TextButton", v3209, v6214)
                    v2817(v2268)
                    local v5191 = {Color = v1740, Transparency = 0.85}
                    local v4209 = v2718("UIStroke", v5191, v2268)
                    local v6147 = {BackgroundTransparency = 1}
                    v6147.AnchorPoint = Vector2.new(0.5, 0.5)
                    v6147.Position = UDim2.fromScale(0.5, 0.5)
                    v6147.Size = UDim2.fromScale(0.6, 0.6)
                    v6147.Image = a2100
                    v6147.ZIndex = 11
                    v2718("ImageLabel", v6147, v2268)
                    return v2268, v4209
                end
            local v6611 = v6513(1, "rbxassetid://126943351764139")
            v6611.InputBegan:Connect(function(a1273)
                    if not v2918(a1273) then
                        return
                    end
                    v6146("Secondary", true)
                    local v1376 = false
                    local v2269 = function()
                            if v1376 then
                                return
                            end
                            v1376 = true
                            v6146("Secondary", false)
                        end
                    a1273.Changed:Connect(function()
                            if a1273.UserInputState == Enum.UserInputState.End then
                                v2269()
                            end
                        end)
                end)
            local v6712, v6811 = v6513(2, "rbxassetid://78648212535999")
            local v6912 = function(a1274)
                    stk0 = a1274
                    if not a1274 then
                        goto L2
                    end
                    ::L2::
                    if stk0 then
                        goto L10
                    end
                    ::L10::
                    v3219 = stk0
                    if not v3219 then
                        goto L8
                    end
                    ::L8::
                    if stk0 then
                        goto L4
                    end
                    ::L4::
                    v6712.BackgroundColor3 = stk0
                    if not v3219 then
                        goto L6
                    end
                    ::L6::
                    if stk0 then
                        goto L12
                    end
                    ::L12::
                    v6811.Transparency = stk0
                    return
                end
            v6712.Activated:Connect(function()
                    v6912(not v3219)
                end)
            local v705 = v6513(3, "rbxassetid://5107166345")
            v705.Activated:Connect(function()
                    v6146("Leaderboard", true)
                    task.wait(0.08)
                    v6146("Leaderboard", false)
                end)
            local v7213 = {BackgroundTransparency = 1}
            v7213.Position = UDim2.fromOffset(v1839, v1936)
            v7213.Size = UDim2.fromOffset(v897 * 2 + 6, v897)
            v7213.ZIndex = 10
            v7213.Visible = false
            local v7113 = v2718("Frame", v7213, v5216)
            local v7313 = {FillDirection = Enum.FillDirection.Horizontal}
            v7313.Padding = UDim.new(0, 6)
            v7313.SortOrder = Enum.SortOrder.LayoutOrder
            v2718("UIListLayout", v7313, v7113)
            local v7413 = function(a1275)
                    local v2270 = {LayoutOrder = a1275}
                    v2270.Size = UDim2.fromOffset(v897, v897)
                    v2270.BackgroundColor3 = v1546
                    v2270.BackgroundTransparency = 0.25
                    v2270.AutoButtonColor = false
                    v2270.Text = ""
                    v2270.ZIndex = 10
                    local v1377 = v2718("TextButton", v2270, v7113)
                    v2817(v1377)
                    local v4217 = {Color = v1740, Transparency = 0.85}
                    local v3220 = v2718("UIStroke", v4217, v1377)
                    return v1377, v3220
                end
            local v7512 = function(a1276, a2101, a353, a424, a512, a66, a72)
                    local v899 = {}
                    v899.Size = UDim2.fromOffset(a2101, a353)
                    v899.Position = UDim2.new(0.5, a424, 0.5, a512)
                    v899.AnchorPoint = Vector2.new(0.5, 0.5)
                    v899.BackgroundColor3 = a66
                    v899.BorderSizePixel = 0
                    v899.ZIndex = 11
                    local v7109 = v2718("Frame", v899, a1276)
                    stk0 = v2817
                    stk1 = v7109
                    stk2 = a72
                    if not a72 then
                        goto L3
                    end
                    ::L3::
                    if stk2 then
                        goto L2
                    end
                    ::L2::
                    stk0(stk1, stk2)
                    return v7109
                end
            local v7611, v7711 = v7413(1)
            v7512(v7611, 18, 12, 0, 2, v1740, false)
            v7512(v7611, 8, 4, -3, -5, v1740, false)
            v7512(v7611, 7, 7, 0, 2, v1546, true)
            local v7811, v7911 = v7413(2)
            v7811.Visible = false
            v7512(v7811, 20, 12, 0, 0, v1740, true)
            v7512(v7811, 7, 7, 0, 0, v1546, true)
            local v805 = 232
            local v8113 = 40
            local v8313 = {}
            v8313.Position = UDim2.fromOffset(v1839, v1936 + (v897 + 6))
            v8313.Size = UDim2.fromOffset(v805, v8113)
            v8313.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
            v8313.BackgroundTransparency = 0.2
            v8313.Visible = false
            v8313.ZIndex = 10
            local v8213 = v2718("Frame", v8313, v5216)
            v2817(v8213, UDim.new(0, 12))
            local v8412 = {}
            v8412.PaddingLeft = UDim.new(0, 4)
            v8412.PaddingRight = UDim.new(0, 4)
            v8412.PaddingTop = UDim.new(0, 4)
            v8412.PaddingBottom = UDim.new(0, 4)
            v2718("UIPadding", v8412, v8213)
            local v8512 = {FillDirection = Enum.FillDirection.Horizontal}
            v8512.Padding = UDim.new(0, 4)
            v8512.VerticalAlignment = Enum.VerticalAlignment.Center
            v8512.SortOrder = Enum.SortOrder.LayoutOrder
            v2718("UIListLayout", v8512, v8213)
            local v8612 = function(a1277, a2102, a354)
                    local v4218 = {LayoutOrder = a354}
                    v4218.Size = UDim2.fromOffset(a1277, 30)
                    v4218.BackgroundColor3 = Color3.fromRGB(45, 45, 50)
                    v4218.AutoButtonColor = true
                    v4218.Text = a2102
                    v4218.TextColor3 = v1740
                    v4218.Font = Enum.Font.GothamBold
                    v4218.TextSize = 15
                    v4218.ZIndex = 11
                    local v3221 = v2718("TextButton", v4218, v8213)
                    v2817(v3221, UDim.new(0, 8))
                    return v3221
                end
            local v8712 = v8612(34, "-", 1)
            local v8910 = {LayoutOrder = 2}
            v8910.Size = UDim2.fromOffset(52, 30)
            v8910.BackgroundTransparency = 1
            v8910.Font = Enum.Font.Code
            v8910.TextSize = 14
            v8910.TextColor3 = Color3.fromRGB(255, 220, 120)
            v8910.Text = tostring(v988)
            v8910.ZIndex = 11
            local v8811 = v2718("TextLabel", v8910, v8213)
            local v904 = v8612(34, "+", 3)
            local v9112 = v8612(90, "Analog", 4)
            v9112.TextSize = 13
            local v9213 = function()
                local v1378
                    local v0110 = v5216.AbsoluteSize
                    if not (v0110.X < 10) then
                        goto L5
                    end
                    v1378 = workspace.CurrentCamera
                    stk0 = v1378
                    if v1378 then
                        goto L4
                    end
                    ::L2::
                    if stk0 then
                        goto L6
                    end
                    ::L6::
                    v0110 = stk0
                    ::L5::
                    do
                        return v0110
                    end
                    do
                        return
                    end
                    ::L4::
                    goto L2
                end
            local v9313 = function(a1278, a2103)
                    local v2271 = v9213()
                    local a1278 = math.clamp(a1278, 0, math.max(0, v2271.X - v805))
                    math.clamp(a1278, 0, math.max(0, v2271.X - v805))
                    local a2103 = math.clamp(a2103, 0, math.max(0, v2271.Y - (v897 + (6 + v8113))))
                    math.clamp(a2103, 0, math.max(0, v2271.Y - (v897 + (6 + v8113))))
                    v1839 = a1278
                    v1936 = a2103
                    v7113.Position = UDim2.fromOffset(a1278, a2103)
                    UDim2.fromOffset(a1278, a2103)
                    v8213.Position = UDim2.fromOffset(a1278, a2103 + (v897 + 6))
                    UDim2.fromOffset(a1278, a2103 + (v897 + 6))
                end
            local v9412 = function()
                    S.v12.fcX = v1839
                    S.v12.fcY = v1936
                    S.v19()
                end
            v9313(v1839, v1936)
            local v9512 = 48
            local v9711 = {}
            v9711.AnchorPoint = Vector2.new(0, 1)
            v9711.Position = UDim2.new(0, 40, 1, -34)
            v9711.Size = UDim2.fromOffset(120, 120)
            v9711.BackgroundColor3 = Color3.new(0, 0, 0)
            v9711.BackgroundTransparency = 0.55
            v9711.Active = true
            v9711.ZIndex = 5
            local v9612 = v2718("Frame", v9711, v5615)
            v2817(v9612)
            local v989 = {Color = v1740, Transparency = 0.75, Thickness = 2}
            v2718("UIStroke", v989, v9612)
            local v1004 = {}
            v1004.AnchorPoint = Vector2.new(0.5, 0.5)
            v1004.Position = UDim2.fromScale(0.5, 0.5)
            v1004.Size = UDim2.fromOffset(50, 50)
            v1004.BackgroundColor3 = v1740
            v1004.BackgroundTransparency = 0.35
            v1004.ZIndex = 6
            local v996 = v2718("Frame", v1004, v9612)
            v2817(v996)
            local v10213 = {}
            v10213.AnchorPoint = Vector2.new(0, 1)
            v10213.Position = UDim2.new(0, 30, 1, -30)
            v10213.Size = UDim2.fromOffset(150, 150)
            v10213.BackgroundTransparency = 1
            v10213.Visible = false
            v10213.ZIndex = 5
            local v10112 = v2718("Frame", v10213, v5615)
            local v10312 = function(a1279, a2104, a355, a425, a513)
                    local v6148 = {}
                    v6148.AnchorPoint = Vector2.new(0.5, 0.5)
                    v6148.Position = a355
                    v6148.Size = UDim2.fromOffset(a513, a513)
                    v6148.BackgroundColor3 = Color3.new(0, 0, 0)
                    v6148.BackgroundTransparency = 0.45
                    v6148.AutoButtonColor = false
                    v6148.Text = a2104
                    v6148.TextColor3 = v1740
                    v6148.TextSize = 22
                    v6148.Font = Enum.Font.SourceSansBold
                    v6148.ZIndex = 6
                    local v5193 = v2718("TextButton", v6148, a1279)
                    v2817(v5193, UDim.new(0, 12))
                    local v7114 = {Color = v1740, Transparency = 0.8}
                    v2718("UIStroke", v7114, v5193)
                    v5193.InputBegan:Connect(function(a1280)
                            if v2918(a1280) then
                                v4316[a425] = true
                                v5193.BackgroundTransparency = 0.2
                            end
                        end)
                    v5193.InputEnded:Connect(function(a1281)
                            if v2918(a1281) then
                                v4316[a425] = false
                                v5193.BackgroundTransparency = 0.45
                            end
                        end)
                    return v5193
                end
            v10312(v10112, utf8.char(9650), UDim2.fromOffset(75, 27), "maju", 50)
            v10312(v10112, utf8.char(9660), UDim2.fromOffset(75, 123), "mundur", 50)
            v10312(v10112, utf8.char(9664), UDim2.fromOffset(27, 75), "kiri", 50)
            v10312(v10112, utf8.char(9654), UDim2.fromOffset(123, 75), "kanan", 50)
            v10312(v5615, utf8.char(9650), UDim2.new(1, -50, 1, -116), "naik", 60)
            v10312(v5615, utf8.char(9660), UDim2.new(1, -50, 1, -46), "turun", 60)
            v9612.InputBegan:Connect(function(a1282)
                    local tmp198 = v4416
                    stk0 = tmp198
                    if tmp198 then
                        goto L2
                    end
                    ::L2::
                    if not stk0 then
                        goto L4
                    end
                    do
                        return
                    end
                    do
                        return
                    end
                    ::L4::
                    v4416 = a1282
                    v4516 = Vector2.new(a1282.Position.X, a1282.Position.Y)
                    Vector2.new(a1282.Position.X, a1282.Position.Y)
                    a1282.Changed:Connect(function()
                            local tmp199 = a1282.UserInputState == Enum.UserInputState.End
                            stk0 = tmp199
                            if stk0 then
                                v4416 = nil
                                v4013 = 0
                                v41100 = 0
                                v996.Position = UDim2.fromScale(0.5, 0.5)
                                UDim2.fromScale(0.5, 0.5)
                            end
                        end)
                    return
                end)
            v5416.InputBegan:Connect(function(a1283)
                    local tmp200 = v4616
                    stk0 = tmp200
                    if tmp200 then
                        goto L2
                    end
                    ::L2::
                    if not stk0 then
                        goto L4
                    end
                    do
                        return
                    end
                    do
                        return
                    end
                    ::L4::
                    v4616 = a1283
                    v4715 = Vector2.new(a1283.Position.X, a1283.Position.Y)
                    Vector2.new(a1283.Position.X, a1283.Position.Y)
                    a1283.Changed:Connect(function()
                            local tmp201 = a1283.UserInputState == Enum.UserInputState.End
                            stk0 = tmp201
                            if stk0 then
                                v4616 = nil
                            end
                        end)
                    return
                end)
            S.v8(S.UserInputService.InputChanged, function(a1284)
                local v1379, v2273, v3223, tmp202, tmp203, v4219
                    if not v3017(v4416, a1284) then
                        goto L12
                    end
                    v1379 = Vector2.new(a1284.Position.X, a1284.Position.Y) - v4516
                    if v9512 < v1379.Magnitude then
                        goto L9
                    end
                    ::L20::
                    v996.Position = UDim2.new(0.5, v1379.X, 0.5, v1379.Y)
                    UDim2.new(0.5, v1379.X, 0.5, v1379.Y)
                    v4013 = v1379.X / v9512
                    v41100 = -v1379.Y / v9512
                    if not (math.abs(v4013) < 0.12) then
                        goto L5
                    end
                    v4013 = 0
                    ::L5::
                    if not (math.abs(v41100) < 0.12) then
                        goto L12
                    end
                    v41100 = 0
                    ::L12::
                    if not v3017(v4616, a1284) then
                        goto L17
                    end
                    v2273 = Vector2.new(a1284.Position.X, a1284.Position.Y)
                    v3223 = v2273 - v4715
                    v4715 = v2273
                    stk0 = v3716
                    stk1 = math.rad
                    stk2 = v3223.X
                    stk3 = v12101
                    tmp202 = v1375
                    stk4 = tmp202
                    if not tmp202 then
                        goto L2
                    end
                    ::L2::
                    if stk4 then
                        goto L15
                    end
                    ::L15::
                    v3716 = stk0 - stk1(stk2 * (stk3 * stk4))
                    tmp203 = v1449
                    stk5 = tmp203
                    if not tmp203 then
                        goto L10
                    end
                    ::L10::
                    if stk5 then
                        goto L4
                    end
                    ::L4::
                    v3815 = stk0(stk1 - stk2(stk3 * (stk4 * stk5)), -math.rad(85), math.rad(85))
                    stk0(stk1 - stk2(stk3 * (stk4 * stk5)), -math.rad(85), math.rad(85))
                    ::L17::
                    if not v3017(v4814, a1284) then
                        goto L22
                    end
                    v4219 = Vector2.new(a1284.Position.X, a1284.Position.Y) - v4915
                    if not (8 < v4219.Magnitude) then
                        goto L7
                    end
                    v5188 = true
                    ::L7::
                    if not v5188 then
                        goto L22
                    end
                    v9313(v5011.X + v4219.X, v5011.Y + v4219.Y)
                    ::L22::
                    do
                        return
                    end
                    do
                        return
                    end
                    ::L9::
                    v1379 = v1379.Unit * v9512
                    goto L20
                end)
            local v10412 = function(a1285)
                    v988 = math.clamp(a1285, v1076, v11120)
                    math.clamp(a1285, v1076, v11120)
                    v8811.Text = tostring(math.floor(v988 + 0.5))
                    tostring(math.floor(v988 + 0.5))
                end
            local v10512 = function(a1286, a2105)
                    local v2274 = 0
                    a1286.InputBegan:Connect(function(a1287)
                            if not v2918(a1287) then
                                return
                            end
                            v2274 = v2274 + 1
                            local v1380 = v2274
                            a2105()
                            task.spawn(function()
                                    task.wait(0.4)
                                    ::L2::
                                    while true do
                                        local tmp204 = v2274 == v1380
                                        stk0 = tmp204
                                        if stk0 then
                                            a2105()
                                            task.wait(0.06)
                                            goto L2
                                        end
                                    end
                                end)
                        end)
                    a1286.InputEnded:Connect(function(a1288)
                            if v2918(a1288) then
                                v2274 = v2274 + 1
                            end
                        end)
                end
            v10512(v8712, function()
                    v10412(v988 / 1.12)
                end)
            v10512(v904, function()
                    v10412(v988 * 1.12)
                end)
            local v10611 = function()
                    v9612.Visible = v3416
                    v10112.Visible = not v3416
                    local tmp205 = v3416
                    stk0 = tmp205
                    if not tmp205 then
                        goto L2
                    end
                    ::L2::
                    if stk0 then
                        goto L4
                    end
                    ::L4::
                    v9112.Text = stk0
                    v4013 = 0
                    v41100 = 0
                    local v0111 = {}
                    v4316 = v0111
                    v996.Position = UDim2.fromScale(0.5, 0.5)
                    UDim2.fromScale(0.5, 0.5)
                    return
                end
            v9112.Activated:Connect(function()
                    v3416 = not v3416
                    v10611()
                end)
            local v1077 = function()
                    local tmp206 = v31100
                    stk0 = tmp206
                    local v0112 = stk0
                    v5615.Visible = v0112
                    v8213.Visible = v0112
                end
            local v1086 = function(a1289)
                    v3318 = a1289
                    stk0 = a1289
                    if not a1289 then
                        goto L6
                    end
                    ::L6::
                    if stk0 then
                        goto L2
                    end
                    ::L2::
                    v7811.BackgroundColor3 = stk0
                    if not a1289 then
                        goto L4
                    end
                    ::L4::
                    if stk0 then
                        goto L8
                    end
                    ::L8::
                    v7911.Transparency = stk0
                    v1077()
                    return
                end
            local v1095 = function(a1290)
                local v2275, v3224
                    stk0 = a1290
                    if not a1290 then
                        goto L15
                    end
                    ::L15::
                    if stk0 then
                        goto L4
                    end
                    ::L4::
                    local a1290 = stk0
                    if not (a1290 == v31100) then
                        goto L2
                    end
                    do
                        return
                    end
                    do
                        return
                    end
                    ::L2::
                    v31100 = a1290
                    local v1381 = workspace.CurrentCamera
                    if not a1290 then
                        goto L6
                    end
                    v3914 = v1381.CameraType
                    v2275, v3224 = v1381.CFrame:ToOrientation()
                    v3815 = v2275
                    v3716 = v3224
                    v3615 = v1381.CFrame.Position
                    ::L13::
                    v5416.Visible = a1290
                    v7811.Visible = a1290
                    stk0 = a1290
                    if not a1290 then
                        goto L17
                    end
                    ::L17::
                    if stk0 then
                        goto L11
                    end
                    ::L11::
                    v7611.BackgroundColor3 = stk0
                    if not a1290 then
                        goto L9
                    end
                    ::L9::
                    if stk0 then
                        goto L19
                    end
                    ::L19::
                    v7711.Transparency = stk0
                    v1086(false)
                    do
                        return
                    end
                    do
                        return
                    end
                    ::L6::
                    local tmp207 = v3914
                    stk0 = tmp207
                    if tmp207 then
                        goto L8
                    end
                    ::L8::
                    v1381.CameraType = stk0
                    local v4220 = {}
                    v4316 = v4220
                    v4013 = 0
                    v41100 = 0
                    v4416 = nil
                    v4616 = nil
                    v996.Position = UDim2.fromScale(0.5, 0.5)
                    UDim2.fromScale(0.5, 0.5)
                    goto L13
                end
            local v11012 = function(a1291)
                    stk0 = a1291
                    if not a1291 then
                        goto L2
                    end
                    ::L2::
                    if stk0 then
                        goto L4
                    end
                    ::L4::
                    local a1291 = stk0
                    v7113.Visible = a1291
                    if a1291 then
                        goto L6
                    end
                    v1095(false)
                    ::L6::
                    return
                end
            v7611.InputBegan:Connect(function(a1292)
                    local tmp208 = v4814
                    stk0 = tmp208
                    if tmp208 then
                        goto L2
                    end
                    ::L2::
                    if not stk0 then
                        goto L4
                    end
                    do
                        return
                    end
                    do
                        return
                    end
                    ::L4::
                    v4814 = a1292
                    v4915 = Vector2.new(a1292.Position.X, a1292.Position.Y)
                    Vector2.new(a1292.Position.X, a1292.Position.Y)
                    v5011 = Vector2.new(v1839, v1936)
                    Vector2.new(v1839, v1936)
                    v5188 = false
                    a1292.Changed:Connect(function()
                            local tmp209 = a1292.UserInputState == Enum.UserInputState.End
                            stk0 = tmp209
                            if stk0 then
                                v4814 = nil
                                if v5188 then
                                    v9412()
                                    goto L6
                                end
                                v1095(not v31100)
                            end
                            ::L6::
                        end)
                    return
                end)
            v7811.Activated:Connect(function()
                    v1086(not v3318)
                end)
            v10611()
            local v11121 = RaycastParams.new()
            v11121.FilterType = Enum.RaycastFilterType.Exclude
            v11121.RespectCanCollide = true
            local v11212 = function()
                    local v0113 = workspace.CurrentCamera.CameraSubject
                    stk0 = v0113
                    if stk0 then
                        return v0113.RootPart
                    end
                    local v1384 = S.v5.Character
                    stk0 = v1384
                    return stk0
                end
            local v11311 = function(a1293)
                    stk0 = a1293
                    if not a1293 then
                        goto L2
                    end
                    ::L2::
                    if stk0 then
                        goto L4
                    end
                    ::L4::
                    local a1293 = stk0
                    v6214.Visible = a1293
                    if a1293 then
                        goto L6
                    end
                    v6912(false)
                    ::L6::
                    return
                end
            S.RunService:BindToRenderStep("DZCam", Enum.RenderPriority.Last.Value, function(a1294)
                local tmp210, v2276, v3225, v4221, tmp211, v5194, tmp212, v6149, v7115, v8100, v990, v1078, v11122, v12102, v1386
                    local v1385 = workspace.CurrentCamera
                    if v1385 then
                        goto L11
                    end
                    do
                        return
                    end
                    do
                        return
                    end
                    ::L11::
                    if not v31100 then
                        goto L18
                    end
                    if v1385.CameraType == Enum.CameraType.Scriptable then
                        goto L24
                    end
                    v1385.CameraType = Enum.CameraType.Scriptable
                    ::L24::
                    v2276 = CFrame.fromOrientation(v3815, v3716, 0)
                    v3225 = v4013
                    v4221 = v41100
                    if v3416 then
                        goto L5
                    end
                    tmp210 = v4316.kanan
                    stk0 = tmp210
                    if not tmp210 then
                        goto L16
                    end
                    ::L16::
                    if stk0 then
                        goto L7
                    end
                    ::L7::
                    if not v4316.kiri then
                        goto L20
                    end
                    ::L20::
                    if stk1 then
                        goto L2
                    end
                    ::L2::
                    v3225 = stk0 - stk1
                    if not v4316.maju then
                        goto L37
                    end
                    ::L37::
                    if stk0 then
                        goto L26
                    end
                    ::L26::
                    if not v4316.mundur then
                        goto L28
                    end
                    ::L28::
                    if stk1 then
                        goto L13
                    end
                    ::L13::
                    v4221 = stk0 - stk1
                    ::L5::
                    tmp211 = v4316.naik
                    stk0 = tmp211
                    if not tmp211 then
                        goto L9
                    end
                    ::L9::
                    if stk0 then
                        goto L32
                    end
                    ::L32::
                    if not v4316.turun then
                        goto L30
                    end
                    ::L30::
                    if stk1 then
                        goto L40
                    end
                    ::L40::
                    v5194 = stk0 - stk1
                    tmp212 = v2276.RightVector * v3225 + (v2276.LookVector * v4221 + Vector3.yAxis * v5194)
                    v6149 = tmp212
                    if not (1 < v6149.Magnitude) then
                        goto L23
                    end
                    v6149 = v6149.Unit
                    ::L23::
                    v3615 = v3615 + v6149 * (v988 * a1294)
                    v1385.CFrame = CFrame.new(v3615) * v2276
                    v1385.Focus = v1385.CFrame * CFrame.new(0, 0, -12)
                    do
                        return
                    end
                    do
                        return
                    end
                    ::L18::
                    if not v3219 then
                        goto L42
                    end
                    v7115 = v11212()
                    if v7115 then
                        goto L35
                    end
                    do
                        return
                    end
                    do
                        return
                    end
                    ::L35::
                    v8100 = v7115.CFrame:PointToWorldSpace(v2265)
                    v990 = v1385.CFrame.Position - v8100
                    if not (v990.Magnitude < 0.5) then
                        goto L14
                    end
                    do
                        return
                    end
                    do
                        return
                    end
                    ::L14::
                    v1078 = -v990.Unit
                    v11122 = v3207
                    v12102 = {v7115.Parent}
                    v11121.FilterDescendantsInstances = v12102
                    v1386 = workspace:Raycast(v8100, v1078 * v3207, v11121)
                    if not v1386 then
                        goto L4
                    end
                    v11122 = math.max(0.8, (v1386.Position - v8100).Magnitude - 0.3)
                    math.max(0.8, (v1386.Position - v8100).Magnitude - 0.3)
                    ::L4::
                    v1385.CFrame = CFrame.lookAt(v8100 + v1078 * v11122, v8100)
                    CFrame.lookAt(v8100 + v1078 * v11122, v8100)
                    ::L42::
                    return
                end)
            local v11412 = {setFree = v11012, setFront = v11311}
            v11412.resetPos = function()
                    v9313(v6143, v7107)
                    S.v12.fcX = nil
                    S.v12.fcY = nil
                    S.v19()
                end
            S.v4210.cam = v11412
            S.v4210.camClean = function()
                    v1095(false)
                    v6912(false)
                    pcall(function()
                            S.RunService:UnbindFromRenderStep("DZCam")
                        end)
                    pcall(function()
                            v5216:Destroy()
                        end)
                    S.v4210.cam = nil
                end
        end
    S.v5802, S.v5814 = pcall(S.v5792)
    if S.v5802 then
        goto L118
    end
    warn("[DZ Delux] Modul kamera gagal dibuat: " .. tostring(S.v5814))
    ::L118::
    S.v5822 = S.v3182("Settings", 10, "misc")
    S.v5832 = nil
    S.v5842 = nil
    S.v5852 = nil
    S.v5862 = function(a1295)
            for v4223, v5195 in ipairs(S.v1402) do
                pcall(function()
                        v5195.CornerRadius = UDim.new(0, a1295)
                        UDim.new(0, a1295)
                    end)
            end
        end
    S.v3222(S.v5822, "Tampilan", 1)
    S.v5872 = S.v3232(S.v5822, "Ukuran Panel", "Besar / kecilkan UI", 2)
    S.v5832 = S.v3262(S.v5872, 0.6, 1.4, 0.05, S.v12.scale, 2, function(a1296)
            S.v12.scale = a1296
            S.v1812()
        end)
    S.v3262(S.v5872, 0.6, 1.4, 0.05, S.v12.scale, 2, function(a1297)
            S.v12.scale = a1297
            S.v1812()
        end)
    S.v5882 = S.v3232(S.v5822, "Tebal Border", "Garis tepi panel", 3)
    S.v5842 = S.v3262(S.v5882, 0, 4, 0.5, S.v12.border, 1, function(a1298)
            S.v12.border = a1298
            S.v1732.Thickness = a1298
        end)
    S.v3262(S.v5882, 0, 4, 0.5, S.v12.border, 1, function(a1299)
            S.v12.border = a1299
            S.v1732.Thickness = a1299
        end)
    S.v5892 = S.v3232(S.v5822, "Lengkung Sudut", "Bulat / kotak sudut panel", 4)
    S.v5852 = S.v3262(S.v5892, 0, 28, 1, S.v12.radius, 0, function(a1300)
            S.v12.radius = a1300
            S.v5862(a1300)
        end)
    S.v3262(S.v5892, 0, 28, 1, S.v12.radius, 0, function(a1301)
            S.v12.radius = a1301
            S.v5862(a1301)
        end)
    S.v5902 = S.v3232(S.v5822, "Warna Aksen", "Pilih warna tema", 5)
    S.v5915, S.v5922, S.v5932 = ipairs(S.v1252)
    ::L66::
    S.v5942, S.v5952 = S.v5915(S.v5922, S.v5932)
    S.v5932 = S.v5942
    if not S.v5942 then
        goto L70
    end
    S.v5972 = {}
    S.v5972.AnchorPoint = Vector2.new(1, 0.5)
    S.v5972.Position = UDim2.new(1, -16 - (#S.v1252 - S.v5942) * 28, 0.5, 0)
    S.v5972.Size = UDim2.fromOffset(20, 20)
    S.v5972.BackgroundColor3 = S.v5952[2]
    S.v5972.Text = ""
    S.v5972.AutoButtonColor = false
    S.v5972.ZIndex = 4
    S.v5962 = S.v150("TextButton", S.v5972, S.v5902)
    S.v151(S.v5962, 10)
    S.v5992 = {}
    S.v5992.AnchorPoint = Vector2.new(0.5, 0.5)
    S.v5992.Position = UDim2.fromScale(0.5, 0.5)
    S.v5992.Size = UDim2.fromOffset(28, 28)
    S.v5992.BackgroundTransparency = 1
    S.v5992.Visible = S.v5952[2] == S.v1322
    S.v5992.ZIndex = 4
    S.v5982 = S.v150("Frame", S.v5992, S.v5962)
    S.v151(S.v5982, 14)
    S.v1532(S.v5982, S.v1212, 1.5, 0.15)
    S.v600 = {S.v5982, S.v5952[2]}
    table.insert(S.v1392, S.v600)
    S.v8(S.v5962.MouseButton1Click, function()
            S.v12.accent = S.v5942
            S.v1572(S.v5952[2])
            S.v19()
        end)
    goto L66
    ::L70::
    S.v601 = S.v3232(S.v5822, "Reset Tampilan", "Kembalikan ukuran, border & sudut", 6)
    S.v3252(S.v601, "Reset", false, function()
            S.v5832:set(S.v10.scale)
            S.v5842:set(S.v10.border)
            S.v5852:set(S.v10.radius)
            S.v19()
        end)
    S.v6022 = S.v3232(S.v5822, "Reset Posisi Tombol", "Tombol DZ Delux ke tengah atas", 7)
    S.v3252(S.v6022, "Reset", false, function()
            S.v12.pillXs = nil
            S.v12.pillYs = nil
            S.v4952()
            S.v19()
        end)
    S.v3222(S.v5822, "Sistem", 9)
    S.v6032 = S.v3232(S.v5822, "Jaga Terus", "Pasang ulang otomatis (5x per detik)", 10)
    S.v3242(S.v6032, true, function(a1302)
            S.v44 = a1302
        end)
    S.v6042 = S.v3232(S.v5822, "Efek Aksesori", "Partikel & cahaya horns/crown", 11)
    S.v3242(S.v6042, true, function(a1303)
            S.v45 = a1303
            S.v1032()
        end)
    S.v6052 = S.v3232(S.v5822, "Parent ke Kamera", "Kalau item dihapus oleh map", 12)
    S.v3242(S.v6052, false, function(a1304)
            S.v46 = a1304
            for v4224, v5196 in ipairs(S.v542(S.v5)) do
                pcall(S.v582, v5196)
            end
            S.v1032()
        end)
    S.v6062 = S.v3232(S.v5822, "Respawn Karakter", "Reset karakter (kamu mati)", 13)
    S.v3252(S.v6062, "Respawn", false, function()
            local v0114 = S.v552(S.v5)
            stk0 = v0114
            local v1387 = stk0
            if v1387 then
                v1387.Health = 0
            end
        end)
    S.v6072 = S.v3232(S.v5822, "Reset Semua", "Matikan semua fitur & tema", 14)
    S.v3252(S.v6072, "Reset", true, function()
            for v3226, v4225 in ipairs(S.v3272) do
                if v4225.side == "me" then
                    v4225.sw:set(false)
                end
            end
            if S.v148 then
                S.v148()
            end
            if S.v4210.catClear then
                pcall(S.v4210.catClear)
            end
            if S.v4210.shaderOff then
                pcall(S.v4210.shaderOff)
            end
            if S.v4210.clothClear then
                pcall(S.v4210.clothClear, "me")
            end
            S.v12.accent = 1
            S.v1572(S.v1252[1][2])
            S.v19()
            S.v289()
        end)
    S.v608 = S.v3232(S.v5822, "Info Karakter", "Cetak struktur karakter ke console", 15)
    S.v3252(S.v608, "Debug", false, function()
            local v0115 = S.v542(S.v5)
            if #v0115 == 0 then
                S.v189("Karakter tidak ketemu", S.v1222)
                warn("[DZ Delux] karakter nil")
                return
            end
            for v4226, v5197 in ipairs(v0115) do
                local tmp213 = (("[DZ Delux] " .. v5197:GetFullName()) .. " | rig=") .. tostring(S.v562(v5197))
                warn(tmp213)
                for v991, v1079 in ipairs(v5197:GetChildren()) do
                    warn((("[DZ Delux]   " .. v1079.ClassName) .. " : ") .. v1079.Name)
                end
            end
            S.v189(("Debug: %d model (%s)"):format(#v0115, tostring(S.v562(v0115[1]))))
        end)
    S.v609 = S.v3232(S.v5822, "Tutup UI", "Hapus UI & matikan fitur", 16)
    S.v3252(S.v609, "Tutup", true, function()
            if _G.DELUX_CLEAN then
                _G.DELUX_CLEAN()
            end
        end)
    S.v3222(S.v5822, "Bahasa & UI", 17)
    S.v61010 = S.v3232(S.v5822, "Bahasa", "Pilih bahasa tampilan UI", 18)
    if not (S.v12.lang == "en") then
        goto L12
    end
    ::L12::
    if stk9 then
        goto L31
    end
    ::L31::
    S.v61110 = stk7(stk8, stk9, false, function()
            stk0 = S.v4210.setLang
            local tmp214 = S.v4210.lang == "en"
            stk1 = tmp214
            if not (tmp214) then
                goto L2
            end
            ::L2::
            if stk1 then
                goto L4
            end
            ::L4::
            stk0(stk1)
            return
        end)
    table.insert(S.v4210.langHooks, function(a1305)
            stk0 = a1305 == "en"
            if not (a1305 == "en") then
                goto L2
            end
            ::L2::
            if stk0 then
                goto L4
            end
            ::L4::
            S.v61110.Text = stk0
            return
        end)
    S.v61210 = S.v3232(S.v5822, "Sembunyikan UI", "Tekan titik hitam kecil untuk memunculkan lagi", 19)
    S.v3252(S.v61210, "Sembunyi", false, function()
            S.v4210.hideUI()
        end)
    S.v3222(S.v5822, "Kamera", 20)
    S.v61310 = S.v3232(S.v5822, "Free Cam", "Munculkan ikon kamera (tap untuk on/off)", 21)
    S.v3242(S.v61310, false, function(a1306)
            if S.v4210.cam then
                S.v4210.cam.setFree(a1306)
            end
        end)
    S.ReplicatedStorage2 = game:GetService("ReplicatedStorage")
    S.v6152 = 0
    S.v6215 = {"Items", "Objects", "Events"}
    S.v6162, S.v6172, S.v6182 = ipairs(S.v6215)
    ::L92::
    S.v6192, S.v6202 = S.v6162(S.v6172, S.v6182)
    S.v6182 = S.v6192
    if not S.v6192 then
        goto L102
    end
    if S.ReplicatedStorage2:FindFirstChild(S.v6202) then
        goto L9
    end
    ::L97::
    goto L92
    ::L9::
    S.v6152 = S.v6152 + 1
    goto L97
    ::L102::
    if 2 <= S.v6152 then
        goto L34
    end
    if workspace:FindFirstChild("PlayerCache") == nil then
        goto L23
    end
    ::L34::
    S.v6222 = stk7
    if not S.v6222 then
        goto L20
    end
    S.v6232 = S.v3232(S.v5822, "Front View", "Munculkan ikon zoom, front view & leaderboard", 22)
    S.v3242(S.v6232, false, function(a1307)
            if S.v4210.cam then
                S.v4210.cam.setFront(a1307)
            end
        end)
    ::L20::
    S.v6242 = S.v3232(S.v5822, "Reset Posisi Free Cam", "Ikon mata & bar kecepatan ke awal", 23)
    S.v3252(S.v6242, "Reset", false, function()
            if S.v4210.cam then
                S.v4210.cam.resetPos()
            end
        end)
    S.v6252 = S.v3182("Discord", 11, "misc")
    S.v6272 = {}
    S.v6272.Size = UDim2.new(1, 0, 0, 300)
    S.v6272.BackgroundColor3 = S.v1172
    S.v6272.LayoutOrder = 1
    S.v6262 = S.v150("Frame", S.v6272, S.v6252)
    S.v151(S.v6262, 12)
    S.v1532(S.v6262, S.v1182, 1)
    S.v6292 = {}
    S.v6292.AnchorPoint = Vector2.new(0.5, 0)
    S.v6292.Position = UDim2.new(0.5, 0, 0, 26)
    S.v6292.Size = UDim2.fromOffset(72, 72)
    S.v6292.BackgroundColor3 = S.v1162
    S.v6282 = S.v150("Frame", S.v6292, S.v6262)
    S.v151(S.v6282, 36)
    S.v156(S.v1532(S.v6282, S.v1322, 1.5, 0.2), "Color")
    S.v6315 = {}
    S.v6315.Size = UDim2.fromScale(1, 1)
    S.v6315.Font = S.v1132
    S.v6315.TextXAlignment = Enum.TextXAlignment.Center
    S.v6302 = S.v1552(S.v6282, "DC", 24, S.v1322, S.v6315)
    S.v156(S.v6302, "TextColor3")
    S.v6322 = {}
    S.v6322.Position = UDim2.fromOffset(0, 112)
    S.v6322.Size = UDim2.new(1, 0, 0, 28)
    S.v6322.Font = S.v1132
    S.v6322.TextXAlignment = Enum.TextXAlignment.Center
    S.v1552(S.v6262, "Join Our Community", 20, S.v1212, S.v6322)
    S.v6332 = {}
    S.v6332.Position = UDim2.new(0.5, -170, 0, 146)
    S.v6332.Size = UDim2.fromOffset(340, 34)
    S.v6332.TextWrapped = true
    S.v6332.TextXAlignment = Enum.TextXAlignment.Center
    S.v6332.TextYAlignment = Enum.TextYAlignment.Top
    S.v1552(S.v6262, "Dapatkan update, dukungan, dan bergabung bersama komunitas DZ Delux Zephyr.", 12, S.v1202, S.v6332)
    S.v6352 = {}
    S.v6352.AnchorPoint = Vector2.new(0.5, 0)
    S.v6352.Position = UDim2.new(0.5, 0, 0, 196)
    S.v6352.Size = UDim2.fromOffset(190, 40)
    S.v6352.Text = "Join Discord"
    S.v6352.Font = S.v1132
    S.v6352.TextSize = 14
    S.v6352.TextColor3 = S.v1212
    S.v6352.AutoButtonColor = false
    S.v6342 = S.v150("TextButton", S.v6352, S.v6262)
    S.v151(S.v6342, 10)
    S.v156(S.v6342, "BackgroundColor3")
    S.v8(S.v6342.MouseEnter, function()
            local v0116 = {}
            v0116.Size = UDim2.fromOffset(198, 42)
            S.TweenService:Create(S.v6342, TweenInfo.new(0.15), v0116):Play()
        end)
    S.v8(S.v6342.MouseLeave, function()
            local v0117 = {}
            v0117.Size = UDim2.fromOffset(190, 40)
            S.TweenService:Create(S.v6342, TweenInfo.new(0.15), v0117):Play()
        end)
    S.v8(S.v6342.MouseButton1Click, function()
        local v1388
            local tmp215 = S.v1102:match("discord%.gg/([%w%-_]+)")
            stk0 = tmp215
            if tmp215 then
                goto L11
            end
            ::L11::
            local v0118 = stk0
            if request then
                goto L6
            end
            if not http_request then
                goto L5
            end
            ::L6::
            v1388 = stk0
            if not v0118 then
                goto L9
            end
            ::L9::
            if not stk0 then
                goto L3
            end
            pcall(function()
                    local v0119 = {Url = "http://127.0.0.1:6463/rpc?v=1", Method = "POST"}
                    local v1389 = {
                        ["Content-Type"] = "application/json",
                        Origin = "https://discord.com"
                    }
                    v0119.Headers = v1389
                    local v2277 = {cmd = "INVITE_BROWSER"}
                    local v3227 = {code = v0118}
                    v2277.args = v3227
                    v2277.nonce = S.HttpService:GenerateGUID(false)
                    v0119.Body = S.HttpService:JSONEncode(v2277)
                    v1388(v0119)
                end)
            ::L3::
            if not S.v1612(S.v1102) then
                goto L2
            end
            S.v189("Link Discord disalin!", S.v1242)
            ::L13::
            do
                return
            end
            do
                return
            end
            ::L2::
            S.v189(S.v1102, S.v1202)
            goto L13
            ::L5::
            if not syn then
                goto L6
            end
            goto L6
        end)
    S.v6372 = {version = S.v1092}
    S.v6382 = {}
    S.v6392 = {"Discord Community", S.v1102}
    S.v6382[1] = S.v6392
    S.v6402 = {
        "Saluran WhatsApp",
        "https://whatsapp.com/channel/0029VbE53S505MUeDxCuuw3q"
    }
    S.v6382[2] = S.v6402
    S.v6372.links = S.v6382
    S.v6415 = S.v3182("Overview", 0, "home")
    S.v6432 = {}
    S.v6432.Size = UDim2.new(1, 0, 0, 92)
    S.v6432.BackgroundColor3 = S.v1212
    S.v6432.LayoutOrder = 1
    S.v6432.ClipsDescendants = true
    S.v6422 = S.v150("Frame", S.v6432, S.v6415)
    S.v151(S.v6422, 12)
    S.v1532(S.v6422, S.v1182, 1)
    S.v6452 = {}
    S.v6442 = S.v150("UIGradient", S.v6452, S.v6422)
    table.insert(S.v1342, function(a1308)
            S.v6442.Color = ColorSequence.new(S.v1172, a1308:Lerp(S.v1142, 0.6))
            ColorSequence.new(S.v1172, a1308:Lerp(S.v1142, 0.6))
        end)
    S.v6472 = {}
    S.v6472.Position = UDim2.fromOffset(18, 18)
    S.v6472.Size = UDim2.new(0.66, 0, 0, 28)
    S.v6472.RichText = true
    S.v6472.Font = S.v1132
    S.v6472.TextTruncate = Enum.TextTruncate.AtEnd
    S.v6462 = S.v1552(S.v6422, "", 19, S.v1212, S.v6472)
    table.insert(S.v1342, function(a1309)
            local tmp216 = ("Welcome to <font color=\"#" .. a1309:ToHex()) .. "\">DZ</font> Delux Zephyr"
            S.v6462.Text = tmp216
        end)
    S.v6482 = {}
    S.v6482.Position = UDim2.fromOffset(18, 50)
    S.v6482.Size = UDim2.new(0.6, 0, 0, 18)
    S.v1552(S.v6422, "Your workspace, your control.", 12, S.v1202, S.v6482)
    S.v1922(S.v6422, UDim2.fromOffset(120, 62), UDim2.new(1, -136, 0, 15))
    S.v6502 = {}
    S.v6502.Size = UDim2.new(1, 0, 0, 76)
    S.v6502.BackgroundColor3 = S.v1172
    S.v6502.LayoutOrder = 2
    S.v6492 = S.v150("Frame", S.v6502, S.v6415)
    S.v151(S.v6492, 12)
    S.v1532(S.v6492, S.v1182, 1)
    S.v6522 = {}
    S.v6522.Position = UDim2.fromOffset(12, 10)
    S.v6522.Size = UDim2.fromOffset(56, 56)
    S.v6522.BackgroundColor3 = S.v1162
    S.v6514 = S.v150("Frame", S.v6522, S.v6492)
    S.v151(S.v6514, 28)
    S.v156(S.v1532(S.v6514, S.v1322, 2, 0.1), "Color")
    S.v6542 = {}
    S.v6542.Size = UDim2.fromScale(1, 1)
    S.v6542.BackgroundTransparency = 1
    S.v6542.Image = ""
    S.v6532 = S.v150("ImageLabel", S.v6542, S.v6514)
    S.v151(S.v6532, 28)
    task.spawn(function()
            local v0120, v1390 = pcall(function()
                    return S.Players:GetUserThumbnailAsync(S.v5.UserId, Enum.ThumbnailType.HeadShot, Enum.ThumbnailSize.Size150x150)
                end)
            stk0 = v0120
            if stk0 then
                S.v6532.Image = v1390
            end
        end)
    S.v6552 = {}
    S.v6552.Position = UDim2.fromOffset(80, 12)
    S.v6552.Size = UDim2.new(1, -92, 0, 20)
    S.v6552.Font = S.v1132
    S.v6552.TextTruncate = Enum.TextTruncate.AtEnd
    S.v1552(S.v6492, S.v5.DisplayName, 15, S.v1212, S.v6552)
    S.v6562 = {}
    S.v6562.Position = UDim2.fromOffset(80, 32)
    S.v6562.Size = UDim2.new(1, -92, 0, 14)
    S.v6562.TextTruncate = Enum.TextTruncate.AtEnd
    S.v1552(S.v6492, "@" .. S.v5.Name, 11, S.v1202, S.v6562)
    S.v6582 = {}
    S.v6582.Position = UDim2.fromOffset(80, 50)
    S.v6582.Size = UDim2.new(1, -92, 0, 14)
    S.v6572 = S.v1552(S.v6492, "Selamat datang di DZ Delux Zephyr!", 11, S.v1322, S.v6582)
    S.v156(S.v6572, "TextColor3")
    S.v6602 = {}
    S.v6602.Size = UDim2.new(1, 0, 0, 74)
    S.v6602.BackgroundTransparency = 1
    S.v6602.LayoutOrder = 3
    S.v6592 = S.v150("Frame", S.v6602, S.v6415)
    S.v6612 = {FillDirection = Enum.FillDirection.Horizontal}
    S.v6612.Padding = UDim.new(0, 8)
    S.v6612.SortOrder = Enum.SortOrder.LayoutOrder
    S.v150("UIListLayout", S.v6612, S.v6592)
    S.v6622 = function(a1310, a2106, a356, a426, a514, a67)
            local v7116 = {}
            v7116.Size = UDim2.new(1 / 3, -6, 1, 0)
            v7116.BackgroundColor3 = S.v1172
            v7116.LayoutOrder = a1310
            local v6150 = S.v150("Frame", v7116, S.v6592)
            S.v151(v6150, 10)
            S.v1532(v6150, S.v1182, 1)
            local v8101 = {}
            v8101.Position = UDim2.fromOffset(12, 8)
            v8101.Size = UDim2.new(1, -30, 0, 12)
            v8101.Font = S.v1132
            S.v1552(v6150, a2106, 9, S.v1202, v8101)
            local v1080 = {}
            v1080.Position = UDim2.fromOffset(12, 28)
            v1080.Size = UDim2.fromOffset(32, 32)
            v1080.BackgroundTransparency = 1
            v1080.Font = S.v1132
            v1080.TextXAlignment = Enum.TextXAlignment.Center
            local v997 = S.v1552(v6150, a356, 11, S.v1322, v1080)
            S.v151(v997, 8)
            S.v156(S.v1532(v997, S.v1322, 1.2, 0.2), "Color")
            S.v156(v997, "TextColor3")
            local v12103 = {}
            v12103.Position = UDim2.fromOffset(52, 27)
            v12103.Size = UDim2.new(1, -58, 0, 18)
            v12103.Font = S.v1132
            v12103.TextTruncate = Enum.TextTruncate.AtEnd
            local v11123 = S.v1552(v6150, a426, 14, S.v1212, v12103)
            local v1450 = {}
            v1450.Position = UDim2.fromOffset(52, 46)
            v1450.Size = UDim2.new(1, -58, 0, 14)
            v1450.TextTruncate = Enum.TextTruncate.AtEnd
            local v1391 = S.v1552(v6150, a514, 10, S.v1202, v1450)
            if a67 then
                local v1641 = {}
                v1641.Position = UDim2.new(1, -16, 0, 10)
                v1641.Size = UDim2.fromOffset(7, 7)
                v1641.BackgroundColor3 = S.v1242
                local v1547 = S.v150("Frame", v1641, v6150)
                S.v151(v1547, 4)
            end
            return v11123, v1391
        end
    S.v6622(1, "APPLICATION STATUS", "OK", "Ready", "All systems operational", true)
    S.v6622(2, "VERSION", "V", S.v6362.version, "Application version", false)
    S.v6632, S.v6642 = S.v6622(3, "SYSTEM STATUS", "~~", "-", "Mengukur...", true)
    S.v6662 = {}
    S.v6662.Size = UDim2.new(1, 0, 0, 128)
    S.v6662.BackgroundColor3 = S.v1172
    S.v6662.LayoutOrder = 4
    S.v6652 = S.v150("Frame", S.v6662, S.v6415)
    S.v151(S.v6652, 12)
    S.v1532(S.v6652, S.v1182, 1)
    S.v6672 = {}
    S.v6672.Position = UDim2.fromOffset(14, 10)
    S.v6672.Size = UDim2.new(1, -28, 0, 14)
    S.v6672.Font = S.v1132
    S.v1552(S.v6652, "QUICK ACTIONS", 11, S.v1212, S.v6672)
    S.v6692 = {}
    S.v6692.Position = UDim2.fromOffset(10, 34)
    S.v6692.Size = UDim2.new(1, -20, 0, 84)
    S.v6692.BackgroundTransparency = 1
    S.v6682 = S.v150("Frame", S.v6692, S.v6652)
    S.v6702 = {FillDirection = Enum.FillDirection.Horizontal}
    S.v6702.Padding = UDim.new(0, 8)
    S.v6702.SortOrder = Enum.SortOrder.LayoutOrder
    S.v150("UIListLayout", S.v6702, S.v6682)
    S.v6713 = function(a1311, a2107, a357, a427, a515)
            local v6151 = {}
            v6151.Size = UDim2.new(0.2, -7, 1, 0)
            v6151.BackgroundColor3 = S.v1162
            v6151.Text = ""
            v6151.AutoButtonColor = false
            v6151.LayoutOrder = a1311
            local v5198 = S.v150("TextButton", v6151, S.v6682)
            S.v151(v5198, 10)
            local v7117 = S.v1532(v5198, S.v1182, 1)
            local v998 = {}
            v998.Position = UDim2.fromOffset(0, 8)
            v998.Size = UDim2.new(1, 0, 0, 26)
            v998.Font = S.v1132
            v998.TextXAlignment = Enum.TextXAlignment.Center
            local v8102 = S.v1552(v5198, a2107, 18, S.v1322, v998)
            S.v156(v8102, "TextColor3")
            local v1081 = {}
            v1081.Position = UDim2.fromOffset(0, 38)
            v1081.Size = UDim2.new(1, 0, 0, 16)
            v1081.Font = S.v1132
            v1081.TextXAlignment = Enum.TextXAlignment.Center
            v1081.TextTruncate = Enum.TextTruncate.AtEnd
            S.v1552(v5198, a357, 12, S.v1212, v1081)
            local v11124 = {}
            v11124.Position = UDim2.fromOffset(0, 56)
            v11124.Size = UDim2.new(1, 0, 0, 14)
            v11124.TextXAlignment = Enum.TextXAlignment.Center
            v11124.TextTruncate = Enum.TextTruncate.AtEnd
            S.v1552(v5198, a427, 9, S.v1202, v11124)
            S.v8(v5198.MouseEnter, function()
                    local v0121 = {}
                    v0121.BackgroundColor3 = S.v1322:Lerp(S.v1142, 0.85)
                    S.TweenService:Create(v5198, TweenInfo.new(0.15), v0121):Play()
                    local v1394 = {Color = S.v1322}
                    S.TweenService:Create(v7117, TweenInfo.new(0.15), v1394):Play()
                end)
            S.v8(v5198.MouseLeave, function()
                    local v0122 = {BackgroundColor3 = S.v1162}
                    S.TweenService:Create(v5198, TweenInfo.new(0.15), v0122):Play()
                    local v1395 = {Color = S.v1182}
                    S.TweenService:Create(v7117, TweenInfo.new(0.15), v1395):Play()
                end)
            S.v8(v5198.MouseButton1Click, a515)
        end
    S.v6713(1, "</>", "Script Hub", "Browse scripts", function()
            S.v3172("Scripts")
        end)
    S.v6713(2, "RIG", "Karakter", "Korblox & Headless", function()
            S.v3172("Karakter")
        end)
    S.v6713(3, "ACC", "Accessories", "Katalog visual + ukuran", function()
            S.v3172("Accessories")
        end)
    S.v6713(4, "CH", "Changer", "Emote & Unusual", function()
            if not S.v3172("Changer") then
                S.v189("Changer hanya ada di Evade", S.v1202)
            end
        end)
    S.v6713(5, ">_", "Console", "Developer console", function()
            local v0123 = pcall(function()
                    game:GetService("StarterGui"):SetCore("DevConsoleVisible", true)
                end)
            stk0 = S.v189
            stk1 = v0123
            if not v0123 then
                goto L2
            end
            ::L2::
            if stk1 then
                goto L4
            end
            ::L4::
            if not v0123 then
                goto L6
            end
            ::L6::
            if stk2 then
                goto L8
            end
            ::L8::
            stk0(stk1, stk2)
            return
        end)
    S.v6732 = {}
    S.v6732.Size = UDim2.new(1, 0, 0, 112)
    S.v6732.BackgroundColor3 = S.v1172
    S.v6732.LayoutOrder = 5
    S.v6722 = S.v150("Frame", S.v6732, S.v6415)
    S.v151(S.v6722, 12)
    S.v1532(S.v6722, S.v1182, 1)
    S.v6752 = {}
    S.v6752.Position = UDim2.fromOffset(14, 12)
    S.v6752.Size = UDim2.fromOffset(3, 12)
    S.v6742 = S.v150("Frame", S.v6752, S.v6722)
    S.v151(S.v6742, 1)
    S.v156(S.v6742, "BackgroundColor3")
    S.v6762 = {}
    S.v6762.Position = UDim2.fromOffset(24, 10)
    S.v6762.Size = UDim2.new(1, -40, 0, 16)
    S.v6762.Font = S.v1132
    S.v1552(S.v6722, "RECENT ACTIVITY", 11, S.v1212, S.v6762)
    S.v6782 = {}
    S.v6792 = 1
    S.v6802 = 4
    S.v6812 = 1
    ::L10::
    if not (0 < S.v6812) then
        goto L33
    end
    ::L98::
    if not stk7 then
        goto L32
    end
    S.v6822 = {}
    S.v6822.Position = UDim2.fromOffset(14, 32 + (S.v6792 - 1) * 19)
    S.v6822.Size = UDim2.new(1, -28, 0, 16)
    S.v6822.TextTruncate = Enum.TextTruncate.AtEnd
    S.tmp217 = S.v1552(S.v6722, "", 11, S.v1202, S.v6822)
    S.v6772[S.v6792] = S.tmp217
    S.v6792 = S.v6792 + S.v6812
    goto L10
    ::L32::
    S.v186 = function()
        local tmp218, v3228
            local v0124 = 1
            local v1396 = 4
            local v2278 = 1
            ::L3::
            if not (0 < v2278) then
                goto L6
            end
            stk0 = v0124 <= v1396
            ::L10::
            if not stk0 then
                goto L17
            end
            v3228 = S.v185[v0124]
            if not v3228 then
                goto L1
            end
            S.v6772[v0124].Text = (v3228.t .. "   ") .. v3228.text
            tmp218 = v3228.color == S.v1202
            stk0 = tmp218
            if tmp218 then
                goto L7
            end
            ::L15::
            if stk0 then
                goto L9
            end
            ::L9::
            S.v6772[v0124].TextColor3 = stk0
            ::L5::
            v0124 = v0124 + v2278
            goto L3
            ::L7::
            goto L15
            ::L1::
            stk0 = v0124 == 1
            if not (v0124 == 1) then
                goto L13
            end
            ::L13::
            if stk0 then
                goto L8
            end
            ::L8::
            S.v6772[v0124].Text = stk0
            S.v6772[v0124].TextColor3 = S.v1202
            goto L5
            ::L17::
            do
                return
            end
            do
                return
            end
            ::L6::
            stk0 = v1396 <= v0124
            goto L10
        end
    S.v186()
    S.v3222(S.v6415, "Info", 10)
    S.v6832 = function(a1312, a2108, a358)
            local v3229 = S.v3232(S.v6415, a2108, "", a1312, 32)
            local v4227 = {}
            v4227.AnchorPoint = Vector2.new(1, 0.5)
            v4227.Position = UDim2.new(1, -14, 0.5, 0)
            v4227.Size = UDim2.new(0, 190, 0, 18)
            v4227.TextXAlignment = Enum.TextXAlignment.Right
            v4227.TextTruncate = Enum.TextTruncate.AtEnd
            return S.v1552(v3229, tostring(a358), 11, S.v1202, v4227)
        end
    S.v6842 = "Unknown"
    pcall(function()
        local v0125, v1397
            if not identifyexecutor then
                goto L8
            end
            v0125, v1397 = identifyexecutor()
            stk0 = tostring
            stk1 = v0125
            if v0125 then
                goto L4
            end
            ::L4::
            if not v1397 then
                goto L6
            end
            ::L6::
            if stk1 then
                goto L3
            end
            ::L3::
            S.v6842 = stk0 .. stk1
            ::L8::
            return
        end)
    S.v6852 = "-"
    pcall(function()
            S.v6852 = game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name
        end)
    S.v6832(11, "User ID", S.v5.UserId)
    S.v6832(12, "Umur Akun", S.v5.AccountAge .. " hari")
    S.v6832(13, "Executor", S.v6842)
    S.v6832(14, "Game", S.v6852)
    S.v6832(15, "Versi", S.v6362.version)
    S.v6862 = S.v6832(16, "Pemain di Server", (#(S.Players:GetPlayers()) .. "/") .. S.Players.MaxPlayers)
    S.v6872 = S.v6832(17, "Ping", "-")
    S.v6882 = S.v6832(18, "FPS", "-")
    S.v6892 = 0
    S.v6902 = 0
    S.v8(S.RunService.Heartbeat, function(a1313)
            S.v6892 = S.v6892 + a1313
            S.v6902 = S.v6902 + 1
            if 1 <= S.v6892 then
                local v1398 = math.floor(S.v6902 / S.v6892 + 0.5)
                S.v6902 = 0
                S.v6892 = 0
                S.v6882.Text = tostring(v1398)
                tostring(v1398)
                S.v6632.Text = v1398 .. " FPS"
                S.v6862.Text = (#(S.Players:GetPlayers()) .. "/") .. S.Players.MaxPlayers
                pcall(function()
                        local v0126 = game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValueString()
                        S.v6872.Text = v0126
                        S.v6642.Text = "Ping " .. v0126
                    end)
            end
        end)
    S.v3222(S.v6415, "Credit", 20)
    S.v6913 = S.v3232(S.v6415, "DZ Delux Zephyr", "Terima kasih sudah memakai script ini", 21)
    S.v6932 = {}
    S.v6932.AnchorPoint = Vector2.new(1, 0.5)
    S.v6932.Position = UDim2.new(1, -14, 0.5, 0)
    S.v6932.Size = UDim2.fromOffset(130, 20)
    S.v6932.TextXAlignment = Enum.TextXAlignment.Right
    S.v6932.Font = S.v1132
    S.v6922 = S.v1552(S.v6913, "Premium Script Hub", 12, S.v1322, S.v6932)
    S.v156(S.v6922, "TextColor3")
    S.v3222(S.v6415, "Sosial & Komunitas", 30)
    S.v6942, S.v6952, S.v6962 = ipairs(S.v6362.links)
    ::L4::
    S.v6972, S.v6982 = S.v6942(S.v6952, S.v6962)
    S.v6962 = S.v6972
    if not S.v6972 then
        goto L43
    end
    S.v6992 = S.v3232(S.v6415, S.v6982[1], S.v6982[2], 30 + S.v6972)
    S.v3252(S.v6992, "Salin", false, function()
            if not S.v1612(S.v6982[2]) then
                goto L2
            end
            S.v189(S.v6982[1] .. ": link disalin!", S.v1242)
            ::L3::
            do
                return
            end
            do
                return
            end
            ::L2::
            S.v189(S.v6982[2], S.v1202)
            goto L3
        end)
    goto L4
    ::L43::
    S.v700 = "https://saweria.co/deluxzyphr"
    S.v3222(S.v6415, "Dukung Admin", 40)
    S.v701 = S.v3232(S.v6415, "Donate via Saweria", "Traktir admin biar makin semangat update & fitur baru", 41)
    S.v3252(S.v701, "Salin", false, function()
            if not S.v1612(S.v700) then
                goto L2
            end
            S.v189("Link Saweria disalin, terima kasih!", S.v1242)
            ::L3::
            do
                return
            end
            do
                return
            end
            ::L2::
            S.v189(S.v700, S.v1202)
            goto L3
        end)
    S.v7022 = S.v3232(S.v6415, "Link Saweria", "", 42, 32)
    S.v7042 = {}
    S.v7042.AnchorPoint = Vector2.new(1, 0.5)
    S.v7042.Position = UDim2.new(1, -14, 0.5, 0)
    S.v7042.Size = UDim2.new(0, 220, 0, 18)
    S.v7042.TextXAlignment = Enum.TextXAlignment.Right
    S.v7042.TextTruncate = Enum.TextTruncate.AtEnd
    S.v7032 = S.v1552(S.v7022, S.v700, 11, S.v1322, S.v7042)
    S.v156(S.v7032, "TextColor3")
    S.v7052 = 0
    S.v8(S.RunService.Heartbeat, function()
            local v0127 = tick()
            if v0127 - S.v7052 < 1 then
                return
            end
            S.v7052 = v0127
            S.v146()
            S.v289()
        end)
    _G.DELUX_CLEAN = function()
            if S.v4210.camClean then
                pcall(S.v4210.camClean)
                S.v4210.camClean = nil
            end
            if S.v4210.shaderClean then
                pcall(S.v4210.shaderClean)
                S.v4210.shaderClean = nil
            end
            if S.v4210.copyClean then
                pcall(S.v4210.copyClean)
                S.v4210.copyClean = nil
            end
            if _G.DELUX_EMOTE_CLEAN then
                pcall(_G.DELUX_EMOTE_CLEAN)
                _G.DELUX_EMOTE_CLEAN = nil
            end
            if _G.EVADE_UNLOCK_CLEAN then
                pcall(_G.EVADE_UNLOCK_CLEAN)
            end
            if S.v4210.catClean then
                pcall(S.v4210.catClean)
                S.v4210.catClean = nil
            end
            if S.v4210.catFrClean then
                pcall(S.v4210.catFrClean)
                S.v4210.catFrClean = nil
            end
            S.v4210.me = S.v41()
            S.v41()
            S.v4210.fr = S.v41()
            S.v41()
            S.v100(S.v5)
            if S.v47 then
                S.v100(S.v47)
            end
            for v3230, v4228 in ipairs(S.v48) do
                S.v48.clear(v4228)
            end
            for v8103, v999 in pairs(S.v61) do
                for v1399, v1451 in pairs(v999) do
                    pcall(function()
                            v1451:Destroy()
                        end)
                end
                S.v61[v8103] = nil
            end
            S.v47 = nil
            for v1840, v1937 in ipairs(S.v6) do
                pcall(function()
                        v1937:Disconnect()
                    end)
            end
            pcall(function()
                    S.v1622:Destroy()
                end)
            _G.DELUX_CLEAN = nil
        end
    if not workspace.CurrentCamera then
        goto L123
    end
    S.v8(workspace.CurrentCamera:GetPropertyChangedSignal("ViewportSize"), S.v1812)
    ::L123::
    S.v306 = "Overview"
    S.v1572(S.v1322)
    S.v1812()
    S.v4952()
    S.v146()
    S.v289()
    do
        return
    end
    do
        return
    end
    ::L33::
    goto L98
    ::L23::
    if not (workspace:FindFirstChild("Rigs") == nil) then
        goto L34
    end
    if game.PlaceId == 9872472334 then
        goto L34
    end
    goto L34
    ::L104::
    goto L29
    ::L61::
    goto L80
end
