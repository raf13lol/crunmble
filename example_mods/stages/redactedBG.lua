function onCreate()
	-- background shit
	makeLuaSprite('redactedbg', 'redactedbg', -200, 0);
	setScrollFactor('redactedbg', 0.9, 0.9);
	scaleObject('redactedbg', 1.5,1.5)

	addLuaSprite('redactedbg', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end