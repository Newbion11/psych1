function onCreatePost()

    makeLuaText("songtext", "Dumbass", 156. -300, 20, 640)
	setTextSize("songtext", 50)
    setTextFont("songtext", 'Comic James.ttf')
    setTextColor("songtext", "000000")
    setTextBorder("songtext", 0, 0)
    setObjectCamera("songtext", "camOther")
    addLuaText("songtext", true)

    makeLuaText("credits", "Composed By Visummum", 156. -300, 20, 680)
	setTextSize("credits", 40)
    setTextFont("credits", 'Comic James.ttf')
    setTextColor("credits", "000000")
    setTextBorder("credits", 0, 0)
    setObjectCamera("credits", "camOther")
    addLuaText("credits", true)

end

function onUpdate(elapsed)
    if curBeat >= 32 then
        doTweenAlpha('alpha1', 'songtext', 0, 1)
        doTweenAlpha('alpha2', 'credits', 0, 1)
    end

    if curStep == 784 then
        doTweenAlpha('hudalpha2', 'camHUD', 0.000001, 1)
        doTweenZoom('zoomwow', 'camGame', 1.2, 14.2)
    end

    if curStep == 892 then
        doTweenAlpha('hudalpha3', 'camHUD', 1, 0.1)
    end

    if curStep == 1152 then
        doTweenZoom('endzoomwow', 'camGame', 0.65, 6)
    end
end

function onMoveCamera(focus)
	if focus == 'boyfriend' then
		setProperty('defaultCamZoom', 1)
	elseif focus == 'dad' then
		setProperty('defaultCamZoom', 0.8)
	end
end

function onBeatHit()
	if not musthit == mustHitSection then
		setProperty('gf.idleSuffix','')
		characterPlayAnim('gf','rtol')
		
		if mustHitSection then
            setProperty('gf.idleSuffix','-alt')
            characterPlayAnim('gf','ltor')
			setProperty('gf.danced',true)
		end
		setProperty('gf.danced',false)
	end
	musthit = mustHitSection
end