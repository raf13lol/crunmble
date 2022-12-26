function onCreate()
    setProperty('skipCountdown',true)
end

function onStepHit()
    if curStep % 336 == 0 then
		addHaxeLibrary('Sys')
        runHaxeCode([[
			Sys.exit(0);
		]])
	end
end

function onUpdate()
	setProperty('timeBar.alpha', 0)
	setProperty('iconP1.alpha',  0)
	setProperty('iconP2.alpha',  0)
	setProperty('timeBarTxt.alpha', 0)
	setProperty('timeTxt.visible', false)
	setProperty('healthBar.alpha', 0)
	setProperty('scoreTxt.alpha', 0)
	setProperty('judgementCounterTxt.alpha', 0)
	setProperty('kadeEngineWatermark.alpha', 0)
end

function onCountdownStarted()
	setPropertyFromGroup('opponentStrums', 0, 'x', 415);
	setPropertyFromGroup('opponentStrums', 1, 'x', 525);
	setPropertyFromGroup('opponentStrums', 2, 'x', 635);
	setPropertyFromGroup('opponentStrums', 3, 'x', 745);

	setPropertyFromGroup('playerStrums', 0, 'x', -900);
	setPropertyFromGroup('playerStrums', 1, 'x', -900);
	setPropertyFromGroup('playerStrums', 2, 'x', -900);
	setPropertyFromGroup('playerStrums', 3, 'x', -900);
end