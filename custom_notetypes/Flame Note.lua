function onCreate()
	for i = 0, getProperty('unspawnNotes.length')-1 do
		if getPropertyFromGroup('unspawnNotes', i,  'noteType') == 'Flame Note' then
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'flame_note');
			setPropertyFromGroup('unspawnNotes', i, 'hitHealth', '0.75');
			setPropertyFromGroup('unspawnNotes', i, 'missHealth', '0');
			setPropertyFromGroup('unspawnNotes', i, 'hitCausesMiss', false);

			if getPropertyFromGroup('unspawnNotes', i, 'mustPress') then 
				setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', true);
			end
		end
	end
end

function goodNoteHit(id, noteData, noteType, isSustainNote)
	if noteType == 'Flame Note' then

	end
end

function noteMiss(id, noteData, noteType, isSustainNote)
	if noteType == 'Flame Note' then

	end
end