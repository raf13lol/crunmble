function onCreate()
	-- background shit
	makeLuaSprite('warcrimesbg', 'warcrimesbg', -650, -290);
	setScrollFactor('warcrimesbg', 0.9, 0.9);

	addLuaSprite('warcrimesbg', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end