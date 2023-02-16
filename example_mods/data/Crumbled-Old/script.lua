function opponentNoteHit()
    health = getProperty('health')
    if getProperty('health') > 0.1 then
        setProperty('health', health- 0.012);
    end
end

function onCreatePost()
    makeLuaText('dis', "Crumbled by Ruby_ | Charted by ToxicFlame & Danimates", 600, 350, 450) -- The text credits because TOXIC KEEPS CHARTING ON OSU!!!!!
    doTweenAlpha('disbye','dis',0,10,'linear')
    setTextSize('dis', 20)
    setTextColor('dis', 'FFFFFF')
    addLuaText('dis',true)
	setTextFont('dis', 'ComicSansMSBold.ttf')
end