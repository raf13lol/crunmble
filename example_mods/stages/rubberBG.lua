function onCreate()
	-- background shit
	makeLuaSprite('heeeeeeeee', 'heeeeeeeee', -650, -290);
	setScrollFactor('heeeeeeeee', 0.9, 0.9);

	addLuaSprite('heeeeeeeee', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end