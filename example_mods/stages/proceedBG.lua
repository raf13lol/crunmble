function onCreate()
	-- background shit
	makeLuaSprite('proceedBG', 'proceedBG', -800, -500);
	setScrollFactor('proceedBG', 1, 1);
	
	scaleObject('proceedBG', 2.3, 2.3)
	
	addLuaSprite('proceedBG', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end