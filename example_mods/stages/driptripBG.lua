function onCreate()
	-- background shit
	makeLuaSprite('driptripBG', 'driptripBG', -1000, -750);
	scaleObject('driptripBG', 1.5, 1.5);
	addLuaSprite('driptripBG', false);
	


	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end