function onCreate()
	-- background shit
	makeLuaSprite('mysingingmonstersBG', 'mysingingmonstersBG', -850, -200);
	setScrollFactor('mysingingmonstersBG', 0.9, 0.9);
	makeAnimatedLuaSprite('mysinginggf', 'mysinginggf', -325, 625);
	addAnimationByPrefix  ('mysinginggf','mysinginggf','idle',24,true)
	makeAnimatedLuaSprite('mysinginggf2', 'mysinginggf', -450, 825);
	addAnimationByPrefix  ('mysinginggf2','mysinginggf','idle',12,true)
	makeAnimatedLuaSprite('mysinginggf3', 'mysinginggf', 1350, 825);
	addAnimationByPrefix  ('mysinginggf3','mysinginggf','idle',48,true)
	makeAnimatedLuaSprite('mysinginggf4', 'mysinginggf', 800, 900);
	addAnimationByPrefix  ('mysinginggf4','mysinginggf','idle',96,true)
	
	setScrollFactor('mysingingmonstersBG', 1, 1);
	scaleObject('mysingingmonstersBG', 2.5, 2.5);
	scaleObject('mysinginggf2', 1.3, 1.3);
	scaleObject('mysinginggf4', 0.7, 0.7);
	addLuaSprite('mysingingmonstersBG', false);
	addLuaSprite('mysinginggf',false);
	addLuaSprite('mysinginggf2',false);
	addLuaSprite('mysinginggf3',false);
	addLuaSprite('mysinginggf4',false);
	setProperty('mysinginggf2.antialiasing', false)
	setProperty('mysinginggf4.antialiasing', false)
end