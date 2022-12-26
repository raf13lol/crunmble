function onCreatePost()
    makeLuaText('kadeEngineWatermark', songName .. ' - Crumb Edition V2.1', 0, 4, getProperty('healthBarBG.y') + 55)
    setTextSize('kadeEngineWatermark', 16)
    setTextBorder('kadeEngineWatermark', 1, '000000')
    addLuaText('kadeEngineWatermark')
    setObjectCamera('kadeEngineWatermark', 'hud')
    setTextFont('kadeEngineWatermark', 'ComicSansMSBold.ttf')
 
    --downscroll positions
    if downscroll then
        setProperty('kadeEngineWatermark.y', screenHeight * 0.9 + 49)
        end
    end
