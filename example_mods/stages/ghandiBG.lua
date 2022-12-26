function onCreate()
	-- background shit
	makeLuaSprite('ghandiBG', 'ghandiBG', -255, -520);
	setScrollFactor('ghandiBG', 0.9, 0.9);
	scaleObject('ghandiBG',2,2)

	addLuaSprite('ghandiBG', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end