data:extend({
    {
        type = "recipe-category",
        name = "oceanblock-handcrafting"
    },
    {
        type = "recipe",
        name = "scavenging",
        ingredients = {},
        results = {
            {type = "item", name = "iron-ore", probability = 0.1, amount = 1},
            {type = "item", name = "copper-ore", probability = 0.075, amount = 1},
            {type = "item", name = "wood", probability = 0.2, amount = 1},
            {type = "item", name = "stone", probability = 0.15, amount = 1},
            {type = "item", name = "coal", probability = 0.02, amount = 1}
        },
        energy_required = 0.5,
        category = "oceanblock-handcrafting",
        icon = "__oceanblock__/graphics/icons/recycling.png",
        icon_size = 64
    },
    {
        type = "recipe",
        name = "electrolysis",
        ingredients = {
            {type = "fluid", name = "water", amount = 250}
        },
        results = {
            {type = "fluid", name = "hydrogen", amount = 50},
            {type = "fluid", name = "oxygen", amount = 25},
            {type = "item", name = "stone", amount_min = 2, amount_max = 3}
        },
        energy_required = 4,
        category = "chemistry",
        icons = {
            {icon = "__base__/graphics/icons/fluid/water.png", icon_size = 64, shift = {0, -8}},
            {icon = "__Krastorio2Assets__/icons/fluids/hydrogen.png", icon_size = 64, shift = {8, 8}},
            {icon = "__Krastorio2Assets__/icons/fluids/oxygen.png", icon_size = 64, shift = {-8, 8}}
        },
        icon_size = 64,
        allow_productivity = true,
        enabled = false,
        subgroup = "fluid-recipes",
        order = "d[fluid]-c-a"
    },
    {
        type = "recipe",
        name = "stone-crushing",
        ingredients = {
            {type = "item", name = "stone", amount = 10}
        },
        results = {
            {type = "item", name = "sand", amount = 20}
        },
        energy_required = 4,
        category = "advanced-crafting",
        allow_productivity = true,
        enabled = false
    },
    {
        type = "recipe",
        name = "mineral-water",
        ingredients = {
            {type = "item", name = "sand", amount = 10},
            {type = "fluid", name = "water", amount = 100}
        },
        results = {
            {type = "fluid", name = "mineral-water", amount = 100}
        },
        energy_required = 4,
        category = "chemistry",
        allow_productivity = true,
        enabled = false,
        subgroup = "fluid"
    },
    {
        type = "recipe",
        name = "mineral-water-crystalization",
        ingredients = {
            {type = "fluid", name = "mineral-water", amount = 250}
        },
        results = {
            {type = "item", name = "iron-ore", amount = 2},
            {type = "item", name = "copper-ore", amount_min = 1, amount_max = 2},
            {type = "fluid", name = "water", amount = 250, ignored_by_productivity = 250}
        },
        energy_required = 20,
        category = "chemistry",
        allow_productivity = true,
        icons = {
            {icon = "__Krastorio2Assets__/icons/fluids/mineral-water.png", icon_size = 64, shift = {0, -8   }},
            {icon = "__base__/graphics/icons/iron-ore.png", icon_size = 64, shift = {8, 8}},
            {icon = "__base__/graphics/icons/copper-ore.png", icon_size = 64, shift = {-8, 8}}
        },
        enabled = false,
        subgroup = "raw-resource"
    },
    {
        type = "recipe",
        name = "advanced-electrolysis",
        ingredients = {
            {type = "item", name = "filter", amount = 1},
            {type = "fluid", name = "water", amount = 250}
        },
        results = {
            {type = "item", name = "used-filter", amount = 1, ignored_by_productivity = 1},
            {type = "fluid", name = "hydrogen", amount = 50},
            {type = "fluid", name = "oxygen", amount = 25},
            {type = "item", name = "stone", amount_min = 2, amount_max = 3}
        },
        energy_required = 1,
        category = "chemistry",
        icons = {
            {icon = "__base__/graphics/icons/fluid/water.png", icon_size = 64, shift = {-8, -8}},
            {icon = "__Krastorio2Assets__/icons/items/pollution-filter.png", icon_size = 64, shift = {8, -8}},
            {icon = "__Krastorio2Assets__/icons/fluids/hydrogen.png", icon_size = 64, shift = {8, 8}},
            {icon = "__Krastorio2Assets__/icons/fluids/oxygen.png", icon_size = 64, shift = {-8, 8}}
        },
        icon_size = 64,
        allow_productivity = true,
        enabled = false,
        subgroup = "fluid-recipes",
        order = "d[fluid]-c-b"
    },
    {
        type = "recipe",
        name = "filter-cleaning",
        ingredients = {
            {type = "item", name = "used-filter", amount = 1},
            {type = "fluid", name = "water", amount = 50}
        },
        results = {
            {type = "item", name = "filter", amount = 1}
        },
        energy_required = 1,
        category = "chemistry",
        enabled = false,
        subgroup = "fluid-recipes",
        order = "d[fluid]-c-d"
    },
    {
        type = "recipe",
        name = "sand-dissolving",
        ingredients = {
            {type = "item", name = "sand", amount = 10},
            {type = "fluid", name = "sulfuric-acid", amount = 100}
        },
        results = {
            {type = "fluid", name = "slurry", amount = 100}
        },
        energy_required = 4,
        category = "chemistry",
        allow_productivity = true,
        enabled = false,
        subgroup = "fluid"
    },
    {
        type = "recipe",
        name = "slurry-filtering-1",
        ingredients = {
            {type = "fluid", name = "slurry", amount = 150},
            {type = "item", name = "filter", amount = 1}
        },
        results = {
            {type = "item", name = "iron-ore", amount = 6},
            {type = "item", name = "copper-ore", amount = 3},
            {type = "item", name = "sulfur", amount = 8},
            {type = "item", name = "used-filter", amount = 1, ignored_by_productivity = 1},
            {type = "fluid", name = "water", amount = 50},
            {type = "fluid", name = "mineral-water", amount = 50}
        },
        energy_required = 1,
        category = "oil-processing",
        allow_productivity = true,
        icon = "__oceanblock__/graphics/icons/grayscale_fluid.png",
        enabled = false,
        subgroup = "raw-resource"
    },
    {
        type = "recipe",
        name = "slurry-filtering-2",
        ingredients = {
            {type = "fluid", name = "slurry", amount = 150},
            {type = "item", name = "filter", amount = 1}
        },
        results = {
            {type = "item", name = "iron-ore", amount = 3},
            {type = "item", name = "copper-ore", amount = 6},
            {type = "item", name = "sulfur", amount = 8},
            {type = "item", name = "used-filter", amount = 1, ignored_by_productivity = 1},
            {type = "fluid", name = "water", amount = 50},
            {type = "fluid", name = "mineral-water", amount = 50}
        },
        energy_required = 1,
        category = "oil-processing",
        allow_productivity = true,
        icon = "__oceanblock__/graphics/icons/grayscale_fluid.png",
        enabled = false,
        subgroup = "raw-resource"
    },
    {
        type = "recipe",
        name = "petroleum-gas",
        ingredients = {
            {type = "item", name = "coal", amount = 10},
            {type = "fluid", name = "hydrogen", amount = 100}
        },
        results = {
            {type = "fluid", name = "petroleum-gas", amount = 200}
        },
        energy_required = 2,
        category = "oil-processing",
        allow_productivity = true,
        enabled = false
    },
    {
        type = "recipe",
        name = "fish-breeding",
        ingredients = {
            {type = "fluid", name = "water", amount = 150},
            {type = "item", name = "raw-fish", amount = 2}
        },
        results = {
            {type = "item", name = "raw-fish", amount = 3}
        },
        energy_required = 6,
        category = "chemistry",
        enabled = false
    },
    {
        type = "recipe",
        name = "fish-oil",
        ingredients = {
            {type = "fluid", name = "water", amount = 50},
            {type = "item", name = "raw-fish", amount = 1}
        },
        results = {
            {type = "fluid", name = "heavy-oil", amount = 75}
        },
        energy_required = 6,
        category = "centrifuging",
        allow_productivity = true,
        enabled = false
    },
    {
        type = "recipe",
        name = "advanced-slurry-filtering-for-iron",
        ingredients = {
            {type = "fluid", name = "slurry", amount = 150}
        },
        results = {
            {type = "fluid", name = "water", amount = 50},
            {type = "fluid", name = "mineral-water", amount = 100},
            {type = "item", name = "sulfur", amount = 10},
            {type = "fluid", name = "ferric-solution", amount = 100}
        },
        energy_required = 10,
        category = "centrifuging",
        allow_productivity = true,
        icons = {
            {icon = "__Krastorio2Assets__/icons/fluids/dirty-water.png", icon_size = 64},
            {icon = "__base__/graphics/icons/iron-ore.png", icon_size = 64, scale = 0.3, shift = {0, 8}}
        },
        crafting_machine_tint = {
            primary = {0.36, 0.25, 0}
        },
        enabled = false,
        subgroup = "raw-resource"
    },
    {
        type = "recipe",
        name = "advanced-slurry-filtering-for-copper",
        ingredients = {
            {type = "fluid", name = "slurry", amount = 150}
        },
        results = {
            {type = "fluid", name = "water", amount = 50},
            {type = "fluid", name = "mineral-water", amount = 100},
            {type = "fluid", name = "cupric-solution", amount = 100},
            {type = "item", name = "sulfur", amount = 10}
        },
        energy_required = 10,
        category = "centrifuging",
        allow_productivity = true,
        icons = {
            {icon = "__Krastorio2Assets__/icons/fluids/dirty-water.png", icon_size = 64},
            {icon = "__base__/graphics/icons/copper-ore.png", icon_size = 64, scale = 0.3, shift = {0, 8}}
        },
        crafting_machine_tint = {
            primary = {0.36, 0.25, 0}
        },
        enabled = false,
        subgroup = "raw-resource"
    },
    {
        type = "recipe",
        name = "ferric-solution-filtering",
        ingredients = {
            {type = "fluid", name = "ferric-solution", amount = 100}
        },
        results = {
            {type = "item", name = "iron-ore", amount = 12},
            {type = "fluid", name = "mineral-water", amount = 50}
        },
        energy_required = 10,
        category = "centrifuging",
        allow_productivity = true,
        icon = "__base__/graphics/icons/iron-ore.png",
        crafting_machine_tint = {
            primary = {0.36, 0.25, 0}
        },
        enabled = false,
        subgroup = "raw-resource"
    },
    {
        type = "recipe",
        name = "cupric-solution-filtering",
        ingredients = {
            {type = "fluid", name = "cupric-solution", amount = 100}
        },
        results = {
            {type = "item", name = "copper-ore", amount = 12},
            {type = "fluid", name = "mineral-water", amount = 50}
        },
        energy_required = 10,
        category = "centrifuging",
        allow_productivity = true,
        icon = "__base__/graphics/icons/copper-ore.png",
        crafting_machine_tint = {
            primary = {0.36, 0.25, 0}
        },
        enabled = false,
        subgroup = "raw-resource"
    },
    {
        type = "recipe",
        name = "landfill-from-sand",
        ingredients = {
            {type = "item", name = "sand", amount = 1}
        },
        results = {
            {type = "item", name = "landfill", amount = 5}
        }
    },
    {
        type = "recipe",
        name = "sand-centrifuging",
        ingredients = {
            {type = "item", name = "sand", amount = 2000},
            {type = "fluid", name = "water", amount = 32000}
        },
        results = {
            {type = "item", name = "uranium-ore", amount = 1}
        },
        energy_required = 240,
        category = "centrifuging",
        enabled = false
    },
    {
        type = "recipe",
        name = "uranium-hexasulfide",
        ingredients = {
            {type = "item", name = "uranium-ore", amount = 5},
            {type = "fluid", name = "sulfuric-acid", amount = 200}
        },
        results = {
            {type = "fluid", name = "uranium-hexasulfide", amount = 100}
        },
        energy_required = 1,
        category = "chemistry",
        enabled = false,
        subgroup = "fluid"
    },
    {
        type = "recipe",
        name = "ferric-solution",
        ingredients = {
            {type = "item", name = "iron-ore", amount = 15},
            {type = "fluid", name = "mineral-water", amount = 100}
        },
        results = {
            {type = "fluid", name = "ferric-solution", amount = 100}
        },
        energy_required = 1,
        category = "chemistry",
        enabled = false,
        subgroup = "fluid"
    },
    {
        type = "recipe",
        name = "cupric-solution",
        ingredients = {
            {type = "item", name = "copper-ore", amount = 15},
            {type = "fluid", name = "mineral-water", amount = 100}
        },
        results = {
            {type = "fluid", name = "cupric-solution", amount = 100}
        },
        energy_required = 1,
        category = "chemistry",
        enabled = false,
        subgroup = "fluid"
    },
    {
        type = "recipe",
        name = "nitric-acid",
        ingredients = {
            {type = "fluid", name = "water", amount = 300},
            {type = "fluid", name = "nitrogen", amount = 50},
            {type = "item", name = "iron-stick", amount = 2}
        },
        results = {
            {type = "fluid", name = "nitric-acid", amount = 100},
            {type = "fluid", name = "hydrogen", amount = 250}
        },
        energy_required = 4,
        category = "chemistry",
        main_product = "nitric-acid",
        enabled = false,
        subgroup = "fluid-recipes",
        order = "d[fluid]-d-a"
    },
    {
        type = "recipe",
        name = "air-separation",
        ingredients = {},
        results = {
            {type = "fluid", name = "oxygen", amount = 100},
            {type = "fluid", name = "nitrogen", amount = 100}
        },
        energy_required = 1,
        category = "chemistry",
        icons = {
            {icon = "__Krastorio2Assets__/icons/fluids/nitrogen.png", icon_size = 64, shift = {8, 0}},
            {icon = "__Krastorio2Assets__/icons/fluids/oxygen.png", icon_size = 64, shift = {-8, 0}}
        },
        enabled = false,
        subgroup = "fluid"
    },
    {
        type = "recipe",
        name = "filter",
        ingredients = {
            {type = "item", name = "iron-plate", amount = 5}
        },
        results = {
            {type = "item", name = "filter", amount = 1}
        },
        energy_required = 1,
        enabled = false,
        subgroup = "fluid-recipes",
        order = "d[fluid]-c-c"
    },
    {
        type = "recipe",
        name = "advanced-processing-unit",
        ingredients = {
            {type = "item", name = "advanced-circuit", amount = 20},
            {type = "item", name = "processing-unit", amount = 6},
            {type = "item", name = "copper-cable", amount = 20},
            {type = "item", name = "plastic-bar", amount = 10},
            {type = "item", name = "battery", amount = 2},
            {type = "fluid", name = "sulfuric-acid", amount = 30},
            {type = "fluid", name = "nitric-acid", amount = 60}
        },
        results = {
            {type = "item", name = "advanced-processing-unit", amount = 2},
            {type = "fluid", name = "hydrogen", amount = 30, ignored_by_productivity = 30}
        },
        energy_required = 20,
        category = "chemistry",
        main_product = "advanced-processing-unit",
        order = "b[circuits]-d[advanced-processing-unit]",
        allow_productivity = true,
        allow_consumption = false,
        allow_pollution = false
    }
})

-- recipe modifications
local recipes = data.raw["recipe"]

recipes["landfill"].enabled = true

recipes["sg-grow-wood"].energy_required = 480
recipes["sg-grow-wood"].ingredients = {
    {type = "item", name = "sg-sapling", amount = 10}
}
recipes["sg-grow-wood"].results = {
    {type = "item", name = "wood", amount = 62}
}

recipes["sg-charcoal"].results[1].name = "coal"
recipes["sg-charcoal"].main_product = "coal"

recipes["sg-sapling"].results[1].amount = 5
recipes["sg-sapling"].ingredients[2].amount = 300
recipes["sg-water-well"].hidden = true

recipes["basic-oil-processing"].hidden = true
recipes["advanced-oil-processing"].hidden = true
recipes["coal-liquefaction"].hidden = true
recipes["solid-fuel-from-heavy-oil"].hidden = true
recipes["lubricant"].ingredients = {
    {type = "fluid", name = "heavy-oil", amount = 10}
}
recipes["heavy-oil-cracking"].ingredients = {
    {type = "fluid", name = "water", amount = 30},
    {type = "fluid", name = "heavy-oil", amount = 40}
}

recipes["landfill"].ingredients = {
    {type = "item", name = "stone", amount = 1}
}

recipes["uranium-processing"].ingredients = {
    {type = "fluid", name = "uranium-hexasulfide", amount = 400}
}

recipes["nuclear-fuel"].ingredients = {
    {type = "item", name = "rocket-fuel", amount = 15},
    {type = "item", name = "uranium-235", amount = 5},
    {type = "fluid", name = "uranium-hexasulfide", amount = 100}
}

recipes["advanced-circuit"].ingredients = {
    {type = "item", name = "plastic-bar", amount = 2},
    {type = "item", name = "copper-cable", amount = 6},
    {type = "item", name = "electronic-circuit", amount = 2},
    {type = "fluid", name = "nitric-acid", amount = 5}
}
recipes["advanced-circuit"].category = "crafting-with-fluid"
recipes["advanced-circuit"].energy_required = 1.5

recipes["centrifuge"].ingredients = {
    {type = "item", name = "steel-plate", amount = 25},
    {type = "item", name = "iron-gear-wheel", amount = 50},
    {type = "item", name = "advanced-circuit", amount = 50},
    {type = "item", name = "concrete", amount = 50}
}

recipes["chemical-plant"].ingredients = {
    {type = "item", name = "electronic-circuit", amount = 5},
    {type = "item", name = "iron-gear-wheel", amount = 5},
    {type = "item", name = "pipe", amount = 5},
    {type = "item", name = "iron-plate", amount = 5}
}

recipes["copper-cable"].ingredients = {
    {type = "item", name = "copper-plate", amount = 1}
}
recipes["copper-cable"].results = {
    {type = "item", name = "copper-cable", amount = 3}
}
recipes["copper-cable"].energy_required = 0.25

recipes["electronic-circuit"].results = {
    {type = "item", name = "electronic-circuit", amount = 2}
}
recipes["electronic-circuit"].energy_required = 1

recipes["flying-robot-frame"].ingredients = {
    {type = "item", name = "steel-plate", amount = 1},
    {type = "item", name = "battery", amount = 2},
    {type = "item", name = "electronic-circuit", amount = 3},
    {type = "item", name = "electric-engine-unit", amount = 1},
    {type = "item", name = "advanced-processing-unit", amount = 1},
    {type = "fluid", name = "nitric-acid", amount = 20}
}
recipes["flying-robot-frame"].results = {
    {type = "item", name = "flying-robot-frame", amount = 1},
    {type = "fluid", name = "hydrogen", amount = 10}
}
recipes["flying-robot-frame"].main_product = "flying-robot-frame"
recipes["flying-robot-frame"].category = "crafting-with-fluid"

recipes["flare-stack"].ingredients = {
    {type = "item", name = "iron-plate", amount = 5},
    {type = "item", name = "iron-gear-wheel", amount = 5},
    {type = "item", name = "electronic-circuit", amount = 2},
    {type = "item", name = "pipe", amount = 5}
}

table.insert(recipes["spidertron"].ingredients, {type = "item", name = "advanced-processing-unit", amount = 4})
table.insert(recipes["satellite"].ingredients, {type = "item", name = "advanced-processing-unit", amount = 10})
table.insert(recipes["rocket-part"].ingredients, {type = "item", name = "advanced-processing-unit", amount = 10})
table.insert(recipes["atomic-bomb"].ingredients, {type = "item", name = "advanced-processing-unit", amount = 10})
table.insert(recipes["power-armor-mk2"].ingredients, {type = "item", name = "advanced-processing-unit", amount = 10})
table.insert(recipes["personal-roboport-mk2-equipment"].ingredients, {type = "item", name = "advanced-processing-unit", amount = 5})

-- modules
recipes["speed-module"].ingredients = {
    {type = "item", name = "electronic-circuit", amount = 5},
    {type = "item", name = "advanced-circuit", amount = 5},
    {type = "fluid", name = "nitric-acid", amount = 25}
}

recipes["speed-module-2"].ingredients = {
    {type = "item", name = "advanced-circuit", amount = 5},
    {type = "item", name = "processing-unit", amount = 5},
    {type = "item", name = "speed-module", amount = 5},
    {type = "fluid", name = "nitric-acid", amount = 40}
}

recipes["speed-module-3"].ingredients = {
    {type = "item", name = "advanced-circuit", amount = 5},
    {type = "item", name = "advanced-processing-unit", amount = 2},
    {type = "item", name = "speed-module-2", amount = 5},
    {type = "item", name = "flying-robot-frame", amount = 2},
    {type = "fluid", name = "nitric-acid", amount = 40}
}

recipes["efficiency-module"].ingredients = {
    {type = "item", name = "electronic-circuit", amount = 5},
    {type = "item", name = "advanced-circuit", amount = 5},
    {type = "fluid", name = "nitric-acid", amount = 25}
}

recipes["efficiency-module-2"].ingredients = {
    {type = "item", name = "advanced-circuit", amount = 5},
    {type = "item", name = "processing-unit", amount = 5},
    {type = "item", name = "efficiency-module", amount = 5},
    {type = "fluid", name = "nitric-acid", amount = 40}
}

recipes["efficiency-module-3"].ingredients = {
    {type = "item", name = "advanced-circuit", amount = 5},
    {type = "item", name = "advanced-processing-unit", amount = 2},
    {type = "item", name = "efficiency-module-2", amount = 5},
    {type = "item", name = "uranium-238", amount = 1},
    {type = "fluid", name = "nitric-acid", amount = 40}
}

recipes["productivity-module"].ingredients = {
    {type = "item", name = "electronic-circuit", amount = 5},
    {type = "item", name = "advanced-circuit", amount = 5},
    {type = "fluid", name = "nitric-acid", amount = 25}
}

recipes["productivity-module-2"].ingredients = {
    {type = "item", name = "advanced-circuit", amount = 5},
    {type = "item", name = "processing-unit", amount = 5},
    {type = "item", name = "productivity-module", amount = 5},
    {type = "fluid", name = "nitric-acid", amount = 40}
}

recipes["productivity-module-3"].ingredients = {
    {type = "item", name = "advanced-circuit", amount = 5},
    {type = "item", name = "advanced-processing-unit", amount = 2},
    {type = "item", name = "productivity-module-2", amount = 5},
    {type = "item", name = "heat-pipe", amount = 2},
    {type = "fluid", name = "nitric-acid", amount = 40}
}

recipes["speed-module"].category = "crafting-with-fluid"
recipes["speed-module-2"].category = "crafting-with-fluid"
recipes["speed-module-3"].category = "crafting-with-fluid"
recipes["efficiency-module"].category = "crafting-with-fluid"
recipes["efficiency-module-2"].category = "crafting-with-fluid"
recipes["efficiency-module-3"].category = "crafting-with-fluid"
recipes["productivity-module"].category = "crafting-with-fluid"
recipes["productivity-module-2"].category = "crafting-with-fluid"
recipes["productivity-module-3"].category = "crafting-with-fluid"

-- belts
recipes["fast-transport-belt"].ingredients = {
    {type = "item", name = "transport-belt", amount = 1},
    {type = "item", name = "iron-gear-wheel", amount = 3}
}

recipes["fast-underground-belt"].ingredients = {
    {type = "item", name = "underground-belt", amount = 1},
    {type = "item", name = "iron-gear-wheel", amount = 12}
}

recipes["fast-splitter"].ingredients = {
    {type = "item", name = "splitter", amount = 1},
    {type = "item", name = "iron-gear-wheel", amount = 6},
    {type = "item", name = "electronic-circuit", amount = 6}
}

recipes["express-transport-belt"].ingredients = {
    {type = "item", name = "fast-transport-belt", amount = 1},
    {type = "item", name = "iron-gear-wheel", amount = 6},
    {type = "fluid", name = "lubricant", amount = 30}
}

recipes["express-underground-belt"].ingredients = {
    {type = "item", name = "fast-underground-belt", amount = 1},
    {type = "item", name = "iron-gear-wheel", amount = 40},
    {type = "fluid", name = "lubricant", amount = 60}
}

recipes["express-splitter"].ingredients = {
    {type = "item", name = "fast-splitter", amount = 1},
    {type = "item", name = "iron-gear-wheel", amount = 6},
    {type = "item", name = "advanced-circuit", amount = 6},
    {type = "fluid", name = "lubricant", amount = 120}
}

-- science
recipes["automation-science-pack"].ingredients = {
    {type = "item", name = "electronic-circuit", amount = 10},
    {type = "item", name = "copper-cable", amount = 10}
}
recipes["automation-science-pack"].results = {
    {type = "item", name = "automation-science-pack", amount = 5}
}

recipes["logistic-science-pack"].energy_required = 1
recipes["military-science-pack"].ingredients = {
    {type = "item", name = "firearm-magazine", amount = 2},
    {type = "item", name = "grenade", amount = 2},
    {type = "item", name = "stone-wall", amount = 5}
}

recipes["chemical-science-pack"].ingredients = {
    {type = "fluid", name = "sulfuric-acid", amount = 30},
    {type = "item", name = "advanced-circuit", amount = 2},
    {type = "item", name = "engine-unit", amount = 2}
}
recipes["chemical-science-pack"].category = "chemistry"
recipes["chemical-science-pack"].results = {
    {type = "item", name = "chemical-science-pack", amount = 2},
    {type = "item", name = "sulfur", amount = 1},
    {type = "fluid", name = "mineral-water", amount = 60}
}
recipes["chemical-science-pack"].icon = "__base__/graphics/icons/chemical-science-pack.png"
recipes["chemical-science-pack"].crafting_machine_tint.primary = {0.3, 0.9, 0.95}
recipes["chemical-science-pack"].main_product = "chemical-science-pack"
recipes["chemical-science-pack"].energy_required = 30

recipes["production-science-pack"].ingredients = {
    {type = "item", name = "rail", amount = 60},
    {type = "item", name = "chemical-plant", amount = 10},
    {type = "item", name = "productivity-module-2", amount = 5},
    {type = "item", name = "centrifuge", amount = 1},
    {type = "fluid", name = "uranium-hexasulfide", amount = 120}
}
recipes["production-science-pack"].results = {
    {type = "item", name = "production-science-pack", amount = 60},
    {type = "item", name = "uranium-235", amount = 1, probability = 0.01},
    {type = "fluid", name = "sulfuric-acid", amount = 80}
}
recipes["production-science-pack"].energy_required = 480
recipes["production-science-pack"].category = "centrifuging"
recipes["production-science-pack"].crafting_machine_tint.primary = {0.6, 0, 1}
recipes["production-science-pack"].icon = "__base__/graphics/icons/production-science-pack.png"
recipes["production-science-pack"].main_product = "production-science-pack"

recipes["utility-science-pack"].ingredients = {
    {type = "item", name = "processing-unit", amount = 15},
    {type = "item", name = "flying-robot-frame", amount = 30},
    {type = "item", name = "low-density-structure", amount = 5},
    {type = "item", name = "uranium-235", amount = 1},
    {type = "fluid", name = "ferric-solution", amount = 300}
}
recipes["utility-science-pack"].energy_required = 60
recipes["utility-science-pack"].category = "centrifuging"
recipes["utility-science-pack"].results = {
    {type = "item", name = "utility-science-pack", amount = 12},
    {type = "fluid", name = "slurry", amount = 120}
}
recipes["utility-science-pack"].main_product = "utility-science-pack"
recipes["utility-science-pack"].icon = "__base__/graphics/icons/utility-science-pack.png"
