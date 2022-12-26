function onCreate()
	-- background shit
	makeLuaSprite('BG', 'CRUMBTBH_BG', 0, 0);
	setScrollFactor('BG', 0.9, 0.9);
	
	makeLuaSprite('FG', 'CRUMBTBH_FG', 0, 50);
	setScrollFactor('FG', 0.9, 0.9);

	addLuaSprite('BG', false);
	
	addLuaSprite('FG', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end