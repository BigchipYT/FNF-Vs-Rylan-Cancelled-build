local closed = false
function onCreate()
	if not closed then
	    makeLuaSprite('app_sky-GOD', 'app_sky-GOD', -600, -300);
	    setScrollFactor('app_sky-GOD', 0.9, 0.9);
	    scaleObject('app_sky-GOD', 0.6, 0.6);

	    makeLuaSprite('app_citybg-GOD', 'app_citybg-GOD', -600, -300);
	    setScrollFactor('app_citybg-GOD', 0.9, 0.9);
	    scaleObject('app_citybg-GOD', 0.6, 0.6);
	
	    makeLuaSprite('app_floor-GOD', 'app_floor-GOD', -600, -300);
	    setScrollFactor('app_floor-GOD', 1, 1);
	    scaleObject('app_floor-GOD', 0.6, 0.6);

		makeLuaSprite('B L U E', 'B L U E', -600, -300);
		setScrollFactor('B L U E', 0, 0);
		scaleObject('B L U E', 1.9, 1.9);

	    addLuaSprite('app_sky-GOD', false);
	    addLuaSprite('app_citybg-GOD', false);
	    addLuaSprite('app_floor-GOD', false);
		addLuaSprite('B L U E', true);
		closed = true;
	end
end
