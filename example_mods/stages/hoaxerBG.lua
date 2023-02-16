function onCreate()
	-- background shit
	makeLuaSprite('HoaxerBG', 'HoaxerBG', -590, -100);
	setScrollFactor('HoaxerBG', 0.9, 0.9);
	scaleObject('HoaxerBG', 2, 2);

	addLuaSprite('HoaxerBG', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end