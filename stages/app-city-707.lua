local closed = false
function onCreate()
	if not closed then
	    makeLuaSprite('app_sky-707', 'app_sky-707', -600, -300);
	    setScrollFactor('app_sky-707', 0.9, 0.9);
	    scaleObject('app_sky-707', 0.6, 0.6);

	    makeLuaSprite('app_citybg-707', 'app_citybg-707', -600, -300);
	    setScrollFactor('app_citybg-707', 0.9, 0.9);
	    scaleObject('app_citybg-707', 0.6, 0.6);
	
	    makeLuaSprite('app_floor-707', 'app_floor-707', -600, -300);
	    setScrollFactor('app_floor-707', 1, 1);
	    scaleObject('app_floor-707', 0.6, 0.6);

		makeLuaSprite('B L U E', 'B L U E', -600, -300);
		setScrollFactor('B L U E', 0, 0);
		scaleObject('B L U E', 1.9, 1.9);

	    addLuaSprite('app_sky-707', false);
	    addLuaSprite('app_citybg-707', false);
	    addLuaSprite('app_floor-707', false);
		closed = true;
	end
end
