local allowEndSong = false;
function onEndSong()
    if getProperty('curSong') == 'Frustrated' then
        if not allowEndSong and isStoryMode and not seenCutscene then
            startVideo('cutscene');
            allowEndSong = true;
	        return Function_Stop;
        end
        return Function_Continue;
    else
        return Function_Continue;
    end
end