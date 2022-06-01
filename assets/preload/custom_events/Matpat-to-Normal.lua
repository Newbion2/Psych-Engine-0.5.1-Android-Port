--local tonumber = {0.3, 0.5, 0.7, 1}
--local counter = 1 this local thing is code from frantastic thank you again u helped me too much now :')

function onEvent(name, value1, value2)
	if name == 'Matpat-to-Normal' then
		if value1 == '' then
          doTweenAlpha('wht', 'wait', 0, 1.8, 'linear')
          setProperty('wait.alpha', 1)
		  setProperty('defaultCamZoom', 0.9)
		  setProperty('carp.visible', true)
		  setProperty('gt.visible', false)
          setProperty('tble.visible', true)
          setProperty('walps.visible', true)
          setProperty('cut.visible', true)
          setProperty('pxl.visible', false)
          setProperty('pixel.visible', false)
          setProperty('gf.visible', true)
          triggerEvent('Change Character', '1', 'matpat')
          triggerEvent('Change Character', 'BF', 'bf-mat')
         end
     end
end