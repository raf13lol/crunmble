username = os.getenv("USERNAME") -- bro why you gotta steal the code :( | DM Ruby_#2386 for permission

function onCreate()
		setPropertyFromClass('ClientPrefs', 'ghostTapping', false);
		makeLuaText('warning', 'You will not survive, ' .. username, 0, 4, screenHeight - 39) -- pls don't steal code :( | DM Ruby_#2386 for permission
		setTextSize('warning', 16)
		setTextBorder('warning', 1, '000000')
		setTextColor('warning', 'ffffff')
		setTextAlignment('warning', 'left')
		addLuaText('warning')
		setObjectCamera('warning', 'hud')
		setTextFont('warning', 'ComicSansMSBold.ttf')
 end


function onUpdatePost()
    setProperty('timeTxt.text', 'Good luck.. You little freaker deaker.') -- Changes the time text
    setProperty('timeTxt.size', 20)
end

function onDestroy()
	setPropertyFromClass('ClientPrefs', 'ghostTapping', true); -- Turns off ghost tapping. Screw you!
end

function opponentNoteHit()
    health = getProperty('health')
    if getProperty('health') > 0.1 then 
        setProperty('health', health- 0.012); -- when the opponent hit the notes, it loses damage
    end
end

function onCreatePost()
	makeLuaText('off', "Ghost Tapping is off. Screw You!", 0, 4, screenHeight - 55)
	setTextSize('off', 16)
	setTextBorder('off', 1, '000000')
	setTextColor('off', 'ffffff')
	setTextAlignment('off', 'left')
	addLuaText('off')
	setObjectCamera('off', 'hud')
	setTextFont('off', 'ComicSansMSBold.ttf')
end

function onGameOver() -- literally crashes your game lol
		addHaxeLibrary('Sys')
        runHaxeCode([[
			Sys.exit(0); 
		]])
	end