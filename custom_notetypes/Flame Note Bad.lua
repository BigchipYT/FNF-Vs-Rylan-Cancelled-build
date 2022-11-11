function onCreate()
	for i = 0, getProperty('unspawnNotes.length')-1 do
		if getPropertyFromGroup('unspawnNotes', i,  'noteType') == 'Flame Note Bad' then
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'flame_note');
			setPropertyFromGroup('unspawnNotes', i, 'hitHealth', '0');
			setPropertyFromGroup('unspawnNotes', i, 'missHealth', '9999999999999999999999999999999999999');
			setPropertyFromGroup('unspawnNotes', i, 'hitCausesMiss', false);

			if getPropertyFromGroup('unspawnNotes', i, 'mustPress') then 
				setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', false);
			end
		end
	end
end

function goodNoteHit(id, noteData, noteType, isSustainNote)
	if noteType == 'Flame Note Bad' then
		characterPlayAnim('dad', 'attack', false)
		characterPlayAnim('bf', 'dodge', true)
		characterPlayAnim('gf', 'duck', true)
	end
end

function noteMiss(id, noteData, noteType, isSustainNote)
	if noteType == 'Flame Note Bad' then
		characterPlayAnim('dad', 'attack', false)
		characterPlayAnim('gf', 'duck', true)
	end
end