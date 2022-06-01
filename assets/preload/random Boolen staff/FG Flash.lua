local Gradient = 1
local Gradient = 2
local Gradient = 3

--these thing is frantastic24 code thank you :'D i want to be friend :>>>>>>>>>>>>>>>>>>>]]]]] lol
function onCreate()
  if flashingLights == true then

    makeLuaSprite('gradient1','scott/grad1');
    setProperty('gradient1.alpha', 0)
    setObjectCamera('gradient1', 'hud');
    setBlendMode('gradient1', 'add')
    
    makeLuaSprite('gradient2','scott/grad2');
    setObjectCamera('gradient2', 'hud')
    setProperty('gradient2.alpha', 0)
    setBlendMode('gradient2', 'add')
    
    makeLuaSprite('gradient3','scott/grad3');
    setObjectCamera('gradient3', 'hud')
    setProperty('gradient3.alpha', 0);   
    setBlendMode('gradient3', 'add')
    
    makeLuaSprite('gradient','scott/grad4')
    setObjectCamera('gradient', 'hud');
    setProperty('gradient.alpha', 0)
    setBlendMode('gradient', 'add')
    end

  if flashingLights == true then
     addLuaSprite('gradient', true)
      addLuaSprite('gradient1', true)
      addLuaSprite('gradient2', true)
      addLuaSprite('gradient3', true)
    end
end 

function onEvent(name, value1, value2)
	if name == 'FG Flash' then
		if value1 == '0' then --Makes the gradient static
           doTweenAlpha('dient1', 'gradient', 0, 0.8, 'linear')
           setProperty('gradient.alpha', 1)
		end
    end
          
		if value2 == '0' then
             if curBeat % 2 == 0 then --Makes the gradient Flash at 1 beat and i dont freakin know why it still work even its not on the function onBeatHit bruh
      function onBeatHit()
          if Gradient then
		Gradient = getRandomInt(1, 3) --yayaya i know lightning and gradient is same color so it needs the gradient to be same as lightning's colors
		if Gradient == 1 then --well about that mr.smart, i dont want a freakin long codes that mess my work  just like this its meesssssed 
			doTweenAlpha('dient4', 'gradient1', 0, 0.8, 'linear')
			setProperty('gradient1.alpha', 0.6)
		elseif Gradient == 2 then
			doTweenAlpha('dient5', 'gradient2', 0, 0.8, 'linear')
			setProperty('gradient2.alpha', 0.6)
		elseif Gradient == 3 then
			doTweenAlpha('dient6', 'gradient3', 0, 0.8, 'linear')
			setProperty('gradient3.alpha', 0.6)
		end
    end
          math.randomseed(curStep * 1)
         -- runTimer('stop', 0.5);
		  --addLuaSprite('bluelight', false) --dont mind these codes i used this as template of loghtning timer because Gradient event doesn't work idk why
                setProperty('blueliht.x', getRandomInt(xx1, xx12)) --THIS
        end
    end
end
 