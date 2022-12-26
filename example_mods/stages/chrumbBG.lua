function onCreate()
	-- background shit
	makeLuaSprite('chrumbgroundBG', 'chrumbgroundBG', -450, -200);
	setScrollFactor('chrumbgroundBG', 0.9, 0.9);
	makeLuaSprite('chrumbBG', 'chrumbBG', -423, -400);
	setScrollFactor('chrumbBG', 0.5, 0.5);
	setScrollFactor('chrumbgroundBG', 0.9, 0.9);

	addLuaSprite('chrumbBG', false);
	addLuaSprite('chrumbgroundBG', false);
end