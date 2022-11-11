local allowCountdown = false
local imageFull = ""
function onStartCountdown()
	if not allowCountdown and isStoryMode and not seenCutscene then
		setProperty('inCutscene', true);
		loadBGimage('city');
		runTimer('startDialogue', 0.8);
		allowCountdown = true;
		return Function_Stop;
	end
	removeBGimage(imageFull, 1)
	return Function_Continue;
end

function loadBGimage(image)
	imageFull = "app_"..image.."";
	makeLuaSprite(imageFull, imageFull, -600, -300);
	setScrollFactor(imageFull, 0.9, 0.9);
	scaleObject(imageFull, 0.6, 0.6);
	addLuaSprite(imageFull, true);
end

function removeBGimage(duration)
	doTweenAlpha(imageFull, '', 0, duration, linear)
	removeLuaSprite(imageFull, false);
end

function onDestroy()
	doTweenAlpha(imageFull, '', 0, 1, linear)
	removeLuaSprite(imageFull, false);
end

function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'startDialogue' then -- Timer completed, play dialogue
            if botPlay then
				startDialogue('dialogueb', 'downdraft');
            else
				startDialogue('dialogue', 'downdraft');
            end
	end
end

-- Dialogue (When a dialogue is finished, it calls startCountdown again)
function onNextDialogue(count)
	-- triggered when the next dialogue line starts, 'line' starts with 1
end

function onSkipDialogue(count)
	-- triggered when you press Enter and skip a dialogue line that was still being typed, dialogue line starts with 1
end