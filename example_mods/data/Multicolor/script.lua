function onUpdate()
    setProperty('timeBar.color', getColorFromHex('FFFFFF'))
    setProperty('timeBarBG.color', getColorFromHex('FFFFFF'))
    if curBeat > 4 then
        if curBeat % 2 == 0 then
            setProperty('timeBar.color', getColorFromHex('c57cc5'))
            setProperty('timeBarBG.color', getColorFromHex('c57cc5'))
        else
            setProperty('timeBar.color', getColorFromHex('a349a4'))
            setProperty('timeBarBG.color', getColorFromHex('a349a4'))
        end
    end
end

function onCreatePost()
    makeLuaText('dis2', "Multicolor by Emperor Yami | Charted by Ufer", 600, 350, 450)
    doTweenAlpha('disbye2','dis2',0,5,'linear')
    setTextSize('dis2', 20)
    setTextColor('dis2', 'FFFFFF')
    addLuaText('dis2',true)
    setTextFont('dis2', 'ComicSansMSBold.ttf')
end

function onUpdatePost()
    if getPropertyFromClass('flixel.FlxG', 'keys.justPressed.SEVEN') then
        loadSong('new-chummy', 'new-chummy ', true)
    end
end