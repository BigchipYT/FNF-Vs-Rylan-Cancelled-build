local closed = false;
function onCreate()
	if not closed then
	    makeLuaSprite('app_sky', 'app_sky', -600, -300);
	    setScrollFactor('app_sky', 0.9, 0.9);
	    scaleObject('app_sky', 0.6, 0.6);

	    makeLuaSprite('app_citybg', 'app_citybg', -600, -300);
	    setScrollFactor('app_citybg', 0.9, 0.9);
	    scaleObject('app_citybg', 0.6, 0.6);
	
	    makeLuaSprite('app_floor', 'app_floor', -600, -300);
	    setScrollFactor('app_floor', 1, 1);
	    scaleObject('app_floor', 0.6, 0.6);

	    makeAnimatedLuaSprite('RylanGF', 'RylanGF', 750, 140);
	    addAnimationByPrefix('RylanGF', 'bop', 'girlbop', 24, false);
	    objectPlayAnimation('RylanGF', 'bop');
	    setProperty('RylanGF.flipX', true);

	    addLuaSprite('app_sky', false);
	    addLuaSprite('app_citybg', false);
	    addLuaSprite('app_floor', false);
        addLuaSprite('RylanGF', false);
		closed = true;
	end
end

--THX BBPANZU

function onBeatHit()
	if curBeat % 2 == 0 then
		objectPlayAnimation('RylanGF', 'bop');
	end
end	

function onCountdownTick(counter)
	if counter % 2 == 0 then
		objectPlayAnimation('RylanGF', 'bop');
	end
end
