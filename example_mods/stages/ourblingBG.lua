function onCreate()
	-- background shit
	makeLuaSprite('OurblingBG', 'OurblingBG', -150, -300);
	setScrollFactor('OurblingBG', 1, 1);
	scaleObject('OurblingBG', 0.45, 0.45);
	addLuaSprite('OurblingBG', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end