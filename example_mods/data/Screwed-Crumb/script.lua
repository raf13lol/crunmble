function onUpdate()
	setProperty('timeBar.color', getColorFromHex('22b14c'))
    setProperty('timeBarBG.color', getColorFromHex('22b14c'))
end

function onCreatePost()
    makeLuaText('screwed', "That's so screwed man.", 0, 4, screenHeight - 40)
    setTextSize('screwed', 16)
    setTextBorder('screwed', 1, '000000')
    setTextColor('screwed', 'ffffff')
    setTextAlignment('screwed', 'left')
    addLuaText('screwed')
    setObjectCamera('screwed', 'hud')
    setTextFont('screwed', 'ComicSansMSBold.ttf')
end