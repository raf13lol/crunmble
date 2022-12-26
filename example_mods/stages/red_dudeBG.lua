function onCreate()
	-- background shit
	makeLuaSprite('red_dudeBG','red_dudeBG',-1100,-700)
	addLuaSprite('red_dudeBG',false)
	setLuaSpriteScrollFactor('red_dudeBG',1,1)
	scaleObject('red_dudeBG', 1.5,1.5);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end