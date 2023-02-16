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

