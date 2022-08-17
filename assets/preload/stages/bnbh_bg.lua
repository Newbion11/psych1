function onCreate()
    makeLuaSprite('bg', 'beavisandbh/main_bg', -950, -300)
    addLuaSprite('bg')

    makeLuaSprite('tv', 'beavisandbh/tv', 260, 350)
    setScrollFactor('tv', 1.05, 1)
    addLuaSprite('tv')

    setObjectOrder('bg', 1)
    setObjectOrder('gfGroup', 2)
    setObjectOrder('dadGroup', 3)
    setObjectOrder('boyfriendGroup', 4)
    setObjectOrder('tv', 5)
end