function opponentNoteHit()
    health = getProperty('health')
    if getProperty('health') > 0.05 then
        setProperty('health', health- 0.005);
    end
end

function onCreatePost()
    makeLuaText('dis', "Redacted by Farjd & Danimates | Charted by Danimates", 600, 350, 350)
    doTweenAlpha('disbye','dis',0,6,'linear')
    setTextSize('dis', 20)
    setTextColor('dis', 'FFFFFF')
    addLuaText('dis',true)
	setTextFont('dis', 'ComicSansMSBold.ttf')
end