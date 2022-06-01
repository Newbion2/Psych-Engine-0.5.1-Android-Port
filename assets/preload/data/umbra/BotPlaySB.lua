function onCreate()
    makeLuaSprite('bot', 'BotPlay/BotPlaySB', 0, 0)
    setObjectCamera('bot', 'other')
    addLuaSprite('bot', true)
    setProperty('bot.alpha', 0)
end

function onStartCountdown()
   if botPlay then
        doTweenAlpha('noBotPlayPls', 'bot', 1, 1.5, 'linear')
        return Function_Stop
	 end
	return Function_Continue
end
         
         
         --BECAUSE BOTPLAY IS FOR NEWBIE ONLY IF U ARE PLAYING LIKE MONTHS AND WEEK DAYS YEAR DONT DO BOTPLAY
         
         
 --bro try to not do botplay just try it, nothing is bad to try right?
 --just try to not botplay u can DO IT
--dont delete this script okay, just do it i know u can do it!