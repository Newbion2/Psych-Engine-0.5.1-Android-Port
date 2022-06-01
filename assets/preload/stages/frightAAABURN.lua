finishedGameover = false;
local xx = 270;
local yy = 180;
local xx2 = 900;
local yy2 = 500;
local ofs = 10;
local followchars = true;
local del = 0;
local del2 = 0;


function onUpdate()
    --debugPrint(getProperty(getMouseY('game')))
    --if (getMouseX('game') > -1000 and getMouseX('game') < 3400) and (getMouseY('game') > 5550 and getMouseY('game') < -4990 and mousePressed('right')) or keyJustPressed('space') then
        --loadSong('Umbra', Normal); --still thank you frantastic idk what am i doing here lol(˘･_･˘) so no more secret song i will just put the thing on freeplay :D soo no hard work
   -- end
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
    setPropertyFromClass('ClientPrefs', 'camZooms', true)
    
    setPropertyFromClass('flixel.FlxG', 'mouse.visible', true);

    makeLuaSprite('wilsus', 'frightAAABURN/Wall', -440, -230) --omaygoodness why the stage name so Long
    scaleObject('wilsus', 1.6, 1.6) --discord mod name (^～^;)ゞ
    
    makeLuaSprite('aftonSucks', 'frightAAABURN/floor', -380, -250)
    scaleObject('aftonSucks', 1.6, 1.6)
    
    makeLuaSprite('bruh', 'frightAAABURN/oraligh', 0, 0)
    setBlendMode('bruh', 'shader')
    setObjectCamera('bruh', 'hud')
    
    makeLuaSprite('bruh2', 'frightAAABURN/smokeyBacon', 0, 0)
    setObjectCamera('bruh2', 'hud')
    setBlendMode('bruh2', 'shader')
    
    makeLuaSprite('burner', 'frightAAABURN/Banner', -490, -260)
    scaleObject('burner', 1.5, 1.5)
    
    makeLuaSprite('cretino', 'frightAAABURN/cretin', 1290, 580)
    scaleObject('cretino', 1.3, 1.3)
    
    makeAnimatedLuaSprite('fiyree', 'frightAAABURN/fire', -460, -280)
    addAnimationByPrefix('fiyree', 'aftondontbackagainusuckasheck', 'fire idle', 24, true)
    scaleObject('fiyree', 1.65, 1.65)
    objectPlayAnimation('fiyree', 'aftondontbackagainusuckasheck', true)
    
    makeAnimatedLuaSprite('animdudestaticidlefornowbecauseyouknowyouknowtheblablablablaehhehfjdjfkffkfkfkfjlongTAGS', 'frightAAABURN/static', 0, 0)
    addAnimationByPrefix('animdudestaticidlefornowbecauseyouknowyouknowtheblablablablaehhehfjdjfkffkfkfkfjlongTAGS', 'bbbbbbbbbbbbbbbbbbWOOOOOFIREYYYYY', 'idle', 24, true)
    scaleObject('animdudestaticidlefornowbecauseyouknowyouknowtheblablablablaehhehfjdjfkffkfkfkfjlongTAGS', 1.6, 1.6)
    setObjectCamera('animdudestaticidlefornowbecauseyouknowyouknowtheblablablablaehhehfjdjfkffkfkfkfjlongTAGS', 'other')--mmmmmmOTHER
    setProperty('animdudestaticidlefornowbecauseyouknowyouknowtheblablablablaehhehfjdjfkffkfkfkfjlongTAGS.visible', false)
       
   addLuaSprite('wilsus', false)
   addLuaSprite('aftonSucks', false)
   addLuaSprite('bruh', false)
   addLuaSprite('bruh2', false)
   addLuaSprite('burner', false)
   addLuaSprite('cretino', true)
   addLuaSprite('fiyree', true) --yayaya u can copy codes here but give a proper credits to me and the guy i mentioned frantastic and the Credits menu check them CREDITS THEM OR ELSE I SPEND MY TIME DOING THIS PORT AND THEY SPEND THEIR TIME TO TEACH ME HOW TO DO THINGGDGSGSGSGSSSDS
   addLuaSprite('animdudestaticidlefornowbecauseyouknowyouknowtheblablablablaehhehfjdjfkffkfkfkfjlongTAGS', true)
   
end

function onGameOver()
	return Function_Continue;
end

function onGameOverConfirm(reset)
    loadSong('Umbra', Normal);
	finishedGameover = true;
end