local xx1 = -510 -- this random numbers doest random this xx1 to xx10 lol 
local xx2 = -670 --hey this xx2 - xx11 is USELESS i think because xx1 and xx12 is
local xx3 = 1680 --the only one getting used in getRandomInt and math.random idk why
local xx4 = -880   -- sooo xx1 is negative value of -X 
local xx5 = -600  --and xx12 is POSITIVE Value of X but it will randomly find another X 
local xx6 = -1230 --so to avoid lightning out of bounds then try Small numbers to 400 - 600 only
local xx7 = 810 --as i said idk if it only do on xx1 and xx12 because i tried it it randomly finds X
local xx8 = 260
local xx9 = -1500
local xx10 = -990
local xx11 = 59
local xx12 = 760

local Lightning = 1
local Lightning = 2
local Lightning = 3


local i = 'bluelight','purplelight','pinklight' --useless code lol
-- and yes credits to frantastic24 too :)
--u need lightning.png and lightning.xml from Vs Afton if u goona port fourthwall

function onCreate()
  --math.randomseed(os.time());math.random(xx1, xx13)) --nope
 math.randomseed(curStep * 1) --dont mind this things lol
    makeAnimatedLuaSprite('bluelight', 'scott/lightning', 0, 0)
    scaleObject('bluelight', 1.7, 1.7)
    addAnimationByPrefix('bluelight', 'spawn', 'blue', 24, false)
    addAnimationByPrefix('bluelight', 'spawn1', 'purple', 24, false)
    addAnimationByPrefix('bluelight', 'spawn2', 'pink', 24, false)
    
    
end


function onEvent(name, value1, value2)
	if name == 'Lightning Timer' then
		if value1 == '100' then
     function onBeatHit()
		    if curBeat % 100 == 0 then
                if Lightning then
		     Lightning = getRandomInt(1, 3)
		if Lightning == 1 then --FRANTASTIC IS THE BEST AT LUA CODING hope shadowmario get him some rewards 
			objectPlayAnimation('bluelight','spawn', true)
		elseif Lightning == 2 then
			objectPlayAnimation('bluelight','spawn1', true)
		elseif Lightning == 3 then
			objectPlayAnimation('bluelight','spawn2', true)
		end
    end
          runTimer('stop', 0.5);
		  addLuaSprite('bluelight', false)
          math.randomseed(curStep * 1)
                
                setProperty('bluelight.x', getRandomInt(xx1, xx12)) --math.random(xx1, xx10)) --getRandomInt(xx1, xx10))  BRUHHH
              end
          end
		elseif value1 == '1' then
             if curBeat % 1 == 0 then
      function onBeatHit()
  --   math.randomseed(Lightning * 0) >:( ruined
          if Lightning then
		     Lightning = getRandomInt(1, 3)
		if Lightning == 1 then
			objectPlayAnimation('bluelight','spawn', true)
		elseif Lightning == 2 then
			objectPlayAnimation('bluelight','spawn1', true)
		elseif Lightning == 3 then
			objectPlayAnimation('bluelight','spawn2', true)
		end
    end
          math.randomseed(curStep * 1)
          runTimer('stop', 0.5);
		  addLuaSprite('bluelight', false)
                setProperty('bluelight.x', getRandomInt(xx1, xx12))
                 end
             end
         elseif value1 == '2' then
      function onBeatHit()
             if curBeat % 2 == 0 then --my goodness pls forgive me stolen code :( IDK HOW TO RANDOM PLAY ANIM
        --math.randomseed(Lightning * 0) useless code omfg maybe not
          if Lightning then
		     Lightning = getRandomInt(1, 3)
		if Lightning == 1 then
			objectPlayAnimation('bluelight','spawn', true)
		elseif Lightning == 2 then
			objectPlayAnimation('bluelight','spawn1', true)
		elseif Lightning == 3 then
			objectPlayAnimation('bluelight','spawn2', true)
		end
    end
            runTimer('stop', 0.5);
		   addLuaSprite('bluelight', false)
            math.randomseed(curStep * 1)
                setProperty('bluelight.x', getRandomInt(xx1, xx12))
                end
            end
         elseif value1 == '4' then --im am not paying attention to the events bruh i forgot this 4 beats i didn't know that
      function onBeatHit()
             if curBeat % 4 == 0 then --my goodness pls forgive me stolen code :( IDK HOW TO RANDOM PLAY ANIM
        --math.randomseed(Lightning * 0) useless code omfg maybe not
          if Lightning then
		     Lightning = getRandomInt(1, 3)
		if Lightning == 1 then
			objectPlayAnimation('bluelight','spawn', true)
		elseif Lightning == 2 then
			objectPlayAnimation('bluelight','spawn1', true)
		elseif Lightning == 3 then
			objectPlayAnimation('bluelight','spawn2', true)
		end
    end
            runTimer('stop', 0.5);
		   addLuaSprite('bluelight', false)
            math.randomseed(curStep * 1)
                setProperty('bluelight.x', getRandomInt(xx1, xx12))
                end
            end
        end
    end
end

function onTimerCompleted(tag, loops, loopsLeft)
    if tag == 'stop' then
		removeLuaSprite('bluelight', false)
    end
end --i hate end end end end too may EDDDD