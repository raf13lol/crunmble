function onUpdate()
    setProperty('timeBar.color', getColorFromHex('FFFFFF'))
    if curBeat > 4 then
        if curBeat % 2 == 0 then
            setProperty('timeBar.color', getColorFromHex('c57cc5'))
        else
            setProperty('timeBar.color', getColorFromHex('a349a4'))
        end
    end
end


function onUpdatePost()
    if getPropertyFromClass('flixel.FlxG', 'keys.justPressed.SEVEN') then
        loadSong('new-chummy', 'new-chummy ', true)
    end
end