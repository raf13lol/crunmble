function onCreate()
	-- background shit
	makeLuaSprite('bunklygroundBG', 'bunklygroundBG', -650, -200);
	setScrollFactor('bunklygroundBG', 0.9, 0.9);
	makeLuaSprite('bunklyBG', 'bunklyBG', -700, -400);
	setScrollFactor('bunklyBG', 0.5, 0.5);
	setScrollFactor('bunklygroundBG', 0.9, 0.9);
	scaleObject('bunklyBG', 1.2, 1.2);
	makeLuaSprite('Squikcarfront','Squikcarfront',-1200, 500)
	scaleObject('Squikcarfront', 1.4, 1.4);
	makeLuaSprite('blackcumvoid', 'blackcumvoid', -650, -550);
	setProperty('blackcumvoid.alpha', 0)
	makeAnimatedLuaSprite('ripbunkly', 'ripbunkly', 150, -200);
	addAnimationByPrefix  ('ripbunkly','ripbunkly','idle',24,true)
	setProperty('ripbunkly.alpha', 0)
	scaleObject('ripbunkly',2,2)

	addLuaSprite('bunklyBG', false);
	addLuaSprite('bunklygroundBG', false);
	addLuaSprite('Squikcarfront', true);
	addLuaSprite('blackcumvoid', true);
	addLuaSprite('ripbunkly', true);
end

function onStepHit()

	if curStep == 1196 then
		playSound('bfjump', 1)
		doTweenY('boymove','boyfriend',100,0.3,'cubeIn')		
		doTweenX('crash','Squikcarfront',100,0.3,'cubeIn')		
	end

	if curStep == 1199 then
		setProperty('blackcumvoid.alpha', 1)
	end

	if curStep == 1254 then
		doTweenAlpha('rip','ripbunkly',1,0.1,'cubeIn')
	end


end