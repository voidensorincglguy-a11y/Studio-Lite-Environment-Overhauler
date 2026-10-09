local CreateGui = {}
CreateGui.__index = CreateGui

function CreateGui:CreateFrame(pos, size, parent, color)
local ScrollingFrame = Instance.new("ScrollingFrame", parent)
ScrollingFrame.Position = pos
ScrollingFrame.Size = size
ScrollingFrame.BackgroundColor3 = color
ScrollingFrame.BorderSizePixel = 0

local Stroke = Instance.new("UIStroke", ScrollingFrame)
Stroke.Color = Color3.fromRGB(255, 255, 255)
local Corner = Instance.new("UICorner", ScrollingFrame)
return ScrollingFrame
end

return CreateGui