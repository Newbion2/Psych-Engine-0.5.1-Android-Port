function onEvent(name, value1, value2)
	if name == 'Shadow Bonnie Not Error' then --whyrror
		if value1 == '' then
		  triggerEvent('Add Camera Zoom', '3', '6')
          setProperty('err.visible', false)
          setProperty('blaky.visible', false)
         end
     end
end