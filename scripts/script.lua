function onCreate()
	if getProperty('boyfriend.curCharacter') == 'rylanPlayable' then
	    setPropertyFromClass('GameOverSubstate', 'characterName', 'rylanDed');
	    setPropertyFromClass('GameOverSubstate', 'deathSoundName', 'fnf_loss_sfx');
	    setPropertyFromClass('GameOverSubstate', 'endSoundName', 'gameOverEnd');
	end
	setPropertyFromClass('GameOverSubstate', 'loopSoundName', 'dedChill');
end