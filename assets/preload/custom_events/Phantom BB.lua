function onEvent(name, value1, value2)
    if name == 'Phantom BB' then
		if value2 == '0' then
             runTimer('removeBB', 4)
             addLuaSprite('bb', true)
             objectPlayAnimation('bb', 'haha', true)
             doTweenAlpha('badboyballon', 'bb', 0, 2.1, 'linear')

   elseif value2 == '1' then
             runTimer('removeBB1', 4)
             setProperty('bb.alpha', 1)
             addLuaSprite('bb', true)
             objectPlayAnimation('bb', 'haha', true)
             doTweenAlpha('badboyb', 'bb', 0, 2.4, 'linear')
         end
     end
end

function onTimerCompleted(tag, loops, loopsLeft)

    if tag == 'removeBB' then
          removeLuaSprite('bb', false)
      end
     if tag == 'removeBB1' then
          removeLuaSprite('bb', false)
    end
end
     