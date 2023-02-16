local playDialogue = false;
local playedVideo = false;
function onStartCountdown()
	if not playedVideo and isStoryMode and not seenCutscene then 
		startVideo('cheese');
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
		startDialogue('dialogue', 'Cheesefries');
	end
end

function onUpdate(elapsed)
	if curStep >= 0 then
	  songPos = getSongPosition()
	  local currentBeat = (songPos/1000)*(bpm/120)
	  doTweenY(dadTweenY, 'dad', 50-50*math.sin((currentBeat*0.25)*math.pi),0.001)
	end
  end