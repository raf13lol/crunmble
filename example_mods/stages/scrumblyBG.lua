function onCreate()
	-- background shit
	makeLuaSprite('scrumblyBG', 'scrumblyBG', -650, -290);
	setScrollFactor('scrumblyBG', 0.9, 0.9);

	addLuaSprite('scrumblyBG', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end