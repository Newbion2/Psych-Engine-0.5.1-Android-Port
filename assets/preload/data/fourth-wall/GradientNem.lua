function onStepHit() --why i always write inStepHit fuuuu
    if curStep == 1 then
      triggerEvent('Gradient', 2)
    end
    if curStep == 959 then
      triggerEvent('Gradient', 4)
    end
    if curStep == 1087 then
      triggerEvent('Gradient', 2)
    end
    if curStep == 1600 then
      triggerEvent('Gradient', 100)
    end
end