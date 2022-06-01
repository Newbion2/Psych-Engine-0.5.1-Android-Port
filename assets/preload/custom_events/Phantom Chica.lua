function onEvent(name, value1, value2)
    if name == 'Phantom Chica' then
		if value1 == '1' then
             objectPlayAnimation('cha', 'idc', true)
             playSound('jumpscare', 1)
             doTweenAlpha('chacha', 'cha', 0, 2, 'linear')
         end
     end
end