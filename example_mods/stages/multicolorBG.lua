function onCreate()
	-- background shit
	makeLuaSprite('multicolorBG', 'multicolorBG', -650, -290);
	setScrollFactor('multicolorBG', 0.9, 0.9);

	addLuaSprite('multicolorBG', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end