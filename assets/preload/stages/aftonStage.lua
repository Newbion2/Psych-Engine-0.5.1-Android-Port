
local u = false;
local r = 0;
local shot = false;
local agent = 1
local health = 0;
local xx =  595.0;
local yy =  480;
local xx2 = 595.0;
local yy2 = 480;
local ofs = 0;
local followchars = true;
local del = 0;
local del2 = 0;




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
            setProperty('defaultCamZoom',0.5)
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

            setProperty('defaultCamZoom',0.5)
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
     
     makeLuaSprite('bblack', 'u_blaz', 0, 0)
   --setObjectOrder('bly', 3)
     setObjectCamera('bblack', 'other')
     setProperty('bly.alpha', 1)
     
     makeLuaSprite('bly', 'u_blaz', -700, -400)
   --setObjectOrder('bly', 3)
     setGraphicSize('bly', getProperty('bly.width') * 2.7);
     setProperty('bly.alpha', 0)
     
     makeLuaSprite('arc', 'ac', -50, -100)
     addLuaSprite('arc', true)
     setObjectCamera('arc', 'hud')
     scaleObject('arc', 1, 1)
     
     makeLuaSprite('scan', 'scanline', 0, 0)
     setObjectCamera('scan', 'other') --normal tags im so freesjxj TIRED I FRESAKIN DONT KNOW THE OOFFFSETS OF THIS
     addLuaSprite('scan', true)
     scaleObject('scan', 1.5, 1.5)
     
     makeLuaSprite('oit', 'aftonStage/outside', -680, -450)
    -- setObjectOrder('inside', 1)
     setGraphicSize('oit', getProperty('oit.width') * 2.8);
     
     makeAnimatedLuaSprite('skid', 'aftonStage/kids_two', -690, -400)
     addAnimationByPrefix('skid', 'kidney', 'kids two kids two', 24, true)
    -- setObjectOrder('skid', 2)
     objectPlayAnimation('skid', 'kidney', true)
     setGraphicSize('skid', getProperty('skid.width') * 2.7);
     
     makeAnimatedLuaSprite('animdude', 'aftonStage/animatronics', -695, -390)
     addAnimationByPrefix('animdude', 'strokenik', 'animatronics animatronics', 24, true)
      --dont think why i put these tags weird
     setGraphicSize('animdude', getProperty('animdude.width') * 2.7);
     objectPlayAnimation('animdude', 'strokenik', true)
    -- setObjectOrder('animdude', 3)
     
     makeLuaSprite('inside', 'aftonStage/outside', -680, -450)
    -- setObjectOrder('inside', 1)
     setGraphicSize('inside', getProperty('inside.width') * 2.8);
     
     makeLuaSprite('flo', 'aftonStage/floor', -700, -550)
     setObjectOrder('flo', 0)
     setGraphicSize('flo', getProperty('flo.width') * 2.8);
     
     addLuaSprite('oit', false)
     addLuaSprite('skid', false)
     addLuaSprite('animdude', false)
     addLuaSprite('flo', false)
     addLuaSprite('bly', false)
     addLuaSprite('bblack', true)
     addLuaSprite('ready', true)
     addLuaSprite('set', true)
     addLuaSprite('date', true)
     
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
