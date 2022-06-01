local anims = {chica, tree, cupcakes, fredbare, happy, mangle, chica, puppet, balloon, glitch, raw}

function onEvent(name, value1, value2)
	if name == 'Shadow Bonnie Glitch' then --whyrror
		if value1 == '' then
          runTimer('sbBack', 0.6)
          objectPlayAnimation('sbb', 'glitch', true)
         end
     end
end

function onTimerCompleted(tag, loops, loopsLeft)
    if tag == 'sbBack' then
        objectPlayAnimation('sbb', anims[getRandomInt(1, #anims)]
    end
end