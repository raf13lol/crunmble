function onCreate()
	-- background shit
	makeLuaSprite('phase200ground','phase200ground',0,1000)
	makeLuaSprite('phase200sky','phase200sky',0,0)
	setScrollFactor('phase200ground',1, 1)
	setScrollFactor('phase200sky',0.8, 0.8)

	addLuaSprite('phase200sky',false)
	addLuaSprite('phase200ground',false)
end
