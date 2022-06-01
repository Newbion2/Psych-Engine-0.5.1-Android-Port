local Gradient = 1
local Gradient = 2
local Gradient = 3

function onEvent(name, value1, value2)
	if name == 'Gradient' then
		if value1 == '1' then --the tommorow means i started to do the port of fourth wall and yup ended up porting all the songs
     function onBeatHit()
     if curBeat % 1 == 0 then
	      if Gradient then
		Grandient = math.random(1, 3)
		if Gradient == 1 then
			doTweenAlpha('dient', 'gradient1', 0, 0.4, 'linear')
            setProperty('gradient1.alpha', 1)
		elseif Gradient == 2 then
			doTweenAlpha('dient', 'gradient2', 0, 0.4, 'linear')
            setProperty('gradient1.alpha', 1)
		elseif Gradient == 3 then
			doTweenAlpha('dient', 'gradient3', 0, 0.4, 'linear')
            setProperty('gradient1.alpha', 1)
		    end
	    end
		elseif value1 == '2' then
      function onBeatHit()
  if curBeat % 2 == 0 then
	      if Gradient then
		Grandient = math.random(1, 3)
		if Gradient == 1 then
			doTweenAlpha('dient', 'gradient1', 0, 0.4, 'linear')
            setProperty('gradient1.alpha', 1)
		elseif Gradient == 2 then
			doTweenAlpha('dient', 'gradient2', 0, 0.4, 'linear')
            setProperty('gradient1.alpha', 1)
		elseif Gradient == 3 then
			doTweenAlpha('dient', 'gradient3', 0, 0.4, 'linear')
            setProperty('gradient1.alpha', 1)
		    end
	    end
    end
end