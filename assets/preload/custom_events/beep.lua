function onCreate() --idk if this is a flashing lights
    makeLuaSprite('beeps', 'beep', 0,0)
    addLuaSprite('beeps', true)
    setProperty('beeps.alpha', 0)
    setObjectCamera('beeps', 'other')
end

function onEvent(name, value1, value2)
	if name == 'beep' then
		if value1 == '' then
          doTweenAlpha('bees', 'beeps', 0, 0.39, 'linear') --i hate this sometimes
          setProperty('beeps.alpha', 0.6)
         end
     end
end