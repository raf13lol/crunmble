function onCreate()
	-- background shit
	makeLuaSprite('tripBG', 'tripBG', -620, -710);
	
	makeLuaSprite('tripFG', 'tripFG', -650, -290);

	addLuaSprite('tripBG', false);
	addLuaSprite('tripFG', false)


	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end