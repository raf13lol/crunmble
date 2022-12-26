function onCreate()
	-- background shit
	makeLuaSprite('old_crumbBG', 'old_crumbBG', -590, -200);
	setScrollFactor('old_crumbBG', 0.9, 0.9);

	addLuaSprite('old_crumbBG', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end