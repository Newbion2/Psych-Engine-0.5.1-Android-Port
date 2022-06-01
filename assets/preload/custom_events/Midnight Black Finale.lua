--local tonumber = {0.3, 0.5, 0.7, 1}
--local counter = 1 this local thing is code from frantastic thank you again u helped me too much now :')

function onEvent(name, value1, value2)
	if name == 'Midnight Black Finale' then
		if value1 == '0' then
          setProperty('bly.alpha', 1)
          doTweenAlpha('whit', 'whity', 0, 1, 'linear')
          setProperty('whity.alpha', 1)
          setProperty('camHUD.alpha', 0)
         end
     end
end