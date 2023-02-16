local font = "comic.ttf";
local rating = "idk"

reqCombo = 100

math.randomseed(os.time())

local function to_hex(rgb)
    return string.format("%x", (rgb[1] * 0x10000) + (rgb[2] * 0x100) + rgb[3])
end

function round(num, dp)
    local mult = 10 ^ (dp or 0);
    return math.floor(num * mult + 0.5) / mult;
end

function onCreatePost()
    makeLuaSprite('goodjob', 'sweet', 0, 0)
    scaleObject('goodjob', 2, 2)
    screenCenter('goodjob', 'xy')
    setProperty('goodjob.antialiasing', false)
    addLuaSprite('goodjob')
    setObjectCamera('goodjob', 'hud');
    setProperty('goodjob.alpha', 0)


    setProperty('iconP2.antialiasing', false)
    setProperty('iconP1.antialiasing', false)
    for i = 0, 4, 1 do
        setPropertyFromGroup('opponentStrums', i, 'antialiasing', false)
        setPropertyFromGroup('playerStrums', i, 'antialiasing', false)
    end
    for i = 0, getProperty('unspawnNotes.length') - 1 do
        setPropertyFromGroup('unspawnNotes', i, 'antialiasing', false); --Change texture
    end

    setProperty('scoreTxt.visible', false);

    makeLuaText('newScoreTxt', 'Crumbs: 0 | Woopsies: 0 | Kek Counter: ' .. rating, 0,
        getProperty('healthBarBG.x') + getProperty('healthBarBG.width') / 2 - 300, getProperty('healthBarBG.y') + 35);
    setTextBorder('newScoreTxt', 2, '000000');
    setTextAlignment('newScoreTxt', 'left');
    setTextFont('newScoreTxt', font);
    setTextSize('newScoreTxt', 20);
    setObjectCamera('newScoreTxt', 'hud');
    addLuaText('newScoreTxt');
end

function onRecalculateRating()
    setTextString('newScoreTxt',
        'Crumbs: ' ..
        getProperty('songScore') ..
        ' | Woopsies: ' ..
        getProperty('songMisses') ..
        ' | Kek Counter: ' .. rating .. ' (' .. round(getProperty('ratingPercent') * 100, 2) .. '% ) - ' .. ratingFC)
end

function onUpdate()
    if ratingName == 'Sick!' then
        rating = 'Crumbtastic'
    end
    if ratingName == 'Perfect!!' then
        rating = ':D'
    end
    if ratingName == 'Great' then
        rating = 'Good job, Have a sweet'
    end
    if ratingName == 'You Suck!' then
        rating = 'Ermm just hit the notes!'
    end
    if ratingName == 'Meh' then
        rating = 'Skill Issue lol'
    end
    if botPlay then
        rating = 'Cheater Cheater Pumpkin Eater..'
        setTextString('newScoreTxt',
            'Crumbs: ' ..
            getProperty('songScore') .. ' | Woopsies: ' .. getProperty('songMisses') .. ' | Kek Counter: ' .. rating)
    end



    if getProperty('combo') == reqCombo and math.random(1, 10) == 5 then
        setProperty('goodjob.alpha', 1)
        doTweenAlpha('showupfucker', 'goodjob', 0, 1, 'linear')
        playSound('yay' .. math.random(1, 3), 1)
    end
    if getProperty('combo') == reqCombo then
        reqCombo = reqCombo + 100
    end
end

function noteMiss()
    reqCombo = 100
end
