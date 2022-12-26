function onCreate()
	-- background shit
	makeLuaSprite('fondue_bg', 'fondue_bg', -1500, -255);
	setScrollFactor('fondue_bg', 0.9, 0.9);

	addLuaSprite('fondue_bg', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end