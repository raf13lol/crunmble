function onCreate()
	-- background shit
	makeLuaSprite('highBG', 'highBG', -650, -290);
	setScrollFactor('highBG', 0.9, 0.9);
	scaleObject('highBG', 0.5, 0.5);

	addLuaSprite('highBG', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end