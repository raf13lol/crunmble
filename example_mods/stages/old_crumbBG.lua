function onCreate()
	-- background shit
	makeLuaSprite('old_crumbBG', 'old_crumbBG', -590, -200);
	setScrollFactor('old_crumbBG', 0.9, 0.9);
	makeLuaSprite('welied', 'welied', 5000, 5000);

	addLuaSprite('old_crumbBG', false);
	addLuaSprite('welied', false);

	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end