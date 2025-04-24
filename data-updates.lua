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

if mods["space-age"] then
    require("prototypes.space-age.planets.planet-updates")
end