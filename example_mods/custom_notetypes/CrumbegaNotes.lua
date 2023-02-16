math.randomseed(os.time())

function onCreate()
	--Iterate over all notes
	for i = 0, getProperty('unspawnNotes.length')-1 do
		--Check if the note is an Instakill Note
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'CrumbegaNotes' then
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'CrumbegaNotes'); --Change texture
			setPropertyFromGroup('unspawnNotes', i, 'hitHealth', '0'); --Default value is: 0.023, health gained on hit
			setPropertyFromGroup('unspawnNotes', i, 'missHealth', '0.0475'); --Default value is: 0.0475, health lost on miss
			setPropertyFromGroup('unspawnNotes', i, 'hitCausesMiss', true);
			if getPropertyFromGroup('unspawnNotes', i, 'mustPress') then --Doesn't let Dad/Opponent notes get ignored
				setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', true); --Miss has no penalties
			end
		end
	end

	makeLuaSprite('Crumbega','Crumbega',-350,-100)
	addLuaSprite('Crumbega',true)
	setObjectCamera('Crumbega', 'hud')
	scaleObject('Crumbega', 1.5, 1.5);
	setProperty('Crumbega.alpha', 0)
	--debugPrint('Script started!')
end

-- Function called when you hit a note (after note hit calculations)
-- id: The note member id, you can get whatever variable you want from this note, example: "getPropertyFromGroup('notes', id, 'strumTime')"
-- noteData: 0 = Left, 1 = Down, 2 = Up, 3 = Right
-- noteType: The note type string/tag
-- isSustainNote: If it's a hold note, can be either true or false
function goodNoteHit(id, noteData, noteType, isSustainNote)
	if noteType == 'CrumbegaNotes' then
		--
	end
end

-- Called after the note miss calculations
-- Player missed a note by letting it go offscreen
function noteMiss(id, noteData, noteType, isSustainNote)
	if noteType == 'CrumbegaNotes' then
		playSound('scary' ..math.random(1,4),1)
		setProperty('Crumbega.alpha', 1)
		doTweenAlpha('jumpscare','Crumbega',0,0.7,'cubeIn')
	end
end