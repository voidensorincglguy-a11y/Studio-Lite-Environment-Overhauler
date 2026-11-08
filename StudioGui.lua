-- Studio environment Overhauler :D
-- By Fogged

local MainColors = {
    Black = Color3.fromRGB(35, 35, 40),
    Metallic = Color3.fromRGB(56, 57, 57),
    White = Color3.fromRGB(255, 255, 255),
    RBlack = Color3.fromRGB(10,10,10)
}
local MainBar = game:GetService("Players").LocalPlayer.PlayerGui.StudioGui.MainBar
local StopBar = game:GetService("Players").LocalPlayer.PlayerGui.StudioGui.Stop
local TBar = game:GetService("Players").LocalPlayer.PlayerGui.StudioGui.TopBar
local StudioGui = game:GetService("Players").LocalPlayer.PlayerGui.StudioGui
local Explorer = game:GetService("Players").LocalPlayer.PlayerGui.StudioGui.ExplorerPanel
local Properties = game:GetService("Players").LocalPlayer.PlayerGui.StudioGui.PropertiesPanel

local slfolder = game:GetService("ReplicatedStorage").StudioLiteFolder
local TemplateBar = game:GetService("Players").LocalPlayer.PlayerGui.StudioGui.TopBar.GrowingUp
local CloneBar = TemplateBar:Clone()
CloneBar.Position = UDim2.new(0,325,0,0)
CloneBar.Name = "HideBtn"
CloneBar.Parent = TBar
CloneBar.Text = "Hide Explorer"

local PluginsBtn = CloneBar:Clone()
PluginsBtn.Name = "Plugins"
PluginsBtn.Text = "Plugins"
PluginsBtn.Position = UDim2.new(0,470,0,0)
PluginsBtn.Size = UDim2.new(0,90,1,0)
PluginsBtn.Parent = TBar

local PluginsTab = Instance.new("ScrollingFrame", StudioGui)
PluginsTab.Size = UDim2.new(0.900, 0, 0.564828396, 0)
PluginsTab.Position = UDim2.new(0.05418, 0, 0.25, 0)
PluginsTab.BackgroundColor3 = MainColors.White
PluginsTab.Visible = false
PluginsTab.Name = "PluginsTabFrame"
PluginsTab.BorderColor3 = MainColors.RBlack

local PluginsLayout = Instance.new("UIListLayout", PluginsTab)

StopBar.MouseButton1Click:Connect(function()
    local scripts = {}
    local Parts = {}

    for _, value in pairs(game:GetDescendants()) do
        if value:IsA("Script") or value:IsA("LocalScript") or value:IsA("ModuleScript") and not slfolder:FindFirstChild(value.Name, true) and not value.Parent == nil and game.CoreGui:FindFirstChild(value.Name, true) then
            table.insert(scripts, value)
        elseif value:IsA("Part") and not slfolder:FindFirstChild(value.Name, true) and not game.ReplicatedStorage:FindFirstChild(value.Name, true) then
            table.insert(Parts, value)
        end
    end

    print("Current scripts : ", tostring(#scripts))
    print("Current Parts : ", tostring(#Parts))
end)

for _, v in pairs(CloneBar:GetChildren()) do
    if v:IsA("LocalScript") then
        v:Destroy()
    end
end

for _, v in pairs(PluginsBtn:GetChildren()) do
    if v:IsA("LocalScript") then
        v:Destroy()
    end
end
local Toggled = false
local Toggled2 = false
local Toggled3 = false
local SS = {}

local TemplateBtnMainBar = game:GetService("Players").LocalPlayer.PlayerGui.StudioGui.MainBar.move:Clone()
local TImageLabelMainBar
local SettingsBtnTab = Instance.new("Frame", StudioGui)
SettingsBtnTab.Size = UDim2.new(0.899999976, 0, 0.564828396, 0)
SettingsBtnTab.Position = UDim2.new(0.0515767783, 0, 0.300000012, 0)
SettingsBtnTab.BackgroundColor3 = MainColors.White
SettingsBtnTab.Visible = false
SettingsBtnTab.Name = "SettingsTab"

local TabText = Instance.new("TextLabel", SettingsBtnTab)
TabText.Position = UDim2.new(0.0192810781, 0, 0.0246479269, 0)
TabText.BackgroundTransparency = 1
TabText.Text = "Settings"
TabText.Font = Enum.Font.Gotham
TabText.Size = UDim2.new(0.515968919, 0, 0.107485831, 0)
TabText.ZIndex = 2
TabText.Name = "TabText"
TabText.TextColor3 = MainColors.RBlack
TabText.TextSize = 24
TabText.TextXAlignment = Enum.TextXAlignment.Left

local ThemeColor = Instance.new("TextButton", SettingsBtnTab)
ThemeColor.Text = "Theme Color"
ThemeColor.BackgroundColor3 = MainColors.White
ThemeColor.TextColor3 = MainColors.RBlack
ThemeColor.Size = UDim2.new(0.248, 0, 0.156, 0)
ThemeColor.Position = UDim2.new(0.013, 0, 0.19, 0)
ThemeColor.Name = "ThemeColorBtn"
ThemeColor.TextSize = 18
ThemeColor.BorderSizePixel = 1
ThemeColor.BorderColor3 = MainColors.RBlack
ThemeColor.Font = Enum.Font.Gotham

local HelpText = Instance.new("TextButton", SettingsBtnTab)
HelpText.Text = "New to coding? Click here!"
HelpText.BackgroundColor3 = MainColors.White
HelpText.TextColor3 = MainColors.RBlack
HelpText.BorderSizePixel = 1
HelpText.BorderColor3 = MainColors.RBlack
HelpText.Size = UDim2.new(0.611, 0, 0.094, 0)
HelpText.Position = UDim2.new(0.373, 0, 0.021, 0)
HelpText.Name = "HelpLinkBtn"
HelpText.TextSize = 18
HelpText.Font = Enum.Font.Gotham

for _, v in pairs(TemplateBtnMainBar:GetChildren()) do
    if v.Name == "move" then
        TImageLabelMainBar = v
        break
    end
end

if TImageLabelMainBar then
    TemplateBtnMainBar.Position = UDim2.new(0.455000013, 0, 0, 3)
    TemplateBtnMainBar.Size = UDim2.new(0, 50, 0, 50)
    TemplateBtnMainBar.Text = "Settings"
    TemplateBtnMainBar.Name = "SettingsBtn"
    TemplateBtnMainBar.Parent = MainBar

    TImageLabelMainBar.Name = "settings"
    TImageLabelMainBar.Image = "rbxthumb://type=Asset&id=3599164226&w=420&h=420"
    TImageLabelMainBar.Position = UDim2.new(0.15,0,0,0)
end

local HelpBtn = TemplateBtnMainBar:Clone()
local ImageQBtn
HelpBtn.Parent = MainBar
HelpBtn.Position = UDim2.new(0.525599957, 0, 0, 3)
HelpBtn.TextScaled = false
HelpBtn.TextSize = 16
HelpBtn.Text = "Learn"
HelpBtn.Name = "LearnBtn"


local T = false

local frame = Instance.new("Frame", StudioGui)
local SF = Instance.new("ScrollingFrame", frame)

frame.Name = "LearnTab"
frame.Position = UDim2.new(0,0,0,0)
frame.Size = UDim2.new(1,0,1,0)
frame.BackgroundColor3 = MainColors.Metallic
frame.ZIndex = 0
frame.BorderSizePixel = 0
frame.Visible = false

SF.Position = UDim2.new(0.15, 0, 0.2, 0)
SF.Size = UDim2.new(0.85, 0, 0.8, 0)
SF.BorderSizePixel = 0
SF.ZIndex = 0
SF.BackgroundColor3 = MainColors.Black
SF.BorderSizePixel = 0
SF.ScrollBarThickness = 3


HelpBtn.Activated:Connect(function()
    if T == false then
        frame.Visible = true
        T = true
    elseif T == true then
        frame.Visible = false
        T = false
    end
end)
for _, Obj in pairs(HelpBtn:GetChildren()) do
    if Obj:IsA("ImageLabel") then
        Obj.Image = "rbxthumb://type=Asset&id=13699632798&w=420&h=420"
    end
end

CloneBar.Activated:Connect(function()
    if Toggled == false then
        Explorer.Visible = false
        Properties.Visible = false
        Toggled = true
        CloneBar.Text = "Show Explorer"

    elseif Toggled == true then
        Explorer.Visible = true
        Properties.Visible = true
        Toggled = false
        CloneBar.Text = "Hide Explorer"
    end
end)

PluginsBtn.Activated:Connect(function()
    if Toggled2 == false then
        PluginsTab.Visible = true
        SettingsBtnTab.Visible = false

        Toggled2 = true
        Toggled3 = false
    elseif Toggled2 == true then
        PluginsTab.Visible = false

        Toggled2 = false
    end
end)

TemplateBtnMainBar.Activated:Connect(function()
    if Toggled3 == false then
        SettingsBtnTab.Visible = true
        PluginsTab.Visible = false

        Toggled3 = true
        Toggled2 = false

    elseif Toggled3 == true then
        SettingsBtnTab.Visible = false

        Toggled3 = false
    end
end)