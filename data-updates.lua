data.raw["technology"]["flare-stack-fluid-venting-tech"].unit.ingredients = {
    {"automation-science-pack", 1}
}
data.raw["technology"]["flare-stack-fluid-venting-tech"].prerequisites = {
    "automation"
}

-- valve recipes
data.raw["recipe"]["valves-one_way"].ingredients = {
    {type = "item", name = "iron-plate", amount = 1},
    {type = "item", name = "iron-gear-wheel", amount = 1},
    {type = "item", name = "pipe", amount = 1}
}
data.raw["recipe"]["valves-top_up"].ingredients = {
    {type = "item", name = "iron-plate", amount = 1},
    {type = "item", name = "iron-gear-wheel", amount = 1},
    {type = "item", name = "pipe", amount = 1}
}
data.raw["recipe"]["valves-overflow"].ingredients = {
    {type = "item", name = "iron-plate", amount = 1},
    {type = "item", name = "iron-gear-wheel", amount = 1},
    {type = "item", name = "pipe", amount = 1}
}

if mods["BetterBelts"] then
    data.raw["transport-belt"]["BetterBelts_ultra-transport-belt"].speed = 0.125
    data.raw["underground-belt"]["BetterBelts_ultra-underground-belt-v1"].speed = 0.125
    data.raw["underground-belt"]["BetterBelts_ultra-underground-belt-v2"].speed = 0.125
    data.raw["underground-belt"]["BetterBelts_ultra-underground-belt-v3"].speed = 0.125
    data.raw["splitter"]["BetterBelts_ultra-splitter"].speed = 0.125
    data.raw["loader"]["BetterBelts_ultra-loader"].speed = 0.125
end