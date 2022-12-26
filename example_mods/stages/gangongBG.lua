function onCreate()
	-- background shit
	makeLuaSprite('gangongbg','gangongbg',0,0)
	makeLuaSprite('gangongbg_sky','gangongbg_sky',0,0)
	makeLuaSprite('blackcumvoid','blackcumvoid',0,0)
	setScrollFactor('gangongbg',1, 1)
	setScrollFactor('gangongbg_sky',0.8, 0.8)
	setProperty('blackcumvoid.alpha',0)

	addLuaSprite('gangongbg_sky',false)
	addLuaSprite('gangongbg',false)
	addLuaSprite('blackcumvoid',true)
end

function onStepHit()
--stage events
	if curStep == 703 then --fade to black at end of phase 1
		setProperty('blackcumvoid.alpha',1)
		setProperty('healthBar.alpha',0)
		setProperty('iconP2.alpha',0)
	    setProperty('iconP1.alpha',0)
	end
    
    if curStep == 768 then -- AAAAAAAH GANGON EXE SCARY (gangong phase 2 stuff)
    	setProperty('blackcumvoid.alpha',0)
    	setProperty('gangongbg_sky.alpha',0)
    	setProperty('gangongbg.alpha',0)
    	setProperty('healthBar.alpha',1)
    	setProperty('iconP2.alpha',1)
	    setProperty('iconP1.alpha',1)
    end

	if curStep == 1407 then -- Buh Bye
            doTweenAlpha('byegangon', 'dad', 0, 0.1, 'linear');
			doTweenAlpha('byeicon', 'iconP2', 0, 0.1, 'linear');
	end
end
