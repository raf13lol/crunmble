--stolen from serdzhant's challenge-edd pysch port LOLOLOL
--stolen from ME! hahaahahaha!
dead = false
crumbhere = true
weelhere = false

turn = false

function onCreate()
	if not hideHud then
	setObjectOrder('crumb', getObjectOrder('iconP1') - 1)
	setObjectOrder('crumbL', getObjectOrder('iconP1') - 1)
	makeLuaSprite('crumb', 'icons/crumbNeu', getProperty('iconP1.x'), getProperty('iconP1.y'))
	makeLuaSprite('crumbL', 'icons/crumbLose', getProperty('iconP1.x'), getProperty('iconP1.y'))
	makeLuaSprite('crumbdeat', 'icons/crumbDed', 890, getProperty('iconP1.y') + 20)

  	setProperty('crumb.antialiasing', false)
 	setProperty('crumbL.antialiasing', false)
	 setProperty('crumbdeat.antialiasing', false)
	setObjectCamera('crumb', 'hud')
	setObjectCamera('crumbL', 'hud')
	setObjectCamera('crumbdeat', 'hud')

	setObjectOrder('weel', getObjectOrder('iconP1') - 1)
	setObjectOrder('weelL', getObjectOrder('iconP1') - 1)
	makeLuaSprite('weel', 'icons/weelNeu', getProperty('iconP1.x'), getProperty('iconP1.y'))
	makeLuaSprite('weelL', 'icons/weelLose', getProperty('iconP1.x'), getProperty('iconP1.y'))
	makeLuaSprite('weeldeat', 'icons/weelDed', 870, getProperty('iconP1.y') - 45)

  	setProperty('weel.antialiasing', false)
 	setProperty('weelL.antialiasing', false)
	setProperty('weeldeat.antialiasing', false)
	setObjectCamera('weel', 'hud')
	setObjectCamera('weelL', 'hud')
	setObjectCamera('weeldeat', 'hud')

	end
end

function onUpdate()
	if not hideHud and not dead and crumbhere then
	addLuaSprite('crumb', true)
	addLuaSprite('crumbL', true)
	setProperty('crumbL.visible', false)
	setProperty('crumb.visible', true)
	setProperty('crumb.y', getProperty('iconP1.y') - 60)
	setProperty('crumb.x', getProperty('iconP1.x') + 40)
	setProperty('crumb.scale.x', getProperty('iconP1.scale.x') - 0.15)
	setProperty('crumb.scale.y', getProperty('iconP1.scale.y') - 0.15)
	setObjectOrder('crumb', getObjectOrder('iconP1') - 1)
	setProperty('crumb.angle', getProperty('iconP1.angle'))

	--LOSE
	setProperty('crumbL.y', getProperty('iconP1.y') - 60)
	setProperty('crumbL.x', getProperty('iconP1.x') + 40)
	setProperty('crumbL.scale.x', getProperty('iconP1.scale.x') - 0.15)
	setProperty('crumbL.scale.y', getProperty('iconP1.scale.y') - 0.15)
	setObjectOrder('crumbL', getObjectOrder('iconP1') - 1)
	setProperty('crumbL.angle', getProperty('iconP1.angle'))
	end
	if not hideHud and not dead and weelhere then
	addLuaSprite('weel', true)
	addLuaSprite('weelL', true)
	setProperty('weelL.visible', false)
	setProperty('weel.visible', true)
	setProperty('weel.y', getProperty('iconP1.y') - 60)
	setProperty('weel.x', getProperty('iconP1.x') - 30)
	setProperty('weel.scale.x', getProperty('iconP1.scale.x') - 0.15)
	setProperty('weel.scale.y', getProperty('iconP1.scale.y') - 0.15)
	setObjectOrder('weel', getObjectOrder('iconP1') - 1)
	setProperty('weel.angle', getProperty('iconP1.angle'))
	
	--LOSE
	setProperty('weelL.y', getProperty('iconP1.y') - 60)
	setProperty('weelL.x', getProperty('iconP1.x') - 30)
	setProperty('weelL.scale.x', getProperty('iconP1.scale.x') - 0.15)
	setProperty('weelL.scale.y', getProperty('iconP1.scale.y') - 0.15)
	setObjectOrder('weelL', getObjectOrder('iconP1') - 1)
	setProperty('weelL.angle', getProperty('iconP1.angle'))
	end
	if getProperty('health') < 0.4 and dead == false then
		setProperty('crumbL.visible', true)
		setProperty('crumb.visible', false)
	else
		setProperty('crumbL.visible', false)
		setProperty('crumb.visible', true)
	end
	if getProperty('health') < 0.4 and dead == false and weelhere == true then
		setProperty('weelL.visible', true)
		setProperty('weel.visible', false)
	else
		setProperty('weelL.visible', false)
		setProperty('weel.visible', true)
	end
end

function onStepHit()
	if curStep == 2048 then -- about 2:31
		weelhere = true
	end
	if curStep == 2816 then -- about 3:31
		removeLuaSprite('weel')
		removeLuaSprite('weelL')
		removeLuaSprite('crumb')
		removeLuaSprite('crumbL')
		addLuaSprite('weeldeat', true)
		addLuaSprite('crumbdeat', true)
	end
end

function onBeatHit()
	if curBeat % 2 == 0 then
		if turn == false then
		setProperty('crumbdeat.angle', -10)
		setProperty('weeldeat.angle', 10)
		turn = true
		else
		setProperty('crumbdeat.angle', 10)
		setProperty('weeldeat.angle', -10)
		turn = false
		end
	end
	doTweenAngle('dedBop1', 'crumbdeat', 0, 0.5)
	doTweenAngle('dedBop2', 'weeldeat', 0, 0.5)
end