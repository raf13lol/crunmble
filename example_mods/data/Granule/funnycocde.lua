username = 'None'

function onUpdatePost()
    if string.lower(songName) == "granule" then
        if getPropertyFromClass('flixel.FlxG', 'keys.justPressed.R') and username == 'None' then
            username = 'R'
        end
        if getPropertyFromClass('flixel.FlxG', 'keys.justPressed.E') and username == 'R' then
            username = 'RE'
        end
        if getPropertyFromClass('flixel.FlxG', 'keys.justPressed.T') and username == 'RE' then
            username = 'RET'
        end
        if getPropertyFromClass('flixel.FlxG', 'keys.justPressed.R') and username == 'RET' then
            username = 'RETR'
        end
        if getPropertyFromClass('flixel.FlxG', 'keys.justPressed.O') and username == 'RETR' then
            loadSong('Retro', 'Retro', true)
        end
    end
end
