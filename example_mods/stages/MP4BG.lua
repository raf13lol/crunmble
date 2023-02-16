math.randomseed(os.time())
local scaryBG = {'jeff','smiledog','piggy','mouse','granny','garten','evilscare','ben','sonicexe'}

function onCreate()
	-- background shit
	makeLuaSprite('MP4Ground', 'MP4Ground', -450, -200);
	setScrollFactor('MP4Ground', 0.9, 0.9);
	makeLuaSprite('MP4Sky', 'MP4Sky', -423, -400);
	setScrollFactor('MP4Sky', 0.5, 0.5);
	makeAnimatedLuaSprite('evilscarybg', 'evilscarybg', 600, 350); 
	addAnimationByPrefix  ('evilscarybg','jeff','jeff',24,true) --1
	addAnimationByPrefix  ('evilscarybg','smiledog','smiledog',24,true) --2
	addAnimationByPrefix  ('evilscarybg','piggy','piggy',24,true) --3
	addAnimationByPrefix  ('evilscarybg','mouse','mouse',24,true) --4
	addAnimationByPrefix  ('evilscarybg','granny','granny',24,true) --5
	addAnimationByPrefix  ('evilscarybg','garten','garten',24,true) --6
	addAnimationByPrefix  ('evilscarybg','evilscare','evilscare',24,true) --7
	addAnimationByPrefix  ('evilscarybg','ben','ben',24,true) --8
	addAnimationByPrefix  ('evilscarybg','sonicexe','sonicexe',24,true) --9
	setScrollFactor('MP4Ground', 0.9, 0.9);
	
	local curAnim = scaryBG[ math.random( #scaryBG ) ]

	playAnim('evilscarybg', curAnim, true)

	addLuaSprite('MP4Sky', false);
	addLuaSprite('MP4Ground', false);
	addLuaSprite('evilscarybg',false);
end