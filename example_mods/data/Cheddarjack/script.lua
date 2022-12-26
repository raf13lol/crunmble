local angleshit = 1;
local anglevar = 1;
local theepic = true;
local camMovement = 20
local velocity = 5

--leave this ones alone--
local campointx = 0
local campointy = 0
local camlockx = 0
local camlocky = 0
local camlock = false
local bfturn = false

function onBeatHit()

    if curBeat > 0 then
        if curBeat % 2 == 0 then
            angleshit = anglevar;
            triggerEvent('Add Camera Zoom', '0.1', '0.04');
        else
            angleshit = -anglevar;
        end
        setProperty('camGame.angle',angleshit*3)
        doTweenAngle('tt', 'camGame', angleshit, stepCrochet*0.002, 'circOut')
        doTweenX('ttrn', 'camGame', -angleshit*8, crochet*0.001, 'linear')

        setProperty('dad.y',getProperty('dad.y')+40)
        doTweenY('bounce1','dad',getProperty('dad.y')-40,crochet*0.001,'sineOut')
        setProperty('gf.y',getProperty('gf.y')+40)
        setProperty('boyfriend.y',getProperty('boyfriend.y')+40)
        doTweenY('bounce2','boyfriend',getProperty('boyfriend.y')-40,crochet*0.001,'sineOut')
        doTweenY('bounce3','gf',getProperty('gf.y')-40,crochet*0.001,'sineOut')

    end
    
end

function onCreatePost()
    makeLuaText('dis', "Hey ToxicFlame! 60 Seconds! - ReeVrze", 600, 350, 300)
    doTweenAlpha('disbye','dis',0,4,'linear')
    setTextSize('dis', 50)
    setTextColor('dis', 'FF0000')
    addLuaText('dis',true)
    makeLuaText('dis2', "Coding / Chart by ReeVrze", 600, 350, 450)
    doTweenAlpha('disbye2','dis2',0,4,'linear')
    setTextSize('dis2', 20)
    setTextColor('dis2', 'FFFFFF')
    addLuaText('dis2',true)
    for i = 4,7 do
        setPropertyFromGroup('strumLineNotes',i,'x',-20+i*110)
        end
        
end

function onUpdate()
    
    setProperty('timeBar.color', getColorFromHex('FFFFFF'))
    setProperty('timeBarBG.color', getColorFromHex('FFFFFF'))
  noteTweenAlpha('itsnothere',0, 0, 0.001, 'sineOut')
  noteTweenAlpha('itsnothere1',1, 0, 0.001, 'sineOut')
  noteTweenAlpha('itsnothere2',2, 0, 0.001, 'sineOut')
  noteTweenAlpha('itsnothere3',3, 0, 0.001, 'sineOut')
  if camlock then
	setProperty('camFollow.x', camlockx)
	setProperty('camFollow.y', camlocky)
	end
  if curBeat > 4 then
    if curBeat % 2 == 0 then
        setProperty('timeBar.color', getColorFromHex('FF0000'))
        setProperty('timeBarBG.color', getColorFromHex('FF0000'))
    else
        setProperty('timeBar.color', getColorFromHex('228B22'))
        setProperty('timeBarBG.color', getColorFromHex('228B22'))
    end
end
function onMoveCamera(focus)
	if focus == 'boyfriend' then
	campointx = getProperty('camFollow.x')
	campointy = getProperty('camFollow.y')
	bfturn = true
	camlock = false
	setProperty('cameraSpeed', 1)
	
	elseif focus == 'dad' then
	campointx = getProperty('camFollow.x')
	campointy = getProperty('camFollow.y')
	bfturn = false
	camlock = false
	setProperty('cameraSpeed', 1)
	
	end
end


function goodNoteHit(id, direction, noteType, isSustainNote)
	if bfturn then
		if direction == 0 then
			camlockx = campointx - camMovement
			camlocky = campointy
		elseif direction == 1 then
			camlocky = campointy + camMovement
			camlockx = campointx
		elseif direction == 2 then
			camlocky = campointy - camMovement
			camlockx = campointx
		elseif direction == 3 then
			camlockx = campointx + camMovement
			camlocky = campointy
		end
	runTimer('camreset', 1)
	setProperty('cameraSpeed', velocity)
	camlock = true
	end	
end

function opponentNoteHit(id, direction, noteType, isSustainNote)
	if not bfturn then
		if direction == 0 then
			camlockx = campointx - camMovement
			camlocky = campointy
		elseif direction == 1 then
			camlocky = campointy + camMovement
			camlockx = campointx
		elseif direction == 2 then
			camlocky = campointy - camMovement
			camlockx = campointx
		elseif direction == 3 then
			camlockx = campointx + camMovement
			camlocky = campointy
		end
	--nice--
	runTimer('camreset', 1)
	setProperty('cameraSpeed', velocity)
	camlock = true
    if mustHitSection == false then
		health = getProperty('health')
		if getProperty('health') > 0.5 then
			setProperty('health', health- 0.01);
		end
	end
	end	
end

function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'camreset' then
	camlock = false
	setProperty('cameraSpeed', 1)
	setProperty('camFollow.x', campointx)
	setProperty('camFollow.y', campointy)
	end
end
end