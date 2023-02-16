function onCreate()
	makeLuaSprite('blackHiddenThing',nil,0,0)
	makeGraphic('blackHiddenThing', 10000, 10000, '000000')
	setProperty('blackHiddenThing.alpha', 0)
	setObjectCamera('blackHiddenThing', 'hud')
	addLuaSprite('blackHiddenThing')
end

function onEvent(name, value1, value2)
	if name == 'blackScreen' then
		if string.lower(value1) == 'true' then
			setProperty('blackHiddenThing.alpha', 1)
		else 
			setProperty('blackHiddenThing.alpha', 0)
		end
	end
end