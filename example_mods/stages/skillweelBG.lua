function onCreate()
	-- background shit
	makeLuaSprite('skillweelCrowd', 'skillweelCrowd', -750, -325);
	setScrollFactor('skillweelCrowd', 0.9, 0.9);
	makeLuaSprite('skillweel', 'skillweel', -500, -200);
	setScrollFactor('skillweel', 0.5, 0.5);
	setScrollFactor('skillweelCrowd', 0.9, 0.9);

	scaleObject('skillweelCrowd', 2, 2);
	scaleObject('skillweel', 2, 2);

	addLuaSprite('skillweel', false);
	addLuaSprite('skillweelCrowd', false);
end