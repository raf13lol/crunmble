function onCreate()
	-- background shit
	makeLuaSprite('Disregard3BG', 'Disregard3BG', -650, -290);
	setScrollFactor('Disregard3BG', 0.9, 0.9);
	scaleObject('Disregard3BG', 3.0, 3.0);
	
	addLuaSprite('Disregard3BG', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end