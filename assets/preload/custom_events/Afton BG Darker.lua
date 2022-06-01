--local tonumber = {0.9, 0.85, 0.8, 0.75, 0.7, 0.65, 0.6, 0,55, 0.5, 0.4, 0.3, 0.2, 0.15, 0.1, 0}
local tonumber = {0.5, 0.55, 0.6, 0.65, 0.7, 0.75, 0.8, 0.9, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1 ,1}
local counter = 0

function onEvent(name, value1, value2)
	if name == 'Afton BG Darker' then
		if value1 == '1' then
          setProperty('bly.alpha', tonumber[counter])
          counter = counter + 1
            --setProperty('inside.alpha', tonumber[counter])
           -- setProperty('animdude.alpha', tonumber[counter]) 
           -- setProperty('flo.alpha', tonumber[counter])
          --  setProperty('skid.alpha', tonumber[counter]) 
         
     elseif value1 == '0' then
              setProperty('bly.alpha', 0)
            --setProperty('inside.alpha', 1)
            --setProperty('animdude.alpha', 1) 
            --setProperty('flo.alpha', 1)
            --setProperty('skid.alpha', 1) 
         end
     end
end