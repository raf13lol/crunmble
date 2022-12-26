function onUpdate()
    setProperty('timeBar.color', getColorFromHex('FFFFFF'))
    setProperty('timeBarBG.color', getColorFromHex('FFFFFF'))
    if curBeat > 4 then
        if curBeat % 2 == 0 then
            setProperty('timeBar.color', getColorFromHex('28b44c'))
            setProperty('timeBarBG.color', getColorFromHex('28b44c'))
        else
            setProperty('timeBar.color', getColorFromHex('efe4b0'))
            setProperty('timeBarBG.color', getColorFromHex('efe4b0'))
        end
    end
end

function onCreatePost()
    makeLuaText('dis', "Ballin by Ufer | Charted by ToxicFlame", 600, 350, 450)
    doTweenAlpha('disbye','dis',0,3,'linear')
    setTextSize('dis', 20)
    setTextColor('dis', 'FFFFFF')
    addLuaText('dis',true)
    setTextFont('dis', 'ComicSansMSBold.ttf')
end

function onBeatHit()
    if curStep == 3 then
        makeLuaText('dis2', "you suck", 570, 450, 410)
        doTweenAlpha('disbye2','dis2',0,2,'linear')
        setTextSize('dis2', 20)
        setTextColor('dis2', 'FFFFFF')
        addLuaText('dis2',true)
        setTextFont('dis2', 'ComicSansMSBold.ttf')
        end
    end