function onCreate()
	-- background shit
	makeLuaSprite('cheese_bg', 'cheese_bg', -450, -200);
	setScrollFactor('cheese_bg', 0.9, 0.9);

	addLuaSprite('cheese_bg', false);
	
end

function onCreatePost()
	addGlitchEffect('cheese_bg', 2, 2);
	addChromaticAbberationEffect('camHUD', 2, 2);
end
