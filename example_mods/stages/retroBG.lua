function onCreate()
	-- background shit
	makeLuaSprite('retroground', 'retroground', -450, -200);
	setScrollFactor('retroground', 0.9, 0.9);
	makeLuaSprite('retrosky', 'retrosky', -423, -500);
	setScrollFactor('retrosky', 0.5, 0.5);
	makeAnimatedLuaSprite('retrotrip', 'retrotrip', 600, 50);
	addAnimationByPrefix  ('retrotrip','retrotrip','trippidle',24,true)
	setScrollFactor('retroground', 0.9, 0.9);

	addLuaSprite('retrosky', false);
	addLuaSprite('retroground', false);
	addLuaSprite('retrotrip',false);
end