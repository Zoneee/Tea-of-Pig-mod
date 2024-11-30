local natie={
    test = function(cooker, names, tags)
        return tags.egg
    end,
    name="拿铁",
    weight = 1, -- 食谱权重
    priority = 1, -- 食谱优先级
    foodtype = GLOBAL.FOODTYPE.MEAT, --料理的食物类型，比如这里定义的是肉类
    health = TUNING.CALORIES_TINY, --吃后回血值
    hunger = TUNING.CALORIES_SMALL, --吃后回饥饿值
    sanity = TUNING.SANITY_HUGE, --吃后回精神值
    perishtime = TUNING.PERISH_SUPERSLOW, --腐烂时间
    cooktime = 0.5, --烹饪时间
    potlevel = "high",
    cookbook_tex = "../images/natie.tex", -- 在游戏内食谱书里的mod食物那一栏里显示的图标，tex在 atlas的xml里定义了，所以这里只写文件名即可
    cookbook_atlas = "../images/natie.xml",
    -- temperature = TUNING.HOT_FOOD_BONUS_TEMP, --某些食物吃了之后有温度变化，则是在这地方定义的
    -- temperatureduration = TUNING.FOOD_TEMP_BRIEF,
    floater = {"med", nil, 0.55},
    cookbook_category = "cookpot"
}


AddCookerRecipe("cookpot", natie) -- 将食谱添加进普通锅
AddCookerRecipe("portablecookpot", natie) -- 将食谱添加进便携锅