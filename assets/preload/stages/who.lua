--idk what to do more... maybe i will cancel it
local angleshit = 1.0,100
function onCreate()
    makeLuaSprite('bg', 'impostor/polus/deadguy', 0, 100)
    addLuaSprite('bg', false)
    setProperty('bg.antialiasing', true)

    makeAnimatedLuaSprite('meeting', 'impostor/polus/meeting', 210, 1025);
    addAnimationByPrefix('meeting','idle','meeting buzz',16,false)
    scaleObject('meeting', 1.2, 1.2);
    addLuaSprite('meeting', true)
    setProperty('meeting.alpha', 0.001)

    makeLuaSprite('furiousRage', 'impostor/polus/KILLYOURSELF', 545, 970)
    setProperty('furiousRage.antialiasing', true)
    scaleObject('furiousRage', 0.7, 0.7)
    setProperty('furiousRage.alpha', 0.001)
    addLuaSprite('furiousRage', true)

    makeLuaSprite('emergency', 'impostor/polus/emergency', 580, 1268)
    setProperty('emergency.antialiasing', true)
    scaleObject('emergency', 0.5, 0.5)
    setProperty('emergency.alpha', 0.001)
    addLuaSprite('emergency', true)

    makeLuaSprite('starsBG', 'impostor/polus/starBG', 0, 600)
    setProperty('starsBG.antialiasing', true)
    scaleObject('starsBG', 2, 2)
    addLuaSprite('starsBG', true)
    setProperty('starsBG.visible', false)

    makeLuaSprite('starsFG', 'impostor/polus/starFG', 0, 600)
    setProperty('starsFG.antialiasing', true)
    scaleObject('starsFG', 2, 2)
    addLuaSprite('starsFG', true)
    setProperty('starsFG.visible', false)

    makeLuaSprite('whoAngered', 'impostor/polus/mad mad dude', -200, 975)
    setProperty('whoAngered.antialiasing', true)
    setProperty('whoAngered.alpha', 0.001)
    addLuaSprite('whoAngered', false)
end

function onStepHit()
	if curStep == 1152 then
		setProperty('camHUD.visible', false)
		objectPlayAnimation('meeting','idle',false)
		setProperty('meeting.alpha', 1)
	end
	if curStep == 1155 then
		setProperty('furiousRage.alpha', 1)
		setProperty('emergency.alpha', 1)
	end
	if curStep == 1162 then
		setProperty('furiousRage.alpha', 0.01)
		setProperty('emergency.alpha',0.01)
		setProperty('meeting.alpha', 0.001)
		setProperty('dad.visible', false)
		setProperty('boyfriend.visible', false)
		setProperty('bg.visible', false)
		setProperty('space.visible', true)
		setProperty('starsBG.visible', true)
		setProperty('starsFG.visible', true)
		setProperty('whoAngered.alpha', 1)

		setProperty('whoAngered.angle',angleshit*360)
		doTweenAngle('rotate', 'whoAngered', angleshit, stepCrochet*1.0, 'RIGHTloop')
		doTweenX('spaceTour', 'whoAngered', 3000, 7)
	end
end