function onUpdate()
    setProperty('timeBar.color', getColorFromHex('FFFFFF'))
    setProperty('timeBarBG.color', getColorFromHex('FFFFFF'))
    if curBeat > 4 then
        if curBeat % 2 == 0 then
            setProperty('timeBar.color', getColorFromHex('22b14c'))
            setProperty('timeBarBG.color', getColorFromHex('22b14c'))
        else
            setProperty('timeBar.color', getColorFromHex('00a2e8'))
            setProperty('timeBarBG.color', getColorFromHex('00a2e8'))
        end
    end
end