local CreateGui = {}
CreateGui.__index = CreateGui

function CreateGui:CreateSFrame(pos, size, parent, color, scolor, csize)
  local ScrollingFrame = Instance.new("Frame", parent)
  ScrollingFrame.Position = pos
  ScrollingFrame.Size = size
  ScrollingFrame.BackgroundColor3 = color
  ScrollingFrame.BorderSizePixel = 0
  ScrollingFrame.CanvasSize = csize
  
  local Stroke = Instance.new("UIStroke", ScrollingFrame)
  Stroke.Color = scolor
  local Corner = Instance.new("UICorner", ScrollingFrame)
  return ScrollingFrame
end

function CreateGui:CreateFrame(pos, size, parent, color, scolor)
  local Frame = Instance.new("ScrollingFrame", parent)
  Frame.Position = pos
  Frame.Size = size
  Frame.BackgroundColor3 = color
  Frame.BorderSizePixel = 0

  local Stroke = Instance.new("UIStroke", Frame)
  Stroke.Color = scolor
  local Corner = Instance.new("UICorner", Frame)
  return Frame
end

return CreateGui