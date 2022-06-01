
local xx = 470;
local yy = 380;
local xx2 = 900;
local yy2 = 500;
local ofs = 10;
local followchars = true;
local del = 0;
local del2 = 0;


function onUpdate()
	if del > 0 then
		del = del - 1
	end
	if del2 > 0 then
		del2 = del2 - 1
	end
    if followchars == true then
        if mustHitSection == false then
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
            if getProperty('dad.animation.curAnim.name') == 'idle-alt' then
                triggerEvent('Camera Follow Pos',xx,yy)
            end
        else

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
	    if getProperty('boyfriend.animation.curAnim.name') == 'idle-alt' then
                triggerEvent('Camera Follow Pos',xx2,yy2)
            end
        end
    else
        triggerEvent('Camera Follow Pos','','')
    end
    
end

function onCreate()
    makeLuaSprite('lean', 'green', 0, 0)
    setObjectCamera('lean', 'hud')
    setProperty('lean.alpha', 0)
    
    makeLuaSprite('wait', 'white', 0, 0) --im using 0.5 so i cant use cameraFlash sorry
    setObjectCamera('wait', 'hud')
    setProperty('wait.alpha', 0)
    
    setPropertyFromClass('ClientPrefs', 'camZooms', true) --this might off your camZooms in options so after using the modpack turn it on again

     precacheImage('matpat/gt logo')

     makeLuaSprite('carp', 'matpat/MatPat_Carpet', -150, -200)
     
     makeLuaSprite('cut', 'matpat/MatPat_Couch', -268, -180)
     
     makeLuaSprite('tble', 'matpat/MatPat_Table', -368, -200)
     
     makeLuaSprite('walps', 'matpat/MatPat_Walls', -270, -170)
     
     makeLuaSprite('pixel', 'matpat/Background', -910, -1950)
     scaleObject('pixel', 3, 3)
     
     makeLuaSprite('pxl', 'matpat/Floor', -1130, -1970)
     scaleObject('pxl', 3, 3)
     
     makeAnimatedLuaSprite('gt', 'matpat/gt logo', -150, -100)
     addAnimationByIndices('gt', 'st', 'gt logo tl', 0, 24)
     addAnimationByPrefix('gt', '1', 'gt logo tl', 24, false)
     addAnimationByPrefix('gt', '2', 'gt logo tr', 24, false)
     addAnimationByPrefix('gt', '3', 'gt logo bl', 24, false)
     addAnimationByPrefix('gt', '4', 'gt logo br', 24, false)
     addAnimationByPrefix('gt', 'shine', 'gt logo shine', 24, false)
     addAnimationByPrefix('gt', 'stashine', 'gt logo stashine', 24, true)
     scaleObject('gt', 0.7, 0.7)
     setScrollFactor('gt', 0.8, 1.3)
     
     addLuaSprite('pixel', false) 
     addLuaSprite('gt', false)
     addLuaSprite('pxl', false)
     addLuaSprite('carp', false)
     addLuaSprite('walps', false)
     addLuaSprite('cut', false)
     addLuaSprite('tble', false)   
     addLuaSprite('lean', true)
     addLuaSprite('wait', true)
     
end
     