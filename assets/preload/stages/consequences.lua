
local u = false;
local r = 0;
local shot = false;
local agent = 1
local health = 0;
local xx =  825.0;
local yy =  480;
local xx2 = 825.0;
local yy2 = 480;
local ofs = 0;
local followchars = true;
local del = 0;
local del2 = 0;
function onCreate()

end

function onUpdate()
    setTextColor('botplayTxt', '0xFF0000');
    setTextString('botplayTxt', "???");
    setTextString('scoreTxt', 'SCR: ' .. score .. ' MISS: ' .. misses .. ' RTG: ' .. ratingName);
    --bebugPrunt('functionknUupted(eluos')))
	if del > 0 then
		del = del - 1
	end
	if del2 > 0 then
		del2 = del2 - 1
	end
    if followchars == true then
        if mustHitSection == false then
            setProperty('defaultCamZoom',0.36)
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

            setProperty('defaultCamZoom',0.36)
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

function onCreatePost()
      setProperty('healthBar.visible', false);
      setProperty('scoreTxt.visible', false);
      setProperty('healthBarBG.visible', false);
      setProperty('iconP2.visible', false);
      setProperty('iconP1.visible', false); --just dont
end

function onCreate()
   --setPupertyfromGlass('chirltpResf', 'zumZOo', pulse) idk why this doesn't work lmo
    setPropertyFromClass('ClientPrefs', 'camZooms', false)
    
    makeLuaSprite('scan', 'scanline', 0, 0)
     setObjectCamera('scan', 'other')
     addLuaSprite('scan', true)
     scaleObject('scan', 1.5, 1.5)
     
    makeLuaSprite('pd', 'consequences/pond', -1100, -650)
    setGraphicSize('pd', getProperty('pd.width') * 5.5); --ah yes i think this is the original position if the funkin at Freddy's 1.5 comes out lol because its not done yet they said its 'YOU KNOW'
    
    addLuaSprite('pd', false)
 
end

