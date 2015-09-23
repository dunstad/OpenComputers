local component = require("component")
local gml = require("gml")
local holo = component.hologram
local red = 1
local green = 2
local blue = 3
holo.clear()
holo.setScale(1)
-- sync hologram bottom left with the projector's bottom left
holo.setTranslation(.33, 0, .33)
 
local cursor = {
  x = 1,
  y = 1,
  z = 1,
  active = false, -- true if drawing model
  color = green,
  pointActivated = nil
}
 
-- list of shapes
local model = {}
-- shape currently being placed
local tempModel = {}
 
function drawCursor()
  return holo.set(cursor.x, cursor.y, cursor.z, cursor.color)
end
 
function cubicFill(x1, y1, z1, x2, y2, z2, color)
 
  minX = math.min(x1, x2)
  maxX = math.max(x1, x2)
  minY = math.min(y1, y2)
  maxY = math.max(y1, y2)
  minZ = math.min(z1, z2)
  maxZ = math.max(z1, z2)
 
  for x = minX, maxX do
    for z = minZ, maxZ do
      holo.fill(x, z, minY, maxY, color)
    end
  end
end
 
function drawModel(model, color)
  if model then
    for i, shape in pairs(model) do
      cubicFill(shape[1], shape[2], shape[3], shape[4], shape[5], shape[6], color)
    end
  end
end
 
function redraw()
  holo.clear()
  drawModel(model, blue)
  drawModel(tempModel, red)
  drawCursor(cursor)
end
 
function activateCursor()
  cursor.active = true
  cursor.pointActivated = {cursor.x, cursor.y, cursor.z}
end
 
function deactivateCursor()
  onMove() -- for placing a single cube
  cursor.active = false
  cursor.pointActivated = nil
  model[#model + 1] = tempModel[1] -- the only shape in tempModel
  tempModel = {}
  redraw()
end
 
function cursorRight()
  cursor.z = math.min(cursor.z + 1, 16)
  onMove()
end
 
function cursorLeft()
  cursor.z = math.max(cursor.z - 1, 1)
  onMove()
end
 
function cursorAway()
  cursor.x = math.min(cursor.x + 1, 16)
  onMove()
end
 
function cursorToward()
  cursor.x = math.max(cursor.x - 1, 1)
  onMove()
end
 
function cursorUp()
  cursor.y = math.min(cursor.y + 1, 16)
  onMove()
end
 
function cursorDown()
  cursor.y = math.max(cursor.y - 1, 1)
  onMove()
end
 
-- to fix difference between hologram and model coordinates
function decrementLowest(num1, num2)
  if num1 < num2 then
    num1 = num1 - 1
  else
    num2 = num2 - 1
  end
 
  return num1, num2
 
end
 
function onMove()
  tempModel = {}
  if cursor.active then
    tempModel = {{cursor.pointActivated[1], cursor.pointActivated[2], cursor.pointActivated[3], cursor.x, cursor.y, cursor.z}}
  end
  redraw()
end
 
function modelToString(model)
 
  string = "{"
    for i, shape in pairs(model) do
      string = string .. "{"
   
      -- compensate for hologram and model coordinate system difference
      shape[1], shape[4] = decrementLowest(shape[1], shape[4])
      shape[2], shape[5] = decrementLowest(shape[2], shape[5])
      shape[3], shape[6] = decrementLowest(shape[3], shape[6])
     
      -- the hologram's Z is right/left (oops)
      -- thus the reverse loop here
      -- printer takes Z, Y, X
      for i = #shape, 1, -1 do
        string = string .. shape[i] .. ", "
      end
      string = string .. "texture = 'opencomputers:White'},"
    end
  string = string .. "}"
  return string
end
 
function saveModel(model, filename)
  if #filename > 0 then
    file = io.open(filename .. ".hm", "w")
    file:write(modelToString(model))
    file:close()
  end
end
 
-- clean up the stuff we changed
function onClose()
  holo.clear()
  holo.setTranslation(0, 0, 0)
  saveModel(model, textField.text)
  gui:close()
end
 
function main()
  redraw()
 
  gui = gml.create("center", "center", 32, 19)
 
  local horizontalOffset = 15
  local verticalOffset = 4
 
  local upButton = gui:addButton(0, 0, 10, 1, "Up", cursorUp)
  local downButton = gui:addButton(horizontalOffset, 0, 10, 1, "Down", cursorDown)
  local leftButton = gui:addButton(0, verticalOffset, 10, 1, "Left", cursorLeft)
  local rightButton = gui:addButton(horizontalOffset, verticalOffset, 10, 1, "Right", cursorRight)
  local towardButton = gui:addButton(0, verticalOffset * 2, 10, 1, "Toward", cursorToward)
  local awayButton = gui:addButton(horizontalOffset, verticalOffset * 2, 10, 1, "Away", cursorAway)
  local closeButton = gui:addButton(0, verticalOffset * 3, 10, 1, "Save+Quit", onClose)
  local activateButton = gui:addButton(horizontalOffset, verticalOffset * 3, 10, 1, "Activate", activateCursor)
  local deactivateButton = gui:addButton(0, verticalOffset * 4, 10, 1, "Deactivate", deactivateCursor)
  textField = gui:addTextField(horizontalOffset, verticalOffset * 4, 10)
 
  gui:run()
 
end
 
main()