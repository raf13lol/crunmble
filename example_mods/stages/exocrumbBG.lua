function onCreate()
	-- background shit
	makeLuaSprite('Exocrumbsky', 'Exocrumbsky', -650, -290);
	setScrollFactor('Exocrumbsky', 0.9, 0.9);
	makeLuaSprite('Exocrumbground', 'Exocrumbground', -1550, -820);
	setScrollFactor('Exocrumbsground', 0.9, 0.9);
	scaleObject('Exocrumbground', 1.8, 1.8);

	addLuaSprite('Exocrumbsky', false);
	addLuaSprite('Exocrumbground', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end