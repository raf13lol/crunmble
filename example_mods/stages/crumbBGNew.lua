function onCreate()
	-- background shit
	makeLuaSprite('CrumbGround', 'CrumbGround', -450, -200);
	setScrollFactor('CrumbGround', 0.9, 0.9);
	makeLuaSprite('CrumbSky', 'CrumbSky', -423, -400);
	setScrollFactor('CrumbSky', 0.5, 0.5);
	makeAnimatedLuaSprite('tripp', 'tripp', 400, 350);
	addAnimationByPrefix  ('tripp','tripp','idle',24,true)
	setScrollFactor('CrumbGround', 0.9, 0.9);

	addLuaSprite('CrumbSky', false);
	addLuaSprite('CrumbGround', false);
	addLuaSprite('tripp',false);
end