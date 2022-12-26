function onCreate()
	-- background shit
	makeLuaSprite('magentaBG', 'magentaBG', -650, -10);
	setScrollFactor('magentaBG', 0.9, 0.9);

	addLuaSprite('magentaBG', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end