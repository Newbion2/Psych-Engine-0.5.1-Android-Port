function onCreate()
    makeLuaSprite('bot', 'BotPlay/noBotPlay', 0, 0)
    setObjectCamera('bot', 'other')
    addLuaSprite('bot', true)
    setProperty('bot.alpha', 0)
end

function onUpdate()
   if botPlay then
      doTweenAlpha('noBotPlayPls', 'bot', 1, 1.5, 'linear')
      return Function_Stop;
end
         
         
         
         
         
         
 --bro try to not do botplay just try it, nothing is bad to try right?
 --just try to not botplay u can DO IT
--dont delete this script okay, just do it i know u can do it!