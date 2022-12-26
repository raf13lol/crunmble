function onCreate()
	-- background shit
	makeLuaSprite('absolutebg','absolutebg',-300, -700)
	addLuaSprite('absolutebg',false)
	setLuaSpriteScrollFactor('absolutebg',1,1)
	makeLuaSprite('absolutefg','absolutefg',-300, -700)
	addLuaSprite('absolutefg',false)
	setLuaSpriteScrollFactor('absolutefg',1,1)
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end