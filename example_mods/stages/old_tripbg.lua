function onCreate()
	-- background shit
	makeLuaSprite('old_tripbg', 'old_tripbg', -650, -290);
	setScrollFactor('old_tripbg', 0.9, 0.9);

	addLuaSprite('old_tripbg', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end