function onCreate()
	-- background shit
	makeLuaSprite('ikeagroundBG', 'ikeagroundBG', -450, -200);
	setScrollFactor('ikeagroundBG', 0.9, 0.9);
	makeLuaSprite('ikeaBG', 'ikeaBG', -423, -400);
	setScrollFactor('ikeaBG', 0.5, 0.5);
	setScrollFactor('ikeagroundBG', 0.9, 0.9);

	addLuaSprite('ikeaBG', false);
	addLuaSprite('ikeagroundBG', false);
end