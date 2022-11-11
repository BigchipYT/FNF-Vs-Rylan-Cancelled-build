function onCreate()
    makeLuaText('version', "Vs Rylan V1.0 Song: "..songName.."", 100, 0, 665)
    setTextAlignment('version', 'left')
    addLuaText('version')
end

function onUpdate(elapsed)
    if getProperty('curSong') == 'go-away' then
        setTextString('version', "@s Ry#aB V707 S&n(: "..songName.."")
    else
        if getProperty('curSong') == '707-domination' then
            setTextString('version', "@! $y#0* (707 @&!(: &*@&#*@")
        else
            setTextString('version', "Vs Rylan V1.0 Song: "..songName.."")
        end
    end
end