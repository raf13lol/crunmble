local playDialogue = false;
local playedVideo = false;
function onStartCountdown()
	if not playedVideo and isStoryMode and not seenCutscene then 
		startVideo('exocrumb');
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
		startDialogue('dialogue', 'Vestige');
	end
end


function onUpdate()
	setProperty('timeBar.color', getColorFromHex('b5e61d'))
    setProperty('timeBarBG.color', getColorFromHex('b5e61d'))
end