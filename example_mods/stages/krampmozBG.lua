function onCreate()
	-- background shit
	makeLuaSprite('krampmozBG', 'krampmozBG', -650, -290);
	setScrollFactor('krampmozBG', 0.9, 0.9);

	addLuaSprite('krampmozBG', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end