package;

import flixel.util.typeLimit.OneOfTwo;
import flixel.group.FlxSpriteGroup;
import flixel.util.FlxTimer;
import flixel.tweens.FlxEase;
import flash.text.TextField;
import flixel.FlxG;
import flixel.FlxSprite;
import flixel.addons.display.FlxGridOverlay;
import flixel.group.FlxGroup.FlxTypedGroup;
import flixel.math.FlxMath;
import flixel.text.FlxText;
import flixel.util.FlxColor;
import flixel.tweens.FlxTween;
import flixel.system.FlxSound;
import flixel.util.FlxStringUtil;
import openfl.utils.Assets as OpenFlAssets;
import lime.utils.Assets;
#if desktop
import Discord.DiscordClient;
#end

using StringTools;

class FreeplayState extends MusicBeatState
{
	var songs:Array<SongMetadata> = [];

	var selector:FlxText;
	var curSelected:Int = 0;
	var curDifficulty:Int = 1;

	var bg:FlxSprite;
	var scoreBG:FlxSprite;
	var scoreText:FlxText;
	var lerpScore:Int = 0;
	var lerpRating:Float = 0;
	var intendedScore:Int = 0;
	var intendedRating:Float = 0;
	var colorTween:FlxTween;

	private var grpSongs:FlxTypedGroup<Alphabet>;
	private var curPlaying:Bool = false;
	private var curChar:String = "unknown";

	private var InMainFreeplayState:Bool = false;

	private var AllPossibleSongs:Array<String> = ["main", "extras", "joke", "challenge", "old", "crumb_mixes"];
	private var niceFormattedCategories:Array<String> = ["Main", "Extras", "Joke", "Challenge", "Old", "Crumb Mixes"];

	private var CurrentPack:Int = 0;

	var loadingPack:Bool = false;

	private var iconArray:Array<HealthIcon> = [];

	var categoryIcons:Array<FlxSpriteGroup> = [];

	override function create()
	{
		Conductor.bpmChangeMap = [];
		Conductor.changeBPM(100);
		#if desktop
		DiscordClient.changePresence("In the Freeplay Menu", null);
		#end

		bg = new FlxSprite().loadGraphic(Paths.image('menuDesat'));
		bg.antialiasing = ClientPrefs.globalAntialiasing;
		add(bg);

		for (i in 0...AllPossibleSongs.length)
		{
			var categoryGroup = new FlxSpriteGroup();
			var categoryIcon = new FlxSprite().loadGraphic(Paths.image('week_icons_' + (AllPossibleSongs[i].toLowerCase())));
			categoryIcon.setGraphicSize(775, 775);
			categoryIcon.updateHitbox();
			categoryIcon.setGraphicSize(Std.int(categoryIcon.width * 0.7));
			categoryIcon.updateHitbox();
			categoryIcon.screenCenter();
			var categoryText = new FlxText(0, categoryIcon.y - 15, 1280, niceFormattedCategories[i]);
			categoryText.setFormat(Paths.font("comicsans.ttf"), 48, 0xffffffff, CENTER, OUTLINE, 0xff000000);
			categoryText.borderSize = 5;
			categoryText.borderQuality = 0.5; // dont know if this does anything
			categoryText.screenCenter(X);
			if (AllPossibleSongs[i].toLowerCase() != "main")
				categoryText.x = 15;
			else if (AllPossibleSongs[i].toLowerCase() == "main")
				categoryText.x = 4;
			categoryGroup.x += 1280 * i;
			categoryGroup.add(categoryIcon);
			categoryGroup.add(categoryText);
			add(categoryGroup);
			categoryIcons.push(categoryGroup);
		}
		for (iconGroup in categoryIcons)
		{
			FlxTween.tween(iconGroup, {x: ((categoryIcons.indexOf(iconGroup) - CurrentPack) * 1280)}, 0.2, {
				ease: FlxEase.cubeInOut
			});
		}

		bottomInfoTextBG = new FlxSprite(0, FlxG.height - 26).makeGraphic(FlxG.width, 26, 0xFF000000);
		bottomInfoTextBG.alpha = 0.6;
		#if PRELOAD_ALL
		defbottomText = "Press SPACE to listen to the Song / Press CTRL to open the Gameplay Changers Menu / Press RESET to Reset your Score and Accuracy.";
		#else
		defbottomText = "Press RESET to Reset your Score and Accuracy.";
		#end
		bottomInfoText = new FlxText(bottomInfoTextBG.x + -10, bottomInfoTextBG.y + 3, FlxG.width, defbottomText, 21);
		bottomInfoText.setFormat(Paths.font("comic.ttf"), 18, FlxColor.WHITE, RIGHT);
		bottomInfoText.scrollFactor.set();
		super.create();
	}

	var bottomInfoTextBG:FlxSprite;
	var bottomInfoText:FlxText;
	var defbottomText:String = "";

	public function LoadProperPack()
	{
		var pack:String = AllPossibleSongs[CurrentPack].toLowerCase();
		var packJson = haxe.Json.parse(Assets.getText("assets/weeks/" + pack + ".json"));
		for (songData in cast(packJson.songs, Array<Dynamic>))
		{
			addSong(songData[0], FlxColor.fromRGB(songData[2][0], songData[2][1], songData[2][2]), songData[1]);
		}
	}

	public function GoToActualFreeplay()
	{
		grpSongs = new FlxTypedGroup<Alphabet>();
		add(grpSongs);

		for (i in 0...songs.length)
		{
			var songText:Alphabet; // to allow it to compile (i think)
			songText = new Alphabet(0, (70 * i) + 30, songs[i].songName, true);

			songText.isMenuItem = true;
			songText.targetY = i;
			songText.itemType = "D-Shape";
			grpSongs.add(songText);
			if (songText.width > 980)
			{
				var textScale:Float = 980 / songText.width;
				songText.scale.x = textScale;
				for (letter in songText.lettersArray)
				{
					letter.x *= textScale;
					letter.offset.x *= textScale;
				}
				// songText.updateHitbox();
				// trace(songs[i].songName + ' new scale: ' + textScale);
			}
			var icon:HealthIcon; // refer above
			icon = new HealthIcon(songs[i].songCharacter);
			icon.sprTracker = songText;

			iconArray.push(icon);
			add(icon);
		}

		scoreText = new FlxText(FlxG.width * 0.7, 5, 0, "", 32);
		scoreText.setFormat(Paths.font("comicsanslol.ttf"), 32, FlxColor.WHITE, RIGHT);
		scoreText.x = 780;

		scoreBG = new FlxSprite(scoreText.x - 13, 0).makeGraphic(520, 45, 0xFF000000);
		scoreBG.alpha = 0.5;
		add(scoreBG);
		add(scoreText);
		add(bottomInfoTextBG);
		add(bottomInfoText);
		changeSelection();
		changeDiff();

		// var swag:Alphabet = new Alphabet(1, 0, "swag");
	}

	public function addSong(songName:String, color:FlxColor, songCharacter:String)
	{
		songs.push(new SongMetadata(songName, color, songCharacter));
	}

	public function UpdatePackSelection(change:Int)
	{
		if (loadingPack)
			return;
		CurrentPack += change;
		if (CurrentPack == -1)
		{
			CurrentPack = AllPossibleSongs.length - 1;
			for (iconGroup in categoryIcons)
			{
				FlxTween.tween(iconGroup, {x: (((AllPossibleSongs.length - 1) - categoryIcons.indexOf(iconGroup)) * -1280)}, 0.2, {
					ease: FlxEase.cubeInOut
				});
			}
		}
		if (CurrentPack == AllPossibleSongs.length)
		{
			CurrentPack = 0;
			for (iconGroup in categoryIcons)
			{
				FlxTween.tween(iconGroup, {x: (categoryIcons.indexOf(iconGroup) * 1280)}, 0.2, {
					ease: FlxEase.cubeInOut
				});
			}
		}
		if (change != 0)
		{
			if (change < 0)
			{
				for (iconGroup in categoryIcons)
				{
					FlxTween.tween(iconGroup, {x: ((CurrentPack - categoryIcons.indexOf(iconGroup)) * -1280)}, 0.2, {
						ease: FlxEase.cubeInOut,
					});
				}
			}
			else
			{
				for (iconGroup in categoryIcons)
				{
					FlxTween.tween(iconGroup, {x: ((categoryIcons.indexOf(iconGroup) - CurrentPack) * 1280)}, 0.2, {
						ease: FlxEase.cubeInOut
					});
				}
			}
		}
	}

	public function addWeek(songs:Array<String>, color:FlxColor, ?songCharacters:Array<String>, ?isLocked:Bool = false, ?isAchievement:Bool = false)
	{
		if (songCharacters == null)
			songCharacters = ['bf'];

		var num:Int = 0;
		for (song in songs)
		{
			addSong(song, color, songCharacters[num]);

			if (songCharacters.length != 1)
				num++;
		}
	}

	var instPlaying:Int = -1;

	private static var vocals:FlxSound = null;

	override function update(elapsed:Float)
	{
		super.update(elapsed);
		Conductor.songPosition = FlxG.sound.music.time;
		if (!InMainFreeplayState)
		{
			if (controls.UI_LEFT_P)
			{
				FlxG.sound.play(Paths.sound('scrollMenu'));
				UpdatePackSelection(-1);
			}
			if (controls.UI_RIGHT_P)
			{
				FlxG.sound.play(Paths.sound('scrollMenu'));
				UpdatePackSelection(1);
			}
			if (controls.ACCEPT && !loadingPack)
			{
				FlxG.sound.play(Paths.sound('confirmMenu'));
				loadingPack = true;
				LoadProperPack();

				FlxTween.tween(categoryIcons[CurrentPack], {alpha: 0, y: categoryIcons[CurrentPack].y + 200}, 0.2, {
					ease: FlxEase.cubeInOut,
				});
				new FlxTimer().start(0.5, function(Dumbshit:FlxTimer)
				{
					FlxG.camera.zoom = 1;
					GoToActualFreeplay();
					InMainFreeplayState = true;
					loadingPack = false;
				});
			}
			if (controls.BACK)
			{
				FlxG.sound.play(Paths.sound('cancelMenu'));
				MusicBeatState.switchState(new MainMenuState());
			}

			return;
		}

		if (FlxG.sound.music.volume < 0.7)
		{
			FlxG.sound.music.volume += 0.5 * FlxG.elapsed;
		}

		lerpScore = Math.floor(FlxMath.lerp(lerpScore, intendedScore, CoolUtil.boundTo(elapsed * 24, 0, 1)));
		lerpRating = FlxMath.lerp(lerpRating, intendedRating, CoolUtil.boundTo(elapsed * 12, 0, 1));

		if (Math.abs(lerpScore - intendedScore) <= 10)
			lerpScore = intendedScore;
		if (Math.abs(lerpRating - intendedRating) <= 0.01)
			lerpRating = intendedRating;

		scoreText.text = 'PERSONAL BEST: ' + lerpScore + ' (' + Math.floor(lerpRating * 100) + '%)';
		var upP = controls.UI_UP_P;
		var downP = controls.UI_DOWN_P;
		var accepted = controls.ACCEPT;
		var space = FlxG.keys.justPressed.SPACE;
		var ctrl = FlxG.keys.justPressed.CONTROL;
		var fuckyou = FlxG.keys.justPressed.SEVEN;

		if (upP)
		{
			changeSelection(-1);
		}
		if (downP)
		{
			changeSelection(1);
		}
		if (ctrl)
		{
			persistentUpdate = false;
			openSubState(new GameplayChangersSubstate());
		}

		if (controls.BACK)
		{
			FlxG.sound.play(Paths.sound('cancelMenu'));
			MusicBeatState.switchState(new FreeplayState());

			if (accepted)
			{
				var poop:String = Highscore.formatSong(songs[curSelected].songName.toLowerCase(), curDifficulty);

				trace(poop);

				PlayState.SONG = Song.loadFromJson(poop, songs[curSelected].songName.toLowerCase());
				PlayState.isStoryMode = false;
				PlayState.storyDifficulty = curDifficulty;
			}
		}
		if (fuckyou)
		{
			FlxG.sound.music.volume = 0;
			PlayState.SONG = Song.loadFromJson("numbskull-hard", "numbskull"); // you dun fucked up again
			FlxG.save.data.oppositionFound = true;

			new FlxTimer().start(0.25, function(tmr:FlxTimer)
			{
				LoadingState.loadAndSwitchState(new PlayState());
				FlxG.sound.music.volume = 0;
				FreeplayState.destroyFreeplayVocals();
			});
		}

		if (space && instPlaying != curSelected)
		{
			destroyFreeplayVocals();
			Paths.currentModDirectory = songs[curSelected].folder;
			var poop:String = Highscore.formatSong(songs[curSelected].songName.toLowerCase(), curDifficulty);
			PlayState.SONG = Song.loadFromJson(poop, songs[curSelected].songName.toLowerCase());
			if (PlayState.SONG.needsVoices)
				vocals = new FlxSound().loadEmbedded(Paths.voices(PlayState.SONG.song));
			else
				vocals = new FlxSound();

			Conductor.mapBPMChanges(PlayState.SONG);
			Conductor.changeBPM(PlayState.SONG.bpm);
			FlxG.sound.list.add(vocals);
			FlxG.sound.playMusic(Paths.inst(PlayState.SONG.song), 0.7);
			vocals.play();
			vocals.persist = true;
			vocals.looped = true;
			vocals.volume = 0.7;
			instPlaying = curSelected;
		}
		else if (accepted)
		{
			var songLowercase:String = Paths.formatToSongPath(songs[curSelected].songName);
			var poop:String = Highscore.formatSong(songLowercase, curDifficulty);
			if (!sys.FileSystem.exists(Paths.modsJson(songLowercase + '/' + poop))
				&& !sys.FileSystem.exists(Paths.json(songLowercase + '/' + poop)))
			{
				poop = songLowercase;
				curDifficulty = 1;
			}
			trace(poop);

			PlayState.SONG = Song.loadFromJson(poop, songLowercase);
			PlayState.isStoryMode = false;
			PlayState.storyDifficulty = curDifficulty;

			trace('CURRENT WEEK: ' + WeekData.getWeekFileName());
			LoadingState.loadAndSwitchState(new PlayState());

			FlxG.sound.music.volume = 0;

			destroyFreeplayVocals();
		}
		else if (controls.RESET)
		{
			openSubState(new ResetScoreSubState(songs[curSelected].songName, curDifficulty, songs[curSelected].songCharacter));
			FlxG.sound.play(Paths.sound('scrollMenu'));
		}
		super.update(elapsed);
	}

	public static function destroyFreeplayVocals()
	{
		if (vocals != null)
		{
			vocals.stop();
			vocals.destroy();
		}
		vocals = null;
	}

	function changeDiff(change:Int = 0)
	{
		curDifficulty += change;

		if (curDifficulty < 0)
			curDifficulty = 4;
		if (curDifficulty > 4)
			curDifficulty = 0;

		#if !switch
		intendedScore = Highscore.getScore(songs[curSelected].songName, curDifficulty);
		intendedRating = Highscore.getRating(songs[curSelected].songName, curDifficulty);
		#end

		PlayState.storyDifficulty = curDifficulty;
	}

	function changeSelection(change:Int = 0)
	{
		curSelected += change;

		if (curSelected < 0)
			curSelected = songs.length - 1;

		if (curSelected >= songs.length)
			curSelected = 0;

		if (curDifficulty < 2) // idk man
			curDifficulty = 2;

		if (curDifficulty > 2)
			curDifficulty = 2;

		#if !switch
		intendedScore = Highscore.getScore(songs[curSelected].songName, curDifficulty);
		intendedRating = Highscore.getRating(songs[curSelected].songName, curDifficulty);
		#end

		bottomInfoText.text = defbottomText;
		var bullShit:Int = 0;

		for (i in 0...iconArray.length)
		{
			iconArray[i].alpha = 0.6;
		}

		iconArray[curSelected].alpha = 1;

		for (item in grpSongs.members)
		{
			item.targetY = bullShit - curSelected;
			bullShit++;

			item.alpha = 0.6;

			if (item.targetY == 0)
			{
				item.alpha = 1;
			}
		}
		changeDiff();

		if (colorTween != null)
		{
			colorTween.cancel();
		}
		var colorTo = songs[curSelected].color;
		colorTween = FlxTween.color(bg, 1, bg.color, colorTo, {
			onComplete: function(twn:FlxTween)
			{
				colorTween = null;
			}
		});
	}
}

class SongMetadata
{
	public var songName:String = "";
	public var color:FlxColor = FlxColor.WHITE; // fallback
	public var songCharacter:String = "";
	public var folder:String = "";

	public function new(song:String, color:FlxColor, songCharacter:String)
	{
		this.songName = song;
		this.color = color;
		this.songCharacter = songCharacter;
		this.folder = Paths.currentModDirectory;
		if (this.folder == null)
			this.folder = '';
	}
}
