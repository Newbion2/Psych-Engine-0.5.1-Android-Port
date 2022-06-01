--local tonumber = {0.3, 0.5, 0.7, 1}
--local counter = 1 this local thing is code from frantastic thank you again u helped me too much now :')

function onEvent(name, value1, value2)
	if name == 'Matpat-to-Pixel-First' then
		if value1 == '' then
          setProperty('defaultCamZoom', 0.55)
          setProperty('carp.visible', false)
          setProperty('tble.visible', false)
          setProperty('walps.visible', false)
          setProperty('cut.visible', false)
          setProperty('pxl.visible', true)
          setProperty('pixel.visible', true)
          setProperty('gf.visible', false)
          triggerEvent('Change Character', '1', 'matpat-pixel')
          triggerEvent('Change Character', 'BF', 'bf-matpat')
         end
     end
end