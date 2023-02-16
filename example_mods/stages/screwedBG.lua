function onCreate()
	-- background shit
	makeLuaSprite('ScrewedBG', 'ScrewedBG', -590, -200);
	setScrollFactor('ScrewedBG', 0.9, 0.9);

	addLuaSprite('ScrewedBG', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end