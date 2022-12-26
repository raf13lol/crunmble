function onCreate()
	-- background shit
	makeLuaSprite('yamBG', 'yamBG', -650, -290);
	setScrollFactor('yamBG', 0.9, 0.9);

	addLuaSprite('yamBG', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end