-- Studio environment Overhauler :D
-- By Fogged
loadstring(game:HttpGet("https://raw.githubusercontent.com/voidensorincglguy-a11y/Studio-Lite-Environment-Overhauler/refs/heads/main/GUIS/LearnTab.lua"))()

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
PluginsTab.BackgroundColor3 = MainColors.Black
PluginsTab.Visible = false
PluginsTab.Name = "PluginsTabFrame"
 
local PluginsLayout = Instance.new("UIListLayout", PluginsTab)

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
 
local UIStroke = Instance.new("UIStroke", MainBar)
local UICorner = Instance.new("UICorner", MainBar)

local UIStroke2 = Instance.new("UIStroke", StopBar)
local UICorner2 = Instance.new("UICorner", StopBar)

local UIStroke3 = Instance.new("UIStroke", TBar)
local UICorner3 = Instance.new("UICorner", TBar)

local UIStroke4 = Instance.new("UIStroke", PluginsTab)
local UICorner4 = Instance.new("UICorner", PluginsTab)

UIStroke4.Color = MainColors.White

UIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border

UIStroke2.ApplyStrokeMode = Enum.ApplyStrokeMode.Border

UIStroke3.ApplyStrokeMode = Enum.ApplyStrokeMode.Border

local function ApplyA(Main)
    if not Main then return end
    local TCorner = UICorner:Clone()
    local TStroke = UIStroke:Clone()
    
    TStroke.Parent = Main
    TCorner.Parent = Main
    
    TStroke.Color = MainColors.White
end
 
MainBar.BackgroundColor3 = MainColors.Black

StopBar.BackgroundColor3 = MainColors.Metallic
StopBar.TextColor3 = MainColors.White

local TemplateBtnMainBar = game:GetService("Players").LocalPlayer.PlayerGui.StudioGui.MainBar.move:Clone()
local TImageLabelMainBar
local SettingsBtnTab = Instance.new("Frame", StudioGui)
SettingsBtnTab.Size = UDim2.new(0.899999976, 0, 0.564828396, 0)
SettingsBtnTab.Position = UDim2.new(0.0515767783, 0, 0.300000012, 0)
SettingsBtnTab.BackgroundColor3 = MainColors.Black
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
TabText.TextColor3 = MainColors.White
TabText.TextSize = 24
TabText.TextXAlignment = Enum.TextXAlignment.Left
 
local ThemeColor = Instance.new("TextButton", SettingsBtnTab)
ThemeColor.Text = "Theme Color"
ThemeColor.BackgroundColor3 = MainColors.RBlack
ThemeColor.TextColor3 = MainColors.White
ThemeColor.Size = UDim2.new(0.248, 0, 0.156, 0)
ThemeColor.Position = UDim2.new(0.013, 0, 0.19, 0)
ThemeColor.Name = "ThemeColorBtn"
ThemeColor.TextSize = 18
ThemeColor.Font = Enum.Font.Gotham
ApplyA(ThemeColor)
 
local HelpText = Instance.new("TextButton", SettingsBtnTab)
HelpText.Text = "New to coding? Click here!"
HelpText.BackgroundColor3 = MainColors.Metallic
HelpText.TextColor3 = MainColors.White
HelpText.Size = UDim2.new(0.611, 0, 0.094, 0)
HelpText.Position = UDim2.new(0.373, 0, 0.021, 0)
HelpText.Name = "HelpLinkBtn"
HelpText.TextSize = 18
HelpText.Font = Enum.Font.Gotham
ApplyA(HelpText)
 
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
    local TCorner = UICorner:Clone()
    local TStroke = UIStroke:Clone()
    
    TStroke.Parent = SettingsBtnTab
    TCorner.Parent = SettingsBtnTab
    TStroke.Color = MainColors.White
end
 
getgenv().Helpbtn = TemplateBtnMainBar:Clone()
local HelpBtn = getgenv().Helpbtn
local ImageQBtn
HelpBtn.Parent = MainBar
HelpBtn.Position = UDim2.new(0.525599957, 0, 0, 3)
HelpBtn.TextScaled = false
HelpBtn.TextSize = 16
HelpBtn.Text = "Learn"
HelpBtn.Name = "LearnBtn"



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

 

if MainBar then
    
    for _, v in pairs(MainBar:GetChildren()) do
        
        if v:IsA("Frame") then
            
            local TStroke = UIStroke:Clone() -- Clone The Studios Mainbars, Previous UIStroke
            local TCorner = UICorner:Clone()
            
            TCorner.CornerRadius = UDim.new(0,2)
            
            TCorner.Parent = v
            TStroke.Parent = v
            task.spawn(function()
                v.BackgroundColor3 = MainColors.Metallic
            end)
            for _, Obj in pairs(v:GetChildren()) do
                if Obj:IsA("TextBox") or Obj:IsA("TextLabel") or Obj:IsA("TextButton") then
                    
                    Obj.BackgroundColor3 = MainColors.Black
                    Obj.TextColor3 = MainColors.White
                    
                    local TStroke2 = UIStroke:Clone()
                    local TCorner2 = UICorner:Clone()
                    
                    TCorner2.CornerRadius = UDim.new(0, 2)
                    
                    TCorner2.Parent = Obj
                    TStroke2.Parent = Obj
                end
            end
        elseif v:IsA("TextButton") then
            ApplyA(v)
            task.spawn(function()
                while true do
                    task.wait(0.1)
                    v.TextColor3 = MainColors.White
                    
                    v.BackgroundColor3 = MainColors.Metallic
                    
                    v.Font = Enum.Font.Gotham
                end
            end)
            for _, Obj in pairs(v:GetChildren()) do
                if Obj:IsA("TextBox") or Obj:IsA("TextLabel") or Obj:IsA("TextButton") then
                    
                    Obj.BackgroundColor3 = MainColors.Black
                    Obj.TextColor3 = MainColors.White
                    
                    local TStroke2 = UIStroke:Clone()
                    local TCorner2 = UICorner:Clone()
                    
                    TCorner2.CornerRadius = UDim.new(0, 2)
                    
                    TCorner2.Parent = Obj
                    TStroke2.Parent = Obj
                    
                end
            end
            
        end
    end
end

if TBar then
    TBar.BackgroundColor3 = MainColors.Black
    for _, v in pairs(TBar:GetChildren()) do
        
        if v:IsA("Frame") then
            
            local TStroke = UIStroke:Clone() -- Clone The Previous UIStroke
            local TCorner = UICorner:Clone()
            
            task.spawn(function()
                while true do
                    task.wait(0.1)
                    TStroke.Color = MainColors.White
                end
            end)
            v.BackgroundColor3 = MainColors.Metallic
            
            TCorner.Parent = v
            TStroke.Parent = v
            
        elseif v:IsA("TextButton") then
            local TStroke = UIStroke:Clone() -- Clone The Previous UIStroke
            local TCorner = UICorner:Clone()
            
            task.spawn(function()
                while true do
                    task.wait(0.1)
                    TStroke.Color = MainColors.White
                end
            end)
            v.Font = Enum.Font.Gotham
            v.TextColor3 = MainColors.White
            v.BackgroundColor3 = MainColors.Metallic
            
            TCorner.Parent = v
            TStroke.Parent = v
        end
    end
end

