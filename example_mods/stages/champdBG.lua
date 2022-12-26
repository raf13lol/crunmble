function onCreate()
	-- background shit
	makeLuaSprite('champdBG','champdBG',-300,0)
	addLuaSprite('champdBG',false)
	setLuaSpriteScrollFactor('champdBG',1,1)
	scaleObject('champdBG', 1,1);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end