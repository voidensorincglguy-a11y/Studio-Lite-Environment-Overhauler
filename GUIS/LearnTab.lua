local MainColors = {
Black = Color3.fromRGB(35, 35, 40),
Metallic = Color3.fromRGB(56, 57, 57),
White = Color3.fromRGB(255, 255, 255),
RBlack = Color3.fromRGB(10,10,10)
}

local StudioGui = game:GetService("Players").LocalPlayer.PlayerGui.StudioGui

local frame = Instance.new("Frame" StudioGui)

frame.Name = "LearnTab"
frame.Position = UDim2.new(0,0,0,0)
frame.Size = UDim2.new(1,0,1,0)
frame.BackgroundColor3 = MainColors.Black
frame.ZIndex = 0
frame.BorderSizePixel = 0

