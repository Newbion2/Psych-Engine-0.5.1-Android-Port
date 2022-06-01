function onEvent(name, value1, value2)
	if name == 'grabber' then
        if value1 == '1' then
            setProperty('dad.alpha', 0)
        end
    end
end