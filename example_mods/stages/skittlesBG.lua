function onCreate()
	-- background shit
	makeLuaSprite('skittlesbg','skittlesbg',-1000,-300)
	addLuaSprite('skittlesbg',false)
	setLuaSpriteScrollFactor('skittlesbg',1,1)
	scaleObject('skittlesbg', 1,1);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end