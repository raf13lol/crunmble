function onCreate()
	-- background shit
	makeLuaSprite('skillcrumbBG', 'skillcrumbBG', -750, -450);
	setScrollFactor('skillcrumbBG', 0.9, 0.9);
	makeLuaSprite('skillrumbBG', 'skillrumbBG', -423, -400);
	setScrollFactor('skillrumbBG', 0.5, 0.5);
	setScrollFactor('skillcrumbBG', 0.9, 0.9);

	scaleObject('skillcrumbBG', 2, 2);
	scaleObject('skillrumbBG', 1.5, 1.5);

	addLuaSprite('skillrumbBG', false);
	addLuaSprite('skillcrumbBG', false);
end