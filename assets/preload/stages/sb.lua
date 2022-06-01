finishedGameover = false;
local u = false;
local r = 0;
local shot = false;
local agent = 1
local health = 0;
local xx =  475.0;
local yy =  280;
local xx2 = 475.0;
local yy2 = 280;
local ofs = 30;
local followchars = true;
local del = 0;
local del2 = 0;
function onCreate()

end




function onUpdate()
	if del > 0 then
		del = del - 1
	end
	if del2 > 0 then
		del2 = del2 - 1
	end
    if followchars == true then
        if mustHitSection == false then
            setProperty('defaultCamZoom',0.45)
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

            setProperty('defaultCamZoom',0.45)
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
    setProperty('dad.alpha', 0)
    setProperty('healthBar.visible', false);
    setProperty('healthBarBG.visible', false);
    setProperty('iconP2.visible', false);
    setProperty('iconP1.visible', false);

end
   

function onCreate()
    setPropertyFromClass('ClientPrefs', 'camZooms', true)
    
    makeLuaSprite('blaky', 'u_blaz', 0, 0)
    setObjectCamera('blaky', 'other')
    setProperty('blaky.visible', false)
    
    makeLuaSprite('scan', 'scanline', 0, 0)
     setObjectCamera('scan', 'other')
     addLuaSprite('scan', true)
     scaleObject('scan', 1.5, 1.5)
    
    makeAnimatedLuaSprite('err', 'sb/error', 0, 0)
    addAnimationByPrefix('err', 'errors', 'error', 2, true)
    objectPlayAnimation('err', 'errors', true)
    setObjectCamera('err', 'other')
    screenCenter('err', 'xy')
    setProperty('err.visible', false)

    makeAnimatedLuaSprite('sbb', 'sb/shadow_bonnie', -1020, -800) -- -930,-550
    addAnimationByPrefix('sbb', 'chica', 'shadow_bonnie chica', 2, true)
    addAnimationByPrefix('sbb', 'tree', 'shadow_bonnie tree', 2, true)
    addAnimationByPrefix('sbb', 'cupcake', 'shadow_bonnie cupcakes', 2, true)
    addAnimationByPrefix('sbb', 'fredbare', 'shadow_bonnie fredbare', 2, true)
    addAnimationByPrefix('sbb', 'happy', 'shadow_bonnie happy', 2, true)
    addAnimationByPrefix('sbb', 'mangle', 'shadow_bonnie mangle', 2, true)
    addAnimationByPrefix('sbb', 'chica', 'shadow_bonnie chica', 2, true)
    addAnimationByPrefix('sbb', 'puppet', 'shadow_bonnie puppet', 2, true)
    addAnimationByPrefix('sbb', 'balloon', 'shadow_bonnie balloon', 2, true)
    addAnimationByPrefix('sbb', 'glitch', 'shadow_bonnie glitch', 12, true)
    addAnimationByPrefix('sbb', 'raw', 'shadow_bonnie raw', 2, true)
    setProperty('sbb.visible', false)
    scaleObject('sbb', 3.2, 3.2)
   -- setGraphicSize('sbb', getProperty('sbb.width') * 3.);
    
    addLuaSprite('blaky', true)
    addLuaSprite('err', true)
    addLuaSprite('sbb',false)
end

function onGameOver()
	return Function_Continue;
end

function onGameOverConfirm(reset)
    loadSong('Consequences', Normal); --bruh this is not even a secret song
	finishedGameover = true;
end
    
    
