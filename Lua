-- Roblox Studio Lite UI Overhaul
-- By Fogged (Studio Environment Optimized)

local MainColors = {
    Black = Color3.fromRGB(35, 35, 40),
    Metallic = Color3.fromRGB(56, 57, 57)
}

-- Ensure we are grabbing the CoreGui or PlayerGui safely depending on how Studio Lite loaded it
local StudioGui = game:GetService("Players").LocalPlayer.PlayerGui:WaitForChild("StudioGui", 3)
if not StudioGui then return end

local MainBar = StudioGui:FindFirstChild("MainBar")
local StopBar = StudioGui:FindFirstChild("Stop")
local TBar = StudioGui:FindFirstChild("TopBar")

-- Create clean master templates in memory (Don't parent them yet!)
local TemplateStroke = Instance.new("UIStroke")
TemplateStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border

local TemplateCorner = Instance.new("UICorner")

-- Apply to main layout frames
if MainBar then MainBar.BackgroundColor3 = MainColors.Black TemplateStroke:Clone().Parent = MainBar TemplateCorner:Clone().Parent = MainBar end
if StopBar then TemplateStroke:Clone().Parent = StopBar TemplateCorner:Clone().Parent = StopBar end
if TBar then TemplateStroke:Clone().Parent = TBar TemplateCorner:Clone().Parent = TBar end

-- Overhaul MainBar Sub-elements
if MainBar then
    for _, v in ipairs(MainBar:GetChildren()) do
        if v:IsA("Frame") or v:IsA("TextButton") then
            v.BackgroundColor3 = MainColors.Metallic
            TemplateStroke:Clone().Parent = v
            TemplateCorner:Clone().Parent = v

            for _, Obj in ipairs(v:GetChildren()) do
                if Obj:IsA("TextBox") or Obj:IsA("TextLabel") or Obj:IsA("TextButton") then
                    Obj.BackgroundColor3 = MainColors.Black
                    TemplateStroke:Clone().Parent = Obj
                    TemplateCorner:Clone().Parent = Obj
                end
            end
        end
    end
end

-- Overhaul TopBar Sub-elements (Fixes the 1px sharp corner issue)
if TBar then
    for _, v in ipairs(TBar:GetChildren()) do
        if v:IsA("Frame") or v:IsA("TextButton") then
            TemplateStroke:Clone().Parent = v
            TemplateCorner:Clone().Parent = v

            for _, Obj in ipairs(v:GetChildren()) do
                if Obj:IsA("TextBox") or Obj:IsA("TextLabel") or Obj:IsA("TextButton") then
                    local customCorner = Instance.new("UICorner")
                    customCorner.CornerRadius = UDim.new(0, 1) -- Set radius BEFORE parenting
                    customCorner.Parent = Obj
                    
                    local customStroke = TemplateStroke:Clone()
                    customStroke.Parent = Obj
                end
            end
        end
    end
end
