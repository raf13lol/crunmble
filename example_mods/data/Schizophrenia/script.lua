function onCountdownStarted()
	for i = 0, 3 do
		setPropertyFromGroup('opponentStrums', i, 'x', -900);
	end

	setPropertyFromGroup('playerStrums', 0, 'x', 415);
	setPropertyFromGroup('playerStrums', 1, 'x', 525);
	setPropertyFromGroup('playerStrums', 2, 'x', 635);
	setPropertyFromGroup('playerStrums', 3, 'x', 745);
end

function onUpdate()
	setProperty('iconP2.alpha',  0)
	setProperty('timeBar.color', getColorFromHex('00a2e8'))
    setProperty('timeBarBG.color', getColorFromHex('00a2e8'))
end