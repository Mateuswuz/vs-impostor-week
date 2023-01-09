local u = false;
local r = 0;
local shot = false;
local agent = 1
local health = 0;
local xx =  470;
local yy =  250;
local xx2 = 820;
local yy2 = 250;
local ofs = 20;
local followchars = true;
local del = 0;
local del2 = 0;

function onCreate()
	makeLuaSprite('sky', 'impostor/polus/polus_custom_sky', -400, -400)
	setProperty('sky.antialiasing', true)
	setScrollFactor('sky', 0.5, 0.5)
	scaleObject('sky', 1.4, 1.4)
	addLuaSprite('sky', false)

	makeLuaSprite('rocks', 'impostor/polus/polusrocks', -700, -300)
	setProperty('rocks.antialiasing', true)
	setScrollFactor('rocks', 0.6, 0.6)
	addLuaSprite('rocks', false)

	makeLuaSprite('hills', 'impostor/polus/polusHills', -1050, -180.55)
	setProperty('hills.antialiasing', true)
	setScrollFactor('hills', 0.9, 0.9)
	addLuaSprite('hills', false)

	makeLuaSprite('warehouse', 'impostor/polus/polus_custom_lab', 50, -400)
	setProperty('warehouse.antialiasing', true)
	setScrollFactor('warehouse', 1, 1)
	addLuaSprite('warehouse', false)

	makeLuaSprite('ground', 'impostor/polus/polus_custom_floor', -1350, 80)
	setProperty('ground.antialiasing', true)
	setScrollFactor('ground', 1, 1)
	addLuaSprite('ground', false)

	makeAnimatedLuaSprite('speaker', 'impostor/polus/speakerlonely', 300, 185);
    	addAnimationByPrefix('speaker','bop','speakers lonely',24,false)

	if songName == 'Sabotage' then
    		addLuaSprite('speaker', false)
	end

	makeAnimatedLuaSprite('snow', 'impostor/polus/snow', -475, -500);
    	addAnimationByPrefix('snow','cum','cum',24,true)
    	objectPlayAnimation('snow', 'bop', false)
	scaleObject('snow', 4, 4)
	addLuaSprite('snow', true)

	if songName == 'Meltdown' then
		addLuaSprite('speaker', false)

		makeLuaSprite('bfdead', 'impostor/polus/bfdead', 600, 525)
		scaleObject('bfdead', 0.8, 0.8)
		setProperty('bfdead.antialiasing', true)
		setScrollFactor('bfdead', 1, 1)
		addLuaSprite('bfdead', false)

		makeAnimatedLuaSprite('crowd2', 'impostor/polus/boppers_meltdown', -900, 150)
		addAnimationByPrefix('crowd2', 'bop', 'BoppersMeltdown', 24, false)
		setScrollFactor('crowd2', 1.5, 1.5)
		scaleObject('crowd2', 2, 2)
		addLuaSprite('crowd2', true)
	end
end

function onBeatHit()
	if curBeat % 1 == 0 then
		objectPlayAnimation('speaker', 'bop', false)
	end

	if curBeat % 2 == 0 then
		objectPlayAnimation('crowd2', 'bop', false)
	end
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
            setProperty('defaultCamZoom',0.75)
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

            setProperty('defaultCamZoom',0.75)
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
            if getProperty('boyfriend.animation.curAnim.name') == 'idle-alt' then
                triggerEvent('Camera Follow Pos',xx2,yy2)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'idle' then
                triggerEvent('Camera Follow Pos',xx2,yy2)
            end
        end
    else
        triggerEvent('Camera Follow Pos','','')
    end
    
end