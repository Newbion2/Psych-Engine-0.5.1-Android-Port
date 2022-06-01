finishedGameover = false;
startedPlaying = false;
local xx = 330;
local yy = 180;
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
            if getProperty('dad.animation.curAnim.name') == 'idle' then
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
	    if getProperty('boyfriend.animation.curAnim.name') == 'idle' then
                triggerEvent('Camera Follow Pos',xx2,yy2)
            end
        end
    else
        triggerEvent('Camera Follow Pos','','')
    end
    
end

function onCreate()
     precacheImage('fright/phantom_bb')
     
     setPropertyFromClass('ClientPrefs', 'camZooms', true)
     
    makeLuaSprite('lol', 'fright/iminyourwalls', -390, -230)
    scaleObject('lol', 1.6, 1.6)
    
    makeLuaSprite('aftonSucks', 'fright/floor', -390, -250)
    scaleObject('aftonSucks', 1.6, 1.6)
    
    makeLuaSprite('bruh', 'fright/gradient', 0, 0)
    setObjectCamera('bruh', 'hud')
    
    makeAnimatedLuaSprite('bb', 'fright/phantom_bb', 0, 30)
    addAnimationByPrefix('bb', 'haha', 'phantom_bb idle', 24, false)
    setObjectCamera('bb', 'other')
  --  setProperty('bb.alpha', 0)
  
     makeAnimatedLuaSprite('poop', 'fright/phantom_poopet', 510, -220) -- -150 y-20
     addAnimationByPrefix('poop', 'igotmyeyesonyou', 'phantom_poopet appear', 24, true)
     objectPlayAnimation('poop', 'igotmyeyesonyou', true)
     setObjectCamera('poop', 'other')
     scaleObject('poop', 1.5, 1.3)
     
     makeAnimatedLuaSprite('cha', 'fright/phantom_chica', 0, 50)
     addAnimationByPrefix('cha', 'idc', 'phantom_chica scare', 24, false)
     setObjectCamera('cha', 'other')
     
    addLuaSprite('lol', false)
    addLuaSprite('aftonSucks', false)
    addLuaSprite('bruh', false)
    addLuaSprite('poop', true)
    addLuaSprite('cha', true)
   -- addLuaSprite('bb', true)
   
end