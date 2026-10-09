local CreateGui = {}
CreateGui.__index = CreateGui

function CreateGui:CreateSFrame(pos, size, parent, color, scolor, csize)
  local ScrollingFrame = Instance.new("ScrollingFrame", parent)
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
  local Frame = Instance.new("Frame", parent)
  Frame.Position = pos
  Frame.Size = size
  Frame.BackgroundColor3 = color
  Frame.BorderSizePixel = 0

  local Stroke = Instance.new("UIStroke", Frame)
  Stroke.Color = scolor
  local Corner = Instance.new("UICorner", Frame)
  return Frame
end

function CreateGui:CreateTBox(pos, size, parent, color, scolor, IsMultiline)
  local TextBox = Instance.new("TextBox", parent)
  TextBox.Position = pos
  TextBox.Size = size
  TextBox.BackgroundColor3 = color
  TextBox.BorderSizePixel = 0
  TextBox.MultiLine = IsMultiline

  local Stroke = Instance.new("UIStroke", TextBox)
  Stroke.Color = scolor
  local Corner = Instance.new("UICorner", TextBox)
  return Frame
end

return CreateGui