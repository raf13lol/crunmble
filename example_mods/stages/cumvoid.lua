function onCreate()
	-- background shit
	makeLuaSprite('cumvoid', 'cumvoid', -650, -290);
	setScrollFactor('cumvoid', 0.9, 0.9);

	addLuaSprite('cumvoid', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end