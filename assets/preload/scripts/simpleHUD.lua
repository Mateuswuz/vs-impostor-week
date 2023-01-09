function onCreatePost()
	makeLuaText('score', 'Score: 0 | Combo Breaks: 0 | Accuracy: 0% [?]',0,310,680);
	setTextSize('score', 20);
	addLuaText('score');

	if downscroll then
		setProperty('score.y', 120)
	end
end

function onUpdate()
	setProperty('timeBarBG.x', 100)
	setProperty('timeBar.x', 100)
	setProperty('timeTxt.x', 100)

	if ratingName == 'Perfect!!' then
		ratingName = 'SFC'
	elseif ratingName == 'Sick!' then
		ratingName = 'GFC'
	elseif ratingName == 'Great' then
		ratingName = 'FC'
	end

	setProperty('scoreTxt.visible', false)

	setTextString('score', 'Score: '..score..' | Combo Breaks: '..misses..' | Accuracy: '..round(rating * 100, 2)..'% ['..ratingName..']')
end

function round(x, n)
	n = math.pow(10, n or 0)
	x = x * n
	if x >= 0 then x = math.floor(x + 0.5) else x = math.ceil(x - 0.5) end
	return x / n
end