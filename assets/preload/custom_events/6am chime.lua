function onCreate() --idk if this is a flashing lights
    makeLuaSprite('bluz', 'u_blaz', 0,0)
    setProperty('bluz.alpha', 0)
    setObjectCamera('bluz', 'other')
    
    makeAnimatedLuaSprite('3am', 'fright/6am', 0, 0)
    screenCenter('3am', XY)
    addAnimationByPrefix('3am', 'horayyyyyyyyystatic', '6am static', 23, true)
    addAnimationByPrefix('3am', 'horayyyyyyyyy', '6am chime', 23, true)
    setProperty('3am.visible', false)
    setObjectCamera('3am', 'other')
    
    makeAnimatedLuaSprite('glitchy', 'fright/nightBeatGlitch', 0, 130)
    addAnimationByPrefix('glitchy', 'nightglitchlol', 'glitch', 18, true) --hehehehehe idk what the heck is this
    setProperty('glitchy.visible', false)
    setGraphicSize('glitchy', getProperty('glitchy.width') * 3.5);
    setObjectCamera('glitchy', 'other')
    
    addLuaSprite('bluz', true)
    addLuaSprite('3am', true)
    addLuaSprite('glitchy', true)
end

function onEvent(name, value1, value2)
	if name == '6am chime' then --ughnnnn if u gonna use this thing credits me fplsssssssssssssss i beg :( i work hard to port this thing maybe my worst decision of my LIFEಥ‿ಥ
		if value1 == '' then
          setPropertyFromClass('ClientPrefs', 'camZooms', false) --i set it off so 6am dont zoom on beats
          runTimer('6amfinallyicangethomeandwatchsome(◔‿◔)', 3.2)
          setProperty('3am.visible', true)
          setProperty('glitchy.visible', true)
          objectPlayAnimation('glitchy', 'nightglitchlol', true)
          objectPlayAnimation('3am', 'horayyyyyyyyystatic', true)
          doTweenAlpha('nightyblack', 'bluz', 1, 1, 'linear')
         end
     end
end --my tags is awful 

function onTimerCompleted(tag, loops, loopsLeft) 
      if tag == '6amfinallyicangethomeandwatchsome(◔‿◔)' then
          runTimer('idontwanttorandomurplaceglitchnomorerandomgetRandomIntitmakesmesick', 4)
          objectPlayAnimation('glitchy', 'nightglitchlol', true)
         objectPlayAnimation('3am', 'horayyyyyyyyy', true)
     end
       
      if tag == 'idontwanttorandomurplaceglitchnomorerandomgetRandomIntitmakesmesick' then
         doTweenAlpha('gki', 'glitchy', 0, 1, 'linear')
    end
end

function onEndSong()
     setPropertyFromClass('ClientPrefs', 'camZooms', true) --isetitbacktonormal  read this lol
end