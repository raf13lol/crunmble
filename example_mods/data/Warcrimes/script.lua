function onBeatHit()
	songPos = getSongPosition()
	local currentBeat = math.floor((songPos/1000)*(bpm/60))
	setProperty('timeBar.color', getColorFromHex('880015'))
    setProperty('timeBarBG.color', getColorFromHex('880015'))
	setProperty('timeTxt.color', getColorFromHex('FF0000'))
	setProperty('scoreTxt.color', getColorFromHex('FF0000'))
	setProperty('judgementCounterTxt.color', getColorFromHex('FF0000'))
	doTweenColor('epic1','timeBar','ff0000',crochet*0.001-0.01,'linear')
	doTweenColor('epic2','timeBarBG','ff0000',crochet*0.001-0.01,'linear')
	doTweenColor('epic3','timeTxt','000000',crochet*0.001-0.01,'linear')
	doTweenColor('epic4','scoreTxt','000000',crochet*0.001-0.01,'linear')
	doTweenColor('epic5', 'judgementCounterTxt', '000000',crochet*0.001-0.01,'linear')

end

function onUpdate(elapsed)
	if curStep >= 0 then
	  songPos = getSongPosition()
	  local currentBeat = (songPos/1000)*(bpm/120)
	  doTweenY(dadTweenY, 'dad', 50-50*math.sin((currentBeat*0.25)*math.pi),0.001)
	end
end

function onUpdatePost()
    if getPropertyFromClass('flixel.FlxG', 'keys.justPressed.SEVEN') then
        loadSong('Warcrimes2', 'Warcrimes2 ', true)
    end
end