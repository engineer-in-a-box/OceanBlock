local recipes = data.raw["recipe"]

-- Crushing
recipes["aop-fulgoran-crushing"].results = {
    {type = "item", name = "iron-ore", probability = 0.15, amount = 1},
    {type = "item", name = "copper-ore", probability = 0.15, amount = 1},
    {type = "item", name = "holmium-ore", probability = 0.2, amount = 1},
    {type = "item", name = "scrap", probability = 0.05, amount = 2}
}
recipes["aop-gleban-crushing"].results = {
    {type = "item", name = "iron-bacteria", probability = 0.4, amount = 1},
    {type = "item", name = "copper-bacteria", probability = 0.4, amount = 1},
    {type = "item", name = "iron-ore", probability = 0.15, amount = 1},
    {type = "item", name = "copper-ore", probability = 0.15, amount = 1},
    {type = "item", name = "spoilage", probability = 0.8, amount = 2},
    {type = "item", name = "carbon", probability = 0.3, amount = 1},
    {type = "item", name = "jellynut-seed", probability = 0.001, amount = 1},
    {type = "item", name = "yumako-seed", probability = 0.001, amount = 1}
}
recipes["aop-nauvitian-crushing"].results = {
    {type = "item", name = "iron-ore", probability = 0.4, amount = 1},
    {type = "item", name = "copper-ore", probability = 0.4, amount = 1},
    {type = "item", name = "coal", probability = 0.4, amount = 2}
}
recipes["aop-vulcanusian-crushing"].results = {
    {type = "item", name = "iron-ore", probability = 0.5, amount = 2},
    {type = "item", name = "copper-ore", probability = 0.5, amount = 2},
    {type = "item", name = "tungsten-ore", probability = 0.1, amount = 1}
}

-- Core Mining
recipes["aop-core-mining"].energy_required = 1
recipes["aop-mineral-slurry"].ingredients = {
    {type = "item", name = "aop-deep-mineral", amount = 4},
    {type = "fluid", name = "sulfuric-acid", amount = 100}
}
recipes["aop-mineral-slurry-processing"].ingredients = {
    {type = "fluid", name = "aop-mineral-slurry", amount = 40},
    {type = "fluid", name = "steam", amount = 60},
    {type = "item", name = "filter", amount = 1}
}
recipes["aop-mineral-slurry-processing"].results = {
    {type = "item", name = "aop-refined-mineral", amount = 4},
    {type = "item", name = "stone", amount = 25},
    {type = "item", name = "used-filter", amount = 1, ignored_by_productivity = 1}
}