function onCreate()
	-- background shit
	makeLuaSprite('weelsbg', 'weelsbg', -650, -290);
	setScrollFactor('weelsbg', 0.9, 0.9);

	addLuaSprite('weelsbg', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end