
local u = false;
local r = 0;
local shot = false;
local agent = 1
local health = 0;
local xx =  525.0;
local yy =  470;
local xx2 = 525.0;
local yy2 = 470;
local ofs = 0;
local followchars = true;
local del = 0;
local del2 = 0;
function onCreatePost()
     doTweenAlpha('blay', 'black', 20, 0.0001, 'linear')
   --if cameraZoomOnBeat == true then
       --getPropertyClass('ClientPrefs', 'camZooms', false)

end




function onUpdate()
    for i = 0, getProperty('unspawnNotes.length')-1 do
		
		setPropertyFromGroup('unspawnNotes', i, 'noteSplashTexture', 'notePixelSplashes');
	
	end
	if del > 0 then
		del = del - 1
	end
	if del2 > 0 then
		del2 = del2 - 1
	end
    if followchars == true then
        if mustHitSection == false then
            setProperty('defaultCamZoom',0.55)
            if getProperty('dad.animation.curAnim.name') == 'singLEFT' then
                triggerEvent('Camera Follow Pos',xx-ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singRIGHT' then
                triggerEvent('Camera Follow Pos',xx+ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singUP' then
                triggerEvent('Camera Follow Pos',xx,yy-ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'singDOWN' then
                triggerEvent('Camera Follow Pos',xx,yy+ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'singLEFT-alt' then
                triggerEvent('Camera Follow Pos',xx-ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singRIGHT-alt' then
                triggerEvent('Camera Follow Pos',xx+ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singUP-alt' then
                triggerEvent('Camera Follow Pos',xx,yy-ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'singDOWN-alt' then
                triggerEvent('Camera Follow Pos',xx,yy+ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'idle-alt' then
                triggerEvent('Camera Follow Pos',xx,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'idle' then
                triggerEvent('Camera Follow Pos',xx,yy)
            end
        else

            setProperty('defaultCamZoom',0.55)
            if getProperty('boyfriend.animation.curAnim.name') == 'singLEFT' then
                triggerEvent('Camera Follow Pos',xx2-ofs,yy2)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singRIGHT' then
                triggerEvent('Camera Follow Pos',xx2+ofs,yy2)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singUP' then
                triggerEvent('Camera Follow Pos',xx2,yy2-ofs)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singDOWN' then
                triggerEvent('Camera Follow Pos',xx2,yy2+ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'idle-alt' then
                triggerEvent('Camera Follow Pos',xx2,yy2)
            end
            if getProperty('dad.animation.curAnim.name') == 'idle' then
                triggerEvent('Camera Follow Pos',xx2,yy2)
            end
        end
    else
        triggerEvent('Camera Follow Pos','','')
    end
    
end

function onCreate()
     makeLuaSprite('ready', 'CountdownPixel/ready-pixel', 0, 0) 
     screenCenter('ready', 'xy')
     setProperty('ready.visible', false)
     setObjectCamera('ready', 'other')
     
     makeLuaSprite('set', 'CountdownPixel/set-pixel', 0, 0)
     screenCenter('set', 'xy')
     setProperty('set.visible', false)
     setObjectCamera('set', 'other')
     
     makeLuaSprite('date', 'CountdownPixel/date-pixel', 0, 0) --date with afton simulator
     screenCenter('date', 'xy')
     setObjectCamera('date', 'other')
     
     setProperty('date.visible', false)
     
     makeAnimatedLuaSprite('bld', 'aftonKill/blood', -300, 110)
     addAnimationByPrefix('bld', 'bloodlmao', 'blood blood', 24, true)
     scaleObject('bld', 2.7, 2.7)
     setProperty('bld.visible', false)
     
     makeLuaSprite('bblack', 'u_blaz', 0, 0)
   --setObjectOrder('bly', 3)
     setObjectCamera('bblack', 'other')
     setProperty('bly.alpha', 1)
     
     makeLuaSprite('black', 'u_blay', 0, 0)
     setObjectCamera('black', 'hud')
   --  setBlendMode('black', 'darken')
     addLuaSprite('black', true) -- bruhh too many OMMMDDMMFNDJDJFJ ITS TOO HARD TO PORT FUC

     setPropertyFromClass('ClientPrefs', 'camZooms', false)

     makeLuaSprite('arc', 'ac', -50, -100)
     addLuaSprite('arc', true)
     setObjectCamera('arc', 'hud')
     scaleObject('arc', 1, 1)
     
     makeLuaSprite('scan', 'scanline', 0, 0)
     setObjectCamera('scan', 'other')
     addLuaSprite('scan', true)
     scaleObject('scan', 1.5, 1.5)
     
     makeLuaSprite('flo', 'aftonKill/floor', -700, -325)
     addLuaSprite('flo', false)
    -- scaleObject('flo', 2.2, 2.2)
     setGraphicSize('flo', getProperty('flo.width') * 2.8);
     
     makeLuaSprite('tabtab', 'aftonKill/table_front', -550, -210)
     addLuaSprite('tabtab', false)
    -- scaleObject('tabtab', 2.2, 2.2)
     setGraphicSize('tabtab', getProperty('tabtab.width') * 2.5);
     
     makeLuaSprite('tab', 'aftonKill/table', -750, -335)
     addLuaSprite('tab', false)
  --??   scaleObject('tab', 2.2, 2.2)
     setObjectOrder('tab', 1)
     setGraphicSize('tab', getProperty('tab.width') * 2.7);
     
     makeLuaSprite('walt', 'aftonKill/wall', -700, -330) --its a wall WALLL i just dont want the tag to be same as the slrite sjehejjfjsjdjdjxxjxjdj
     addLuaSprite('walt', false)
   --  scaleObject('walt', 2.2, 2.2)
     setObjectOrder('walt', 0)
     setGraphicSize('walt', getProperty('walt.width') * 2.8);
     
     makeAnimatedLuaSprite('ps', 'aftonKill/psychic_friend_fredbear', 0, 0)
     addAnimationByPrefix('ps', 'bfLookaAnt', 'psychic friend fredbear fredbear bf', 24, true)
     addAnimationByPrefix('ps', 'aftonSuvksGEEZ', 'psychic friend fredbear fredbear afton', 24, true)
     addLuaSprite('ps', false)
     scaleObject('ps', 1.5, 1.5)
     
     addLuaSprite('bblack', true)
     addLuaSprite('bld',false)
     addLuaSprite('ready', true)
     addLuaSprite('set', true)
     addLuaSprite('date', true)
     
end

function onMoveCamera(focus)
	if focus == 'boyfriend' then
		objectPlayAnimation('ps','bfLookaAnt', true)
	elseif focus == 'dad' then
		objectPlayAnimation('ps','aftonSuvksGEEZ', true)
    end
end

function onCountdownTick(counter)
	if counter == 0 then
			setProperty('ready.visible', true)
	end
	if counter == 1 then
			setProperty('set.visible', true)
			removeLuaSprite('ready');
	end
	if counter == 2 then
			setProperty('date.visible', true)
			removeLuaSprite('set');
	end
	if counter == 3 then
			removeLuaSprite('date');
    end
    if counter == 4 then
        removeLuaSprite('bblack', false)
    end
		setProperty('countdownReady.visible', false)
		setProperty('countdownSet.visible', false)
		setProperty('countdownGo.visible', false)
end

--[[local allowCountdown = true;
function onStartCountdown()
        runTimer('wait1', 2)
        playSound('aftonKill')
	    return Function_Stop
end



function onTimerCompleted(tag, loops, loopsLeft)

    if tag == 'wait1' then
        startCountdown = true;
        return Function_Continue;
    end
end--]]