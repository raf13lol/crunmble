local playDialogue = false;
local playedVideo = false;
function onStartCountdown()
	if not playedVideo and isStoryMode and not seenCutscene then 
		startVideo('trip');
		playDialogue = true;
		playedVideo = true;
		return Function_Stop;
	elseif playDialogue then 
		playedVideo = true;
		playDialogue = false;
		setProperty('inCutscene', true);
		runTimer('startDialogue', 0.8);

		return Function_Stop;
	end
	return Function_Continue;
end

function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'startDialogue' then 
		startDialogue('dialogue', 'Tripped');
	end
end

-- Colored Timebar 

function onUpdate()
	setProperty('timeBar.color', getColorFromHex('ed1c24'))
    setProperty('timeBarBG.color', getColorFromHex('ed1c24'))
end

-- OK NOW TRIP SHAKING THE SCREEN

function opponentNoteHit(id,data,type,sus)
	if curStep >= 199 and curStep <= 331 then
		triggerEvent('Screen Shake','0.02, 0.01','0.5, 0.01')
	end
	if curStep >= 471 and curStep <= 559 then
		triggerEvent('Screen Shake','0.02, 0.01','0.5, 0.01')
	end
	if curStep >= 583 and curStep <= 630 then
		triggerEvent('Screen Shake','0.02, 0.01','0.5, 0.01')
	end
	if curStep >= 739 and curStep <= 769 then
		triggerEvent('Screen Shake','0.02, 0.01','0.5, 0.01')
	end
	if curStep >= 846 and curStep <= 865 then
		triggerEvent('Screen Shake','0.02, 0.01','0.5, 0.01')
	end
end