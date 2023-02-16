function onCreate()
	-- background shit
	makeLuaSprite('cebg', 'cebg', -1000, -200);
	setScrollFactor('cebg', 0.9, 0.9);
	makeAnimatedLuaSprite('cebgbopper', 'cebgbopper', 500, 180);
	addAnimationByPrefix  ('cebgbopper','boppe','bop',24, false)

	addLuaSprite('cebg', false);
	addLuaSprite('cebgbopper',false);
end

function onBeatHit()
	objectPlayAnimation('cebgbopper', 'boppe')
end