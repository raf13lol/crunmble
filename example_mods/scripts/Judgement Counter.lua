--options
local judgementCounter = true --self explanatory

function onCreatePost()
    if judgementCounter then
        makeLuaText('judgementCounterTxt', '', screenWidth, 8, 0)
        setTextSize('judgementCounterTxt', 20)
        setTextBorder('judgementCounterTxt', 2, '000000')
        screenCenter('judgementCounterTxt', 'Y')
        setTextAlignment('judgementCounterTxt', 'left')
        addLuaText('judgementCounterTxt')
        setObjectCamera('judgementCounterTxt', 'hud')
        setTextFont('judgementCounterTxt', 'ComicSansMSBold.ttf')
    end
end

function onUpdate()
    if judgementCounter then
        setTextString('judgementCounterTxt', 'Sicks: ' .. getProperty('sicks') .. '\nGoods: ' .. getProperty('goods') .. '\nBads: ' .. getProperty('bads') .. '\nShits: ' .. getProperty('shits'))
    end
end