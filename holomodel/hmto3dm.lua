local shell = require("shell")
local args = shell.parse(...)
 
local hmFile = args[1]
local label = args[2]
local emitRedstone = args[3]
local buttonMode = args[4]
local lightLevel = args[5]
local collidable = args[6]
 
if not (#args == 6) then
  print("Usage: hmto3dm hmFile label emitRedstone buttonMode lightLevel collidable" .. "\n" ..
        "Example: hmto3dm randomHmFile myBlockName false false 0 {true, true}")
  os.exit()
end
 
local file = io.open(hmFile .. ".hm", "r")
local model = file:read("*all")
file:close()
 
 
local result = "{\n" ..
  "  label = '" .. label .. "',\n" ..
  "  emitRedstone = " .. emitRedstone .. ",\n" ..
  "  buttonMode = " .. buttonMode .. ",\n" ..
  "  lightLevel = " .. lightLevel .. ",\n" ..
  "  collidable = " .. collidable .. ",\n" ..
  "  shapes = " .. model .. "\n" ..
"}"
 
local output = io.open(hmFile .. ".3dm", "w")
output:write(result)
output:close()