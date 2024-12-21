-- This file defines the recipe for pidan.
local pidan_recipe = {
    test = function(cooker, names, tags)
        return tags.egg and names.nitre and names.ash and not tags.veggie and not tags.fruit
    end,
    name = "pidan",
    weight = 1,
    priority = 1,
    foodtype = GLOBAL.FOODTYPE.MEAT,
    health = TUNING.CALORIES_TINY,
    hunger = TUNING.CALORIES_SMALL,
    sanity = TUNING.SANITY_HUGE,
    perishtime = TUNING.PERISH_SUPERSLOW,
    cooktime = 0.5,
    potlevel = "high",
    cookbook_tex = "pidan.tex",
    cookbook_atlas = "images/pidan.xml",
    floater = {"med", nil, 0.55},
    cookbook_category = "cookpot"
}

AddCookerRecipe("cookpot", pidan_recipe)
AddCookerRecipe("portablecookpot", pidan_recipe)
