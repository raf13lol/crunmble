function onCreate()
	-- background shit
	makeLuaSprite('crumbmasBG', 'crumbmasBG', -650, -290);
	setScrollFactor('crumbmasBG', 0.9, 0.9);

	addLuaSprite('crumbmasBG', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end