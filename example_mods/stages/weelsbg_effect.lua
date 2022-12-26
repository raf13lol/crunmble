function onCreate()
	-- background shit
	makeLuaSprite('weelsbg_effect', 'weelsbg_effect', -650, -10);
	setScrollFactor('weelsbg_effect', 0.9, 0.9);

	addLuaSprite('weelsbg_effect', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end