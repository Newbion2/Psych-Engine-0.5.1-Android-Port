--local tonumber = {0.3, 0.5, 0.7, 1}
--local counter = 1

function onEvent(name, value1, value2)
	if name == 'Midnight Black' then
		if value1 == '1' then
          setProperty('bly.alpha', 0.6)
          
     elseif value1 == '2' then
          setProperty('bly.alpha', 0.8)
      
     elseif value1 == '3' then
          setProperty('bly.alpha', 1)
          
     elseif value1 == '4' then
          setProperty('bly.alpha', 1) --ignore this its unused lol dont delete
      
     elseif value1 == '0' then
              setProperty('bly.alpha', 0)
            --setProperty('inside.alpha', 1)
            --setProperty('animdude.alpha', 1) --hmmmmmmmmmmmmmmmmmmmmmmm
            --setProperty('flo.alpha', 1)
            --setProperty('skid.alpha', 1) 
         end
     end
end