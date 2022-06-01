
local u = false;
local r = 0;
local shot = false;
local agent = 1
local health = 0;
local xx =  525.0;
local yy =  480;
local xx2 = 525.0;
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
     
     setPropertyFromClass('ClientPrefs', 'camZooms', false)

     makeLuaSprite('arc', 'ac', -50, -100)
     addLuaSprite('arc', true)
     setObjectCamera('arc', 'hud')
     scaleObject('arc', 1, 1)
     
     makeLuaSprite('scan', 'scanline', 0, 0)
     setObjectCamera('scan', 'other')
     addLuaSprite('scan', true)
     scaleObject('scan', 1.5, 1.5)
     
     makeAnimatedLuaSprite('childs', 'aftonParty/children', -590, -365)
     addAnimationByPrefix('childs', 'childrenIdle', 'children idle', 24, true)
     setGraphicSize('childs', getProperty('childs.width') * 2.6);
     objectPlayAnimation('childs', 'childrenIdle', true)
     --setObjectOrder('childs', 2)
     
     makeAnimatedLuaSprite('child', 'aftonParty/front', -785, -575)
     addAnimationByPrefix('child', 'kids', 'front kids', 24, true)
     setGraphicSize('child', getProperty('child.width') * 2.9);
     objectPlayAnimation('child', 'kids', true)
     setObjectOrder('child', 3)
     
     makeLuaSprite('walp', 'aftonParty/wall', -865, -388)
   --  setObjectScale('walp', 2)
    setGraphicSize('walp', getProperty('walp.width') * 2.9);
    
    makeLuaSprite('florn', 'aftonParty/floor', -815, -365)
     --setObjectScale('florn', 2)
     setGraphicSize('florn', getProperty('florn.width') * 2.8);
     
     addLuaSprite('florn', false)
     addLuaSprite('walp', false)
     addLuaSprite('childs', false)
     addLuaSprite('child', false)
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
