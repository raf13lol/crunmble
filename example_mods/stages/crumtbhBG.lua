function onCreate()
	-- background shit
	makeLuaSprite('crumbtbhBG', 'crumbtbhBG', -650, -10);
	setScrollFactor('crumbtbhBG', 0.9, 0.9);

	addLuaSprite('crumbtbhBG', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end