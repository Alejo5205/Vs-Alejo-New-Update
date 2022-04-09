local allowCountdown = false
local startDiag = false
function onStartCountdown()
	if isStoryMode and not allowCountdown and not startDiag and not seenCutscene then
		startVideo('hot_fire_Cutscenes');
		startDiag = true;
		return Function_Stop;
	end
	if startDiag and not allowCountdown then
		startDialogue('dialogue', 'breakfast');
		allowCountdown = true;
		return Function_Stop;
	end
	return Function_Continue;
end
function onEndSong()
	if not allowCountdown and isStoryMode and not seenCutscene then --Block the first countdown
		startVideo('to_be_continued');
		allowCountdown = true;
		return Function_Stop;
	end
	return Function_Continue;
end

local allowEndShit = false
function onEndSong()
	if not allowEndShit and isStoryMode and not seenCutscene then
		startVideo('to_be_continued');
		allowEndShit = true;
		return Function_Stop;
	end
	return Function_Continue;
end