function onEvent(name, value1, value2)
	if not flashingLights then
	    cameraFlash('other', "0xFF"..value1.."", value2, true)
	end
end