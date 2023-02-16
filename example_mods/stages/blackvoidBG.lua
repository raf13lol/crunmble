function onCreate()
	-- background shit
	makeLuaSprite('black', 'black', -750, -450);
	setScrollFactor('black', 0.9, 0.9);
	makeLuaSprite('black', 'black', -423, -400);
	setScrollFactor('black', 0.5, 0.5);
	setScrollFactor('black', 0.9, 0.9);

	scaleObject('black', 2, 2);
	scaleObject('black', 1.5, 1.5);

	addLuaSprite('black', false);
	addLuaSprite('black', false);
end