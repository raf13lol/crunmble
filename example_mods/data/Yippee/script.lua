function onUpdate()
    setProperty('timeBar.color', getColorFromHex('FFFFFF'))
    setProperty('timeBarBG.color', getColorFromHex('FFFFFF'))
    if curBeat > 4 then
        if curBeat % 2 == 0 then
            setProperty('timeBar.color', getColorFromHex('f0e4ac'))
            setProperty('timeBarBG.color', getColorFromHex('f0e4ac'))
        else
            setProperty('timeBar.color', getColorFromHex('FFFFFF'))
            setProperty('timeBarBG.color', getColorFromHex('FFFFFF'))
        end
    end
end