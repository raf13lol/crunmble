function onCreate()
	-- background shit
	makeLuaSprite('old_GooberBG', 'old_GooberBG', -650, -250);
	setScrollFactor('old_GooberBG', 0.9, 0.9);

	addLuaSprite('old_GooberBG', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end