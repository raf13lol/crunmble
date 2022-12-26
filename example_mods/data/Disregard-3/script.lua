function onCreate()
	makeLuaText('dis', "This isn't finished yet. It will be in the next update :(. PRESS Z TO HIDE", 500, 20, 540)
    setTextSize('dis', 20)
    setTextColor('dis', 'FFFFFF')
    addLuaText('dis',true)
end

function onUpdatePost()
	if getPropertyFromClass('flixel.FlxG', 'keys.justPressed.Z') then 
        setProperty('dis.alpha',0)
	end
end