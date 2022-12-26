function onCreate()
	-- background shit
	makeLuaSprite('Montereysky', 'Montereysky', -650, -290);
	setScrollFactor('Montereysky', 0.9, 0.9);
	makeLuaSprite('Montereyground', 'Montereyground', -1350, -450);
	setScrollFactor('Montereyground', 0.9, 0.9);
	scaleObject('Montereyground', 1.6, 1.6);
	
	addLuaSprite('Montereysky', false);
	addLuaSprite('Montereyground', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end