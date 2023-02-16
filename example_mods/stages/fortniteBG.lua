function onCreate()
	-- background shit
	makeLuaSprite('fortniteBG', 'fortniteBG', -450, -200);
	setScrollFactor('fortniteBG', 0.9, 0.9);

	addLuaSprite('fortniteBG', false);
	
end

function onCreatePost()
	addGlitchEffect('fortniteBG', 2, 2);
	addChromaticAbberationEffect('camHUD', 2, 2);
end
