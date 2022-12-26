function onUpdate()
	setProperty('timeBar.color', getColorFromHex('a84ca4'))
    setProperty('timeBarBG.color', getColorFromHex('a84ca4'))
end

function onUpdatePost()
    if getPropertyFromClass('flixel.FlxG', 'keys.justPressed.B') then
        loadSong('Scrumbly Bee', 'Scrumbly Bee', true)
    end
end