local component = require("component");
local sides = require("sides");
local robot = require("robot");
local ser = require("serialization");
local geo = component.geolyzer;

function scan(xDeep, yTall, zWide, outputFileName)
	
	-- The parameters specify the area to be scanned.
	-- We assume the robot is at the bottom, left,
	-- and back of the area to be scanned.
	-- The robot will dig forward.
	-- The robot starts one space behind
	-- the area to be scanned.
	
	local pattern = {};
	local z;
	local y;
	local x;
	
	-- begin creating the pattern
	for z = 1, zWide do
		
		pattern[z] = {};
		
		for y = 1, yTall do
			
			pattern[z][y] = {};
			
			for x = 1, xDeep do
				
				pattern[z][y][x] = geo.analyze(sides["front"]).name;
				robot.swing(sides["front"]);
				
				-- if we don't sleep here the robot tries to move
				-- before the block it mined is gone, and fails
				os.sleep(.1);
				
				robot.forward();
				
			end
			
			-- move back to reset
			for x = 1, xDeep do robot.back(); end
			
			-- move up
			robot.up();
			
		end
		
		-- move down to reset
		for y = 1, yTall do robot.down(); end
		
		-- move right
		robot.turnRight();
		robot.forward();
		robot.turnLeft();
		
	end
	
	-- move left to reset
	robot.turnLeft();
	for z = 1, zWide do robot.forward(); end
	robot.turnRight();
	
	local patternFile = io.open(outputFileName, "w");
	patternFile:write(ser.serialize(pattern));
	patternFile:close();
	
end