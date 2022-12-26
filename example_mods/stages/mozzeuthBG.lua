function onCreate()
	-- background shit
	makeLuaSprite('mozzeuthBG', 'mozzeuthBG', -650, -290);
	setScrollFactor('mozzeuthBG', 0.4, 0.4);
	addLuaSprite('mozzeuthBG', false);
	makeLuaSprite('mozzeuthOBJECT', 'mozzeuthOBJECT', -650, -290);
	setScrollFactor('mozzeuthOBJECT', 0.9, 0.9);
	addLuaSprite('mozzeuthOBJECT', true);
	setProperty('mozzeuthOBJECT.angle',180)
	
end
function onUpdate()
    songPos = getSongPosition()/1000

	setProperty('mozzeuthBG.x',120+math.random(-1,1))
	setProperty('mozzeuthBG.y',120+math.random(-1,1))
	setProperty('mozzeuthBG.scale.x',3)
	setProperty('mozzeuthBG.scale.y',3)
	setProperty('mozzeuthOBJECT.x',-3000+math.random(-2,2))
	setProperty('mozzeuthOBJECT.y',-730+math.sin(songPos*math.pi/2)*30)
end