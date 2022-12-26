function opponentNoteHit()
    health = getProperty('health')
    if getProperty('health') > 0.05 then
        setProperty('health', health- 0.005);
    end
end

function onUpdatePost()
    if getPropertyFromClass('flixel.FlxG', 'keys.justPressed.SEVEN') then
        loadSong('Spamtrackophobia', 'Spamtrackophobia', true) 
    end
end

function onCreatePost()
    makeLuaText('dis', "The God by Emperor Yami | Charted by Yelly", 600, 350, 350)
    doTweenAlpha('disbye','dis',0,10,'linear')
    setTextSize('dis', 20)
    setTextColor('dis', 'FFFFFF')
    addLuaText('dis',true)
	setTextFont('dis', 'ComicSansMSBold.ttf')
end