function onCreate()
	-- background shit
	makeLuaSprite('MonetaryBG', 'MonetaryBG', -590, -100);
	setScrollFactor('MonetaryBG', 0.9, 0.9);
	scaleObject('MonetaryBG', 2, 2);

	addLuaSprite('MonetaryBG', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end