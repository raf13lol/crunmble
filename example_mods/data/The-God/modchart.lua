thecool={ [true]=-0.7, [false]=0.7 }
thecool2={ [true]=0, [false]=180 }
lastConductorPos = 0
function onSongStart()
ogposx0 = getPropertyFromGroup('opponentStrums', 0, 'x')
ogposy0 = getPropertyFromGroup('opponentStrums', 0, 'y');
ogposx1 = getPropertyFromGroup('opponentStrums', 1, 'x')
ogposy1 = getPropertyFromGroup('opponentStrums', 1, 'y');
	ogposx2 = getPropertyFromGroup('opponentStrums', 2, 'x');
	ogposy2 = getPropertyFromGroup('opponentStrums', 2, 'y');
	ogposx3 = getPropertyFromGroup('opponentStrums', 3, 'x');
	ogposy3 = getPropertyFromGroup('opponentStrums', 3, 'y');
	ogposx4 = getPropertyFromGroup('playerStrums', 0, 'x');
	ogposy4 = getPropertyFromGroup('playerStrums', 0, 'y');
	ogposx5 = getPropertyFromGroup('playerStrums', 1, 'x');
	ogposy5 = getPropertyFromGroup('playerStrums', 1, 'y');
	ogposx6 = getPropertyFromGroup('playerStrums', 2, 'x');
	ogposy6 = getPropertyFromGroup('playerStrums', 2, 'y');
	ogposx7 = getPropertyFromGroup('playerStrums', 3, 'x');
	ogposy7 = getPropertyFromGroup('playerStrums', 3, 'y');
end
function onUpdate(elapsed)

	azazazazazazazazazazaza = getSongPosition();
notetime = 319997.5625 * 0.5
if notetime <= azazazazazazazazazazaza + 3 then
if notetime >= lastconductorpos then
noteTweenX('azazaza', 0, ogposx0 + -150.900002, 6.974023, 'sineInOut')
noteTweenY('azazaza02', 0, ogposy0 + (162.999998 * (thecool[downscroll] / 0.7)), 6.974023, 'sineInOut')
noteTweenAngle('azazaza03', 0, 132.868622 * (thecool[downscroll] / 0.7), 6.974023, 'sineInOut')
noteTweenDirection('azazaza04', 0, (90 * (-thecool[downscroll]) / 0.7) + thecool2[downscroll], 6.974023, 'sineInOut')
noteTweenAlpha('azazaza05', 0, 0, 6.974023, 'sineInOut')
end
end
notetime = 320997.5625 * 0.5
if notetime <= azazazazazazazazazazaza + 3 then
if notetime >= lastconductorpos then
noteTweenX('azazaza41', 4, ogposx4 + -760.900024, 2.849023, 'sineInOut')
noteTweenY('azazaza42', 4, ogposy4 + (565.857141 * (thecool[downscroll] / 0.7)), 2.849023, 'sineInOut')
noteTweenAngle('azazaza43', 4, -67.778259 * (thecool[downscroll] / 0.7), 2.849023, 'sineInOut')
noteTweenDirection('azazaza44', 4, (90 * (-thecool[downscroll]) / 0.7) + thecool2[downscroll], 2.849023, 'sineInOut')
noteTweenAlpha('azazaza45', 4, 0, 2.849023, 'sineInOut')
end
end
notetime = 321997.5625 * 0.5
if notetime <= azazazazazazazazazazaza + 3 then
if notetime >= lastconductorpos then
noteTweenX('azazaza31', 3, ogposx3 + 763.100006, 3.162773, 'sineInOut')
noteTweenY('azazaza32', 3, ogposy3 + (114.428569 * (thecool[downscroll] / 0.7)), 3.162773, 'sineInOut')
noteTweenAngle('azazaza33', 3, -140.59581 * (thecool[downscroll] / 0.7), 3.162773, 'sineInOut')
noteTweenDirection('azazaza34', 3, (90 * (-thecool[downscroll]) / 0.7) + thecool2[downscroll], 3.162773, 'sineInOut')
noteTweenAlpha('azazaza35', 3, 0, 3.162773, 'sineInOut')
end
end
notetime = 318497.5625 * 0.5
if notetime <= azazazazazazazazazazaza + 3 then
if notetime >= lastconductorpos then
noteTweenX('azazaza01', 0, ogposx0 + -2.899994, 0.5, 'sineInOut')
noteTweenY('azazaza02', 0, ogposy0 + (65.857141 * (thecool[downscroll] / 0.7)), 0.5, 'sineInOut')
noteTweenAngle('azazaza03', 0, 0 * (thecool[downscroll] / 0.7), 0.5, 'sineInOut')
noteTweenDirection('azazaza04', 0, (90 * (-thecool[downscroll]) / 0.7) + thecool2[downscroll], 0.5, 'sineInOut')
noteTweenAlpha('azazaza05', 0, 1, 0.5, 'sineInOut')
end
end
notetime = 320497.5625 * 0.5
if notetime <= azazazazazazazazazazaza + 3 then
if notetime >= lastconductorpos then
noteTweenX('azazaza51', 5, ogposx5 + -60.900146, 3.179023, 'sineInOut')
noteTweenY('azazaza52', 5, ogposy5 + (294.428569 * (thecool[downscroll] / 0.7)), 3.179023, 'sineInOut')
noteTweenAngle('azazaza53', 5, -95.630028 * (thecool[downscroll] / 0.7), 3.179023, 'sineInOut')
noteTweenDirection('azazaza54', 5, (90 * (-thecool[downscroll]) / 0.7) + thecool2[downscroll], 3.179023, 'sineInOut')
noteTweenAlpha('azazaza55', 5, 0.778672, 3.179023, 'sineInOut')
end
end
notetime = 325497.5625 * 0.5
if notetime <= azazazazazazazazazazaza + 3 then
if notetime >= lastconductorpos then
noteTweenX('azazaza71', 7, ogposx7 + 173.099976, 3.439023, 'sineInOut')
noteTweenY('azazaza72', 7, ogposy7 + (54.428569 * (thecool[downscroll] / 0.7)), 3.439023, 'sineInOut')
noteTweenAngle('azazaza73', 7, -142.529449 * (thecool[downscroll] / 0.7), 3.439023, 'sineInOut')
noteTweenDirection('azazaza74', 7, (90 * (-thecool[downscroll]) / 0.7) + thecool2[downscroll], 3.439023, 'sineInOut')
noteTweenAlpha('azazaza75', 7, 0, 3.439023, 'sineInOut')
end
end
notetime = 322997.5625 * 0.5
if notetime <= azazazazazazazazazazaza + 3 then
if notetime >= lastconductorpos then
noteTweenX('azazaza11', 1, ogposx1 + 319.100006, 6.075273, 'sineInOut')
noteTweenY('azazaza12', 1, ogposy1 + (1005.857141 * (thecool[downscroll] / 0.7)), 6.075273, 'sineInOut')
noteTweenAngle('azazaza13', 1, -115.682289 * (thecool[downscroll] / 0.7), 6.075273, 'sineInOut')
noteTweenDirection('azazaza14', 1, (90 * (-thecool[downscroll]) / 0.7) + thecool2[downscroll], 6.075273, 'sineInOut')
noteTweenAlpha('azazaza15', 1, 0, 6.075273, 'sineInOut')
end
end
notetime = 325997.5625 * 0.5
if notetime <= azazazazazazazazazazaza + 3 then
if notetime >= lastconductorpos then
noteTweenX('azazaza51', 5, ogposx5 + 225.099854, 4.620273, 'sineInOut')
noteTweenY('azazaza52', 5, ogposy5 + (980.142332 * (thecool[downscroll] / 0.7)), 4.620273, 'sineInOut')
noteTweenAngle('azazaza53', 5, -172.489532 * (thecool[downscroll] / 0.7), 4.620273, 'sineInOut')
noteTweenDirection('azazaza54', 5, (90 * (-thecool[downscroll]) / 0.7) + thecool2[downscroll], 4.620273, 'sineInOut')
noteTweenAlpha('azazaza55', 5, 0, 4.620273, 'sineInOut')
end
end
notetime = 319997.5625 * 0.5
if notetime <= azazazazazazazazazazaza + 3 then
if notetime >= lastconductorpos then
noteTweenX('azazaza61', 6, ogposx6 + 3.099976, 3.217773, 'sineInOut')
noteTweenY('azazaza62', 6, ogposy6 + (-182.714288 * (thecool[downscroll] / 0.7)), 3.217773, 'sineInOut')
noteTweenAngle('azazaza63', 6, 125.119217 * (thecool[downscroll] / 0.7), 3.217773, 'sineInOut')
noteTweenDirection('azazaza64', 6, (90 * (-thecool[downscroll]) / 0.7) + thecool2[downscroll], 3.217773, 'sineInOut')
noteTweenAlpha('azazaza65', 6, 0, 3.217773, 'sineInOut')
end
end
notetime = 321497.5625 * 0.5
if notetime <= azazazazazazazazazazaza + 3 then
if notetime >= lastconductorpos then
noteTweenX('azazaza21', 2, ogposx2 + 0.100006, 4.295273, 'sineInOut')
noteTweenY('azazaza22', 2, ogposy2 + (-254.142859 * (thecool[downscroll] / 0.7)), 4.295273, 'sineInOut')
noteTweenAngle('azazaza23', 2, 120.222206 * (thecool[downscroll] / 0.7), 4.295273, 'sineInOut')
noteTweenDirection('azazaza24', 2, (90.000002 * (-thecool[downscroll]) / 0.7) + thecool2[downscroll], 4.295273, 'sineInOut')
noteTweenAlpha('azazaza25', 2, 0, 4.295273, 'sineInOut')
end
end
lastconductorpos = azazazazazazazazazazaza
end
function onUpdatePost(elapsed)
noteCount = getProperty("notes.length")
for i = 0, noteCount-1 do
noteData = getPropertyFromGroup("notes", i, "noteData")
if (getPropertyFromGroup("notes", i, "mustPress")) and (getPropertyFromGroup("notes", i, "isSustainNote")) then
setPropertyFromGroup("notes", i, "angle", getPropertyFromGroup("playerStrums", noteData, "direction") - 90)
elseif (getPropertyFromGroup("notes", i, "isSustainNote")) then
setPropertyFromGroup("notes", i, "angle", getPropertyFromGroup("opponentStrums", noteData, "direction") - 90)
end
if (noteData >= 4) and (not getPropertyFromGroup("notes", i, "isSustainNote")) then
setPropertyFromGroup("notes", i, "angle", getPropertyFromGroup("playerStrums", noteData, "angle"))
elseif (not getPropertyFromGroup("notes", i, "isSustainNote")) then
setPropertyFromGroup("notes", i, "angle", getPropertyFromGroup("opponentStrums", noteData, "angle"))
end
end
end

beatHitFuncs = {
    [335] = function()
        doTweenAlpha('aaazazaz', 'timeTxt', 0, 1.5, 'linear')
    end,

    [341] = function()
        doTweenAlpha('aaazazazaaaaa', 'timeBar', 0, 2.25, 'linear')
    end,

	[347] = function()
        doTweenAlpha('aaazazazaaaaa', 'scoreTxt', 0, 2, 'linear')
    end,

	[355] = function()
        doTweenAlpha('aaazazazaaaaa', 'camHUD', 0, 2.5, 'linear')
    end
}

function onBeatHit()
    if beatHitFuncs[curBeat] then
        beatHitFuncs[curBeat]() 
    end 
end