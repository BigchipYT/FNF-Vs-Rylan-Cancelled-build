function onPause()
    if getProperty('curSong') == 'go-away' then
        return Function_Stop;
    else
	    return Function_Continue;
    end
end