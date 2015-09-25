local component = require("component");
local sides = require("sides");
local robot = require("robot");
local ser = require("serialization");
local inv = component.inventory_controller

-- returns first slot item appears in
function findItem(name)
	for i = 1, robot.inventorySize() do
		local slotInfo = inv.getStackInInternalSlot(i)
		if slotInfo and slotInfo.name == name then
			return i, slotInfo.size
		end
	end
	return false
end

function build(patternFileName)
	
	local patternFile = io.open(patternFileName);
	local patternText = patternFile:read();
	patternFile:close();
	local pattern = ser.unserialize(patternText);
	
	-- getting in position (from scan default position)
	robot.up();
	robot.forward();
	
	for z = 1, #pattern do
		
		for y = 1, #pattern[z] do
			
			for x = 1, #pattern[z][y] do
				
				if pattern[z][y][x] ~= "minecraft:air" then
					
					itemLocation = findItem(pattern[z][y][x]);
					if itemLocation then
						robot.select(itemLocation);
						robot.placeDown();
					end
					
				end
				
				robot.forward();
				
			end
			
			-- move back to reset
			for x = 1, #pattern[z][y] do robot.back(); end
			
			robot.up();
			
		end
		
		-- move right
		robot.turnRight();
		robot.forward();
		robot.turnLeft();
		
		-- move down to reset
		for y = 1, #pattern[z] do robot.down(); end
		
	end
	
	-- getting out of position
	robot.back();
	robot.down();
	
	-- move left to reset
	robot.turnLeft();
	for z = 1, #pattern do robot.forward(); end
	robot.turnRight();
	
end