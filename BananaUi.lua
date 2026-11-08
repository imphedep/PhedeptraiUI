-- Recovered Luau source by ZeroVector
local tbl = {listfunction = {}, listtab = {}}
local touchGui = game.Players.LocalPlayer.PlayerGui:FindFirstChild("TouchGui")
local fn = nil
local tbl2 = {}

local uiColor = {
    ["Border Color"] = Color3.fromRGB(168, 128, 255),
    ["Click Effect Color"] = Color3.fromRGB(230, 230, 230),
    ["Setting Icon Color"] = Color3.fromRGB(230, 230, 230),
    ["Logo Image"] = "rbxassetid://114761144239319",
    ["Search Icon Color"] = Color3.fromRGB(255, 255, 255),
    ["Search Icon Highlight Color"] = Color3.fromRGB(229, 204, 255),
    ["GUI Text Color"] = Color3.fromRGB(230, 230, 230),
    ["Text Color"] = Color3.fromRGB(230, 230, 230),
    ["Placeholder Text Color"] = Color3.fromRGB(178, 178, 178),
    ["Title Text Color"] = Color3.fromRGB(170, 85, 255),
    ["Background Main Color"] = Color3.fromRGB(15, 15, 15),
    ["Background 1 Color"] = Color3.fromRGB(28, 28, 34),
    ["Background 1 Transparency"] = 0.25,
    ["Background 2 Color"] = Color3.fromRGB(90, 90, 90),
    ["Background 3 Color"] = Color3.fromRGB(20, 20, 20),
    ["Background Image"] = "",
    ["Page Selected Color"] = Color3.fromRGB(200, 0, 255),
    ["Section Text Color"] = Color3.fromRGB(200, 0, 255),
    ["Section Underline Color"] = Color3.fromRGB(200, 0, 255),
    ["Toggle Border Color"] = Color3.fromRGB(200, 0, 255),
    ["Toggle Checked Color"] = Color3.fromRGB(230, 230, 230),
    ["Toggle Desc Color"] = Color3.fromRGB(185, 185, 185),
    ["Button Color"] = Color3.fromRGB(35, 35, 35),
    ["Label Color"] = Color3.fromRGB(35, 35, 35),
    ["Dropdown Icon Color"] = Color3.fromRGB(230, 230, 230),
    ["Dropdown Selected Color"] = Color3.fromRGB(170, 170, 255),
    ["Dropdown Selected Check Color"] = Color3.fromRGB(160, 143, 255),
    ["Textbox Highlight Color"] = Color3.fromRGB(170, 85, 255),
    ["Box Highlight Color"] = Color3.fromRGB(170, 85, 255),
    ["Slider Line Color"] = Color3.fromRGB(45, 22, 67),
    ["Slider Highlight Color"] = Color3.fromRGB(179, 116, 255),
}

local n = touchGui and 0 or 0.25
uiColor["Tween Animation 1 Speed"] = n
local n2 = touchGui and 0 or 0.5
uiColor["Tween Animation 2 Speed"] = n2
local n3 = touchGui and 0 or 0.1
uiColor["Tween Animation 3 Speed"] = n3
uiColor["Text Stroke Transparency"] = 0.5
tbl.UIColor = uiColor
tbl.UIToggled = true
local tbl3 = {Options = {}}
getgenv().Options = tbl3.Options
local TweenService = game:GetService("TweenService")
local UserInputService = game:GetService("UserInputService")
local RunService = game:GetService("RunService")

local function fn2(arg, arg2)
    local flag = nil
    local v = nil
    local position = nil
    local position2 = nil

    arg.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
            flag = true
            position = input.Position
            position2 = arg2.Position

            input.Changed:Connect(function()
                if input.UserInputState == Enum.UserInputState.End then
                    flag = false
                end
            end)
        end
    end)

    arg.InputChanged:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
            v = input
        end
    end)

    UserInputService.InputChanged:Connect(function(input)
        if input == v and flag then
            local n4 = input.Position - position

            if not djtmemay and cac then
                local create = TweenService.Create
                local tweenInfo = TweenInfo.new
                local n5 = touchGui and 0 or 0.35

                create(TweenService, arg2, tweenInfo(n5, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {
                    Position = UDim2.new(position2.X.Scale, position2.X.Offset + n4.X, position2.Y.Scale, position2.Y.Offset + n4.Y),
                }):Play()
            elseif not djtmemay and not cac then
                arg2.Position = UDim2.new(position2.X.Scale, position2.X.Offset + n4.X, position2.Y.Scale, position2.Y.Offset + n4.Y)
            end
        end
    end)
end

local tbl4 = {Gui = Instance.new("ScreenGui")}
tbl4.Gui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
tbl4.Gui.Name = "Nousigi Hub GUI"
tbl4.Gui.DisplayOrder = 9999
tbl4.Gui.ResetOnSpawn = false
tbl4.Gui.Enabled = false
tbl.ReadyForGuiLoaded = false

spawn(function()
    repeat
        task.wait()
    until tbl.ReadyForGuiLoaded

    if tbl.UIToggled then
        tbl4.Gui.Enabled = true
    end
end)

tbl4.NotiGui = Instance.new("ScreenGui")
tbl4.NotiGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
tbl4.NotiGui.Name = "Nousigi Hub Notification"
tbl4.NotiGui.DisplayOrder = 2147483647
tbl4.NotiGui.ResetOnSpawn = false
tbl4.NotiGui.IgnoreGuiInset = true
tbl4.HideGui = Instance.new("ScreenGui")
tbl4.HideGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
tbl4.HideGui.Name = "Nousigi Hub Btn"
tbl4.HideGui.DisplayOrder = 99999
tbl4.HideGui.ResetOnSpawn = false
local frame = Instance.new("Frame")
local uiListLayout = Instance.new("UIListLayout")
frame.Name = "NotiContainer"
frame.Parent = tbl4.NotiGui
frame.AnchorPoint = Vector2.new(1, 1)
frame.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
frame.BackgroundTransparency = 1
frame.Position = UDim2.new(1, -5, 1, -5)
frame.Size = UDim2.new(0, 350, 1, -10)
frame.ZIndex = 999999
uiListLayout.Name = "NotiList"
uiListLayout.Parent = frame
uiListLayout.SortOrder = Enum.SortOrder.LayoutOrder
uiListLayout.VerticalAlignment = Enum.VerticalAlignment.Bottom
uiListLayout.Padding = UDim.new(0, 5)
local hui = nil

pcall(function()
    if gethui then
        hui = gethui()
    elseif game:GetService("CoreGui") then
        hui = game:GetService("CoreGui")
    end
end)

if not hui then
    hui = game.Players.LocalPlayer:WaitForChild("PlayerGui")
end

tbl4.Gui.Parent = hui
tbl4.NotiGui.Parent = hui
tbl4.HideGui.Parent = hui
local imageButton = Instance.new("ImageButton", tbl4.HideGui)
imageButton.BorderSizePixel = 0
imageButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
imageButton.AnchorPoint = Vector2.new(0, 1)
imageButton.Image = "rbxassetid://136103435617044"
imageButton.Size = UDim2.new(0, 50, 0, 50)
imageButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
imageButton.Position = UDim2.new(0.01, 0, 0.99, 0)
fn2(imageButton, imageButton)
tbl3.ToggleKey = Enum.KeyCode.LeftControl

tbl3.ToggleUI = function()
    local gui = tbl4.Gui
    local enabled

    if tbl4.Gui.Enabled then
        enabled = false
    else
        enabled = true
    end

    gui.Enabled = enabled
    tbl.UIToggled = tbl4.Gui.Enabled
    return tbl4.Gui.Enabled
end

imageButton.MouseButton1Down:Connect(function()
    tbl3.ToggleUI()
end)

UserInputService.InputBegan:Connect(function(input, gameProcessed)
    local flag = input.KeyCode == Enum.KeyCode.LeftControl or input.KeyCode == Enum.KeyCode.RightControl
    local toggleKey = tbl3.ToggleKey
    local flag2 = toggleKey and input.KeyCode == tbl3.ToggleKey

    if (flag or flag2) and not UserInputService:GetFocusedTextBox() then
        tbl3.ToggleUI()
    end
end)

Instance.new("UICorner", imageButton).CornerRadius = UDim.new(1, 8)
local uiStroke = Instance.new("UIStroke", imageButton)
uiStroke.Thickness = 0.6
uiStroke.Color = Color3.fromRGB(171, 0, 255)

tbl4.Getcolor = function(arg)
    return {
        math.floor(arg.r * 255),
        math.floor(arg.g * 255),
        math.floor(arg.b * 255),
    }
end

local function fn3(arg)
    local tbl5 = arg or {}
    local v = tbl5
    local title = tbl5.Title
    local name = title or v.Name or ""
    tbl.TitleNameNoti = name
    local desc = v.Desc
    local description = desc or v.Description or v.Content or v.Text or ""
    local showTime = v.ShowTime
    local duration = showTime or v.Duration or v.Time or v.Delay or 10
    local frame2 = Instance.new("Frame")
    local frame3 = Instance.new("Frame")
    local uiCorner = Instance.new("UICorner")
    local frame4 = Instance.new("Frame")
    local imageLabel = Instance.new("ImageLabel")
    local uiCorner2 = Instance.new("UICorner")
    local textLabel = Instance.new("TextLabel")
    local frame5 = Instance.new("Frame")
    local imageLabel2 = Instance.new("ImageLabel")
    local textButton = Instance.new("TextButton")
    local textLabel2 = Instance.new("TextLabel")
    frame2.Name = "NotiFrame"
    frame2.Parent = frame
    frame2.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
    frame2.BackgroundTransparency = 1
    frame2.ClipsDescendants = true
    frame2.Position = UDim2.new(0, 0, 0, 0)
    frame2.Size = UDim2.new(1, 0, 0, 0)
    frame2.AutomaticSize = Enum.AutomaticSize.Y
    frame2.ZIndex = 999999
    frame3.Name = "Noticontainer"
    frame3.Parent = frame2
    frame3.Position = UDim2.new(1, 0, 0, 0)
    frame3.Size = UDim2.new(1, 0, 1, 6)
    frame3.AutomaticSize = Enum.AutomaticSize.Y
    frame3.BackgroundColor3 = Color3.fromRGB(48, 47, 55)
    frame3.ZIndex = 999999
    uiCorner.CornerRadius = UDim.new(0, 4)
    uiCorner.Parent = frame3
    local uiStroke2 = Instance.new("UIStroke", frame3)
    uiStroke2.Thickness = 1
    uiStroke2.Color = Color3.fromRGB(90, 90, 70)
    frame4.Name = "Topnoti"
    frame4.Parent = frame3
    frame4.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
    frame4.BackgroundTransparency = 1
    frame4.Position = UDim2.new(0, 0, 0, 5)
    frame4.Size = UDim2.new(1, 0, 0, 25)
    frame4.ZIndex = 999999
    imageLabel.Name = "Ruafimg"
    imageLabel.Parent = frame4
    imageLabel.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
    imageLabel.BackgroundTransparency = 1
    local udim2 = UDim2.new
    local t1 = tbl.T1
    local n4 = t1 and 5 or 0
    imageLabel.Position = udim2(0, 5, 0, n4)
    local udim22 = UDim2.new
    local t12 = tbl.T1
    local n5 = t12 and 30 or 25
    local t13 = tbl.T1
    local n6 = t13 and 15 or 25
    imageLabel.Size = udim22(0, n5, 0, n6)
    imageLabel.Image = tbl.UIColor["Logo Image"]
    imageLabel.ZIndex = 999999
    uiCorner2.CornerRadius = UDim.new(1, 0)
    uiCorner2.Name = "RuafimgCorner"
    uiCorner2.Parent = imageLabel
    textLabel.Text = "<font color=\"rgb(" .. (tostring(tbl4.Getcolor(tbl.UIColor["Title Text Color"])[1]) .. "," .. tostring(tbl4.Getcolor(tbl.UIColor["Title Text Color"])[2]) .. "," .. tostring(tbl4.Getcolor(tbl.UIColor["Title Text Color"])[3])) .. ")\">Meow Hub</font> " .. tbl.TitleNameNoti
    textLabel.Name = "TextLabelNoti"
    textLabel.Parent = frame4
    textLabel.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
    textLabel.BackgroundTransparency = 1
    local udim23 = UDim2.new
    local t14 = tbl.T1
    local n7 = t14 and 40 or 35
    textLabel.Position = udim23(0, n7, 0, 0)
    local udim24 = UDim2.new
    local t15 = tbl.T1
    local n8 = t15 and -40 or -35
    textLabel.Size = udim24(1, n8, 1, 0)
    textLabel.Font = Enum.Font.GothamBold
    textLabel.TextSize = 14
    textLabel.TextWrapped = true
    textLabel.TextXAlignment = Enum.TextXAlignment.Left
    textLabel.RichText = true
    textLabel.TextColor3 = tbl.UIColor["GUI Text Color"]
    textLabel.ZIndex = 999999
    frame5.Name = "CloseContainer"
    frame5.Parent = frame4
    frame5.AnchorPoint = Vector2.new(1, 0.5)
    frame5.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
    frame5.BackgroundTransparency = 1
    frame5.Position = UDim2.new(1, -4, 0.5, 0)
    frame5.Size = UDim2.new(0, 22, 0, 22)
    frame5.ZIndex = 999999
    imageLabel2.Name = "CloseImage"
    imageLabel2.Parent = frame5
    imageLabel2.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
    imageLabel2.BackgroundTransparency = 1
    imageLabel2.Size = UDim2.new(1, 0, 1, 0)
    imageLabel2.Image = "rbxassetid://129781592728096"
    imageLabel2.ImageRectOffset = Vector2.new(284, 4)
    imageLabel2.ImageRectSize = Vector2.new(24, 24)
    imageLabel2.ImageColor3 = tbl.UIColor["Search Icon Color"]
    imageLabel2.ZIndex = 999999
    textButton.Parent = frame5
    textButton.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
    textButton.BackgroundTransparency = 1
    textButton.Size = UDim2.new(1, 0, 1, 0)
    textButton.Font = Enum.Font.FredokaOne
    textButton.Text = "X"
    textButton.TextColor3 = Color3.fromRGB(0, 0, 0)
    textButton.TextSize = 14
    textButton.FontFace = Font.new("rbxasset://fonts/families/FredokaOne.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
    textButton.TextColor3 = Color3.new(1, 1, 1)
    textButton.ZIndex = 1000000

    if description and description ~= "" then
        textLabel2.Name = "TextColor"
        textLabel2.Parent = frame3
        textLabel2.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
        textLabel2.BackgroundTransparency = 1
        textLabel2.Position = UDim2.new(0, 10, 0, 35)
        textLabel2.Size = UDim2.new(1, -15, 0, 0)
        textLabel2.Font = Enum.Font.GothamBold
        textLabel2.Text = description
        textLabel2.TextSize = 14
        textLabel2.TextXAlignment = Enum.TextXAlignment.Left
        textLabel2.RichText = true
        textLabel2.TextColor3 = tbl.UIColor["Text Color"]
        textLabel2.AutomaticSize = Enum.AutomaticSize.Y
        textLabel2.TextWrapped = true
        textLabel2.ZIndex = 999999
    end

    local function fn4()
        TweenService:Create(frame3, TweenInfo.new(tbl.UIColor["Tween Animation 1 Speed"]), {Position = UDim2.new(1, 0, 0, 0)}):Play()
        wait(0.25)
        frame2:Destroy()
    end

    TweenService:Create(frame3, TweenInfo.new(tbl.UIColor["Tween Animation 1 Speed"]), {Position = UDim2.new(0, 0, 0, 0)}):Play()

    textButton.MouseEnter:Connect(function()
        TweenService:Create(imageLabel2, TweenInfo.new(tbl.UIColor["Tween Animation 1 Speed"]), {ImageColor3 = tbl.UIColor["Search Icon Highlight Color"]}):Play()
    end)

    textButton.MouseLeave:Connect(function()
        TweenService:Create(imageLabel2, TweenInfo.new(tbl.UIColor["Tween Animation 1 Speed"]), {ImageColor3 = tbl.UIColor["Search Icon Color"]}):Play()
    end)

    textButton.MouseButton1Click:Connect(function()
        wait(0.25)
        fn4()
    end)

    spawn(function()
        wait(duration)
        fn4()
    end)
end

tbl3.Notify = function(...)
    local tbl5 = {...}
    local v, v2

    if tbl5[1] ~= tbl3 and (type(tbl5[1]) ~= "table" or not tbl5[1].Notify and not tbl5[1].CreateMain and not tbl5[1].CreateSection and not tbl5[1].Options) then
        local v3 = tbl5[1]
        local tbl6 = v3 or {}
        v = tbl6
        v2 = tbl5[2]
    else
        local v3 = tbl5[2]
        local tbl6 = v3 or {}
        v = tbl6
        v2 = tbl5[3]
    end

    local tbl6 = v or {}
    local v3 = tbl6

    if not tbl.Config or v2 then
        local ok, result = pcall(function()
            fn3(v3)
        end)

        if result then
            warn("[Notify Error]:", result)
        end
    end
end

tbl3.CreateNoti = tbl3.Notify

tbl3.CreateMain = function(arg)
    local desc = arg.Desc
    local mainDesc = desc or ""
    tbl.MainDesc = mainDesc
    cac = false
    local frame2 = Instance.new("Frame")
    local imageLabel = Instance.new("ImageLabel")
    local uiCorner = Instance.new("UICorner")
    local frame3 = Instance.new("Frame")
    local imageLabel2 = Instance.new("ImageLabel")
    local textLabel = Instance.new("TextLabel")
    local frame4 = Instance.new("Frame")
    local uiCorner2 = Instance.new("UICorner")
    local scrollingFrame = Instance.new("ScrollingFrame")
    local uiListLayout2 = Instance.new("UIListLayout")
    local textLabel2 = Instance.new("TextLabel")
    local frame5 = Instance.new("Frame")
    local uiPageLayout = Instance.new("UIPageLayout")
    local frame6 = Instance.new("Frame")
    local frame7 = Instance.new("Frame")
    frame2.Name = "Main"
    frame2.Parent = tbl4.Gui
    frame2.BackgroundColor3 = Color3.fromRGB(42, 42, 42)
    frame2.BackgroundTransparency = 1
    frame2.Position = UDim2.new(0.5, 0, 0.5, 0)
    frame2.AnchorPoint = Vector2.new(0.5, 0.5)
    frame2.Size = UDim2.new(0, 629, 0, 359)
    fn2(frame2, frame2)
    imageLabel.Name = "maingui"
    imageLabel.Parent = frame2
    imageLabel.AnchorPoint = Vector2.new(0.5, 0.5)
    imageLabel.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
    imageLabel.BackgroundTransparency = 1
    imageLabel.Position = UDim2.new(0.5, 0, 0.5, 0)
    imageLabel.Selectable = true
    imageLabel.Size = UDim2.new(1, 30, 1, 30)
    imageLabel.Image = "rbxassetid://129781592728096"
    imageLabel.ScaleType = Enum.ScaleType.Slice
    imageLabel.SliceCenter = Rect.new(15, 15, 175, 175)
    imageLabel.SliceScale = 1.3
    imageLabel.ImageColor3 = tbl.UIColor["Border Color"]
    imageLabel.ImageTransparency = 1
    imageLabel.ImageColor3 = tbl.UIColor["Title Text Color"]
    local str = tostring(tbl4.Getcolor(tbl.UIColor["Title Text Color"])[1]) .. "," .. tostring(tbl4.Getcolor(tbl.UIColor["Title Text Color"])[2]) .. "," .. tostring(tbl4.Getcolor(tbl.UIColor["Title Text Color"])[3])
    local title = arg.Title
    local str2 = title or "Meow Hub"
    local desc2 = arg.Desc
    local str3 = desc2 or ": Blox Fruits"
    textLabel.Text = "<font color=\"rgb(" .. str .. ")\">" .. str2 .. " </font> " .. str3
    local imageLabel3 = Instance.new("ImageLabel")
    imageLabel3.Name = "MainContainer"
    imageLabel3.Parent = frame2
    imageLabel3.BackgroundColor3 = tbl.UIColor["Background Main Color"]
    imageLabel3.Size = UDim2.new(1, 0, 1, 0)
    local uiStroke2 = Instance.new("UIStroke", imageLabel3)
    uiStroke2.Thickness = 1
    uiStroke2.Color = Color3.fromRGB(90, 90, 70)
    local uiGradient = Instance.new("UIGradient", imageLabel3)

    uiGradient.Color = ColorSequence.new({
        ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 255, 255)),
        ColorSequenceKeypoint.new(1, Color3.fromRGB(200, 200, 200)),
    })

    uiGradient.Rotation = 90

    uiGradient.Transparency = NumberSequence.new({
        NumberSequenceKeypoint.new(0, 0.92),
        NumberSequenceKeypoint.new(1, 0.92),
    })

    tbl.ReadyForGuiLoaded = true
    uiCorner.CornerRadius = UDim.new(0, 4)
    uiCorner.Name = "MainCorner"
    uiCorner.Parent = imageLabel3
    frame6.Name = "Concacontainer"
    frame6.Parent = imageLabel3
    frame6.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    frame6.BackgroundTransparency = 1
    frame6.ClipsDescendants = true
    frame6.Position = UDim2.new(0, 0, 0, 30)
    frame6.Size = UDim2.new(1, 0, 1, -30)
    frame7.Name = "Concacmain"
    frame7.Parent = frame6
    frame7.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    frame7.BackgroundTransparency = 1
    frame7.Selectable = true
    frame7.Size = UDim2.new(1, 0, 1, 0)
    frame3.Name = "TopMain"
    frame3.Parent = imageLabel3
    frame3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    frame3.BackgroundTransparency = 1
    frame3.Size = UDim2.new(1, 0, 0, 25)
    local frame8 = Instance.new("Frame", frame3)
    frame8.Name = "TopStroke"
    frame8.BackgroundColor3 = Color3.fromRGB(90, 90, 70)
    frame8.BackgroundTransparency = 0.6
    frame8.BorderSizePixel = 0
    frame8.Position = UDim2.new(0, 0, 1, -1)
    frame8.Size = UDim2.new(1, 0, 0, 1)
    imageLabel2.Name = "Ruafimg"
    imageLabel2.Parent = frame3
    imageLabel2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    imageLabel2.BackgroundTransparency = 1
    local udim2 = UDim2.new
    local t1 = tbl.T1
    local n4 = t1 and 5 or 0
    imageLabel2.Position = udim2(0, 5, 0, n4)
    local udim22 = UDim2.new
    local t12 = tbl.T1
    local n5 = t12 and 30 or 25
    local t13 = tbl.T1
    local n6 = t13 and 15 or 25
    imageLabel2.Size = udim22(0, n5, 0, n6)
    imageLabel2.Image = "rbxassetid://139680899478857"
    textLabel.Name = "TextLabelMain"
    textLabel.Parent = frame3
    textLabel.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
    textLabel.BackgroundTransparency = 1
    local udim23 = UDim2.new
    local t14 = tbl.T1
    local n7 = t14 and 40 or 35
    textLabel.Position = udim23(0, n7, 0, 0)
    local udim24 = UDim2.new
    local t15 = tbl.T1
    local n8 = t15 and -40 or -35
    textLabel.Size = udim24(1, n8, 1, 0)
    textLabel.Font = Enum.Font.GothamBold
    textLabel.RichText = true
    textLabel.TextSize = 16
    textLabel.TextWrapped = true
    textLabel.TextXAlignment = Enum.TextXAlignment.Center
    textLabel.TextColor3 = tbl.UIColor["GUI Text Color"]
    textLabel.Text = "<font color=\"rgb(" .. (tostring(tbl4.Getcolor(tbl.UIColor["Title Text Color"])[1]) .. "," .. tostring(tbl4.Getcolor(tbl.UIColor["Title Text Color"])[2]) .. "," .. tostring(tbl4.Getcolor(tbl.UIColor["Title Text Color"])[3])) .. ")\">Meow Hub </font> : Blox Fruits"
    frame4.Name = "Background1"
    frame4.Parent = frame7
    frame4.Position = UDim2.new(0, 5, 0, 0)
    frame4.Size = UDim2.new(0, 160, 0, 325)
    frame4.BackgroundTransparency = tbl.UIColor["Background 1 Transparency"]
    frame4.BackgroundColor3 = tbl.UIColor["Background 1 Color"]
    local uiGradient2 = Instance.new("UIGradient", frame4)

    uiGradient2.Transparency = NumberSequence.new({
        NumberSequenceKeypoint.new(0, 0.1),
        NumberSequenceKeypoint.new(1, 0.1),
    })

    uiGradient2.Name = "thua"

    uiGradient2.Color = ColorSequence.new({
        ColorSequenceKeypoint.new(0, Color3.fromRGB(22, 22, 22)),
        ColorSequenceKeypoint.new(1, Color3.fromRGB(44, 44, 44)),
    })

    local uiStroke3 = Instance.new("UIStroke", frame4)
    uiStroke3.Color = Color3.fromRGB(90, 90, 70)
    uiStroke3.Thickness = 1
    uiCorner2.CornerRadius = UDim.new(0, 4)
    uiCorner2.Parent = frame4
    scrollingFrame.Name = "ControlList"
    scrollingFrame.Parent = frame4
    scrollingFrame.Active = true
    scrollingFrame.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
    scrollingFrame.BackgroundTransparency = 1
    scrollingFrame.BorderColor3 = Color3.fromRGB(27, 42, 53)
    scrollingFrame.BorderSizePixel = 0
    scrollingFrame.Position = UDim2.new(0, 0, 0, 30)
    scrollingFrame.Size = UDim2.new(1, -5, 1, -30)
    scrollingFrame.BottomImage = "rbxasset://textures/ui/Scroll/scroll-middle.png"
    scrollingFrame.CanvasSize = UDim2.new(0, 0, 0, 0)
    scrollingFrame.ScrollBarThickness = 5
    scrollingFrame.TopImage = "rbxasset://textures/ui/Scroll/scroll-middle.png"
    uiListLayout2.Parent = scrollingFrame
    uiListLayout2.SortOrder = Enum.SortOrder.LayoutOrder
    uiListLayout2.Padding = UDim.new(0, 5)
    textLabel2.Name = "GUITextColor"
    textLabel2.Parent = frame4
    textLabel2.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
    textLabel2.BackgroundTransparency = 1
    textLabel2.Position = UDim2.new(0, 5, 0, 0)
    textLabel2.Size = UDim2.new(1, 0, 0, 25)
    textLabel2.Font = Enum.Font.GothamBold
    textLabel2.Text = "by vhai"
    textLabel2.TextSize = 14
    textLabel2.TextXAlignment = Enum.TextXAlignment.Center
    textLabel2.TextColor3 = tbl.UIColor["GUI Text Color"]
    frame5.Name = "MainPage"
    frame5.Parent = frame7
    frame5.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
    frame5.BackgroundTransparency = 1
    frame5.ClipsDescendants = true
    frame5.Position = UDim2.new(0, 170, 0, 0)
    frame5.Size = UDim2.new(0, 453, 0, 325)
    uiPageLayout.Name = "UIPage"
    uiPageLayout.Parent = frame5
    uiPageLayout.FillDirection = Enum.FillDirection.Vertical
    uiPageLayout.SortOrder = Enum.SortOrder.LayoutOrder
    uiPageLayout.EasingDirection = Enum.EasingDirection.InOut
    uiPageLayout.EasingStyle = Enum.EasingStyle.Quart
    uiPageLayout.Padding = UDim.new(0, 10)
    uiPageLayout.TweenTime = tbl.UIColor["Tween Animation 1 Speed"]

    uiListLayout2:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
        scrollingFrame.CanvasSize = UDim2.new(0, 0, 0, uiListLayout2.AbsoluteContentSize.Y + 5)
    end)

    local imageLabel4 = Instance.new("ImageLabel", frame2)
    imageLabel4.Name = "Shadow"
    imageLabel4.AnchorPoint = Vector2.new(0.5, 0.5)
    imageLabel4.BackgroundColor3 = Color3.fromRGB(163, 162, 165)
    imageLabel4.BackgroundTransparency = 1
    imageLabel4.Position = UDim2.new(0.5, 0, 0.5, 0)
    imageLabel4.Size = UDim2.new(1, 40, 1, 40)
    imageLabel4.ZIndex = 0
    imageLabel4.Image = "rbxassetid://5028857084"
    imageLabel4.ImageTransparency = 0.35
    imageLabel4.ScaleType = Enum.ScaleType.Slice
    imageLabel4.SliceCenter = Rect.new(24, 24, 276, 276)
    local frame9 = Instance.new("Frame")
    local uiCorner3 = Instance.new("UICorner")
    local frame10 = Instance.new("Frame")
    local imageLabel5 = Instance.new("ImageLabel")
    local textButton = Instance.new("TextButton")
    local textBox = Instance.new("TextBox")
    frame9.Name = "Page Search"
    frame9.Parent = frame4
    frame9.AnchorPoint = Vector2.new(1, 0)
    frame9.BackgroundColor3 = Color3.fromRGB(37, 36, 44)
    frame9.Position = UDim2.new(1, -5, 0, 5)
    frame9.Size = UDim2.new(0, 20, 0, 20)
    frame9.ClipsDescendants = true
    uiCorner3.CornerRadius = UDim.new(0, 2)
    uiCorner3.Name = "PageSearchCorner"
    uiCorner3.Parent = frame9
    frame10.Name = "SearchFrame"
    frame10.Parent = frame9
    frame10.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    frame10.BackgroundTransparency = 1
    frame10.Size = UDim2.new(0, 20, 0, 20)
    imageLabel5.Name = "SearchIcon"
    imageLabel5.Parent = frame10
    imageLabel5.AnchorPoint = Vector2.new(0.5, 0.5)
    imageLabel5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    imageLabel5.BackgroundTransparency = 1
    imageLabel5.Position = UDim2.new(0.5, 0, 0.5, 0)
    imageLabel5.Size = UDim2.new(0, 16, 0, 16)
    imageLabel5.Image = "rbxassetid://8154282545"
    imageLabel5.ImageColor3 = tbl.UIColor["Search Icon Color"]
    textButton.Name = "Search Button"
    textButton.Parent = frame10
    textButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    textButton.BackgroundTransparency = 1
    textButton.Size = UDim2.new(1, 0, 1, 0)
    textButton.Font = Enum.Font.SourceSans
    textButton.Text = ""
    textButton.TextColor3 = Color3.fromRGB(0, 0, 0)
    textButton.TextSize = 14
    textBox.Name = "Search Box"
    textBox.Parent = frame9
    textBox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    textBox.BackgroundTransparency = 1
    textBox.Position = UDim2.new(0, 30, 0, 0)
    textBox.Size = UDim2.new(1, -30, 1, 0)
    textBox.Font = Enum.Font.GothamBold
    textBox.Text = ""
    textBox.TextSize = 14
    textBox.TextXAlignment = Enum.TextXAlignment.Left
    textBox.PlaceholderText = "Search section or function"
    textBox.PlaceholderColor3 = tbl.UIColor["Placeholder Text Color"]
    textBox.TextColor3 = tbl.UIColor["Text Color"]
    local flag = true

    textButton.MouseEnter:Connect(function()
        TweenService:Create(imageLabel5, TweenInfo.new(tbl.UIColor["Tween Animation 3 Speed"]), {ImageColor3 = tbl.UIColor["Search Icon Highlight Color"]}):Play()
    end)

    textButton.MouseLeave:Connect(function()
        TweenService:Create(imageLabel5, TweenInfo.new(tbl.UIColor["Tween Animation 3 Speed"]), {ImageColor3 = tbl.UIColor["Search Icon Color"]}):Play()
    end)

    textButton.MouseButton1Click:Connect(function()
        local flag2

        if flag then
            flag2 = false
        else
            flag2 = true
        end

        flag = flag2
        local v = flag
        local udim25 = v and UDim2.new(0, 150, 0, 20) or UDim2.new(0, 20, 0, 20)
        game.TweenService:Create(frame9, TweenInfo.new(tbl.UIColor["Tween Animation 2 Speed"]), {Size = udim25}):Play()
    end)

    local udim25 = flag and UDim2.new(0, 150, 0, 20) or UDim2.new(0, 20, 0, 20)
    game.TweenService:Create(frame9, TweenInfo.new(tbl.UIColor["Tween Animation 2 Speed"]), {Size = udim25}):Play()
    local layoutOrder = -1
    local layoutOrder2 = -1
    local n9 = 1

    fn = function()
        for k, child in pairs(scrollingFrame:GetChildren()) do
            if not child:IsA("UIListLayout") then
                child.Visible = true
            end
        end

        for k, child in pairs(frame5:GetChildren()) do
            if not child:IsA("UIPageLayout") and not child:IsA("UICorner") then
                child.Visible = true
            end
        end

        local v, v2, v3 = pairs(tbl2)
        local v4 = v3
        local v5 = v
        local v6 = v2

        while true do
            local v7, v8 = v5(v6, v4)
            if v7 == nil then
                break
            end
            v7.Visible = true

            for k, v9 in pairs(v8) do
                v9.Visible = true
            end

            v4 = v7
        end
    end

    textBox:GetPropertyChangedSignal("Text"):Connect(function()
        local text = textBox.Text

        if text == "" then
            fn()
        else
            local v, v2, v3 = pairs(tbl2)
            local v4, v5 = v(v2, v3)

            if v4 ~= nil then
                local v6 = v4
                local v7 = v5
                local v8 = v4
                local v9 = v
                local v10 = v2

                while true do
                    v6.Visible = false
                    local v11, v12, v13 = pairs(v7)
                    local v14 = v8
                    local v15 = v9
                    local v16 = v10
                    local v17, v18 = v11(v12, v13)

                    if v17 ~= nil then
                        local v19 = v18
                        local v20 = v17

                        while true do
                            v19.Visible = false
                            local v21, v22 = v11(v12, v20)
                            if v21 == nil then
                                break
                            end
                            v19 = v22
                            v20 = v21
                        end
                    end

                    v9 = v15
                    v10 = v16
                    local v19, v20 = v15(v16, v14)
                    if v19 == nil then
                        break
                    end
                    v6 = v19
                    v7 = v20
                    v8 = v19
                end
            end

            local v6, v7, v8 = pairs(scrollingFrame:GetChildren())
            local v9, v10 = v6(v7, v8)

            if v9 ~= nil then
                local v11 = v10
                local v12 = v9

                while true do
                    if not v11:IsA("UIListLayout") then
                        v11.Visible = false
                    end

                    local v13, v14 = v6(v7, v12)
                    if v13 == nil then
                        break
                    end
                    v11 = v14
                    v12 = v13
                end
            end

            local v11, v12, v13 = pairs(frame5:GetChildren())
            local v14, v15 = v11(v12, v13)

            if v14 ~= nil then
                local v16 = v15
                local v17 = v14

                while true do
                    if not v16:IsA("UIPageLayout") and not v16:IsA("UICorner") then
                        v16.Visible = false
                    end

                    local v18, v19 = v11(v12, v17)
                    if v18 == nil then
                        break
                    end
                    v16 = v19
                    v17 = v18
                end
            end

            local v16, v17, v18 = pairs(tbl.listfunction)
            local v19, v20 = v16(v17, v18)

            if v19 ~= nil then
                local v21 = v19
                local v22 = v20
                local v23 = v19
                local v24 = v16
                local v25 = v17

                while true do
                    local v26, v27, v28 = pairs(v22)
                    local v29 = v23
                    local v30 = v24
                    local v31 = v25
                    local v32, v33 = v26(v27, v28)

                    if v32 ~= nil then
                        local v34 = v33
                        local v35 = v32

                        while true do
                            if not string.find(v34.Name:lower(), text:lower()) then
                                local v36, v37 = v26(v27, v35)
                                if v36 == nil then
                                    break
                                end
                                v34 = v37
                                v35 = v36
                                continue
                            end

                            if v34.Call then
                                v34.Call()
                            end

                            local v36 = tbl.listtab[v21]

                            if v36 then
                                v36[1].Visible = true
                                v36[2].Visible = true
                                v36[3].Visible = true
                                local tweenAnimation1Speed = tbl.UIColor["Tween Animation 1 Speed"]
                                uiPageLayout.TweenTime = 0
                                uiPageLayout:JumpTo(v36[2])
                                task.wait()
                                uiPageLayout.TweenTime = tweenAnimation1Speed
                            end

                            local v37, v38 = v26(v27, v35)
                            if v37 == nil then
                                break
                            end
                            v34 = v38
                            v35 = v37
                        end
                    end

                    v24 = v30
                    v25 = v31
                    local v34, v35 = v30(v31, v29)
                    if v34 == nil then
                        break
                    end
                    v21 = v34
                    v22 = v35
                    v23 = v34
                end
            end
        end
    end)

    return {
        CreatePage = function(arg2)
            local text = tostring(arg2.Page_Name)
            local text2 = tostring(arg2.Page_Title)
            layoutOrder2 = layoutOrder2 + 1
            layoutOrder = layoutOrder + 1
            local frame11 = Instance.new("Frame")
            local frame12 = Instance.new("Frame")
            local uiCorner4 = Instance.new("UICorner")
            local frame13 = Instance.new("Frame")
            local frame14 = Instance.new("Frame")
            local uiCorner5 = Instance.new("UICorner")
            local frame15 = Instance.new("Frame")
            local textLabel3 = Instance.new("TextLabel")
            local textButton2 = Instance.new("TextButton")
            frame11.Name = text .. "_Control"
            frame11.Parent = scrollingFrame
            frame11.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
            frame11.BackgroundTransparency = 1
            frame11.Size = UDim2.new(1, -10, 0, 25)
            frame11.LayoutOrder = layoutOrder
            frame12.Parent = frame11
            frame12.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
            frame12.BackgroundTransparency = 1
            frame12.Position = UDim2.new(0, 5, 0, 0)
            frame12.Size = UDim2.new(1, -5, 1, 0)
            uiCorner4.CornerRadius = UDim.new(0, 4)
            uiCorner4.Name = "TabNameCorner"
            uiCorner4.Parent = frame12
            frame13.Name = "Line"
            frame13.Parent = frame12
            frame13.AnchorPoint = Vector2.new(0, 0.5)
            frame13.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
            frame13.BackgroundTransparency = 1
            frame13.Position = UDim2.new(0, 0, 0.5, 0)
            frame13.Size = UDim2.new(0, 14, 1, 0)
            frame14.Name = "PageInLine"
            frame14.Parent = frame13
            frame14.AnchorPoint = Vector2.new(0.5, 0.5)
            frame14.BorderSizePixel = 0
            frame14.Position = UDim2.new(0.5, 0, 0.5, 0)
            frame14.Size = UDim2.new(1, -10, 1, -10)
            frame14.BackgroundColor3 = tbl.UIColor["Page Selected Color"]
            frame14.BackgroundTransparency = 1
            uiCorner5.Name = "LineCorner"
            uiCorner5.Parent = frame14
            frame15.Name = "TabTitleContainer"
            frame15.Parent = frame12
            frame15.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
            frame15.BackgroundTransparency = 1
            frame15.Position = UDim2.new(0, 15, 0, 0)
            frame15.Size = UDim2.new(1, -15, 1, 0)
            textLabel3.Name = "GUITextColor"
            textLabel3.Parent = frame15
            textLabel3.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
            textLabel3.BackgroundTransparency = 1
            textLabel3.Size = UDim2.new(1, 0, 1, 0)
            textLabel3.Font = Enum.Font.GothamBold
            textLabel3.Text = text
            textLabel3.TextColor3 = Color3.fromRGB(230, 230, 230)
            textLabel3.TextSize = 14
            textLabel3.TextXAlignment = Enum.TextXAlignment.Left
            textLabel3.TextColor3 = tbl.UIColor["GUI Text Color"]
            textButton2.Name = "PageButton"
            textButton2.Parent = frame11
            textButton2.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
            textButton2.BackgroundTransparency = 1
            textButton2.Size = UDim2.new(1, 0, 1, 0)
            textButton2.Font = Enum.Font.SourceSans
            textButton2.Text = ""
            textButton2.TextColor3 = Color3.fromRGB(0, 0, 0)
            textButton2.TextSize = 14
            local frame16 = Instance.new("Frame")
            local uiCorner6 = Instance.new("UICorner")
            local textLabel4 = Instance.new("TextLabel")
            local scrollingFrame2 = Instance.new("ScrollingFrame")
            local uiListLayout3 = Instance.new("UIListLayout")
            local v = n9
            n9 = n9 + 1
            frame16.Name = "Page" .. v
            frame16.Parent = frame5
            frame16.BackgroundColor3 = tbl.UIColor["Background 1 Color"]
            frame16.Position = UDim2.new(0, 190, 0, 30)
            frame16.Size = UDim2.new(0, 453, 0, 325)
            frame16.LayoutOrder = layoutOrder2
            frame16.BackgroundTransparency = tbl.UIColor["Background 1 Transparency"]
            uiCorner6.CornerRadius = UDim.new(0, 4)
            uiCorner6.Parent = frame16
            textLabel4.Name = "GUITextColor"
            textLabel4.Parent = frame16
            textLabel4.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
            textLabel4.BackgroundTransparency = 1
            textLabel4.Position = UDim2.new(0, 5, 0, 0)
            textLabel4.Size = UDim2.new(1, 0, 0, 25)
            textLabel4.Font = Enum.Font.GothamBold
            textLabel4.Text = text2
            textLabel4.TextSize = 16
            textLabel4.TextXAlignment = Enum.TextXAlignment.Left
            textLabel4.TextColor3 = tbl.UIColor["GUI Text Color"]
            scrollingFrame2.Name = "PageList"
            scrollingFrame2.Parent = frame16
            scrollingFrame2.Active = true
            scrollingFrame2.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
            scrollingFrame2.BackgroundTransparency = 1
            scrollingFrame2.BorderColor3 = Color3.fromRGB(27, 42, 53)
            scrollingFrame2.BorderSizePixel = 0
            scrollingFrame2.Position = UDim2.new(0, 5, 0, 30)
            scrollingFrame2.Size = UDim2.new(1, -10, 1, -30)
            scrollingFrame2.BottomImage = "rbxasset://textures/ui/Scroll/scroll-middle.png"
            scrollingFrame2.ScrollBarThickness = 5
            scrollingFrame2.TopImage = "rbxasset://textures/ui/Scroll/scroll-middle.png"
            scrollingFrame2.ScrollingEnabled = true
            scrollingFrame2.VerticalScrollBarInset = Enum.ScrollBarInset.Always
            uiListLayout3.Name = "Pagelistlayout"
            uiListLayout3.Parent = scrollingFrame2
            uiListLayout3.SortOrder = Enum.SortOrder.LayoutOrder
            uiListLayout3.Padding = UDim.new(0, 5)

            uiListLayout3:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
                scrollingFrame2.CanvasSize = UDim2.new(0, 0, 0, uiListLayout3.AbsoluteContentSize.Y)
            end)

            local frame17 = Instance.new("Frame")
            local uiCorner7 = Instance.new("UICorner")
            local frame18 = Instance.new("Frame")
            local imageLabel6 = Instance.new("ImageLabel")
            local textButton3 = Instance.new("TextButton")
            local textBox2 = Instance.new("TextBox")
            frame17.Name = "Page Search"
            frame17.Parent = frame16
            frame17.AnchorPoint = Vector2.new(1, 0)
            frame17.BackgroundColor3 = Color3.fromRGB(37, 36, 44)
            frame17.Position = UDim2.new(1, -5, 0, 5)
            frame17.Size = UDim2.new(0, 20, 0, 20)
            frame17.ClipsDescendants = true
            uiCorner7.CornerRadius = UDim.new(0, 2)
            uiCorner7.Name = "PageSearchCorner"
            uiCorner7.Parent = frame17
            frame18.Name = "SearchFrame"
            frame18.Parent = frame17
            frame18.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            frame18.BackgroundTransparency = 1
            frame18.Size = UDim2.new(0, 20, 0, 20)
            imageLabel6.Name = "SearchIcon"
            imageLabel6.Parent = frame18
            imageLabel6.AnchorPoint = Vector2.new(0.5, 0.5)
            imageLabel6.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            imageLabel6.BackgroundTransparency = 1
            imageLabel6.Position = UDim2.new(0.5, 0, 0.5, 0)
            imageLabel6.Size = UDim2.new(0, 16, 0, 16)
            imageLabel6.Image = "rbxassetid://8154282545"
            imageLabel6.ImageColor3 = tbl.UIColor["Search Icon Color"]
            textButton3.Name = "Search Button"
            textButton3.Parent = frame18
            textButton3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            textButton3.BackgroundTransparency = 1
            textButton3.Size = UDim2.new(1, 0, 1, 0)
            textButton3.Font = Enum.Font.SourceSans
            textButton3.Text = ""
            textButton3.TextColor3 = Color3.fromRGB(0, 0, 0)
            textButton3.TextSize = 14
            textBox2.Name = "Search Box"
            textBox2.Parent = frame17
            textBox2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            textBox2.BackgroundTransparency = 1
            textBox2.Position = UDim2.new(0, 30, 0, 0)
            textBox2.Size = UDim2.new(1, -30, 1, 0)
            textBox2.Font = Enum.Font.GothamBold
            textBox2.Text = ""
            textBox2.TextSize = 14
            textBox2.TextXAlignment = Enum.TextXAlignment.Left
            textBox2.PlaceholderText = "Search section or function"
            textBox2.PlaceholderColor3 = tbl.UIColor["Placeholder Text Color"]
            textBox2.TextColor3 = tbl.UIColor["Text Color"]
            local flag2 = false

            textButton3.MouseEnter:Connect(function()
                TweenService:Create(imageLabel6, TweenInfo.new(tbl.UIColor["Tween Animation 3 Speed"]), {ImageColor3 = tbl.UIColor["Search Icon Highlight Color"]}):Play()
            end)

            textButton3.MouseLeave:Connect(function()
                TweenService:Create(imageLabel6, TweenInfo.new(tbl.UIColor["Tween Animation 3 Speed"]), {ImageColor3 = tbl.UIColor["Search Icon Color"]}):Play()
            end)

            textButton3.MouseButton1Click:Connect(function()
                local flag3

                if flag2 then
                    flag3 = false
                else
                    flag3 = true
                end

                flag2 = flag3
                local v2 = flag2
                local udim26 = v2 and UDim2.new(0, 150, 0, 20) or UDim2.new(0, 20, 0, 20)
                game.TweenService:Create(frame17, TweenInfo.new(tbl.UIColor["Tween Animation 2 Speed"]), {Size = udim26}):Play()
            end)

            textBox2:GetPropertyChangedSignal("Text"):Connect(function()
                local text3 = textBox2.Text

                if text3 == "" then
                    for k, child in pairs(scrollingFrame:GetChildren()) do
                        if not child:IsA("UIListLayout") then
                            child.Visible = true
                        end
                    end

                    for k, child in pairs(frame5:GetChildren()) do
                        if not child:IsA("UIPageLayout") and not child:IsA("UICorner") then
                            child.Visible = true
                        end
                    end

                    local v2, v3, v4 = pairs(tbl2)
                    local v5 = v4
                    local v6 = v2
                    local v7 = v3

                    while true do
                        local v8, v9 = v6(v7, v5)
                        if v8 == nil then
                            break
                        end
                        v8.Visible = true

                        for k, v10 in pairs(v9) do
                            v10.Visible = true
                        end

                        v5 = v8
                    end
                else
                    local v2, v3, v4 = pairs(tbl2)
                    local v5 = v4
                    local v6 = v2
                    local v7 = v3

                    while true do
                        local v8, v9 = v6(v7, v5)
                        if v8 == nil then
                            break
                        end
                        v8.Visible = false

                        for k, v10 in pairs(v9) do
                            v10.Visible = false
                        end

                        v5 = v8
                    end

                    for k, child in pairs(scrollingFrame:GetChildren()) do
                        if not child:IsA("UIListLayout") then
                            child.Visible = false
                        end
                    end

                    for k, child in pairs(frame5:GetChildren()) do
                        if not child:IsA("UIPageLayout") and not child:IsA("UICorner") then
                            child.Visible = false
                        end
                    end

                    local v8, v9, v10 = pairs(tbl.listfunction)
                    local v11 = v10
                    local v12 = v8
                    local v13 = v9

                    while true do
                        local v14, v15 = v12(v13, v11)
                        if v14 == nil then
                            break
                        end

                        for k, v16 in pairs(v15) do
                            if string.find(v16.Name:lower(), text3:lower()) then
                                if v16.Call then
                                    v16.Call()
                                end

                                local v17 = tbl.listtab[v14]

                                if v17 then
                                    v17[1].Visible = true
                                    v17[2].Visible = true
                                    v17[3].Visible = true
                                    local tweenAnimation1Speed = tbl.UIColor["Tween Animation 1 Speed"]
                                    uiPageLayout.TweenTime = 0
                                    uiPageLayout:JumpTo(v17[2])
                                    task.wait()
                                    uiPageLayout.TweenTime = tweenAnimation1Speed
                                end
                            end
                        end

                        v11 = v14
                    end
                end
            end)

            visiblealloff = function()
                for k, child in pairs(scrollingFrame:GetChildren()) do
                    if not child:IsA("UIListLayout") then
                        child.Visible = false
                    end
                end

                for k, child in pairs(frame5:GetChildren()) do
                    if not child:IsA("UIPageLayout") and not child:IsA("UICorner") then
                        child.Visible = false
                    end
                end
            end

            uiGradient2 = visiblealloff

            for k, child in pairs(scrollingFrame:GetChildren()) do
                if not child:IsA("UIListLayout") and k == 2 then
                    child.Frame.Line.PageInLine.BackgroundTransparency = 0
                end
            end

            textButton2.MouseButton1Click:Connect(function()
                if tostring(uiPageLayout.CurrentPage) == frame16.Name then
                    return
                end

                for k, child in pairs(frame5:GetChildren()) do
                    if not child:IsA("UIPageLayout") and not child:IsA("UICorner") then
                        child.Visible = false
                    end
                end

                frame16.Visible = true
                uiPageLayout:JumpTo(frame16)
                local v2 = next
                local children, v3 = scrollingFrame:GetChildren()

                for k, v4 in v2, children, v3 do
                    if not v4:IsA("UIListLayout") then
                        if v4.Name == text .. "_Control" then
                            TweenService:Create(v4.Frame.Line.PageInLine, TweenInfo.new(tbl.UIColor["Tween Animation 1 Speed"]), {BackgroundTransparency = 0}):Play()
                        else
                            TweenService:Create(v4.Frame.Line.PageInLine, TweenInfo.new(tbl.UIColor["Tween Animation 1 Speed"]), {BackgroundTransparency = 1}):Play()
                        end
                    end
                end
            end)

            local tbl5 = {}

            tbl5.CreateSection = function(...)
                local tbl6 = {...}
                local v2 = tbl6[1]
                local v3 = tbl6[2]
                local v4 = tbl6[3]
                local v5 = tbl6[4]

                if tbl6[1] == tbl5 or type(tbl6[1]) == "table" and (tbl6[1].CreateSection or tbl6[1].AddSection) then
                    v2 = tbl6[2]
                    v3 = tbl6[3]
                    v4 = tbl6[4]
                    v5 = tbl6[5]
                end

                if type(v2) == "table" then
                    local sectionName = v2.Section_Name
                    local name = sectionName or v2.Name or v2.Title or tostring(v2)
                    v2 = name
                end

                local v6 = tostring
                local str4 = v2 or "Section"
                local v7 = v6(str4)
                local flag3 = v7:lower():find("status") ~= nil
                local flag4 = v3 or false
                local v8 = flag4
                local frame19 = Instance.new("Frame")
                local uiCorner8 = Instance.new("UICorner")
                local frame20 = Instance.new("Frame")
                local textLabel5 = Instance.new("TextLabel")
                local frame21 = Instance.new("Frame")
                local uiGradient3 = Instance.new("UIGradient")
                local uiListLayout4 = Instance.new("UIListLayout")
                tbl.listtab[frame19] = {frame11, frame16, frame19}
                tbl.listfunction[frame19] = {}
                frame19.Name = v7 .. "_Dot"
                frame19.Parent = scrollingFrame2
                frame19.Size = UDim2.new(1, -5, 0, 30)
                frame19.BackgroundColor3 = tbl.UIColor["Background 3 Color"]
                frame19.BackgroundTransparency = tbl.UIColor["Background 1 Transparency"]
                frame19.ClipsDescendants = true
                tbl2[frame19] = {}
                local uiStroke4 = Instance.new("UIStroke", frame19)
                uiStroke4.Color = Color3.fromRGB(90, 90, 70)
                uiStroke4.Thickness = 1
                uiCorner8.CornerRadius = UDim.new(0, 4)
                uiCorner8.Parent = frame19
                local uiGradient4 = Instance.new("UIGradient", frame19)

                uiGradient4.Color = ColorSequence.new({
                    ColorSequenceKeypoint.new(0, Color3.fromRGB(38, 38, 46)),
                    ColorSequenceKeypoint.new(1, Color3.fromRGB(48, 48, 56)),
                })

                uiGradient4.Rotation = 90

                uiGradient4.Transparency = NumberSequence.new({
                    NumberSequenceKeypoint.new(0, 0.05),
                    NumberSequenceKeypoint.new(1, 0.15),
                })

                frame20.Name = "Topsec"
                frame20.Parent = frame19
                frame20.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
                frame20.BackgroundTransparency = 1
                frame20.Size = UDim2.new(0, 415, 0, 30)
                textLabel5.Name = "Sectiontitle"
                textLabel5.Parent = frame20
                textLabel5.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
                textLabel5.BackgroundTransparency = 1
                textLabel5.Size = UDim2.new(1, 0, 1, 0)
                textLabel5.Font = Enum.Font.GothamBold
                textLabel5.Text = v7
                textLabel5.TextSize = 14
                local sectionTextColor = v5 and v5 or tbl.UIColor["Section Text Color"]
                textLabel5.TextColor3 = sectionTextColor
                frame21.Name = "Linesec"
                frame21.Parent = frame20
                frame21.AnchorPoint = Vector2.new(0.5, 1)
                frame21.BorderSizePixel = 0
                frame21.Position = UDim2.new(0.5, 0, 1, -2)
                frame21.Size = UDim2.new(1, -10, 0, 2)
                local sectionUnderlineColor = v5 and v5 or tbl.UIColor["Section Underline Color"]
                frame21.BackgroundColor3 = sectionUnderlineColor
                local imageLabel7 = Instance.new("ImageLabel", frame21)
                imageLabel7.Name = "LineShadow"
                imageLabel7.AnchorPoint = Vector2.new(0.5, 0.5)
                imageLabel7.BackgroundColor3 = Color3.fromRGB(163, 162, 165)
                imageLabel7.BackgroundTransparency = 1
                imageLabel7.Position = UDim2.new(0.5, 0, 0.5, 0)
                imageLabel7.Size = UDim2.new(1, 8, 1, 8)
                imageLabel7.ZIndex = 0
                imageLabel7.Image = "rbxassetid://5028857084"
                imageLabel7.ImageTransparency = 0.6
                imageLabel7.ScaleType = Enum.ScaleType.Slice
                imageLabel7.SliceCenter = Rect.new(24, 24, 276, 276)

                uiGradient3.Transparency = NumberSequence.new({
                    NumberSequenceKeypoint.new(0, 1),
                    NumberSequenceKeypoint.new(0.5, 0),
                    NumberSequenceKeypoint.new(0.51, 0.02),
                    NumberSequenceKeypoint.new(1, 1),
                })

                uiGradient3.Parent = frame21
                local v9 = nil
                local flag5 = false

                if v8 then
                    local frame22 = Instance.new("Frame")
                    local uiCorner9 = Instance.new("UICorner")
                    local imageButton2 = Instance.new("ImageButton")
                    local imageButton3 = Instance.new("ImageButton")
                    local textButton4 = Instance.new("TextButton")
                    textButton4.Name = "VisibilityButton"
                    textButton4.Parent = frame20
                    textButton4.AnchorPoint = Vector2.new(1, 0.5)
                    textButton4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                    textButton4.BackgroundTransparency = 1
                    textButton4.BorderColor3 = Color3.fromRGB(0, 0, 0)
                    textButton4.BorderSizePixel = 0
                    textButton4.Font = Enum.Font.SourceSans
                    textButton4.Text = ""
                    textButton4.TextColor3 = Color3.fromRGB(0, 0, 0)
                    textButton4.TextSize = 14
                    textButton4.ZIndex = 2
                    textButton4.Position = UDim2.new(1, -5, 0.5, 0)
                    textButton4.Size = UDim2.new(0, 20, 0, 20)
                    frame22.Name = "VisibilitySectionFrame"
                    frame22.Parent = frame20
                    frame22.AnchorPoint = Vector2.new(1, 0.5)
                    frame22.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
                    frame22.BorderColor3 = Color3.fromRGB(0, 0, 0)
                    frame22.BorderSizePixel = 0
                    frame22.Position = UDim2.new(1, -5, 0.5, 0)
                    frame22.Size = UDim2.new(0, 20, 0, 20)
                    uiCorner9.CornerRadius = UDim.new(0, 4)
                    uiCorner9.Name = "VisibilitySectionFrameCorner"
                    uiCorner9.Parent = frame22
                    imageButton2.Name = "visibility"
                    imageButton2.Parent = frame22
                    imageButton2.AnchorPoint = Vector2.new(0.5, 0.5)
                    imageButton2.BackgroundTransparency = 1
                    imageButton2.LayoutOrder = 4
                    imageButton2.Position = UDim2.new(0.5, 0, 0.5, 0)
                    imageButton2.Size = UDim2.new(1, -4, 1, -4)
                    imageButton2.ZIndex = 2
                    imageButton2.Image = "rbxassetid://3926307971"
                    imageButton2.ImageRectOffset = Vector2.new(84, 44)
                    imageButton2.ImageRectSize = Vector2.new(36, 36)
                    imageButton2.ImageTransparency = 1
                    imageButton3.Name = "visibility_off"
                    imageButton3.Parent = frame22
                    imageButton3.AnchorPoint = Vector2.new(0.5, 0.5)
                    imageButton3.BackgroundTransparency = 1
                    imageButton3.LayoutOrder = 4
                    imageButton3.Position = UDim2.new(0.5, 0, 0.5, 0)
                    imageButton3.Size = UDim2.new(1, -4, 1, -4)
                    imageButton3.ZIndex = 2
                    imageButton3.Image = "rbxassetid://3926307971"
                    imageButton3.ImageRectOffset = Vector2.new(564, 44)
                    imageButton3.ImageRectSize = Vector2.new(36, 36)
                    imageButton3.ImageTransparency = 0

                    textButton4.MouseButton1Down:Connect(function()
                        local flag6

                        if flag5 then
                            flag6 = false
                        else
                            flag6 = true
                        end

                        flag5 = flag6
                        local create = TweenService.Create
                        local tweenInfo = TweenInfo.new(tbl.UIColor["Tween Animation 1 Speed"] / 2)
                        local tbl7 = {}
                        local v10 = flag5
                        local imageTransparency = v10 and 0 or 1
                        tbl7.ImageTransparency = imageTransparency
                        create(TweenService, imageButton2, tweenInfo, tbl7):Play()
                        wait(tbl.UIColor["Tween Animation 1 Speed"] / 4)
                        local create2 = TweenService.Create
                        local tweenInfo2 = TweenInfo.new(tbl.UIColor["Tween Animation 1 Speed"] / 2)
                        local tbl8 = {}
                        local v11 = flag5
                        local imageTransparency2 = v11 and 1 or 0
                        tbl8.ImageTransparency = imageTransparency2
                        create2(TweenService, imageButton3, tweenInfo2, tbl8):Play()
                        local create3 = TweenService.Create
                        local tweenInfo3 = TweenInfo.new(tbl.UIColor["Tween Animation 1 Speed"])
                        local tbl9 = {}
                        local udim26 = UDim2.new
                        local v12 = flag5
                        local n10 = v12 and v9 or 30
                        tbl9.Size = udim26(1, -5, 0, n10)
                        create3(TweenService, frame19, tweenInfo3, tbl9):Play()
                    end)
                end

                if v4 then
                    local frame22 = Instance.new("Frame")
                    frame22.Name = "SectionGap"
                    frame22.Parent = scrollingFrame2
                    frame22.Size = UDim2.new(1, -5, 0, 30)
                    frame22.ClipsDescendants = true
                    frame22.Transparency = 1
                end

                uiGradient3.Transparency = NumberSequence.new({
                    NumberSequenceKeypoint.new(0, 1),
                    NumberSequenceKeypoint.new(0.5, 0),
                    NumberSequenceKeypoint.new(0.51, 0.02),
                    NumberSequenceKeypoint.new(1, 1),
                })

                uiGradient3.Parent = frame21
                uiListLayout4.Name = "SectionList"
                uiListLayout4.Parent = frame19
                uiListLayout4.SortOrder = Enum.SortOrder.LayoutOrder
                uiListLayout4.Padding = UDim.new(0, 5)
                local n10 = -1

                uiListLayout4:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
                    local n11 = uiListLayout4.AbsoluteContentSize.Y + 5
                    if n11 == n10 then
                        return
                    end
                    n10 = n11

                    if not v8 then
                        frame19.Size = UDim2.new(1, -5, 0, n11)
                    end

                    v9 = n11

                    if flag5 then
                        TweenService:Create(frame19, TweenInfo.new(tbl.UIColor["Tween Animation 1 Speed"]), {Size = UDim2.new(1, -5, 0, v9)}):Play()
                    end
                end)

                local tbl7 = {
                    IsStatusSection = flag3,
                    CreateToggle = function(arg3, arg4)
                        local v10 = tostring
                        local title2 = arg3.Title
                        local str5 = title2 or ""
                        local v11 = v10(str5)
                        local desc3 = arg3.Desc
                        local default = arg3.Default

                        if default == nil then
                            default = false
                        end

                        local fn4 = arg4 or function() end
                        local frame22 = Instance.new("Frame")
                        local frame23 = Instance.new("Frame")
                        local imageLabel8 = Instance.new("ImageLabel")
                        local imageLabel9 = Instance.new("ImageLabel")
                        local textLabel6 = Instance.new("TextLabel")
                        local textLabel7 = Instance.new("TextLabel")
                        local frame24 = Instance.new("Frame")
                        local uiCorner9 = Instance.new("UICorner")
                        local textButton4 = Instance.new("TextButton")
                        local uiListLayout5 = Instance.new("UIListLayout")
                        frame22.Name = "ToggleFrame"
                        frame22.Parent = frame19
                        frame22.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
                        frame22.BackgroundTransparency = 1
                        frame22.Position = UDim2.new(0, 0, 0.300000012, 0)
                        frame22.Size = UDim2.new(1, 0, 0, 0)
                        frame22.AutomaticSize = Enum.AutomaticSize.Y
                        frame23.Name = "TogFrame1"
                        frame23.Parent = frame22
                        frame23.AnchorPoint = Vector2.new(0.5, 0.5)
                        frame23.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
                        frame23.BackgroundTransparency = 1
                        frame23.Position = UDim2.new(0.5, 0, 0.5, 0)
                        frame23.Size = UDim2.new(1, -10, 0, 0)
                        frame23.AutomaticSize = Enum.AutomaticSize.Y
                        imageLabel8.Name = "checkbox"
                        imageLabel8.Parent = frame23
                        imageLabel8.AnchorPoint = Vector2.new(1, 0.5)
                        imageLabel8.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
                        imageLabel8.BackgroundTransparency = 1
                        imageLabel8.Position = UDim2.new(1, -5, 0.5, 3)
                        imageLabel8.Size = UDim2.new(0, 25, 0, 25)
                        imageLabel8.Image = "rbxassetid://4552505888"
                        imageLabel8.ImageColor3 = tbl.UIColor["Toggle Border Color"]
                        imageLabel9.Name = "check"
                        imageLabel9.Parent = imageLabel8
                        imageLabel9.AnchorPoint = Vector2.new(0.5, 0.5)
                        imageLabel9.BackgroundColor3 = Color3.fromRGB(200, 0, 255)
                        imageLabel9.BackgroundTransparency = 0
                        imageLabel9.Position = UDim2.new(0.5, 0, 0.5, 0)
                        imageLabel9.Size = UDim2.new(0, 0, 0, 0)
                        imageLabel9.Image = ""
                        imageLabel9.ImageColor3 = tbl.UIColor["Toggle Checked Color"]
                        local n11 = 5

                        if desc3 then
                            n11 = 0
                            textLabel6.Name = "ToggleDesc"
                            textLabel6.Parent = frame23
                            textLabel6.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
                            textLabel6.BackgroundTransparency = 1
                            textLabel6.Position = UDim2.new(0, 15, 0, 20)
                            textLabel6.Size = UDim2.new(1, -50, 0, 0)
                            textLabel6.Font = Enum.Font.GothamBlack
                            textLabel6.Text = desc3
                            textLabel6.TextSize = 13
                            textLabel6.TextWrapped = true
                            textLabel6.TextXAlignment = Enum.TextXAlignment.Left
                            textLabel6.RichText = true
                            textLabel6.AutomaticSize = Enum.AutomaticSize.Y
                            textLabel6.TextColor3 = tbl.UIColor["Toggle Desc Color"]
                        else
                            textLabel6.Text = ""
                        end

                        textLabel7.Name = "TextColor"
                        textLabel7.Parent = frame23
                        textLabel7.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
                        textLabel7.BackgroundTransparency = 1
                        textLabel7.Position = UDim2.new(0, 10, 0, n11)
                        textLabel7.Size = UDim2.new(1, -10, 0, 20)
                        local gothamMedium = flag3 and Enum.Font.GothamMedium or Enum.Font.GothamBlack
                        textLabel7.Font = gothamMedium
                        textLabel7.Text = v11
                        local textSize = flag3 and 13 or 14
                        textLabel7.TextSize = textSize
                        textLabel7.TextXAlignment = Enum.TextXAlignment.Left
                        textLabel7.TextYAlignment = Enum.TextYAlignment.Center
                        textLabel7.RichText = true
                        textLabel7.AutomaticSize = Enum.AutomaticSize.Y
                        textLabel7.TextColor3 = tbl.UIColor["Text Color"]
                        frame24.Name = "Background1"
                        frame24.Parent = frame23
                        frame24.Size = UDim2.new(1, 0, 1, 6)
                        frame24.ZIndex = 0
                        frame24.BackgroundColor3 = tbl.UIColor["Background 1 Color"]
                        frame24.BackgroundTransparency = tbl.UIColor["Background 1 Transparency"]
                        uiCorner9.CornerRadius = UDim.new(0, 4)
                        uiCorner9.Name = "ToggleCorner"
                        uiCorner9.Parent = frame24
                        textButton4.Name = "ToggleButton"
                        textButton4.Parent = frame23
                        textButton4.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
                        textButton4.BackgroundTransparency = 1
                        textButton4.AnchorPoint = Vector2.new(1, 0.5)
                        textButton4.Size = UDim2.new(0, 25, 0, 25)
                        textButton4.Position = UDim2.new(1, -5, 0.5, 3)
                        textButton4.Font = Enum.Font.SourceSans
                        textButton4.Text = ""
                        textButton4.TextColor3 = Color3.fromRGB(0, 0, 0)
                        textButton4.TextSize = 14
                        uiListLayout5.Name = "ToggleList"
                        uiListLayout5.Parent = frame22
                        uiListLayout5.HorizontalAlignment = Enum.HorizontalAlignment.Center
                        uiListLayout5.SortOrder = Enum.SortOrder.LayoutOrder
                        uiListLayout5.VerticalAlignment = Enum.VerticalAlignment.Center
                        uiListLayout5.Padding = UDim.new(0, 5)
                        Instance.new("UICorner", imageLabel9).CornerRadius = UDim.new(0, 2)

                        local function fn5(arg5)
                            local udim26 = arg5 and UDim2.new(1, -12, 1, -12) or UDim2.new(0, 0, 0, 0)
                            local udim27 = UDim2.new(0.5, 0, 0.5, 0)
                            local vector2 = Vector2.new(0.5, 0.5)
                            game.TweenService:Create(imageLabel9, TweenInfo.new(tbl.UIColor["Tween Animation 1 Speed"]), {Size = udim26, Position = udim27, AnchorPoint = vector2}):Play()
                            fn4(arg5)
                        end

                        if fn4 then
                            fn5(default)
                        end

                        local tbl7 = {
                            SetStage = function(arg5)
                                if arg5 ~= default then
                                    ButtonClick()
                                end
                            end,
                        }

                        tbl7.SetValue = tbl7.SetStage

                        tbl7.GetValue = function()
                            return default
                        end

                        local tbl8 = {
                            name = v11,
                            type = "toggle",
                            value = default,
                            Page_Name = text,
                            Section_Name = v7,
                            FunctionCreate = tbl7,
                        }

                        tbl3.Options[v11] = tbl8

                        if type(getgenv().Options) == "table" then
                            getgenv().Options[v11] = tbl8
                        end

                        local function fn6()
                            local flag6

                            if default then
                                flag6 = false
                            else
                                flag6 = true
                            end

                            default = flag6

                            if tbl8 then
                                tbl8.value = default
                            end

                            fn5(default)
                        end

                        textButton4.MouseButton1Down:Connect(function()
                            fn6()
                        end)

                        visibleon = function()
                            frame22.Visible = true
                        end

                        table.insert(tbl.listfunction[frame19], {Type = "Toggle", Name = v11, Call = visibleon})
                        table.insert(tbl2[frame19], frame22)
                        return tbl7
                    end,
                    CreateButton = function(arg3, arg4)
                        local title2 = arg3.Title
                        local fn4 = arg4 or function() end
                        local frame22 = Instance.new("Frame", frame19)
                        frame22.LayoutOrder = 0
                        frame22.BorderMode = Enum.BorderMode.Outline
                        frame22.Selectable = false
                        frame22.AnchorPoint = Vector2.new(0, 0)
                        frame22.AutomaticSize = Enum.AutomaticSize.None
                        frame22.Size = UDim2.new(1, 0, 0, 40)
                        frame22.Draggable = false
                        frame22.BorderColor3 = Color3.new(0.10588235408067703, 0.16470588743686676, 0.2078431397676468)
                        frame22.Style = Enum.FrameStyle.Custom
                        frame22.Transparency = 1
                        frame22.BackgroundTransparency = 1
                        frame22.SelectionOrder = 0
                        frame22.SizeConstraint = Enum.SizeConstraint.RelativeXY
                        frame22.BackgroundColor3 = Color3.new(0.6392157077789307, 0.6352941393852234, 0.6470588445663452)
                        local frame23 = Instance.new("Frame", frame22)
                        frame23.LayoutOrder = 0
                        frame23.BorderMode = Enum.BorderMode.Outline
                        frame23.Selectable = false
                        frame23.AnchorPoint = Vector2.new(0.5, 0.5)
                        frame23.AutomaticSize = Enum.AutomaticSize.None
                        frame23.Size = UDim2.new(1, -10, 1, 0)
                        frame23.Draggable = false
                        frame23.BorderColor3 = Color3.new(0.10588235408067703, 0.16470588743686676, 0.2078431397676468)
                        frame23.Style = Enum.FrameStyle.Custom
                        frame23.SizeConstraint = Enum.SizeConstraint.RelativeXY
                        frame23.Transparency = tbl.UIColor["Background 1 Transparency"]
                        frame23.BackgroundTransparency = 0.25
                        frame23.Position = UDim2.new(0.5, 0, 0.5, 0)
                        frame23.SelectionOrder = 0
                        frame23.BackgroundColor3 = tbl.UIColor["Background 1 Color"]
                        Instance.new("UICorner", frame23).CornerRadius = UDim.new(0, 10)
                        local frame24 = Instance.new("Frame", frame23)
                        frame24.LayoutOrder = 0
                        frame24.BorderMode = Enum.BorderMode.Outline
                        frame24.Selectable = false
                        frame24.AnchorPoint = Vector2.new(0, 0)
                        frame24.ZIndex = 2
                        frame24.AutomaticSize = Enum.AutomaticSize.None
                        frame24.Draggable = false
                        frame24.BorderColor3 = Color3.new(0.10588235408067703, 0.16470588743686676, 0.2078431397676468)
                        frame24.Style = Enum.FrameStyle.Custom
                        frame24.Transparency = 1
                        frame24.BackgroundTransparency = 1
                        frame24.SelectionOrder = 0
                        frame24.SizeConstraint = Enum.SizeConstraint.RelativeXY
                        frame24.BackgroundColor3 = Color3.new(0.1882352977991104, 0.1882352977991104, 0.21960784494876862)
                        Instance.new("UICorner", frame24).CornerRadius = UDim.new(0, 10)
                        local textLabel6 = Instance.new("TextLabel", frame23)
                        textLabel6.LineHeight = 1
                        textLabel6.Active = false
                        textLabel6.TextStrokeTransparency = 0.8500000238418579
                        textLabel6.TextTruncate = Enum.TextTruncate.None
                        textLabel6.SizeConstraint = Enum.SizeConstraint.RelativeXY
                        textLabel6.ZIndex = 1
                        textLabel6.BorderSizePixel = 1
                        textLabel6.Draggable = false
                        textLabel6.RichText = false
                        textLabel6.SelectionOrder = 0
                        textLabel6.BackgroundColor3 = Color3.new(0.6392157077789307, 0.6352941393852234, 0.6470588445663452)
                        textLabel6.BorderMode = Enum.BorderMode.Outline
                        textLabel6.TextStrokeColor3 = Color3.new(0, 0, 0)
                        textLabel6.AnchorPoint = Vector2.new(0, 0)
                        textLabel6.AutomaticSize = Enum.AutomaticSize.None
                        textLabel6.Size = UDim2.new(1, -110, 1, 0)
                        textLabel6.TextColor3 = Color3.new(0.9215686321258545, 0.9215686321258545, 0.9019607901573181)
                        textLabel6.ClipsDescendants = false
                        textLabel6.BorderColor3 = Color3.new(0.10588235408067703, 0.16470588743686676, 0.2078431397676468)
                        textLabel6.Text = title2
                        textLabel6.TextXAlignment = Enum.TextXAlignment.Left
                        textLabel6.LayoutOrder = 0
                        textLabel6.Rotation = 0
                        local gothamMedium = flag3 and Enum.Font.GothamMedium or Enum.Font.GothamBold
                        textLabel6.Font = gothamMedium
                        textLabel6.BackgroundTransparency = 1
                        textLabel6.Position = UDim2.new(0, 12, 0, 0)
                        textLabel6.Selectable = false
                        textLabel6.MaxVisibleGraphemes = -1
                        textLabel6.Visible = true
                        local textSize = flag3 and 13 or 14
                        textLabel6.TextSize = textSize
                        local frame25 = Instance.new("Frame", frame23)
                        frame25.LayoutOrder = 0
                        frame25.BorderMode = Enum.BorderMode.Outline
                        frame25.Selectable = false
                        frame25.AnchorPoint = Vector2.new(1, 0.5)
                        frame25.AutomaticSize = Enum.AutomaticSize.None
                        frame25.Size = UDim2.new(0, 94, 0, 30)
                        frame25.Draggable = false
                        frame25.BorderColor3 = Color3.new(0.10588235408067703, 0.16470588743686676, 0.2078431397676468)
                        frame25.SizeConstraint = Enum.SizeConstraint.RelativeXY
                        frame25.Transparency = 0
                        frame25.Style = Enum.FrameStyle.Custom
                        frame25.Position = UDim2.new(1, -8, 0.5, 0)
                        frame25.SelectionOrder = 0
                        frame25.BackgroundColor3 = Color3.fromRGB(195, 195, 195)
                        frame25.ClipsDescendants = true
                        local uiCorner9 = Instance.new("UICorner", frame25)
                        uiCorner9.CornerRadius = UDim.new(0, 12)
                        local uiGradient5 = Instance.new("UIGradient", frame25)
                        uiGradient5.Enabled = true

                        uiGradient5.Color = ColorSequence.new({
                            ColorSequenceKeypoint.new(0, Color3.fromRGB(225, 60, 255)),
                            ColorSequenceKeypoint.new(0.4, Color3.fromRGB(201, 0, 255)),
                            ColorSequenceKeypoint.new(0.6, Color3.fromRGB(175, 0, 235)),
                            ColorSequenceKeypoint.new(1, Color3.fromRGB(145, 0, 210)),
                        })

                        uiGradient5.Offset = Vector2.new(0, 0)
                        uiGradient5.Rotation = 90
                        local uiScale = Instance.new("UIScale", frame25)
                        uiScale.Scale = 1
                        local tween = TweenService:Create(uiScale, TweenInfo.new(0.12, Enum.EasingStyle.Sine), {Scale = 1.05})
                        local tween2 = TweenService:Create(uiScale, TweenInfo.new(0.12, Enum.EasingStyle.Sine), {Scale = 1})
                        local textButton4 = Instance.new("TextButton", frame25)
                        textButton4.Visible = true
                        textButton4.TextWrapped = false
                        textButton4.LineHeight = 1
                        textButton4.Active = true
                        textButton4.TextStrokeTransparency = 0.85
                        textButton4.TextTruncate = Enum.TextTruncate.None
                        textButton4.SizeConstraint = Enum.SizeConstraint.RelativeXY
                        textButton4.ZIndex = 1
                        textButton4.BorderSizePixel = 0
                        textButton4.Draggable = false
                        textButton4.RichText = false
                        textButton4.AutoButtonColor = false
                        textButton4.Transparency = 1
                        textButton4.SelectionOrder = 0
                        textButton4.TextYAlignment = Enum.TextYAlignment.Center
                        textButton4.TextScaled = false
                        textButton4.BackgroundColor3 = Color3.fromRGB(163, 162, 165)
                        textButton4.BackgroundTransparency = 1
                        textButton4.Selectable = true
                        textButton4.AnchorPoint = Vector2.new(0, 0)
                        textButton4.Style = Enum.ButtonStyle.Custom
                        textButton4.Modal = false
                        textButton4.Selected = false
                        textButton4.AutomaticSize = Enum.AutomaticSize.None
                        textButton4.Size = UDim2.new(1, 0, 1, 0)
                        textButton4.TextXAlignment = Enum.TextXAlignment.Center
                        textButton4.TextTransparency = 0
                        textButton4.ClipsDescendants = false
                        textButton4.BorderColor3 = Color3.new(0, 0, 0)
                        textButton4.Text = "Click"
                        textButton4.LayoutOrder = 0
                        textButton4.TextStrokeColor3 = Color3.new(0, 0, 0)
                        textButton4.Rotation = 0
                        textButton4.Font = Enum.Font.GothamBold
                        textButton4.Position = UDim2.new(0, 0, 0, 0)
                        textButton4.TextSize = 13
                        textButton4.MaxVisibleGraphemes = -1
                        textButton4.TextColor3 = Color3.fromRGB(240, 240, 240)
                        local frame26 = Instance.new("Frame", frame25)
                        frame26.LayoutOrder = 0
                        frame26.BorderMode = Enum.BorderMode.Outline
                        frame26.Selectable = false
                        frame26.AnchorPoint = Vector2.new(0.5, 0)
                        frame26.ZIndex = 2
                        frame26.AutomaticSize = Enum.AutomaticSize.None
                        frame26.Size = UDim2.new(1, -6, 0, 10)
                        frame26.Draggable = false
                        frame26.BorderColor3 = Color3.new(0.10588235408067703, 0.16470588743686676, 0.2078431397676468)
                        frame26.Style = Enum.FrameStyle.Custom
                        frame26.SizeConstraint = Enum.SizeConstraint.RelativeXY
                        frame26.Transparency = 0.8
                        frame26.BackgroundTransparency = 0.8
                        frame26.Position = UDim2.new(0.5, 0, 0, 2)
                        frame26.SelectionOrder = 0
                        frame26.BackgroundColor3 = Color3.new(1, 1, 1)
                        Instance.new("UICorner", frame26).CornerRadius = UDim.new(0, 10)
                        local imageLabel8 = Instance.new("ImageLabel", frame25)
                        imageLabel8.LayoutOrder = 0
                        imageLabel8.BorderMode = Enum.BorderMode.Outline
                        imageLabel8.SliceCenter = Rect.new(24, 24, 276, 276)
                        imageLabel8.Active = false
                        imageLabel8.Selectable = false
                        imageLabel8.Visible = true
                        imageLabel8.ImageTransparency = 0.65
                        imageLabel8.ImageColor3 = Color3.fromRGB(180, 0, 255)
                        imageLabel8.AnchorPoint = Vector2.new(0.5, 0.5)
                        imageLabel8.Image = "rbxassetid://5028857084"
                        imageLabel8.ImageRectOffset = Vector2.new(0, 0)
                        imageLabel8.ImageRectSize = Vector2.new(0, 0)
                        imageLabel8.ZIndex = 0
                        imageLabel8.AutomaticSize = Enum.AutomaticSize.None
                        imageLabel8.Size = UDim2.new(1, 14, 1, 14)
                        imageLabel8.Draggable = false
                        imageLabel8.ScaleType = Enum.ScaleType.Slice
                        imageLabel8.BorderColor3 = Color3.new(0.10588235408067703, 0.16470588743686676, 0.2078431397676468)
                        imageLabel8.SizeConstraint = Enum.SizeConstraint.RelativeXY
                        imageLabel8.SelectionOrder = 0
                        imageLabel8.ClipsDescendants = false
                        imageLabel8.Rotation = 0
                        imageLabel8.Transparency = 1
                        imageLabel8.BackgroundTransparency = 1
                        imageLabel8.Position = UDim2.new(0.5, 0, 0.5, 0)
                        imageLabel8.SliceScale = 1
                        imageLabel8.BorderSizePixel = 0
                        imageLabel8.BackgroundColor3 = Color3.new(0.6392157077789307, 0.6352941393852234, 0.6470588445663452)

                        textButton4.MouseEnter:Connect(function()
                            tween:Play()
                        end)

                        textButton4.MouseLeave:Connect(function()
                            tween2:Play()
                        end)

                        textButton4.MouseButton1Down:Connect(function()
                            local frame27 = Instance.new("Frame")
                            frame27.AnchorPoint = Vector2.new(0.5, 0.5)
                            frame27.Position = UDim2.new(0.5, 0, 0.5, 0)
                            frame27.Size = UDim2.new(0, 0, 0, 0)
                            frame27.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                            frame27.BackgroundTransparency = 0.6
                            frame27.ZIndex = 20
                            frame27.Parent = frame25
                            local uiCorner10 = Instance.new("UICorner")
                            uiCorner10.CornerRadius = uiCorner9.CornerRadius
                            uiCorner10.Parent = frame27

                            local tween3 = TweenService:Create(frame27, TweenInfo.new(0.35, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                                Size = UDim2.new(1, 0, 1, 0),
                                BackgroundTransparency = 1,
                                Position = UDim2.new(0.5, 0, 0.5, 0),
                            })

                            tween3:Play()

                            tween3.Completed:Connect(function()
                                frame27:Destroy()
                            end)

                            fn4()
                        end)

                        local tbl7 = {
                            name = title2,
                            type = "button",
                            value = title2,
                            text = title2,
                            Page_Name = text,
                            Section_Name = v7,
                            FunctionCreate = frame22,
                        }

                        tbl3.Options[title2] = tbl7

                        if type(getgenv().Options) == "table" then
                            getgenv().Options[title2] = tbl7
                        end

                        visibleon = function()
                            frame22.Visible = true
                        end

                        table.insert(tbl.listfunction[frame19], {Type = "Toggle", Name = title2, Call = visibleon})
                        table.insert(tbl2[frame19], frame22)
                        return frame22
                    end,
                }

                tbl7.CreateLabel = function(arg3, arg4)
                    local v10 = arg3

                    if type(arg3) == "table" and (arg3 == tbl7 or arg3.CreateLabel or arg3.CreateToggle) and arg4 ~= nil then
                        v10 = arg4
                    end

                    local text3 = type(v10) == "table"

                    if text3 then
                        local title2 = v10.Title
                        text3 = title2 or v10.Text or v10.Name or ""
                    end

                    if not text3 then
                        local v11 = tostring
                        local str5 = v10 or ""
                        text3 = v11(str5)
                    end

                    local flag6 = flag3

                    if not flag3 then
                        flag6 = type(v10) == "table"

                        if flag6 then
                            local isStatus = v10.IsStatus
                            flag6 = isStatus or v10.SmallFont
                        end
                    end

                    local font = type(v10) == "table" and v10.Font
                    local textSize = type(v10) == "table" and v10.TextSize
                    local frame22 = Instance.new("Frame")
                    local frame23 = Instance.new("Frame")
                    local uiCorner9 = Instance.new("UICorner")
                    local textLabel6 = Instance.new("TextLabel")
                    frame22.Name = "LabelFrame"
                    frame22.Parent = frame19
                    frame22.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
                    frame22.BackgroundTransparency = 1
                    frame22.Position = UDim2.new(0, 0, 0, 0)
                    frame22.Size = UDim2.new(1, 0, 0, 0)
                    frame22.AutomaticSize = Enum.AutomaticSize.Y
                    frame23.Name = "LabelBG"
                    frame23.Parent = frame22
                    frame23.AnchorPoint = Vector2.new(0.5, 0)
                    frame23.Position = UDim2.new(0.5, 0, 0, 0)
                    frame23.Size = UDim2.new(1, -10, 0, -10)
                    frame23.BackgroundColor3 = tbl.UIColor["Background 1 Color"]
                    frame23.AutomaticSize = Enum.AutomaticSize.Y
                    frame23.BackgroundTransparency = tbl.UIColor["Background 1 Transparency"]
                    uiCorner9.CornerRadius = UDim.new(0, 4)
                    uiCorner9.Name = "LabelCorner"
                    uiCorner9.Parent = frame23
                    textLabel6.Name = "TextColor"
                    textLabel6.Parent = frame23
                    textLabel6.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
                    textLabel6.BackgroundTransparency = 1
                    local udim26 = UDim2.new
                    local n11 = flag6 and 4 or 3
                    textLabel6.Position = udim26(0, 10, 0, n11)
                    local udim27 = UDim2.new
                    local n12 = flag6 and 4 or 10
                    textLabel6.Size = udim27(1, -20, 1, n12)
                    local gothamMedium = font or (flag6 and Enum.Font.GothamMedium or Enum.Font.GothamBlack)
                    textLabel6.Font = gothamMedium
                    textLabel6.Text = text3
                    local textSize2 = textSize or (flag6 and 13 or 14)
                    textLabel6.TextSize = textSize2
                    textLabel6.TextXAlignment = Enum.TextXAlignment.Left
                    textLabel6.AutomaticSize = Enum.AutomaticSize.Y
                    textLabel6.TextWrapped = true
                    textLabel6.TextColor3 = tbl.UIColor["Text Color"]
                    local textStrokeTransparency = flag6 and 0.8500000238418579 or tbl.UIColor["Text Stroke Transparency"]
                    textLabel6.TextStrokeTransparency = textStrokeTransparency
                    textLabel6.RichText = true

                    local tbl8 = {
                        SetText = function(arg5, arg6)
                            local flag7 = arg6 ~= nil and arg6 or arg5
                            local v11 = tostring
                            local str5 = flag7 or ""
                            textLabel6.Text = v11(str5)
                        end,
                    }

                    tbl8.Set = tbl8.SetText
                    tbl8.SetValue = tbl8.SetText

                    tbl8.GetText = function()
                        return textLabel6.Text
                    end

                    tbl8.SetColor = function(arg5, arg6)
                        local textColor3 = typeof(arg6) == "Color3" and arg6 or arg5

                        if typeof(textColor3) == "Color3" then
                            textLabel6.TextColor3 = textColor3
                        end
                    end

                    local tbl9 = {
                        name = text3,
                        type = "textlabel",
                        text = text3,
                        value = text3,
                        Page_Name = text,
                        Section_Name = v7,
                        FunctionCreate = tbl8,
                    }

                    tbl3.Options[text3] = tbl9

                    if type(getgenv().Options) == "table" then
                        getgenv().Options[text3] = tbl9
                    end

                    visibleon = function()
                        frame22.Visible = true
                    end

                    table.insert(tbl.listfunction[frame19], {Type = "Label", Name = text3, Call = visibleon})
                    table.insert(tbl2[frame19], frame22)
                    return tbl8
                end

                tbl7.AddLabel = tbl7.CreateLabel

                tbl7.CreateDropdown = function(arg3, arg4)
                    local str5 = tostring(arg3.Title)
                    local list = arg3.List
                    local search = arg3.Search
                    local flag6 = search or false
                    local selected = arg3.Selected
                    local flag7 = selected or false
                    local slider = arg3.Slider
                    local flag8 = slider or false
                    local sliderRelease = arg3.SliderRelease
                    local flag9 = sliderRelease or false
                    local default = arg3.Default
                    local fn4 = arg4 or function() end
                    local indexTable = arg3.IndexTable
                    local sortPairs = arg3.SortPairs or pairs
                    local frame22 = Instance.new("Frame")
                    local frame23 = Instance.new("Frame")
                    local uiCorner9 = Instance.new("UICorner")
                    local frame24 = Instance.new("Frame")
                    local uiCorner10 = Instance.new("UICorner")
                    local imageLabel8 = Instance.new("ImageLabel")
                    local textButton4 = Instance.new("TextButton")
                    local frame25 = Instance.new("Frame")
                    local scrollingFrame3 = Instance.new("ScrollingFrame")
                    local frame26 = Instance.new("Frame")
                    local uiListLayout5 = Instance.new("UIListLayout")
                    local textBox3

                    if flag6 then
                        textBox3 = Instance.new("TextBox")
                    else
                        textBox3 = Instance.new("TextLabel")
                    end

                    frame22.Name = str5 .. "DropdownFrame"
                    frame22.Parent = frame19
                    frame22.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
                    frame22.BackgroundTransparency = 1
                    frame22.Position = UDim2.new(0, 0, 0.473684222, 0)
                    frame22.Size = UDim2.new(1, 0, 0, 25)
                    frame23.Name = "Background1"
                    frame23.Parent = frame22
                    frame23.AnchorPoint = Vector2.new(0.5, 0.5)
                    frame23.Position = UDim2.new(0.5, 0, 0.5, 0)
                    frame23.Size = UDim2.new(1, -10, 1, 0)
                    frame23.ClipsDescendants = true
                    frame23.BackgroundColor3 = Color3.fromRGB(28, 28, 34)
                    frame23.BackgroundTransparency = tbl.UIColor["Background 1 Transparency"]
                    frame23.BackgroundTransparency = 0.25
                    uiCorner9.CornerRadius = UDim.new(0, 4)
                    uiCorner9.Name = "Dropdowncorner"
                    uiCorner9.Parent = frame23
                    frame24.Name = "Background2"
                    frame24.Parent = frame23
                    frame24.Size = UDim2.new(1, 0, 0, 25)
                    frame24.BackgroundColor3 = Color3.fromRGB(38, 38, 46)
                    frame24.BackgroundTransparency = tbl.UIColor["Background 1 Transparency"]
                    frame24.BackgroundTransparency = 0.25
                    uiCorner10.CornerRadius = UDim.new(0, 4)
                    uiCorner10.Parent = frame24
                    textBox3.Name = "TextColorPlaceholder"
                    textBox3.Parent = frame24
                    textBox3.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
                    textBox3.BackgroundTransparency = 1
                    textBox3.Position = UDim2.new(0, 10, 0, 0)
                    textBox3.Size = UDim2.new(1, -40, 1, 0)
                    local gothamMedium = flag3 and Enum.Font.GothamMedium or Enum.Font.GothamBlack
                    textBox3.Font = gothamMedium
                    textBox3.Text = ""
                    local textSize = flag3 and 13 or 14
                    textBox3.TextSize = textSize
                    textBox3.TextXAlignment = Enum.TextXAlignment.Left
                    textBox3.ClipsDescendants = true
                    local stringValue = Instance.new("StringValue", textBox3)
                    stringValue.Value = ""

                    if default and table.find(list, default) then
                        stringValue.Value = default
                    end

                    if flag7 then
                        if flag6 then
                            textBox3.PlaceholderColor3 = tbl.UIColor["Placeholder Text Color"]
                            local v10 = tostring
                            local str6 = default or ""
                            textBox3.PlaceholderText = str5 .. ": " .. v10(str6)
                        else
                            local v10 = tostring
                            local str6 = default or ""
                            textBox3.Text = str5 .. ": " .. v10(str6)
                        end
                    elseif flag6 then
                        textBox3.PlaceholderColor3 = tbl.UIColor["Placeholder Text Color"]
                        local v10 = tostring
                        local str6 = default or ""
                        local placeholderText = str5 .. ": " .. v10(str6)
                        textBox3.PlaceholderText = placeholderText
                    else
                        local v10 = tostring
                        local str6 = default or ""
                        textBox3.Text = str5 .. ": " .. v10(str6)
                    end

                    textBox3.TextColor3 = tbl.UIColor["Text Color"]
                    imageLabel8.Name = "ImgDrop"
                    imageLabel8.Parent = frame24
                    imageLabel8.AnchorPoint = Vector2.new(1, 0.5)
                    imageLabel8.BackgroundTransparency = 1
                    imageLabel8.BorderColor3 = Color3.fromRGB(27, 42, 53)
                    imageLabel8.Position = UDim2.new(1, -6, 0.5, 0)
                    imageLabel8.Size = UDim2.new(0, 15, 0, 15)
                    imageLabel8.Image = "rbxassetid://6954383209"
                    imageLabel8.ImageColor3 = tbl.UIColor["Dropdown Icon Color"]
                    textButton4.Name = "DropdownButton"
                    textButton4.Parent = frame24
                    textButton4.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
                    textButton4.BackgroundTransparency = 1
                    local udim26 = flag6 and UDim2.new(0, 30, 0, 30) or UDim2.new(1, 0, 1, 0)
                    textButton4.Size = udim26
                    local udim27 = flag6 and UDim2.new(1, -35, 0, 0) or UDim2.new(0, 0, 0, 0)
                    textButton4.Position = udim27
                    textButton4.Font = Enum.Font.GothamBold
                    textButton4.Text = ""
                    textButton4.TextColor3 = Color3.fromRGB(230, 230, 230)
                    textButton4.TextSize = 14
                    frame25.Name = "Dropdownlisttt"
                    frame25.Parent = frame23
                    frame25.BackgroundTransparency = 1
                    frame25.BorderSizePixel = 0
                    frame25.Position = UDim2.new(0, 0, 0, 25)
                    frame25.Size = UDim2.new(1, 0, 0, 25)
                    frame25.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
                    scrollingFrame3.Name = "DropdownScroll"
                    scrollingFrame3.Parent = frame25
                    scrollingFrame3.Active = true
                    scrollingFrame3.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
                    scrollingFrame3.BackgroundTransparency = 1
                    scrollingFrame3.BorderSizePixel = 0
                    scrollingFrame3.Size = UDim2.new(1, 0, 1, 0)
                    scrollingFrame3.BottomImage = "rbxasset://textures/ui/Scroll/scroll-middle.png"
                    scrollingFrame3.CanvasSize = UDim2.new(0, 0, 0, 0)
                    scrollingFrame3.ScrollBarThickness = 5
                    scrollingFrame3.TopImage = "rbxasset://textures/ui/Scroll/scroll-middle.png"
                    scrollingFrame3.ScrollingEnabled = true
                    scrollingFrame3.VerticalScrollBarInset = Enum.ScrollBarInset.Always
                    frame26.Name = "ScrollContainer"
                    frame26.Parent = scrollingFrame3
                    frame26.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
                    frame26.BackgroundTransparency = 1
                    frame26.Position = UDim2.new(0, 5, 0, 5)
                    frame26.Size = UDim2.new(1, -15, 1, -5)
                    uiListLayout5.Name = "ScrollContainerList"
                    uiListLayout5.Parent = frame26
                    uiListLayout5.SortOrder = Enum.SortOrder.LayoutOrder
                    uiListLayout5.Padding = UDim.new(0, 5)

                    uiListLayout5:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
                        scrollingFrame3.CanvasSize = UDim2.new(0, 0, 0, 10 + uiListLayout5.AbsoluteContentSize.Y + 5)
                    end)

                    local flag10 = false
                    local tbl8 = {}
                    local tbl9 = {}

                    local function fn5()
                        for k in sortPairs(tbl8) do
                            tbl8[k] = nil
                        end

                        for k, child in sortPairs(frame26:GetChildren()) do
                            if not child:IsA("UIListLayout") and not child:IsA("UIPadding") and not child:IsA("UIGridLayout") then
                                child.Visible = false
                            end
                        end

                        local v10 = string.lower(textBox3.Text)
                        textBox3.Text = v10
                    end

                    local function fn6()
                        for k, v10 in sortPairs(tbl9) do
                            if string.find(v10, textBox3.Text) then
                                table.insert(tbl8, v10)
                            end
                        end

                        local v10, v11, v12 = sortPairs(frame26:GetChildren())
                        local v13 = v12
                        local v14 = v10
                        local v15 = v11

                        while true do
                            local v16, v17 = v14(v15, v13)
                            if v16 == nil then
                                break
                            end

                            for k, v18 in sortPairs(tbl8) do
                                if v18 == v17.Name then
                                    v17.Visible = true
                                end
                            end

                            v13 = v16
                        end
                    end

                    local function fn7()
                        local v10 = next
                        local children, v11 = frame26:GetChildren()

                        for k, v12 in v10, children, v11 do
                            if v12:IsA("Frame") then
                                v12:Destroy()
                            end
                        end
                    end

                    local tbl10 = list
                    local fn8

                    fn8 = function(arg5)
                        local v10 = arg5 or sortPairs
                        sortPairs = v10
                        fn7()
                        tbl9 = {}

                        for k, v11 in sortPairs(tbl10) do
                            if flag7 then
                                table.insert(tbl9, string.lower(k))
                            elseif flag8 then
                                table.insert(tbl9, string.lower(v11.Title))
                            else
                                table.insert(tbl9, string.lower(v11))
                            end
                        end

                        if flag7 then
                            local v11, v12, v13 = sortPairs(tbl10)
                            local v14 = v13

                            while true do
                                local v15, v16 = v11(v12, v14)
                                if v15 == nil then
                                    break
                                end
                                local v17 = v16
                                v14 = v15
                                local frame27 = Instance.new("Frame")
                                local uiCorner11 = Instance.new("UICorner")
                                local frame28 = Instance.new("Frame")
                                local uiCorner12 = Instance.new("UICorner")
                                local textLabel6 = Instance.new("TextLabel")
                                local imageButton2 = Instance.new("ImageButton")
                                local textButton5 = Instance.new("TextButton")
                                frame27.Name = string.lower(v15)
                                frame27.Parent = frame26
                                frame27.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
                                frame27.BackgroundTransparency = 1
                                frame27.BorderColor3 = Color3.fromRGB(27, 42, 53)
                                frame27.LayoutOrder = 1
                                frame27.Position = UDim2.new(0, 0, 0.208333328, 0)
                                frame27.Size = UDim2.new(1, 0, 0, 25)
                                uiCorner11.CornerRadius = UDim.new(0, 4)
                                uiCorner11.Name = "SampleItemCorner"
                                uiCorner11.Parent = frame27
                                frame28.Name = "SampleItemBG"
                                frame28.Parent = frame27
                                frame28.AnchorPoint = Vector2.new(0.5, 0.5)
                                local dropdownSelectedCheckColor = v17 and tbl.UIColor["Dropdown Selected Check Color"] or Color3.fromRGB(255, 255, 255)
                                frame28.BackgroundColor3 = dropdownSelectedCheckColor
                                local backgroundTransparency = v17 and 0.5 or 1
                                frame28.BackgroundTransparency = backgroundTransparency
                                frame28.BorderColor3 = Color3.fromRGB(27, 42, 53)
                                frame28.Position = UDim2.new(0.5, 0, 0.5, 0)
                                frame28.Size = UDim2.new(1, 0, 1, 0)
                                uiCorner12.CornerRadius = UDim.new(0, 4)
                                uiCorner12.Name = "SampleItemBGCorner"
                                uiCorner12.Parent = frame28
                                textLabel6.Name = "SampleItemTitle"
                                textLabel6.Parent = frame28
                                textLabel6.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                                textLabel6.BackgroundTransparency = 1
                                textLabel6.BorderColor3 = Color3.fromRGB(27, 42, 53)
                                textLabel6.Position = UDim2.new(0, 10, 0, 0)
                                textLabel6.Size = UDim2.new(1, -40, 0, 25)
                                textLabel6.Font = Enum.Font.GothamBlack
                                textLabel6.Text = v15
                                textLabel6.TextColor3 = Color3.fromRGB(255, 255, 255)
                                textLabel6.TextSize = 14
                                textLabel6.TextStrokeTransparency = 0.5
                                textLabel6.TextXAlignment = Enum.TextXAlignment.Left
                                imageButton2.Name = "SampleItemCheck"
                                imageButton2.Parent = frame28
                                imageButton2.AnchorPoint = Vector2.new(1, 0.5)
                                imageButton2.BackgroundTransparency = 1
                                imageButton2.Position = UDim2.new(1, 0, 0.5, 0)
                                imageButton2.Size = UDim2.new(0, 25, 0, 25)
                                imageButton2.ZIndex = 2
                                imageButton2.Image = "rbxassetid://3926305904"
                                imageButton2.ImageColor3 = tbl.UIColor["Dropdown Selected Check Color"]
                                imageButton2.ImageRectOffset = Vector2.new(312, 4)
                                imageButton2.ImageRectSize = Vector2.new(24, 24)
                                local imageTransparency = v17 and 0 or 1
                                imageButton2.ImageTransparency = imageTransparency
                                textButton5.Name = "SampleItemButton"
                                textButton5.Parent = frame27
                                textButton5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                                textButton5.BackgroundTransparency = 1
                                textButton5.BorderColor3 = Color3.fromRGB(0, 0, 0)
                                textButton5.BorderSizePixel = 0
                                textButton5.Size = UDim2.new(1, 0, 1, 0)
                                textButton5.Font = Enum.Font.SourceSans
                                textButton5.TextColor3 = tbl.UIColor["Text Color"]
                                textButton5.TextSize = 14
                                textButton5.TextTransparency = 1

                                textButton5.MouseEnter:Connect(function()
                                    if v17 then
                                        return
                                    end
                                    TweenService:Create(frame28, TweenInfo.new(tbl.UIColor["Tween Animation 1 Speed"]), {BackgroundColor3 = Color3.fromRGB(255, 255, 255)}):Play()
                                    TweenService:Create(frame28, TweenInfo.new(tbl.UIColor["Tween Animation 1 Speed"]), {BackgroundTransparency = 0.7}):Play()
                                end)

                                textButton5.MouseLeave:Connect(function()
                                    if v17 then
                                        return
                                    end
                                    TweenService:Create(frame28, TweenInfo.new(tbl.UIColor["Tween Animation 1 Speed"]), {BackgroundColor3 = Color3.fromRGB(255, 255, 255)}):Play()
                                    TweenService:Create(frame28, TweenInfo.new(tbl.UIColor["Tween Animation 1 Speed"]), {BackgroundTransparency = 1}):Play()
                                end)

                                textButton5.MouseButton1Click:Connect(function()
                                    local flag11

                                    if v17 then
                                        flag11 = false
                                    else
                                        flag11 = true
                                    end

                                    v17 = flag11
                                    local create = TweenService.Create
                                    local tweenInfo = TweenInfo.new(tbl.UIColor["Tween Animation 1 Speed"])
                                    local tbl11 = {}
                                    local v18 = v17
                                    local imageTransparency2 = v18 and 0 or 1
                                    tbl11.ImageTransparency = imageTransparency2
                                    create(TweenService, imageButton2, tweenInfo, tbl11):Play()
                                    local create2 = TweenService.Create
                                    local tweenInfo2 = TweenInfo.new(tbl.UIColor["Tween Animation 1 Speed"])
                                    local tbl12 = {}
                                    local v19 = v17
                                    local dropdownSelectedCheckColor2 = v19 and tbl.UIColor["Dropdown Selected Check Color"] or Color3.fromRGB(255, 255, 255)
                                    tbl12.BackgroundColor3 = dropdownSelectedCheckColor2
                                    create2(TweenService, frame28, tweenInfo2, tbl12):Play()
                                    local create3 = TweenService.Create
                                    local tweenInfo3 = TweenInfo.new(tbl.UIColor["Tween Animation 1 Speed"])
                                    local tbl13 = {}
                                    local v20 = v17
                                    local backgroundTransparency2 = v20 and 0.5 or 1
                                    tbl13.BackgroundTransparency = backgroundTransparency2
                                    create3(TweenService, frame28, tweenInfo3, tbl13):Play()

                                    if fn4 then
                                        fn4(v15, v17)
                                        tbl10[v15] = v17
                                    end

                                    if flag6 then
                                        textBox3.PlaceholderText = str5 .. ": "
                                    else
                                        textBox3.Text = str5 .. ": "
                                    end
                                end)
                            end
                        elseif flag8 then
                            for k, v11 in sortPairs(tbl10) do
                                local str6 = tostring(v11.Title)
                                local text3 = str6 or ""
                                local num = tonumber(v11.Min)
                                local n11 = num or 0
                                local num2 = tonumber(v11.Max)
                                local n12 = num2 or 100
                                local precise = v11.Precise
                                local flag11 = precise or false
                                local num3 = tonumber(v11.Default)
                                local v12 = num3 or n11
                                local frame27 = Instance.new("Frame")
                                local uiCorner11 = Instance.new("UICorner")
                                local frame28 = Instance.new("Frame")
                                local uiCorner12 = Instance.new("UICorner")
                                local textLabel6 = Instance.new("TextLabel")
                                local frame29 = Instance.new("Frame")
                                local textButton5 = Instance.new("TextButton")
                                local uiCorner13 = Instance.new("UICorner")
                                local frame30 = Instance.new("Frame")
                                local uiCorner14 = Instance.new("UICorner")
                                local frame31 = Instance.new("Frame")
                                local uiCorner15 = Instance.new("UICorner")
                                local textBox4 = Instance.new("TextBox")
                                frame27.Name = string.lower(v11.Title)
                                frame27.Parent = frame26
                                frame27.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
                                frame27.BackgroundTransparency = 1
                                frame27.Position = UDim2.new(0, 0, 0.208333328, 0)
                                frame27.Size = UDim2.new(1, 0, 0, 50)
                                uiCorner11.CornerRadius = UDim.new(0, 4)
                                uiCorner11.Name = "SliderCorner"
                                uiCorner11.Parent = frame27
                                frame28.Name = "Background1"
                                frame28.Parent = frame27
                                frame28.AnchorPoint = Vector2.new(0.5, 0.5)
                                frame28.Position = UDim2.new(0.5, 0, 0.5, 0)
                                frame28.Size = UDim2.new(1, -10, 1, 0)
                                frame28.BackgroundColor3 = tbl.UIColor["Background 1 Color"]
                                frame28.BackgroundTransparency = tbl.UIColor["Background 1 Transparency"]
                                uiCorner12.CornerRadius = UDim.new(0, 4)
                                uiCorner12.Name = "SliderBGCorner"
                                uiCorner12.Parent = frame28
                                textLabel6.Name = "TextColor"
                                textLabel6.Parent = frame28
                                textLabel6.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
                                textLabel6.BackgroundTransparency = 1
                                textLabel6.Position = UDim2.new(0, 10, 0, 0)
                                textLabel6.Size = UDim2.new(1, -10, 0, 25)
                                local gothamMedium2 = flag3 and Enum.Font.GothamMedium or Enum.Font.GothamBlack
                                textLabel6.Font = gothamMedium2
                                textLabel6.Text = text3
                                local textSize2 = flag3 and 13 or 14
                                textLabel6.TextSize = textSize2
                                textLabel6.TextXAlignment = Enum.TextXAlignment.Left
                                textLabel6.TextColor3 = tbl.UIColor["Text Color"]
                                frame29.Name = "SliderBar"
                                frame29.Parent = frame27
                                frame29.AnchorPoint = Vector2.new(0.5, 0.5)
                                frame29.Position = UDim2.new(0.5, 0, 0.5, 14)
                                frame29.Size = UDim2.new(1, -20, 0, 6)
                                frame29.BackgroundColor3 = tbl.UIColor["Background 2 Color"]
                                textButton5.Name = "SliderButton "
                                textButton5.Parent = frame29
                                textButton5.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
                                textButton5.BackgroundTransparency = 1
                                textButton5.Size = UDim2.new(1, 0, 1, 0)
                                textButton5.Font = Enum.Font.GothamBold
                                textButton5.Text = ""
                                textButton5.TextColor3 = Color3.fromRGB(230, 230, 230)
                                textButton5.TextSize = 14
                                uiCorner13.CornerRadius = UDim.new(1, 0)
                                uiCorner13.Name = "SliderBarCorner"
                                uiCorner13.Parent = frame29
                                frame30.Name = "Bar"
                                frame30.BorderSizePixel = 0
                                frame30.Parent = frame29
                                frame30.Size = UDim2.new(0, 0, 1, 0)
                                frame30.BackgroundColor3 = tbl.UIColor["Slider Line Color"]
                                uiCorner14.CornerRadius = UDim.new(1, 0)
                                uiCorner14.Name = "BarCorner"
                                uiCorner14.Parent = frame30
                                frame31.Name = "Background2"
                                frame31.Parent = frame27
                                frame31.AnchorPoint = Vector2.new(1, 0)
                                frame31.Position = UDim2.new(1, -10, 0, 5)
                                frame31.Size = UDim2.new(0, 150, 0, 25)
                                frame31.BackgroundColor3 = tbl.UIColor["Background 2 Color"]
                                uiCorner15.CornerRadius = UDim.new(0, 4)
                                uiCorner15.Name = "Sliderbox"
                                uiCorner15.Parent = frame31
                                textBox4.Name = "TextColor"
                                textBox4.Parent = frame31
                                textBox4.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
                                textBox4.BackgroundTransparency = 1
                                textBox4.Size = UDim2.new(1, 0, 1, 0)
                                textBox4.Font = Enum.Font.GothamBold
                                textBox4.Text = ""
                                textBox4.TextSize = 14
                                textBox4.TextColor3 = tbl.UIColor["Text Color"]

                                textButton5.MouseEnter:Connect(function()
                                    TweenService:Create(frame30, TweenInfo.new(tbl.UIColor["Tween Animation 2 Speed"]), {BackgroundColor3 = tbl.UIColor["Slider Highlight Color"]}):Play()
                                end)

                                textButton5.MouseLeave:Connect(function()
                                    TweenService:Create(frame30, TweenInfo.new(tbl.UIColor["Tween Animation 2 Speed"]), {BackgroundColor3 = tbl.UIColor["Slider Line Color"]}):Play()
                                end)

                                local function fn9(text4)
                                    textBox4.Text = text4
                                    tbl10[k].Default = text4
                                    fn4(k, v11)
                                end

                                if v12 then
                                    if v12 <= n11 then
                                        v12 = n11
                                    elseif n12 <= v12 then
                                        v12 = n12
                                    end

                                    frame30.Size = UDim2.new(1 - (n12 - v12) / (n12 - n11), 0, 0, 6)
                                    fn9(v12)
                                end

                                if flag9 then
                                    local flag12 = false
                                    local v13 = nil
                                    local n13 = 0

                                    textButton5.InputBegan:Connect(function(input)
                                        if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
                                            n13 = tick()

                                            input.Changed:Connect(function()
                                                if input.UserInputState == Enum.UserInputState.End then
                                                    flag12 = false
                                                    n13 = 0
                                                end
                                            end)
                                        end
                                    end)

                                    textButton5.InputEnded:Connect(function(input)
                                        if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
                                            flag12 = false
                                            n13 = 0
                                        end
                                    end)

                                    textButton5.InputChanged:Connect(function(input)
                                        if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
                                            v13 = input
                                        end
                                    end)

                                    RunService.RenderStepped:Connect(function()
                                        if n13 > 0 and tick() - n13 >= 0 and not flag12 then
                                            flag12 = true
                                        end

                                        if flag12 and v13 then
                                            local n14 = flag11 and tonumber(string.format("%.1f", (tonumber(n12) - tonumber(n11)) / 365 * frame30.AbsoluteSize.X + tonumber(n11))) or math.floor((tonumber(n12) - tonumber(n11)) / 365 * frame30.AbsoluteSize.X + tonumber(n11))

                                            pcall(function()
                                                fn9(n14)
                                            end)

                                            frame30.Size = UDim2.new(0, math.clamp(v13.Position.X - frame30.AbsolutePosition.X, 0, 365), 0, 6)
                                        end
                                    end)
                                else
                                    local flag12 = false
                                    local v13 = nil
                                    local n13 = 0

                                    textButton5.InputBegan:Connect(function(input)
                                        if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
                                            n13 = tick()

                                            input.Changed:Connect(function()
                                                if input.UserInputState == Enum.UserInputState.End then
                                                    flag12 = false
                                                    n13 = 0
                                                end
                                            end)
                                        end
                                    end)

                                    textButton5.InputEnded:Connect(function(input)
                                        if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
                                            flag12 = false
                                            n13 = 0
                                        end
                                    end)

                                    textButton5.InputChanged:Connect(function(input)
                                        if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
                                            v13 = input
                                        end
                                    end)

                                    RunService.RenderStepped:Connect(function()
                                        if n13 > 0 and tick() - n13 >= 0 and not flag12 then
                                            flag12 = true
                                        end

                                        if flag12 and v13 then
                                            local n14 = flag11 and tonumber(string.format("%.1f", (tonumber(n12) - tonumber(n11)) / 365 * frame30.AbsoluteSize.X + tonumber(n11))) or math.floor((tonumber(n12) - tonumber(n11)) / 365 * frame30.AbsoluteSize.X + tonumber(n11))

                                            pcall(function()
                                                fn9(n14)
                                            end)

                                            frame30.Size = UDim2.new(0, math.clamp(v13.Position.X - frame30.AbsolutePosition.X, 0, 365), 0, 6)
                                        end
                                    end)
                                end

                                local function fn10(arg6)
                                    if tonumber(arg6) <= n11 then
                                        frame30.Size = UDim2.new(0, 0, 0, 6)
                                        fn9(n11)
                                    elseif n12 <= tonumber(arg6) then
                                        frame30.Size = UDim2.new(0, n12 / n12 * 365, 0, 6)
                                        fn9(n12)
                                    else
                                        frame30.Size = UDim2.new(1 - (n12 - arg6) / (n12 - n11), 0, 0, 6)
                                        fn9(arg6)
                                    end
                                end

                                textBox4.FocusLost:Connect(function()
                                    fn10(textBox4.Text)
                                end)
                            end
                        else
                            for k, v11 in sortPairs(tbl10) do
                                if typeof(v11) == "string" then
                                    local frame27 = Instance.new("Frame")
                                    local uiCorner11 = Instance.new("UICorner")
                                    local frame28 = Instance.new("Frame")
                                    local uiCorner12 = Instance.new("UICorner")
                                    local textLabel6 = Instance.new("TextLabel")
                                    local imageButton2 = Instance.new("ImageButton")
                                    local textButton5 = Instance.new("TextButton")
                                    frame27.Name = string.lower(v11)
                                    frame27.Parent = frame26
                                    frame27.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
                                    frame27.BackgroundTransparency = 1
                                    frame27.BorderColor3 = Color3.fromRGB(27, 42, 53)
                                    frame27.LayoutOrder = 1
                                    frame27.Position = UDim2.new(0, 0, 0.208333328, 0)
                                    frame27.Size = UDim2.new(1, 0, 0, 25)
                                    uiCorner11.CornerRadius = UDim.new(0, 4)
                                    uiCorner11.Name = "SampleItemCorner"
                                    uiCorner11.Parent = frame27
                                    frame28.Name = "SampleItemBG"
                                    frame28.Parent = frame27
                                    frame28.AnchorPoint = Vector2.new(0.5, 0.5)
                                    frame28.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                                    frame28.BackgroundTransparency = 1
                                    frame28.BorderColor3 = Color3.fromRGB(27, 42, 53)
                                    frame28.Position = UDim2.new(0.5, 0, 0.5, 0)
                                    frame28.Size = UDim2.new(1, 0, 1, 0)
                                    uiCorner12.CornerRadius = UDim.new(0, 4)
                                    uiCorner12.Name = "SampleItemBGCorner"
                                    uiCorner12.Parent = frame28
                                    textLabel6.Name = "SampleItemTitle"
                                    textLabel6.Parent = frame28
                                    textLabel6.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                                    textLabel6.BackgroundTransparency = 1
                                    textLabel6.BorderColor3 = Color3.fromRGB(27, 42, 53)
                                    textLabel6.Position = UDim2.new(0, 10, 0, 0)
                                    textLabel6.Size = UDim2.new(1, -40, 0, 25)
                                    textLabel6.Font = Enum.Font.GothamBlack
                                    textLabel6.Text = v11
                                    textLabel6.TextColor3 = Color3.fromRGB(255, 255, 255)
                                    textLabel6.TextSize = 14
                                    textLabel6.TextStrokeTransparency = 0.5
                                    textLabel6.TextXAlignment = Enum.TextXAlignment.Left
                                    imageButton2.Name = "SampleItemCheck"
                                    imageButton2.Parent = frame28
                                    imageButton2.AnchorPoint = Vector2.new(1, 0.5)
                                    imageButton2.BackgroundTransparency = 1
                                    imageButton2.Position = UDim2.new(1, 0, 0.5, 0)
                                    imageButton2.Size = UDim2.new(0, 25, 0, 25)
                                    imageButton2.ZIndex = 2
                                    imageButton2.Image = "rbxassetid://3926305904"
                                    imageButton2.ImageColor3 = tbl.UIColor["Dropdown Selected Check Color"]
                                    imageButton2.ImageRectOffset = Vector2.new(312, 4)
                                    imageButton2.ImageRectSize = Vector2.new(24, 24)
                                    imageButton2.ImageTransparency = 1
                                    textButton5.Name = "SampleItemButton"
                                    textButton5.Parent = frame27
                                    textButton5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                                    textButton5.BackgroundTransparency = 1
                                    textButton5.BorderColor3 = Color3.fromRGB(0, 0, 0)
                                    textButton5.BorderSizePixel = 0
                                    textButton5.Size = UDim2.new(1, 0, 1, 0)
                                    textButton5.Font = Enum.Font.SourceSans
                                    textButton5.TextColor3 = tbl.UIColor["Text Color"]
                                    textButton5.TextSize = 14
                                    textButton5.TextTransparency = 1

                                    textButton5.MouseEnter:Connect(function()
                                        if stringValue.Value == v11 then
                                            return
                                        end
                                        TweenService:Create(frame28, TweenInfo.new(tbl.UIColor["Tween Animation 1 Speed"]), {BackgroundColor3 = Color3.fromRGB(255, 255, 255)}):Play()
                                        TweenService:Create(frame28, TweenInfo.new(tbl.UIColor["Tween Animation 1 Speed"]), {BackgroundTransparency = 0.7}):Play()
                                    end)

                                    textButton5.MouseLeave:Connect(function()
                                        if stringValue.Value == v11 then
                                            return
                                        end
                                        TweenService:Create(frame28, TweenInfo.new(tbl.UIColor["Tween Animation 1 Speed"]), {BackgroundColor3 = Color3.fromRGB(255, 255, 255)}):Play()
                                        TweenService:Create(frame28, TweenInfo.new(tbl.UIColor["Tween Animation 1 Speed"]), {BackgroundTransparency = 1}):Play()
                                    end)

                                    textButton5.MouseButton1Click:Connect(function()
                                        if flag6 then
                                            local str6 = str5 .. ": " .. v11
                                            local placeholderText = str6 or ""
                                            textBox3.PlaceholderText = placeholderText
                                            stringValue.Value = v11
                                        else
                                            local str6 = str5 .. ": " .. v11
                                            local text3 = str6 or ""
                                            textBox3.Text = text3
                                            stringValue.Value = v11
                                        end

                                        TweenService:Create(frame28, TweenInfo.new(tbl.UIColor["Tween Animation 1 Speed"]), {
                                            BackgroundColor3 = tbl.UIColor["Dropdown Selected Check Color"],
                                        }):Play()

                                        TweenService:Create(frame28, TweenInfo.new(tbl.UIColor["Tween Animation 1 Speed"]), {BackgroundTransparency = 0.5}):Play()

                                        if fn4 then
                                            fn4(v11)
                                        end

                                        if flag6 then
                                            textBox3.Text = ""
                                        end

                                        fn8()
                                    end)

                                    if stringValue.Value == v11 then
                                        frame28.BackgroundTransparency = 0.5
                                        frame28.BackgroundColor3 = tbl.UIColor["Dropdown Selected Check Color"]
                                        frame27.LayoutOrder = 0
                                    end
                                end
                            end
                        end
                    end

                    if flag6 then
                        textBox3.Changed:Connect(function()
                            fn5()
                            fn6()
                        end)
                    end

                    if typeof(default) == "table" then
                        if flag8 then
                            textBox3.Text = ""
                            textBox3.PlaceholderText = str5 .. ": "
                        elseif flag7 then
                            if flag6 then
                                textBox3.PlaceholderText = str5 .. ": "
                            else
                                textBox3.Text = str5 .. ": "
                            end
                        end
                    else
                        fn4(default)

                        if flag6 then
                            local v10 = tostring
                            local str6 = default or ""
                            textBox3.PlaceholderText = str5 .. ": " .. v10(str6)
                        else
                            local v10 = tostring
                            local str6 = default or ""
                            textBox3.Text = str5 .. ": " .. v10(str6)
                        end
                    end

                    textButton4.MouseButton1Click:Connect(function()
                        fn8()
                        local flag11

                        if flag10 then
                            flag11 = false
                        else
                            flag11 = true
                        end

                        flag10 = flag11
                        local v10 = flag10
                        local udim28 = v10 and UDim2.new(1, 0, 0, 170) or UDim2.new(1, 0, 0, 0)
                        local v11 = flag10
                        local udim29 = v11 and UDim2.new(1, 0, 0, 200) or UDim2.new(1, 0, 0, 25)
                        local v12 = flag10
                        local n11 = v12 and 90 or 0
                        TweenService:Create(frame25, TweenInfo.new(tbl.UIColor["Tween Animation 2 Speed"]), {Size = udim28}):Play()
                        TweenService:Create(frame22, TweenInfo.new(tbl.UIColor["Tween Animation 2 Speed"]), {Size = udim29}):Play()
                        TweenService:Create(imageLabel8, TweenInfo.new(tbl.UIColor["Tween Animation 2 Speed"]), {Rotation = n11}):Play()
                    end)

                    local functionCreate = {
                        rf = fn8,
                        ClearText = function(arg5, arg6)
                            if flag7 then
                                local str6 = arg6 or ""
                                textBox3.Text = str5 .. ": " .. str6
                            elseif flag6 then
                                local str6 = arg6 or ""
                                textBox3.PlaceholderText = str5 .. ": " .. str6
                            else
                                local str6 = arg6 or ""
                                textBox3.Text = str5 .. ": " .. str6
                            end
                        end,
                        GetNewList = function(arg5, arg6)
                            stringValue.Value = ""
                            flag10 = false
                            local udim28 = UDim2.new(1, 0, 0, 0)
                            local v10 = flag10
                            local udim29 = v10 and UDim2.new(1, 0, 0, 200) or UDim2.new(1, 0, 0, 25)
                            local v11 = flag10
                            local n11 = v11 and 90 or 0
                            TweenService:Create(frame25, TweenInfo.new(tbl.UIColor["Tween Animation 2 Speed"]), {Size = udim28}):Play()
                            TweenService:Create(frame22, TweenInfo.new(tbl.UIColor["Tween Animation 2 Speed"]), {Size = udim29}):Play()
                            TweenService:Create(imageLabel8, TweenInfo.new(tbl.UIColor["Tween Animation 2 Speed"]), {Rotation = n11}):Play()
                            tbl10 = {}
                            tbl10 = arg6
                            fn8()

                            if flag6 then
                                textBox3.PlaceholderText = str5 .. ": "
                            else
                                textBox3.Text = str5 .. ": "
                            end
                        end,
                        GetValue = function(arg5)
                            if not flag7 then
                                return stringValue.Value
                            end
                            local tbl11 = {}

                            if type(tbl10) == "table" then
                                for k, v10 in sortPairs(tbl10) do
                                    if v10 == true then
                                        table.insert(tbl11, k)
                                    end
                                end
                            end

                            return tbl11
                        end,
                    }

                    functionCreate.GetValue = functionCreate.GetValue

                    functionCreate.SetValue = function(arg5)
                        if not flag7 then
                            stringValue.Value = tostring(arg5)

                            if flag6 then
                                local placeholderText = str5 .. ": " .. tostring(arg5)
                                textBox3.PlaceholderText = placeholderText
                            else
                                local text3 = str5 .. ": " .. tostring(arg5)
                                textBox3.Text = text3
                            end

                            fn4(arg5)
                        end
                    end

                    local tbl11 = {name = str5}
                    local type_ = flag7 and "priority_dropdown" or "dropdown"
                    tbl11.type = type_
                    local value = default or list and list[1] or ""
                    tbl11.value = value
                    tbl11.list = list
                    tbl11.Page_Name = text
                    tbl11.Section_Name = v7
                    tbl11.FunctionCreate = functionCreate
                    tbl3.Options[str5] = tbl11

                    if type(getgenv().Options) == "table" then
                        getgenv().Options[str5] = tbl11
                    end

                    table.insert(tbl.listfunction[frame19], {
                        Type = "Dropdown",
                        Name = str5,
                        Call = function()
                            frame22.Visible = true
                        end,
                    })

                    table.insert(tbl2[frame19], frame22)
                    return functionCreate
                end

                tbl7.CreateBind = function(arg3, arg4)
                    local str5 = tostring(arg3.Title)
                    local text3 = str5 or ""
                    table.insert(tbl.listfunction[frame19], {Type = "Bind", Name = text3})
                    local key = arg3.Key
                    local default = arg3.Default or arg3.Key
                    local str6 = tostring(default):match("UserInputType") and "UserInputType" or "KeyCode"
                    local fn4 = arg4 or function() end
                    local str7 = tostring(key):gsub("Enum.UserInputType.", "")
                    tostring(str7):gsub("Enum.KeyCode.", "")
                    local frame22 = Instance.new("Frame")
                    local uiCorner9 = Instance.new("UICorner")
                    local frame23 = Instance.new("Frame")
                    local uiCorner10 = Instance.new("UICorner")
                    local textLabel6 = Instance.new("TextLabel")
                    Instance.new("TextButton")
                    local frame24 = Instance.new("Frame")
                    local uiCorner11 = Instance.new("UICorner")
                    local textButton4 = Instance.new("TextButton")
                    frame22.Name = text3 .. "bguvl"
                    frame22.Parent = frame19
                    frame22.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
                    frame22.BackgroundTransparency = 1
                    frame22.Position = UDim2.new(0, 0, 0.208333328, 0)
                    frame22.Size = UDim2.new(1, 0, 0, 35)
                    uiCorner9.CornerRadius = UDim.new(0, 4)
                    uiCorner9.Name = "BindCorner"
                    uiCorner9.Parent = frame22
                    frame23.Name = "Background1"
                    frame23.Parent = frame22
                    frame23.AnchorPoint = Vector2.new(0.5, 0.5)
                    frame23.Position = UDim2.new(0.5, 0, 0.5, 0)
                    frame23.Size = UDim2.new(1, -10, 1, 0)
                    frame23.BackgroundColor3 = tbl.UIColor["Background 1 Color"]
                    frame23.BackgroundTransparency = tbl.UIColor["Background 1 Transparency"]
                    uiCorner10.CornerRadius = UDim.new(0, 4)
                    uiCorner10.Name = "ButtonCorner"
                    uiCorner10.Parent = frame23
                    textLabel6.Name = "TextColor"
                    textLabel6.Parent = frame23
                    textLabel6.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
                    textLabel6.BackgroundTransparency = 1
                    textLabel6.Position = UDim2.new(0, 10, 0, 0)
                    textLabel6.Size = UDim2.new(1, -10, 1, 0)
                    local gothamMedium = flag3 and Enum.Font.GothamMedium or Enum.Font.GothamBlack
                    textLabel6.Font = gothamMedium
                    textLabel6.Text = text3
                    local textSize = flag3 and 13 or 14
                    textLabel6.TextSize = textSize
                    textLabel6.TextXAlignment = Enum.TextXAlignment.Left
                    textLabel6.TextColor3 = tbl.UIColor["Text Color"]
                    frame24.Name = "Background2"
                    frame24.Parent = frame23
                    frame24.AnchorPoint = Vector2.new(1, 0.5)
                    frame24.Position = UDim2.new(1, -5, 0.5, 0)
                    frame24.Size = UDim2.new(0, 150, 0, 25)
                    frame24.BackgroundColor3 = tbl.UIColor["Background 2 Color"]
                    uiCorner11.CornerRadius = UDim.new(0, 4)
                    uiCorner11.Name = "ButtonCorner"
                    uiCorner11.Parent = frame24
                    textButton4.Name = "Bindkey"
                    textButton4.Parent = frame24
                    textButton4.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
                    textButton4.BackgroundTransparency = 1
                    textButton4.Size = UDim2.new(1, 0, 1, 0)
                    textButton4.Font = Enum.Font.GothamBold
                    textButton4.Text = tostring(default):gsub("Enum.KeyCode.", "")
                    textButton4.TextSize = 14
                    textButton4.TextColor3 = tbl.UIColor["Text Color"]
                    local tbl8 = {}
                    tbl8[Enum.UserInputType.MouseButton1] = "Mouse1"
                    tbl8[Enum.UserInputType.MouseButton2] = "Mouse2"
                    tbl8[Enum.UserInputType.MouseButton3] = "Mouse3"

                    textButton4.MouseButton1Click:Connect(function()
                        local connection = nil
                        textButton4.Text = "..."

                        connection = game:GetService("UserInputService").InputBegan:Connect(function(input)
                            if tbl8[input.UserInputType] then
                                textButton4.Text = tbl8[input.UserInputType]

                                spawn(function()
                                    wait(0.1)
                                    default = input.UserInputType
                                    str6 = "UserInputType"
                                end)
                            elseif input.KeyCode ~= Enum.KeyCode.Unknown then
                                textButton4.Text = tostring(input.KeyCode):gsub("Enum.KeyCode.", "")

                                spawn(function()
                                    wait(0.1)
                                    default = input.KeyCode
                                    str6 = "KeyCode"
                                end)
                            end

                            connection:Disconnect()
                        end)
                    end)

                    game:GetService("UserInputService").InputBegan:Connect(function(input)
                        if default == input.UserInputType or default == input.KeyCode then
                            fn4(default)
                        end
                    end)

                    local tbl9 = {
                        name = text3,
                        type = "keybind",
                        value = default,
                        Page_Name = text,
                        Section_Name = v7,
                        FunctionCreate = frame22,
                    }

                    tbl3.Options[text3] = tbl9

                    if type(getgenv().Options) == "table" then
                        getgenv().Options[text3] = tbl9
                    end
                end

                tbl7.CreateBox = function(arg3, arg4)
                    local str5 = tostring(arg3.Title)
                    local text3 = str5 or ""
                    local str6 = tostring(arg3.Placeholder)
                    local placeholderText = str6 or ""
                    local default = arg3.Default
                    local text4 = default or false
                    local number = arg3.Number
                    local flag6 = number or false
                    local fn4 = arg4 or function() end
                    local frame22 = Instance.new("Frame")
                    local uiCorner9 = Instance.new("UICorner")
                    local frame23 = Instance.new("Frame")
                    local uiCorner10 = Instance.new("UICorner")
                    local textLabel6 = Instance.new("TextLabel")
                    local frame24 = Instance.new("Frame")
                    local uiCorner11 = Instance.new("UICorner")
                    local textBox3 = Instance.new("TextBox")
                    local frame25 = Instance.new("Frame")
                    local uiCorner12 = Instance.new("UICorner")
                    frame22.Name = "BoxFrame"
                    frame22.Parent = frame19
                    frame22.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
                    frame22.BackgroundTransparency = 1
                    frame22.Position = UDim2.new(0, 0, 0.208333328, 0)
                    frame22.Size = UDim2.new(1, 0, 0, 60)
                    uiCorner9.CornerRadius = UDim.new(0, 4)
                    uiCorner9.Name = "BoxCorner"
                    uiCorner9.Parent = frame22
                    frame23.Name = "Background1"
                    frame23.Parent = frame22
                    frame23.AnchorPoint = Vector2.new(0.5, 0.5)
                    frame23.Position = UDim2.new(0.5, 0, 0.5, 0)
                    frame23.Size = UDim2.new(1, -10, 1, 0)
                    frame23.BackgroundColor3 = tbl.UIColor["Background 1 Color"]
                    frame23.BackgroundTransparency = tbl.UIColor["Background 1 Transparency"]
                    uiCorner10.CornerRadius = UDim.new(0, 4)
                    uiCorner10.Name = "ButtonCorner"
                    uiCorner10.Parent = frame23
                    textLabel6.Name = "TextColor"
                    textLabel6.Parent = frame23
                    textLabel6.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
                    textLabel6.BackgroundTransparency = 1
                    textLabel6.Position = UDim2.new(0, 10, 0, 0)
                    textLabel6.Size = UDim2.new(1, -10, 0.5, 0)
                    local gothamMedium = flag3 and Enum.Font.GothamMedium or Enum.Font.GothamBlack
                    textLabel6.Font = gothamMedium
                    textLabel6.Text = text3
                    local textSize = flag3 and 13 or 14
                    textLabel6.TextSize = textSize
                    textLabel6.TextXAlignment = Enum.TextXAlignment.Left
                    textLabel6.TextColor3 = tbl.UIColor["Text Color"]
                    frame24.Name = "Background2"
                    frame24.Parent = frame23
                    frame24.AnchorPoint = Vector2.new(1, 0.5)
                    frame24.ClipsDescendants = true
                    frame24.Position = UDim2.new(1, -5, 0, 40)
                    frame24.Size = UDim2.new(1, -10, 0, 25)
                    frame24.BackgroundColor3 = tbl.UIColor["Background 2 Color"]
                    uiCorner11.CornerRadius = UDim.new(0, 4)
                    uiCorner11.Name = "ButtonCorner"
                    uiCorner11.Parent = frame24
                    textBox3.Name = "TextColorPlaceholder"
                    textBox3.Parent = frame24
                    textBox3.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
                    textBox3.BackgroundTransparency = 1
                    textBox3.Position = UDim2.new(0, 5, 0, 0)
                    textBox3.Size = UDim2.new(1, -5, 1, 0)
                    textBox3.Font = Enum.Font.GothamBold
                    textBox3.PlaceholderText = placeholderText
                    textBox3.Text = ""
                    textBox3.TextSize = 14
                    textBox3.TextXAlignment = Enum.TextXAlignment.Left
                    textBox3.PlaceholderColor3 = tbl.UIColor["Placeholder Text Color"]
                    textBox3.TextColor3 = tbl.UIColor["Text Color"]
                    frame25.Name = "TextNSBoxLineeeee"
                    frame25.Parent = frame24
                    frame25.BackgroundTransparency = 1
                    frame25.Position = UDim2.new(0, 0, 1, -2)
                    frame25.Size = UDim2.new(1, 0, 0, 6)
                    frame25.BackgroundColor3 = tbl.UIColor["Box Highlight Color"]
                    uiCorner12.CornerRadius = UDim.new(1, 0)
                    uiCorner12.Parent = frame25

                    textBox3.Focused:Connect(function()
                        TweenService:Create(frame25, TweenInfo.new(tbl.UIColor["Tween Animation 2 Speed"]), {BackgroundTransparency = 0}):Play()
                    end)

                    if flag6 then
                        textBox3:GetPropertyChangedSignal("Text"):Connect(function()
                            if not tonumber(textBox3.Text) then
                                textBox3.PlaceholderText = placeholderText
                                textBox3.Text = ""
                            end
                        end)
                    end

                    textBox3.FocusLost:Connect(function()
                        TweenService:Create(frame25, TweenInfo.new(tbl.UIColor["Tween Animation 2 Speed"]), {BackgroundTransparency = 1}):Play()

                        if textBox3.Text ~= "" then
                            fn4(textBox3.Text)
                        end
                    end)

                    local functionCreate = {}

                    if text4 then
                        textBox3.Text = text4
                        fn4(text4)
                    end

                    functionCreate.SetValue = function(text5)
                        textBox3.Text = text5
                        fn4(text5)
                    end

                    functionCreate.GetValue = function()
                        return textBox3.Text
                    end

                    local tbl8 = {name = text3, type = "box"}
                    local value = text4 or ""
                    tbl8.value = value
                    tbl8.Page_Name = text
                    tbl8.Section_Name = v7
                    tbl8.FunctionCreate = functionCreate
                    tbl3.Options[text3] = tbl8

                    if type(getgenv().Options) == "table" then
                        getgenv().Options[text3] = tbl8
                    end

                    table.insert(tbl.listfunction[frame19], {
                        Type = "Box",
                        Name = text3,
                        Call = function()
                            frame22.Visible = true
                        end,
                    })

                    table.insert(tbl2[frame19], frame22)
                    return functionCreate
                end

                tbl7.CreateSlider = function(arg3, arg4)
                    local str5 = tostring(arg3.Title)
                    local text3 = str5 or ""
                    local num = tonumber(arg3.Min)
                    local n11 = num or 0
                    local num2 = tonumber(arg3.Max)
                    local n12 = num2 or 100
                    local precise = arg3.Precise
                    local flag6 = precise or false
                    local value = tonumber(arg3.Default) or 0
                    local fn4 = arg4 or function() end
                    local fn5 = fn4 or function() end
                    local frame22 = Instance.new("Frame")
                    local uiCorner9 = Instance.new("UICorner")
                    local frame23 = Instance.new("Frame")
                    local uiCorner10 = Instance.new("UICorner")
                    local textLabel6 = Instance.new("TextLabel")
                    local frame24 = Instance.new("Frame")
                    local textButton4 = Instance.new("TextButton")
                    local uiCorner11 = Instance.new("UICorner")
                    local frame25 = Instance.new("Frame")
                    local uiCorner12 = Instance.new("UICorner")
                    local frame26 = Instance.new("Frame")
                    local uiCorner13 = Instance.new("UICorner")
                    local textBox3 = Instance.new("TextBox")
                    frame22.Name = text3 .. "buda"
                    frame22.Parent = frame19
                    frame22.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
                    frame22.BackgroundTransparency = 1
                    frame22.Position = UDim2.new(0, 0, 0.208333328, 0)
                    frame22.Size = UDim2.new(1, 0, 0, 50)
                    uiCorner9.CornerRadius = UDim.new(0, 4)
                    uiCorner9.Name = "SliderCorner"
                    uiCorner9.Parent = frame22
                    frame23.Name = "Background1"
                    frame23.Parent = frame22
                    frame23.AnchorPoint = Vector2.new(0.5, 0.5)
                    frame23.Position = UDim2.new(0.5, 0, 0.5, 0)
                    frame23.Size = UDim2.new(1, -10, 1, 0)
                    frame23.BackgroundColor3 = tbl.UIColor["Background 1 Color"]
                    frame23.BackgroundTransparency = tbl.UIColor["Background 1 Transparency"]
                    uiCorner10.CornerRadius = UDim.new(0, 4)
                    uiCorner10.Name = "SliderBGCorner"
                    uiCorner10.Parent = frame23
                    textLabel6.Name = "TextColor"
                    textLabel6.Parent = frame23
                    textLabel6.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
                    textLabel6.BackgroundTransparency = 1
                    textLabel6.Position = UDim2.new(0, 10, 0, 0)
                    textLabel6.Size = UDim2.new(1, -10, 0, 25)
                    textLabel6.Font = Enum.Font.GothamBlack
                    textLabel6.Text = text3
                    textLabel6.TextSize = 14
                    textLabel6.RichText = true
                    textLabel6.TextXAlignment = Enum.TextXAlignment.Left
                    textLabel6.TextColor3 = tbl.UIColor["Text Color"]
                    frame24.Name = "SliderBar"
                    frame24.Parent = frame22
                    frame24.AnchorPoint = Vector2.new(0.5, 0.5)
                    frame24.Position = UDim2.new(0.5, 0, 0.5, 14)
                    frame24.Size = UDim2.new(0, 400, 0, 6)
                    frame24.BackgroundColor3 = tbl.UIColor["Background 2 Color"]
                    textButton4.Name = "SliderButton "
                    textButton4.Parent = frame24
                    textButton4.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
                    textButton4.BackgroundTransparency = 1
                    textButton4.Size = UDim2.new(1, 0, 1, 0)
                    textButton4.Font = Enum.Font.GothamBold
                    textButton4.Text = ""
                    textButton4.TextColor3 = Color3.fromRGB(230, 230, 230)
                    textButton4.TextSize = 14
                    uiCorner11.CornerRadius = UDim.new(1, 0)
                    uiCorner11.Name = "SliderBarCorner"
                    uiCorner11.Parent = frame24
                    frame25.Name = "Bar"
                    frame25.BorderSizePixel = 0
                    frame25.Parent = frame24
                    frame25.Size = UDim2.new(0, 0, 1, 0)
                    frame25.BackgroundColor3 = tbl.UIColor["Slider Line Color"]
                    uiCorner12.CornerRadius = UDim.new(1, 0)
                    uiCorner12.Name = "BarCorner"
                    uiCorner12.Parent = frame25
                    frame26.Name = "Background2"
                    frame26.Parent = frame22
                    frame26.AnchorPoint = Vector2.new(1, 0)
                    frame26.Position = UDim2.new(1, -10, 0, 5)
                    frame26.Size = UDim2.new(0, 150, 0, 25)
                    frame26.BackgroundColor3 = tbl.UIColor["Background 2 Color"]
                    uiCorner13.CornerRadius = UDim.new(0, 4)
                    uiCorner13.Name = "Sliderbox"
                    uiCorner13.Parent = frame26
                    textBox3.Name = "TextColor"
                    textBox3.Parent = frame26
                    textBox3.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
                    textBox3.BackgroundTransparency = 1
                    textBox3.Size = UDim2.new(1, 0, 1, 0)
                    textBox3.Font = Enum.Font.GothamBold
                    textBox3.Text = ""
                    textBox3.TextSize = 14
                    textBox3.TextColor3 = tbl.UIColor["Text Color"]

                    textButton4.MouseEnter:Connect(function()
                        TweenService:Create(frame25, TweenInfo.new(tbl.UIColor["Tween Animation 2 Speed"]), {BackgroundColor3 = tbl.UIColor["Slider Highlight Color"]}):Play()
                    end)

                    textButton4.MouseLeave:Connect(function()
                        TweenService:Create(frame25, TweenInfo.new(tbl.UIColor["Tween Animation 2 Speed"]), {BackgroundColor3 = tbl.UIColor["Slider Line Color"]}):Play()
                    end)

                    local function fn6(text4)
                        textBox3.Text = text4
                        fn5(tonumber(text4))
                    end

                    if value then
                        if value <= n11 then
                            value = n11
                        elseif n12 <= value then
                            value = n12
                        end

                        frame25.Size = UDim2.new(1 - (n12 - value) / (n12 - n11), 0, 0, 6)
                        fn6(value)
                    end

                    local flag7 = false
                    local v10 = nil
                    local n13 = 0

                    textButton4.InputBegan:Connect(function(input)
                        if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
                            n13 = tick()

                            input.Changed:Connect(function()
                                if input.UserInputState == Enum.UserInputState.End then
                                    flag7 = false
                                    n13 = 0
                                end
                            end)
                        end
                    end)

                    textButton4.InputEnded:Connect(function(input)
                        if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
                            flag7 = false
                            n13 = 0
                        end
                    end)

                    textButton4.InputChanged:Connect(function(input)
                        if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
                            v10 = input
                        end
                    end)

                    RunService.RenderStepped:Connect(function()
                        if n13 > 0 and tick() - n13 >= 0 and not flag7 then
                            flag7 = true
                        end

                        if flag7 and v10 then
                            local n14 = flag6 and tonumber(string.format("%.1f", (tonumber(n12) - tonumber(n11)) / 400 * frame25.AbsoluteSize.X + tonumber(n11))) or math.floor((tonumber(n12) - tonumber(n11)) / 400 * frame25.AbsoluteSize.X + tonumber(n11))

                            pcall(function()
                                fn6(n14)
                            end)

                            frame25.Size = UDim2.new(0, math.clamp(v10.Position.X - frame25.AbsolutePosition.X, 0, 400), 0, 6)
                        end
                    end)

                    local function fn7(arg5)
                        if tonumber(arg5) <= n11 then
                            frame25.Size = UDim2.new(0, 0, 0, 6)
                            fn6(n11)
                        elseif n12 <= tonumber(arg5) then
                            frame25.Size = UDim2.new(0, n12 / n12 * 400, 0, 6)
                            fn6(n12)
                        else
                            frame25.Size = UDim2.new(1 - (n12 - arg5) / (n12 - n11), 0, 0, 6)
                            fn6(arg5)
                        end
                    end

                    textBox3.FocusLost:Connect(function()
                        fn7(textBox3.Text)
                    end)

                    local functionCreate = {
                        SetValue = function(arg5)
                            fn7(arg5)
                        end,
                        GetValue = function()
                            local num3 = tonumber(textBox3.Text)
                            local v11 = num3 or value
                            return v11
                        end,
                    }

                    local tbl8 = {name = text3, type = "slider", min = n11, max = n12}
                    local step = arg3.Step
                    local step2 = step or 1
                    tbl8.step = step2
                    tbl8.value = value
                    tbl8.Page_Name = text
                    tbl8.Section_Name = v7
                    tbl8.FunctionCreate = functionCreate
                    tbl3.Options[text3] = tbl8

                    if type(getgenv().Options) == "table" then
                        getgenv().Options[text3] = tbl8
                    end

                    table.insert(tbl.listfunction[frame19], {
                        Type = "Slider",
                        Name = text3,
                        Call = function()
                            frame22.Visible = true
                        end,
                    })

                    table.insert(tbl2[frame19], frame22)
                    return functionCreate
                end

                return tbl7
            end

            return tbl5
        end,
    }
end

tbl3.CreateNoti({
    Title = "Notification",
    Desc = "The UI automatically hides once executed.\nPress the button at the bottom-left of the screen to show the GUI.",
    ShowTime = 10,
}, true)

return tbl3
