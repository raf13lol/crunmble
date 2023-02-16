specChar = nil
bop1Counter = 0
bop2Counter = 0
grap = false
function onCreate()
    runTimer('fu',0.1)
end

function onCreatePost( ... )
    specChar = getProperty('dad.curCharacter')
end

function onTimerCompleted(tag, loops, loopsLeft)
    if tag == 'fu' then
      setProperty('iconP1.y', -123);
      setProperty('iconP2.y', 800);
      setProperty('healthBar.x', -613)
    end 
end

function onCountdownTick(counter)
    if counter == 0 then
        doTweenX('hiHP', 'healthBar', 300 , 0.2, 'cubeIn')
    end
    if counter == 1 then
        doTweenY('hiP2', 'iconP2', getProperty('healthBar.y') - 75, 0.3,'cubeIn');
    end
    if counter == 2 then
        doTweenY('hiP1', 'iconP1', getProperty('healthBar.y') - 75, 0.3,'cubeIn');
    end
end

function bfIconBop()
    if curBeat % 4 == 0 and bop1Counter ~= 4 then
    setProperty('iconP1.angle', -30);
    setProperty('iconP1.y', getProperty('healthBar.y') - 60);
    bop1Counter = bop1Counter + 1
    elseif curBeat % 4 == 0 and bop1Counter == 4 then
    setProperty('iconP1.angle', 60);
    setProperty('iconP1.y', getProperty('healthBar.y') - 100);
    bop1Counter = 0 
    else
    setProperty('iconP1.angle', -15);
    end
    doTweenAngle('bopP1', 'iconP1', 0, 0.5)
    doTweenY('fart1', 'iconP1', getProperty('healthBar.y') - 75, 0.5);
end

function enemyBop()
    if curBeat % 4 == 0 and bop2Counter ~= 4 then
    setProperty('iconP2.angle', 30);
    setProperty('iconP2.y', getProperty('healthBar.y') - 60);
    bop2Counter = bop2Counter + 1
    elseif curBeat % 4 == 0 and bop2Counter == 4 then
    setProperty('iconP2.angle', -60);
    setProperty('iconP2.y', getProperty('healthBar.y') - 100);
    bop2Counter = 0 
    else
    setProperty('iconP2.angle', 15);
    end
    doTweenAngle('bopP2', 'iconP2', 0, 0.5)
    doTweenY('fart2', 'iconP2', getProperty('healthBar.y') - 75, 0.5);
end

function onBeatHit()
    bfIconBop()
    if specChar == 'Trippin_Balls' then

    elseif specChar == 'gangong' then
        if curBeat % 4 == 0 and bop2Counter ~= 4 then
        setProperty('iconP2.angle', 5);
        setProperty('iconP2.y', getProperty('healthBar.y') - 70);
        bop2Counter = bop2Counter + 1
        elseif curBeat % 4 == 0 and bop2Counter == 4 then
        setProperty('iconP2.angle', -7);
        setProperty('iconP2.y', getProperty('healthBar.y') - 80);
        bop2Counter = 0 
        else
        setProperty('iconP2.angle', 2);
        end
        doTweenAngle('bopP2', 'iconP2', 0, 0.5)
        doTweenY('fart2', 'iconP2', getProperty('healthBar.y') - 75, 0.5)
    elseif specChar == 'gangongPhase2' then

    elseif specChar == 'Scrumbly_Wumbly' or specChar == 'Scrumbly_Wumbly_Alt' or specChar == 'Scrumbly_Wumbly_Alt_playable' then

    else
    enemyBop()
    end
end

function onUpdate(e)
    local angleOfs = math.random(-5, 5)
    if specChar == 'Trippin_Balls' then
        setGraphicSize('iconP2',getProperty('iconP2.width'),getProperty('iconP2.height'));
        if grap == false then 
            setProperty('iconP2.y', getProperty('iconP2.y') + 1.5)
            setProperty('iconP2.angle', getProperty('iconP2.angle') + 1.5)
            grap = true
        elseif grap == true then
            setProperty('iconP2.y', getProperty('iconP2.y') - 1.5)
            setProperty('iconP2.angle', getProperty('iconP2.angle') - 1.5)
            grap = false
        end
    elseif specChar == 'Scrumbly_Wumbly' or specChar == 'Scrumbly_Wumbly_Alt' or specChar == 'Scrumbly_Wumbly_Alt_playable' then
        setProperty('iconP2.angle', angleOfs)
    end
end