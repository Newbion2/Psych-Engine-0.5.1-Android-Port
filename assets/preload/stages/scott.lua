local xx1 = 120
local xx2= 1130
local xx3 = -720
local xx4 = 392
local xx5 = -1120
local xx6 = 992
local xx7 = 720
local xx8 = -392
local xx9 = -1203
local xx10 = 500
local xx11 = 670
local u = false;
local r = 0;
local shot = false;
local agent = 1
local health = 0;
local xx = 500.95;
local yy = 600;
local xx2 = 752.9;
local yy2 = 750;
local ofs = 80;
local followchars = true;
local del = 0;
local del2 = 0;
--function onCreate()
--setProperty('defaultCamZoom',0.9)
--end



function onUpdate()
	if del > 0 then
		del = del - 1
	end
	if del2 > 0 then
		del2 = del2 - 1
	end
    if followchars == true then
            --setProperty('defaultCamZoom',0.9)
            if getProperty('dad.animation.curAnim.name') == 'singLEFT' then
                triggerEvent('Camera Follow Pos',xx-(ofs*2),yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singRIGHT' then
                triggerEvent('Camera Follow Pos',xx+ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singUP' then
                triggerEvent('Camera Follow Pos',xx,yy-(ofs))
            end
            if getProperty('dad.animation.curAnim.name') == 'singDOWN' then
                triggerEvent('Camera Follow Pos',xx,yy)
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
        triggerEvent('Camera Follow Pos','','')
    end
    
end


function onCreate()
    setPropertyFromClass('ClientPrefs', 'camZooms', true) --this might off your camZooms in options so after using the modpack turn it on again
 
    makeLuaSprite('nopauses','scott/nopause', -110,440);
    setObjectCamera('camHUD')
    scaleObject('nopauses', 1.5, 1.5)
    setProperty('nopauses.alpha', 0)
    
    makeLuaSprite('cawthon','scott/Scott_Cawthon', 330,550);
    setObjectCamera('camHUD')
    scaleObject('cawthon', 0.3, 0.3)
    setProperty('cawthon.alpha', 0)
    
    makeLuaSprite('gradient4','scott/gradient')
    setObjectCamera('gradient4', 'camGame');
    setProperty('gradient4.alpha', 2)
    
    makeLuaSprite('dust4','scott/dust', -2100, 460)
    setObjectCamera('dust4', 'game');
    setScrollFactor('dust4', 8, 7)
    scaleObject('dust4', 1.3, 1.3)
  --  setProperty('dust4.velocity.x',23) i want endless bg scroll pls i hope hscript have it when official fnf comes
    setProperty('dust4.alpha', 0.6)
    
    makeLuaSprite('dust5','scott/blueDust', -1560, 350)
    setObjectCamera('dust5', 'game');
    setScrollFactor('dust5', 6, 6)
    scaleObject('dust5', 1.7, 1.7)
    setProperty('dust5.alpha', 0.6)
    
    makeLuaSprite('dust6','scott/dustFG', 350, 280)
    setObjectCamera('dust6', 'game');
    setScrollFactor('dust6', 0.8, 8)
    scaleObject('dust6', 1.3, 1.3)
    setProperty('dust6.alpha', 0.6)
    
    makeLuaSprite('dust1','scott/dust', -1140, 620)
    setObjectCamera('dust1', 'game');
    setScrollFactor('dust1', 8.8, 5)
    scaleObject('dust1', 1.3, 1.3)
    setProperty('dust1.alpha', 0.6)
    
    makeLuaSprite('dust2','scott/blueDust', -980, 580)
    setObjectCamera('dust2', 'game');
    setScrollFactor('dust2', 7.4, 4)
    scaleObject('dust2', 1.6, 1.6)
    setProperty('dust2.alpha', 0.5)
    
    makeLuaSprite('dust3','scott/dustFG', -1170, 540)
    setObjectCamera('dust3', 'game');
    setScrollFactor('dust3', 7.6, 6)
    scaleObject('dust3', 1.3, 1.3)
    setProperty('dust3.alpha', 0.6)

    makeLuaSprite('gradient','scott/grad4')
    setObjectCamera('gradient', 'hud');
    setProperty('gradient.alpha', 0)
    setBlendMode('gradient', 'add')
 
    addLuaSprite('gradient', true)
    addLuaSprite('nopauses', true)
    addLuaSprite('cawthon', true)
    addLuaSprite('gradient4', false)
    addLuaSprite('dust1', false)
    addLuaSprite('dust2', false)
    addLuaSprite('dust3', true)
    addLuaSprite('dust4', true)
    addLuaSprite('dust5', false)
    addLuaSprite('dust6', true)
end

function onBeatHit()
    
    if curBeat % 1 == 0 and curStep > 187 and curStep < 576 then
        doTweenAlpha('dient1', 'gradient', 0, 0.4, 'linear ')
        setProperty('gradient.alpha', 0.7)
    end
     
     if curBeat % 1 == 0 and curStep > 701 and curStep < 959 then
        doTweenAlpha('dient1', 'gradient', 0, 0.4, 'linear ')
        setProperty('gradient.alpha', 0.7)
    end
     
     if curBeat % 1 == 0 and curStep > 1216 and curStep < 1472 then
        doTweenAlpha('dient1', 'gradient', 0, 0.4, 'linear ')
        setProperty('gradient.alpha', 0.7)
    end
end

function onStepHit()
      if curStep == 995 then
       doTweenAlpha('dient1', 'gradient', 0, 0.8, 'linear ')
        setProperty('gradient.alpha', 0.7)
    end
     if curStep == 1003 then
     doTweenAlpha('dient1', 'gradient', 0, 0.8, 'linear ')
        setProperty('gradient.alpha', 0.7)
    end
     if curStep == 1029 then
     doTweenAlpha('dient1', 'gradient', 0, 0.8, 'linear ')
        setProperty('gradient.alpha', 0.7)
    end
     if curStep == 1037 then
     doTweenAlpha('dient1', 'gradient', 0, 0.8, 'linear ')
        setProperty('gradient.alpha', 0.7)
    end
     if curStep == 1045 then
     doTweenAlpha('dient1', 'gradient', 0, 0.8, 'linear ')
        setProperty('gradient.alpha', 0.7)
    end
     if curStep == 1053 then
     doTweenAlpha('dient1', 'gradient', 0, 0.8, 'linear ')
        setProperty('gradient.alpha', 0.7)
    end
     if curStep == 1061 then
     doTweenAlpha('dient0', 'gradient', 0, 0.8, 'linear ')
        setProperty('gradient.alpha', 0.7)
    end
     if curStep == 1069 then
     doTweenAlpha('dient1', 'gradient', 0, 0.8, 'linear ')
        setProperty('gradient.alpha', 0.7)
    end
      if curStep == 1077 then
     doTweenAlpha('dient1', 'gradient', 0, 0.8, 'linear ')
        setProperty('gradient.alpha', 0.7)
    end
      if curStep == 1081 then
     doTweenAlpha('dient1', 'gradient', 0, 0.8, 'linear ')
        setProperty('gradient.alpha', 0.7)
    end
      if curStep == 1085 then
     doTweenAlpha('dient1', 'gradient', 0, 0.8, 'linear ') --ah yes 5.8sec because idk why the hell it fades so fast when linear 
        setProperty('gradient.alpha', 0.7)
    end
      if curStep == 1123 then
     doTweenAlpha('dient1', 'gradient', 0, 0.6, 'linear ')
        setProperty('gradient.alpha', 0.7)
    end
     if curStep == 1131 then
     doTweenAlpha('dient1', 'gradient', 0, 0.6, 'linear ')
        setProperty('gradient.alpha', 0.7)
    end
     if curStep == 1157 then
     doTweenAlpha('dient1', 'gradient', 0, 0.6, 'linear ')
        setProperty('gradient.alpha', 0.7)
    end
      if curStep == 1165 then
     doTweenAlpha('dient1', 'gradient', 0, 0.6, 'linear ')
        setProperty('gradient.alpha', 0.7)
    end
      if curStep == 1173 then
     doTweenAlpha('dient1', 'gradient', 0, 0.6, 'linear ')
        setProperty('gradient.alpha', 0.7)
    end
     if curStep == 1181 then
     doTweenAlpha('dient0', 'gradient', 0, 0.6, 'linear ')
        setProperty('gradient.alpha', 0.7)
    end
      if curStep == 1189 then
     doTweenAlpha('dient1', 'gradient', 0, 0.6, 'linear ')
        setProperty('gradient.alpha', 0.7)
    end
      if curStep == 1197 then
     doTweenAlpha('dient1', 'gradient', 0, 0.6, 'linear ')
        setProperty('gradient.alpha', 0.7)
    end
     
      if curStep == 6 then
         doTweenAlpha('pause', 'nopauses', 1, 0.5, 'linear')
         doTweenAlpha('scot', 'cawthon', 1, 0.5, 'linear')
    end
     
     if curStep == 9 then
        playSound('noPause')
    end

    if curStep == 11 then
        playSound('noPause')
    end
    
    if curStep == 13 then
        playSound('noPause')
    end
     
      if curStep == 53 then
         doTweenX('scot','cawthon', 2280, 0.6, 'linear ')
    end

      if curStep == 57 then
         doTweenX('scot','nopauses', 2280, 0.6, 'linear ')
    end
end

--[[if curStep == 995 then --backuo lol
       doTweenAlpha('dient1', 'gradient', 0, 0.4, 'linear ')
        setProperty('gradient.alpha', 0.7)
    end
     if curStep == 1003 then
     doTweenAlpha('dient1', 'gradient', 0, 0.4, 'linear ')
        setProperty('gradient.alpha', 0.7)
    end
     if curStep == 1029 then
     doTweenAlpha('dient1', 'gradient', 0, 0.4, 'linear ')
        setProperty('gradient.alpha', 0.7)
    end
     if curStep == 1037 then
     doTweenAlpha('dient1', 'gradient', 0, 0.4, 'linear ')
        setProperty('gradient.alpha', 0.7)
    end
     if curStep == 1045 then
     doTweenAlpha('dient1', 'gradient', 0, 0.4, 'linear ')
        setProperty('gradient.alpha', 0.7)
    end
     if curStep == 1053 then
     doTweenAlpha('dient1', 'gradient', 0, 0.4, 'linear ')
        setProperty('gradient.alpha', 0.7)
    end
     if curStep == 1061 then
     doTweenAlpha('dient0', 'gradient', 0, 0.4, 'linear ')
        setProperty('gradient.alpha', 0.7)
    end
     if curStep == 1069 then
     doTweenAlpha('dient1', 'gradient', 0, 0.4, 'linear ')
        setProperty('gradient.alpha', 0.7)
    end
      if curStep == 1077 then
     doTweenAlpha('dient1', 'gradient', 0, 0.4, 'linear ')
        setProperty('gradient.alpha', 0.7)
    end
      if curStep == 1081 then
     doTweenAlpha('dient1', 'gradient', 0, 0.4, 'linear ')
        setProperty('gradient.alpha', 0.7)
    end
      if curStep == 1085 then
     doTweenAlpha('dient1', 'gradient', 0, 0.4, 'linear ')
        setProperty('gradient.alpha', 0.7)
    end
      if curStep == 1123 then
     doTweenAlpha('dient1', 'gradient', 0, 0.4, 'linear ')
        setProperty('gradient.alpha', 0.7)
    end
     if curStep == 1131 then
     doTweenAlpha('dient1', 'gradient', 0, 0.4, 'linear ')
        setProperty('gradient.alpha', 0.7)
    end
     if curStep == 1157 then
     doTweenAlpha('dient1', 'gradient', 0, 0.4, 'linear ')
        setProperty('gradient.alpha', 0.7)
    end
      if curStep == 1165 then
     doTweenAlpha('dient1', 'gradient', 0, 0.4, 'linear ')
        setProperty('gradient.alpha', 0.7)
    end
      if curStep == 1173 then
     doTweenAlpha('dient1', 'gradient', 0, 0.4, 'linear ')
        setProperty('gradient.alpha', 0.7)
    end
     if curStep == 1181 then
     doTweenAlpha('dient0', 'gradient', 0, 0.4, 'linear ')
        setProperty('gradient.alpha', 0.7)
    end
      if curStep == 1189 then
     doTweenAlpha('dient1', 'gradient', 0, 0.4, 'linear ')
        setProperty('gradient.alpha', 0.7)
    end
      if curStep == 1197 then
     doTweenAlpha('dient1', 'gradient', 0, 0.4, 'linear ')
        setProperty('gradient.alpha', 0.7)
    end--]]