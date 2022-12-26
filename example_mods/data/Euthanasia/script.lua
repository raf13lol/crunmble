local allowCountdown = false
function onStartCountdown()
	-- Block the first countdown and start a timer of 0.8 seconds to play the dialogue
	if not allowCountdown and isStoryMode and not seenCutscene then
		setProperty('inCutscene', true);
		runTimer('startDialogue', 0.8);
		allowCountdown = true;
		return Function_Stop;
	end
	return Function_Continue;
end

function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'startDialogue' then -- Timer completed, play dialogue
		startDialogue('dialogue', 'nothing');
	end
end

-- Dialogue (When a dialogue is finished, it calls startCountdown again)
function onNextDialogue(count)
	-- triggered when the next dialogue line starts, 'line' starts with 1
end

function onSkipDialogue(count)
	-- triggered when you press Enter and skip a dialogue line that was still being typed, dialogue line starts with 1
end

function onCountdownStarted()
	for i = 0, 3 do
		setPropertyFromGroup('opponentStrums', i, 'x', -900);
	end
end

function onBeatHit()
	if curBeat > 703 then
		setPropertyFromGroup('playerStrums', 0, 'x', 415);
		setPropertyFromGroup('playerStrums', 1, 'x', 525);
		setPropertyFromGroup('playerStrums', 2, 'x', 635);
		setPropertyFromGroup('playerStrums', 3, 'x', 745);
	end
end

function opponentNoteHit()
	if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'Crumb Sing' then
		health = getProperty('health')
    	if getProperty('health') > 0.1 then 
      		 setProperty('health', health+ 0.012); -- when the opponent hit the notes, it loses damage
      	end
	else if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'GF Sing' then
		health = getProperty('health')
    	if getProperty('health') > 0.1 then 
      		 setProperty('health', health+ 0.012); -- when the opponent hit the notes, it loses damage
      	end
	else
		health = getProperty('health')
    	if getProperty('health') > 0.1 then 
      		 setProperty('health', health- 0.012); -- when the opponent hit the notes, it loses damage
      	end
      	end
    end
end

function onEndSong()
	if isStoryMode and not seenDaEnd then
		makeLuaSprite('bg','',0,0)
		makeGraphic('bg',1280,720,'000000')
		addLuaSprite('bg',true)
		setObjectCamera('bg','camHUD')

		setProperty('camGame.visible',false)
		setProperty('camHUD.visible',false)
		seenDaEnd = true
		startVideo('mozzarella2')
		return Function_Stop;
	else
		return Function_Continue;
	end
end