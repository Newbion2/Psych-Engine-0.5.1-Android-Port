function onEvent(name, value1, value2)
	if name == 'Shadow Bonnie Error' then --whyrror
		if value1 == '' then
          setProperty('err.visible', true)
          setProperty('blaky.visible', true)
         end
     end
end