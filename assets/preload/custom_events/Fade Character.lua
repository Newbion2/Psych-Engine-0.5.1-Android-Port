local fadeBF = {0.7, 0.5, 0.3, 0.15, 0}
local counter = 1
local fadeInShadow = {0.2, 0.4, 0.6, 0.8, 1}
local counter = 1

function onEvent(name, value1, value2)
	if name == 'Fade Character' then
		if value1 == '1' then
             setProperty('boyfriend.alpha', fadeBF[counter])
             counter = counter + 1
             setProperty('iconP1.alpha', fadeBF[counter])
             counter = counter + 1
             
   elseif value1 == '2' then
           setProperty('dad.alpha', fadeInShadow[counter])
           counter = counter + 1
           --setProperty('iconP2.alpha', fadeInShadow[counter])
           --counter = counter + 1
    
   elseif value1 == '0' then
          runTimer('sbgone', 0.4) --IT DOESNT GO DOWN IT IT TURN INTO 0 ALPHA TF
          setProperty('dad.alpha', 0.8)
         end
     end
end

function onTimerCompleted(tag, loops, loopsLeft)
    if tag == 'sbgone' then
        runTimer('sbgone1', 0.4)
        setProperty('dad.alpha', 0.6)
     end
    
     if tag == 'sbgone1' then
        runTimer('sbgone2', 0.4)
        setProperty('dad.alpha', 0.4)
     end
     
     if tag == 'sbgone2' then
        runTimer('sbgone3', 0.4)
        setProperty('dad.alpha', 0.2)
     end
      
      if tag == 'sbgone3' then -- i did this because lua is being a dumb as heck again 
        setProperty('dad.alpha', 0)
    end
end