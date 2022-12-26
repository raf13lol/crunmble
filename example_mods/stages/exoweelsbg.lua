function onCreate()
	-- background shit
	makeLuaSprite('exoweelsground', 'exoweelsground', -450, -200);
	setScrollFactor('exoweelsground', 0.9, 0.9);
	makeLuaSprite('exoweelssky', 'exoweelssky', -570, -150);
	setScrollFactor('exoweelssky', 0.6, 0.6);

	addLuaSprite('exoweelsground', false);
	addLuaSprite('exoweelssky', false);
end