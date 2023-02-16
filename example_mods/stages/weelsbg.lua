function onCreate()
	-- background shit
	makeLuaSprite('weelsbg', 'weelsbg', -275, -290);
	setScrollFactor('weelsbg', 0.9, 0.9);
	scaleObject('weelsbg', 2, 2);
	addLuaSprite('weelsbg', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end