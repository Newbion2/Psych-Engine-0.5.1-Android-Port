--local tonumber = {0.3, 0.5, 0.7, 1}
--local counter = 1 this local thing is code from frantastic thank you again u helped me too much now :')

function onEvent(name, value1, value2)
	if name == 'GT-Logo-Anim' then
		if value1 == '1' then
          setProperty('gt.y', -660)
          setProperty('defaultCamZoom', 1.05)
          setProperty('cameraSpeed', 90);
          setProperty('carp.visible', false)
          setProperty('tble.visible', false)
          setProperty('walps.visible', false)
          setProperty('cut.visible', false)
          setProperty('pxl.visible', true)
          setProperty('pixel.visible', true)
          setProperty('gf.visible', false)
          objectPlayAnimation('gt', '1', true)
          
    elseif value1 == '2' then
           objectPlayAnimation('gt', '2', true)
           setProperty('cameraSpeed', 1);
           
    elseif value1 == '3' then
           objectPlayAnimation('gt', '3', true)
           
    elseif value1 == '4' then
           runTimer('gtshine', 0.18)
           objectPlayAnimation('gt', '4', true)
           setProperty('defaultCamZoom', 0.55)
         end
     end
end

function onTimerCompleted(tag, loops, loopsLeft)
    if tag == 'gtshine' then
       runTimer('gtstat', 0.18)
       objectPlayAnimation('gt', 'shine', true)
     end
     
     if tag == 'gtstat' then
        objectPlayAnimation('gt', 'statshine', true)
        triggerEvent('Camera Follow Pos', '', '')
        doTweenY('tweenGT', 'gt', 50, 0.4, 'linear')
    end
end

    