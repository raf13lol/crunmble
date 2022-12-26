-- SCRIPT BY TKTEMS
-- STOP USING MY SCRIPTS AND CALLING THEM YOURS PLEASE

local arrayNumber = 0;
local creditsRemoved = false;

local songArrays = {
	{song = 'Ambulant', composer = 'Farjd', spriters = 'Teejay', charters = 'Farjd'},
	{song = 'Tripped', composer = 'Farjd', spriters = 'Danimates', charters = 'Farjd'},
	{song = 'Magenta', composer = 'Farjd', spriters = 'Teejay', charters = 'Farjd'},
	{song = 'Goober Old', composer = 'Danimates', spriters = 'Teejay', charters = 'Danimates'},
	{song = 'Diminutive', composer = 'V2Stand', spriters = 'Teejay', charters = 'ToxicFlame'},
	{song = 'Granule', composer = 'Ufer', spriters = 'Teejay', charters = 'Ufer'},
	{song = 'Thearchy', composer = 'Maevings, cover by Farjd', spriters = 'Teejay', charters = 'Farjd'},
	{song = 'Warcrimes', composer = 'Ufer & Farjd', spriters = 'Teejay', charters = 'Farjd'},
	{song = 'Fondue', composer = 'Ufer', spriters = 'Teejay', charters = 'Ufer'},
	{song = 'Cheesefries', composer = 'Ufer & V2Stand', spriters = 'Teejay', charters = 'Ufer'},
	{song = 'Goober', composer = 'Ruby_', spriters = 'Teejay', charters = 'MinecraftBoy2038 & Danimates'},
	{song = 'Godlike', composer = 'Emperor Yami', spriters = 'Teejay', charters = 'ToxicFlame'},
	{song = 'Mauve',   composer = 'Farjd', spriters = 'Teejay', charters = 'Farjd'},
	{song = 'Weel X Crumb Sipping Smal', composer = 'Ruby_', spriters = 'Teejay', charters = 'ToxicFlame'},
	{song = 'Caliber', composer = 'Ufer', charters = 'Ufer'},
	{song = 'Cheddarjack', composer = 'Ufer', charters = 'ReeVrze'},
	{song = 'Schizophrenia', composer = 'Farjd', charters = 'Farjd'},
	{song = 'Boof', composer = 'Emperor Yami', charters = 'Ufer'},
	{song = 'Sane', composer = 'V2Stand', charters = 'Ufer'},
	{song = 'Vestige', composer = 'V2Stand', charters = 'Ufer'},
	{song = 'Juiced', composer = 'V2Stand & Emperor Yami', charters = 'ReeVrze'},
	{song = 'Scrumbly Bee', composer = 'Bambee, cover by TeeJay',  charters = 'Teejay'},
	{song = 'Yippee', composer = 'Farjd', charters = 'Ufer'},
	{song = 'Manslaughter', composer = 'Emperor Yami', charters = 'Farjd & Lemmeo'},
	{song = 'Euthanasia', composer = 'Farjd', charters = 'Noppz'},
	{song = 'Disregard 3', composer = 'Emperor Yami', charters = 'ReeVrze & Yelly'},
	{song = 'Buoyant', composer = 'Ufer', charters = 'Light'},
	{song = 'Crummy', composer = 'Ufer', charters = 'angle'},
	{song = 'Dissolution', composer = 'Ruby_ & ToxicFlame', charters = 'angle'},
	{song = 'Goober Twoober', composer = 'UpBeatBlue', charters = 'Danimates'},
	{song = 'Goober Minusoober', composer = 'Ruby_', charters = 'Danimates'},
	{song = 'Baited', composer = 'V2Stand', charters = 'Ufer'},
	{song = 'Terror', composer = 'Ruby_', charters = 'Danimates'},
	{song = 'Green Eggs And Yams', composer = 'Emperor Yami', charters = 'ToxicFlame'},
	{song = 'Ghandi', composer = 'Ufer', charters = 'Fallnnn'},
	{song = 'New Chummy', composer = 'Ruby_', charters = 'Ufer'},
	{song = 'Warcrimes2', composer = 'Ufer, cover by TeeJay', charters = 'Farjd'}
}

function onCreate()
	for i = 1, #(songArrays) do
		if songName == songArrays[i].song then
			arrayNumber = i
		end
	end

	makeLuaSprite('bg', '', 0, (downscroll and -70 or 730))
	makeGraphic('bg', 1280, 70, '000000')
	setObjectCamera('bg', 'other');
	setProperty('bg.alpha', 0.5)
	addLuaSprite('bg')

	if arrayNumber == 0 then
		setProperty('bg.alpha', 0)
	end

	makeLuaText('creditsText', songArrays[arrayNumber].song .. " composed by " .. songArrays[arrayNumber].composer .. (songArrays[arrayNumber].spriters == '' and '' or " | Charted by " .. songArrays[arrayNumber].charters), 0, 0, (downscroll and -35 or 730));
	setTextBorder('creditsText', 2, '000000');
	setTextSize('creditsText', 20);
	screenCenter('creditsText', 'X')
	addLuaText('creditsText');
	setObjectCamera('creditsText', 'other');
	setTextFont('creditsText', 'ComicSansMSBold.ttf')
end

function onSongStart()
	doTweenY('aumddCredits', 'creditsText', (downscroll and 5 or 690), 0.3, 'elasticOut')
	doTweenY('addCreditBG', 'bg', (downscroll and -35 or 685), 0.3, 'elasticOut')
end

function onUpdate()
	if hits == 1 and not creditsRemoved then
		doTweenY('removeCredits', 'creditsText', (downscroll and -35 or 730), 0.3, 'elasticIn')
		doTweenY('removeCreditBG', 'bg', (downscroll and -70 or 725), 0.3, 'elasticIn')
		creditsRemoved = true
	end
end
