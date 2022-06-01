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
    end

  if flashingLights == true then
      addLuaSprite('gradient1', true)
      addLuaSprite('gradient2', true)
      addLuaSprite('gradient3', true)
    end
end 

function onEvent(name, value1, value2)
	if name == 'Gradient' then
		if value1 == '100' then --Makes the gradient static
     function onBeatHit()
		    if curBeat % 100 == 0 then
                  if Gradient then
		Gradient = getRandomInt(1, 3)
		if Gradient == 1 then
			doTweenAlpha('dient1', 'gradient1', 0.9, 0.0001, 'linear')
            --setProperty('gradient1.alpha', 0.8)
		elseif Gradient == 2 then
			doTweenAlpha('dient2', 'gradient2', 0.5, 0.0001, 'linear')
            --setProperty('gradient2.alpha', 0.8)
		elseif Gradient == 3 then
			doTweenAlpha('dient3', 'gradient3', 0.9, 0.0001, 'linear')
		end
    end
          runTimer('stop', 0.5);
		--  addLuaSprite('bluelight', false)
          math.randomseed(curStep * 1)
                
                setProperty('bluelght.x', getRandomInt(xx1, xx12)) --math.random(xx1, xx10)) --getRandomInt(xx1, xx10))  BRUHHH
              end
          end
		elseif value1 == '1' then
             if curBeat % 1 == 0 then --Makes the gradient Flash at 1 beat 
      function onBeatHit()
          if Gradient then
		Gradient = getRandomInt(1, 3) --yayaya i know lightning and gradient is same color so it needs the gradient to be same as lightning's colors
		if Gradient == 1 then --well about that mr.smart, i dont want a freakin long codes that mess my work  just like this its meesssssed 
			doTweenAlpha('dient4', 'gradient1', 0, 0.4, 'backOut')
			setProperty('gradient1.alpha', 0.6)
		elseif Gradient == 2 then
			doTweenAlpha('dient5', 'gradient2', 0, 0.4, 'backOut')
			setProperty('gradient2.alpha', 0.4)
		elseif Gradient == 3 then
			doTweenAlpha('dient6', 'gradient3', 0, 0.4, 'backOut')
			setProperty('gradient3.alpha', 0.6)
		end
    end
          math.randomseed(curStep * 1)
         -- runTimer('stop', 0.5);
		  --addLuaSprite('bluelight', false) --dont mind these codes i used this as template of loghtning timer because Gradient event doesn't work idk why
                setProperty('blueliht.x', getRandomInt(xx1, xx12)) --THIS
                 end
             end
         elseif value1 == '2' then --Makes the gradient Flash at 2 beat 
      function onBeatHit()
             if curBeat % 2 == 0 then --my goodness pls forgive me stolen code :( IDK HOW TO RANDOM PLAY ANIM
        --math.randomseed(Lightning * 0) useless code omfg maybe not
          if Gradient then
		Gradient = getRandomInt(1, 3)
		if Gradient == 1 then
			doTweenAlpha('dient45', 'gradient1', 0, 3, 'backOut')
			setProperty('gradient1.alpha', 0.8)
		elseif Gradient == 2 then
			doTweenAlpha('dient55', 'gradient2', 0, 3, 'backOut')
			setProperty('gradient2.alpha', 0.4)
		elseif Gradient == 3 then
			doTweenAlpha('dient64', 'gradient3', 0, 3, 'backOut')
			setProperty('gradient3.alpha', 0.7)
		end
    end
            runTimer('stop', 0.5);
		 --  addLuaSprite('bluelight', false)
            math.randomseed(curStep * 1) --dont mind this codes lol idk why they dont work when im using gradeint
                setProperty('blueliht.x', getRandomInt(xx1, xx12)) --AND THIS
             end
         end
      elseif value1 == '4' then --Makes the gradient Flash at 2 beat 
      function onBeatHit()
             if curBeat % 4 == 0 then --my goodness pls forgive me stolen code :( IDK HOW TO RANDOM PLAY ANIM
        --math.randomseed(Lightning * 0) useless code omfg maybe not
          if Gradient then
		Gradient = getRandomInt(1, 3)
		if Gradient == 1 then
			doTweenAlpha('dient75', 'gradient1', 0, 4.8, 'backOut')
			setProperty('gradient1.alpha', 0.7)
		elseif Gradient == 2 then
			doTweenAlpha('dient755', 'gradient2', 0, 4.8, 'backOut')
			setProperty('gradient2.alpha', 0.4)
		elseif Gradient == 3 then
			doTweenAlpha('dient94', 'gradient3', 0, 4.8, 'backOut') --im sure its backOut lol
			setProperty('gradient3.alpha', 0.7)
		end
    end
            runTimer('stop', 0.5);
		 --  addLuaSprite('bluelight', false)
            math.randomseed(curStep * 1) --dont mind this codes lol idk why they dont work when im using gradeint
                setProperty('blueliht.x', getRandomInt(xx1, xx12)) --AND THIS
                end
            end
        end
    end
end