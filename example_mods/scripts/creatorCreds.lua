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
	{song = 'Cheesefries', composer = 'Teejay', spriters = 'Teejay', charters = 'Angle'},
	{song = 'Goober', composer = 'Ruby_', spriters = 'Teejay', charters = 'MinecraftBoy2038 & Danimates'},
	{song = 'The God', composer = 'Emperor Yami', spriters = 'Teejay', charters = 'Yelly'},
	{song = 'Mauve',   composer = 'Farjd', spriters = 'Teejay', charters = 'Farjd'},
	{song = 'Weel X Crumb Sipping Smal', composer = 'Ruby_', spriters = 'Teejay', charters = 'ToxicFlame'},
	{song = 'Caliber', composer = 'Ufer', charters = 'Ufer'},
	{song = 'Cheddarjack', composer = 'Ufer', charters = 'ReeVrze'},
	{song = 'Schizophrenia', composer = 'Farjd', charters = 'Farjd'},
	{song = 'Boof', composer = 'Emperor Yami', charters = 'Ufer'},
	{song = 'Sane', composer = 'V2Stand', charters = 'Ufer'},
	{song = 'Vestige', composer = 'V2Stand', charters = 'Angle'},
	{song = 'Juiced', composer = 'V2Stand & Emperor Yami', charters = 'ReeVrze'},
	{song = 'Scrumbly Bee', composer = 'Bambee, cover by TeeJay',  charters = 'Teejay'},
	{song = 'Yippee', composer = 'Farjd', charters = 'Ufer'},
	{song = 'Manslaughter', composer = 'Emperor Yami', charters = 'Farjd & Lemmeo'},
	{song = 'Euthanasia', composer = 'Farjd', charters = 'Noppz'},
	{song = 'Disregard 3', composer = 'Emperor Yami', charters = 'ReeVrze & Yelly'},
	{song = 'Buoyant', composer = 'Ufer', charters = 'Light'},
	{song = 'Crummy', composer = 'Ufer', charters = 'angle'},
	{song = 'Dissolution', composer = 'Ruby_, Ufer & ToxicFlame', charters = 'Noppz'},
	{song = 'Goober Twoober', composer = 'UpBeatBlue', charters = 'Danimates'},
	{song = 'Goober Minusoober', composer = 'Ruby_', charters = 'Danimates'},
	{song = 'Baited', composer = 'V2Stand', charters = 'Ufer'},
	{song = 'Terror', composer = 'Ruby_', charters = 'Danimates'},
	{song = 'Green Eggs And Yams', composer = 'Emperor Yami', charters = 'ToxicFlame'},
	{song = 'Ghandi', composer = 'Ufer', charters = 'Fallnnn'},
	{song = 'New Chummy', composer = 'Ruby_', charters = 'Ufer'},
	{song = 'Jingle Balls', composer = 'Fallnnn', charters = 'Ball'},
	{song = 'Mistletoe', composer = 'Toxicflame', charters = 'angle'},
	{song = 'Deceitful', composer = 'V2Stand', charters = 'Noppz'},
	{song = 'BitTrip', composer = 'Toxicflame', charters = 'angle'},
	{song = 'Beta', composer = 'Toxicflame', charters = 'angle'},
	{song = 'skittles', composer = 'Sylv', charters = 'Sylv'},
	{song = 'Proceed', composer = 'Ufer', charters = 'Danimates & Ufer'},
	{song = 'Contained', composer = 'V2Stand', charters = 'Danimates & Ufer'},
	{song = 'Ikea', composer = 'Evamau', charters = 'Noppz'},
	{song = 'Hoaxer', composer = 'V2Stand', charters = 'Ufer'},
	{song = 'ourbling', composer = 'Farjd', charters = 'Lemmeo'},
	{song = 'Crumbtasm', composer = 'Biddle3, remix by Teejay', charters = 'angle'},
	{song = 'Ambulant Skill Issue', composer = 'Toxicflame, Original by Ufer', charters = 'angle'},
	{song = 'Tripped Skill Issue', composer = 'Ufer, Original by Farjd', charters = 'Ufer'},
	{song = 'Cheesefries-Skill-Issue', composer = 'V2Stand, Original by Teejay', charters = 'angle'},
	{song = 'Granule Skill Issue', composer = 'Tailer', charters = 'Ball'},
	{song = 'Goober Minusoober Old', composer = 'Ruby_', charters = 'Danimates'},
	{song = 'Crumbled Old', composer = 'Ruby_', charters = 'Toxicflame & Danimates'},
	{song = 'Dissolution Old', composer = 'Ruby & Toxicflame', charters = 'angle'},
	{song = 'Multicolor', composer = 'Emperor Yami', charters = 'Ufer'},
	{song = 'Screwed Crumb', composer = 'Satan', charters = 'a poor soul'},
	{song = 'Redacted', composer = 'REDACTED', charters = 'REDACTED'},
	{song = 'Gouda', composer = 'Danimates', charters = 'Danimates'},
	{song = 'Wrathful Vengeance', composer = 'Emperor Yami', charters = 'Toxicflame'},
	{song = 'crumbled', composer = 'Ruby_ and Ufer', charters = 'Toxicflame'},
	{song = 'Cheesefries Old', composer = 'Ufer & V2Stand', charters = 'Ufer'},
	{song = 'Vestige Old', composer = 'V2Stand', charters = 'Ufer'},
	{song = 'Warcrimes Old', composer = 'Farjd', charters = 'Farjd'},
	{song = 'Retro', composer = 'Ruby', charters = 'angle'},
	{song = 'Crumb-Edition-V2', composer = 'Ruby', charters = 'angle'},












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
