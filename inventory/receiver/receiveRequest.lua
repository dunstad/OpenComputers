component = require("component")
event = require("event")
redstone = component.redstone
os = require("os")
modem = component.modem
 
-- import inventory data
-- inventory[inventoryNumber][side][slot] = itemName
dofile("inventory.lua")
 
-- import data about what's on which side
-- config has properties side1, side2, robot
dofile("config.lua")
 
-- find which inventory, side, and slot an item is on
function locateItem(itemName)
  for invNum, inv in pairs(inventory) do
    for sideNum, side in pairs(inv) do
      for slotNum, slot in pairs(side) do
        if itemName == slot then
          -- one is subtracted from slotNum because setBundledOutput
          -- starts at 0, but Lua arrays start from 1
          return invNum, sideNum, slotNum - 1
        end
      end
    end
  end
  return nil, nil, nil
end
 
modem.open(1337)
 
while 1 do
  local _, _, _, _, _, itemName = event.pull("modem_message")
  invNum, sideNum, slotNum = locateItem(itemName)
  if config["invNum"] == invNum then
    print(itemName)
    -- trigger gate on storage
    redstone.setBundledOutput(config["sideMap"][sideNum], slotNum, 15)
    -- trigger robot
    redstone.setOutput(config["robot"], 15)
   
    os.sleep(.2)
   
    -- turn redstone back off
    redstone.setBundledOutput(config["sideMap"][sideNum], slotNum, 0)
    redstone.setOutput(config["robot"], 0)
  end
end