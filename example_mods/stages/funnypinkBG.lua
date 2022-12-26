function onCreate()
	-- background shit
	makeLuaSprite('funnypinkBG', 'funnypinkBG', -650, -290);
	setScrollFactor('funnypinkBG', 0.9, 0.9);
	makeLuaSprite('funnypinkgroundBG', 'funnypinkgroundBG', -1150, -100);
	setScrollFactor('funnypinkgroundBG', 0.9, 0.9);
	scaleObject('funnypinkgroundBG', 1.2, 1.2);
	
	addLuaSprite('funnypinkBG', false);
	addLuaSprite('funnypinkgroundBG', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end