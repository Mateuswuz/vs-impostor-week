function onEvent(n,v1,v2)
	if n == 'Reactor Beep' then
		makeLuaSprite('flash', '', 0, 0)
		makeGraphic('flash', 1280, 720, 'FF0000')
		setProperty('flash.scale.x', 3)
		setProperty('flash.scale.y', 3)
		addLuaSprite('flash', true)
		setProperty('flash.alpha', 0)
		setProperty('flash.alpha', 1)
		doTweenAlpha('flashTW', 'flash', 0, 0.4, 'linear')

		setProperty('camGame.zoom', getProperty('camGame.zoom') + 0.015)
		setProperty('camHUD.zoom', getProperty('camHUD.zoom') + 0.03)
	end
end