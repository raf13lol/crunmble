function onCreate()
	-- background shit
	makeLuaSprite('gooberBG', 'gooberBG', -650, -290);
	setScrollFactor('gooberBG', 0.9, 0.9);
	makeLuaSprite('gooberFG', 'gooberFG', -650, -290);
	setScrollFactor('gooberFG', 0.9, 0.9);

	addLuaSprite('gooberBG', false);
	addLuaSprite('gooberFG', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end