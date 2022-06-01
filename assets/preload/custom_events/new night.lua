function onCreate() --idk if this is a flashing lights
    makeLuaSprite('blu', 'u_blaz', 0,0)
    setObjectCamera('blu', 'other')
    
    makeLuaSprite('nighty', 'fright/5thNight', 0, 0)
    screenCenter('nighty', XY)
    setProperty('nighty.visible', false)
    setObjectCamera('nighty', 'other')
    
    makeAnimatedLuaSprite('glitch', 'fright/newNightGlitch', 0, 0)
    addAnimationByPrefix('glitch', 'ifaftondiesandnevercomesbackwewillgetthefulllore', 'newNightGlitch glitch', 22, false) --why too long dont ask i really hate that dumb bunny trap afton 
    setProperty('glitch.visible', false)
    setObjectCamera('glitch', 'other')
    
    addLuaSprite('blu', true)
    addLuaSprite('nighty', true)
    addLuaSprite('glitch', true)
end

function onEvent(name, value1, value2)
	if name == 'new night' then --ughnnnn if u gonna use this thing credits me fplsssssssssssssss i beg :( i work hard to port this thing maybe my worst decision of my LIFEಥ‿ಥ
		if value1 == '' then
          runTimer('dotweeninnighty', 3)
          setProperty('nighty.visible', true)
          setProperty('glitch.visible', true)
          objectPlayAnimation('glitch', 'ifaftondiesandnevercomesbackwewillgetthefulllore', true)
         end
     end
end

function onTimerCompleted(tag, loops, loopsLeft)
      if tag == 'dotweeninnighty' then
         doTweenAlpha('alphado', 'nighty', 0, 2.4, 'linear')
     end
end