local technologies = data.raw["technology"]

table.insert(technologies["automation"].effects, {type = "unlock-recipe", recipe = "chemical-plant"})
table.insert(technologies["automation"].effects, {type = "unlock-recipe", recipe = "electrolysis"})
table.insert(technologies["automation"].effects, {type = "unlock-recipe", recipe = "sand"})
table.insert(technologies["automation"].effects, {type = "unlock-recipe", recipe = "mineral-water"})
table.insert(technologies["automation"].effects, {type = "unlock-recipe", recipe = "mineral-water-crystalization"})
table.insert(technologies["automation"].effects, {type = "unlock-recipe", recipe = "valves-one_way"})
table.insert(technologies["automation"].effects, {type = "unlock-recipe", recipe = "valves-top_up"})
table.insert(technologies["automation"].effects, {type = "unlock-recipe", recipe = "valves-overflow"})

table.insert(technologies["automation-2"].effects, {type = "unlock-recipe", recipe = "advanced-electrolysis"})
table.insert(technologies["automation-2"].effects, {type = "unlock-recipe", recipe = "filter-cleaning"})
table.insert(technologies["automation-2"].effects, {type = "unlock-recipe", recipe = "filter"})
table.insert(technologies["automation-2"].effects, {type = "unlock-recipe", recipe = "fish-breeding"})
table.insert(technologies["automation-2"].effects, {type = "unlock-recipe", recipe = "nitric-acid"})
table.insert(technologies["automation-2"].effects, {type = "unlock-recipe", recipe = "air-separation"})
table.insert(technologies["automation-2"].effects, {type = "unlock-recipe", recipe = "iron-stick"})

table.insert(technologies["automation-3"].effects, {type = "unlock-recipe", recipe = "cupric-solution"})
table.insert(technologies["automation-3"].effects, {type = "unlock-recipe", recipe = "ferric-solution"})

table.insert(technologies["sulfur-processing"].effects, {type = "unlock-recipe", recipe = "slurry"})
table.insert(technologies["sulfur-processing"].effects, {type = "unlock-recipe", recipe = "slurry-filtering-1"})

table.insert(technologies["uranium-processing"].effects, {type = "unlock-recipe", recipe = "advanced-slurry-filtering-for-copper"})
table.insert(technologies["uranium-processing"].effects, {type = "unlock-recipe", recipe = "advanced-slurry-filtering-for-iron"})
table.insert(technologies["uranium-processing"].effects, {type = "unlock-recipe", recipe = "cupric-solution-filtering"})
table.insert(technologies["uranium-processing"].effects, {type = "unlock-recipe", recipe = "ferric-solution-filtering"})
table.insert(technologies["uranium-processing"].effects, {type = "unlock-recipe", recipe = "fish-oil"})
table.insert(technologies["uranium-processing"].effects, {type = "unlock-recipe", recipe = "uranium-ore"})
table.insert(technologies["uranium-processing"].effects, {type = "unlock-recipe", recipe = "uranium-hexasulfide"})
technologies["uranium-processing"].prerequisites = table.deepcopy(data.raw["technology"]["uranium-mining"].prerequisites)
table.insert(technologies["uranium-processing"].prerequisites, "titanium-processing")

technologies["uranium-mining"].hidden = true

table.insert(technologies["production-science-pack"].prerequisites, "uranium-processing")
table.insert(technologies["utility-science-pack"].prerequisites, "uranium-processing")

table.insert(technologies["speed-module-3"].prerequisites, "robotics")

table.insert(technologies["low-density-structure"].effects, {type = "unlock-recipe", recipe = "low-density-structure-from-titansteel"})

technologies["oil-gathering"].effects = nil

technologies["oil-processing"].research_trigger = nil
technologies["oil-processing"].unit = technologies["oil-gathering"].unit
technologies["oil-processing"].effects = {
    {type = "unlock-recipe", recipe = "oil-refinery"},
    {type = "unlock-recipe", recipe = "solid-fuel-from-petroleum-gas"},
    {type = "unlock-recipe", recipe = "petroleum-gas"}
}

technologies["uranium-processing"].research_trigger = nil
technologies["uranium-processing"].unit = technologies["uranium-mining"].unit

technologies["electric-mining-drill"].hidden = true
technologies["mining-productivity-1"].hidden = true
technologies["mining-productivity-2"].hidden = true
technologies["mining-productivity-3"].hidden = true
if not mods["space-age"] then
    technologies["mining-productivity-4"].hidden = true
end

technologies["landfill"].hidden = true
if mods["space-age"] then
    technologies["fish-breeding"].hidden = true
end

table.insert(technologies["processing-unit"].effects, {type = "unlock-recipe", recipe = "advanced-processing-unit"})
table.insert(technologies["processing-unit"].prerequisites, "titanium-processing")
table.insert(technologies["low-density-structure"].prerequisites, "titanium-processing")
table.insert(technologies["robotics"].prerequisites, "processing-unit")

data:extend({
    {
        type = "technology",
        name = "ore-productivity-1",
        effects = {
            {type = "change-recipe-productivity", recipe = "mineral-water-crystalization", change = 0.1}
        },
        icons = {
            {icon = "__base__/graphics/icons/iron-ore.png", shift = {-1, -0}, scale = 2},
            {
              icon = "__core__/graphics/icons/technology/constants/constant-mining-productivity.png",
              icon_size = 128,
              scale = 0.5,
              shift = {50, 50}
            }
        },
        unit = {
            ingredients = {
                {"automation-science-pack", 1},
                {"logistic-science-pack", 1}
            },
            time = 30,
            count = 250
        },
        prerequisites = {
            "logistic-science-pack",
            "automation"
        }
    },
    {
        type = "technology",
        name = "ore-productivity-2",
        effects = {
            {type = "change-recipe-productivity", recipe = "mineral-water-crystalization", change = 0.1},
            {type = "change-recipe-productivity", recipe = "slurry-filtering-1", change = 0.1}
        },
        icons = {
            {icon = "__base__/graphics/icons/iron-ore.png", shift = {-1, -0}, scale = 2},
            {
              icon = "__core__/graphics/icons/technology/constants/constant-mining-productivity.png",
              icon_size = 128,
              scale = 0.5,
              shift = {50, 50}
            }
        },
        unit = {
            ingredients = {
                {"automation-science-pack", 1},
                {"logistic-science-pack", 1},
                {"chemical-science-pack", 1}
            },
            time = 30,
            count = 500
        },
        prerequisites = {
            "ore-productivity-1",
            "chemical-science-pack"
        }
    },
    {
        type = "technology",
        name = "ore-productivity-3",
        effects = {
            {type = "change-recipe-productivity", recipe = "mineral-water-crystalization", change = 0.1},
            {type = "change-recipe-productivity", recipe = "slurry-filtering-1", change = 0.1},
            {type = "change-recipe-productivity", recipe = "ferric-solution-filtering", change = 0.1},
            {type = "change-recipe-productivity", recipe = "cupric-solution-filtering", change = 0.1}
        },
        icons = {
            {icon = "__base__/graphics/icons/iron-ore.png", shift = {-1, -0}, scale = 2},
            {
              icon = "__core__/graphics/icons/technology/constants/constant-mining-productivity.png",
              icon_size = 128,
              scale = 0.5,
              shift = {50, 50}
            }
        },
        unit = {
            ingredients = {
                {"automation-science-pack", 1},
                {"logistic-science-pack", 1},
                {"chemical-science-pack", 1},
                {"production-science-pack", 1}
            },
            time = 30,
            count = 1000
        },
        prerequisites = {
            "ore-productivity-2",
            "production-science-pack"
        }
    },
    {
        type = "technology",
        name = "ore-productivity-4",
        effects = {
            {type = "change-recipe-productivity", recipe = "mineral-water-crystalization", change = 0.1},
            {type = "change-recipe-productivity", recipe = "slurry-filtering-1", change = 0.1},
            {type = "change-recipe-productivity", recipe = "ferric-solution-filtering", change = 0.1},
            {type = "change-recipe-productivity", recipe = "cupric-solution-filtering", change = 0.1}
        },
        icons = {
            {icon = "__base__/graphics/icons/iron-ore.png", shift = {-1, -0}, scale = 2},
            {
              icon = "__core__/graphics/icons/technology/constants/constant-mining-productivity.png",
              icon_size = 128,
              scale = 0.5,
              shift = {50, 50}
            }
        },
        unit = {
            ingredients = {
                {"automation-science-pack", 1},
                {"logistic-science-pack", 1},
                {"chemical-science-pack", 1},
                {"production-science-pack", 1}
            },
            time = 60,
            count_formula = "1000*(L-2)"
        },
        prerequisites = {
            "ore-productivity-3"
        },
        max_level = "infinite"
    },
    {
        type = "technology",
        name = "titanium-processing",
        effects = {
            {type = "unlock-recipe", recipe = "titanium-powder"},
            {type = "unlock-recipe", recipe = "titanium-plate"},
            {type = "unlock-recipe", recipe = "titanium-ore"},
            {type = "unlock-recipe", recipe = "titanium-iron-mixture"},
            {type = "unlock-recipe", recipe = "titansteel-plate"}
        },
        icon = "__oceanblock__/graphics/icons/titanium-processing.png",
        icon_size = 256,
        unit = {
            ingredients = {
                {"automation-science-pack", 1},
                {"logistic-science-pack", 1},
                {"chemical-science-pack", 1}
            },
            time = 30,
            count = 250
        },
        prerequisites = {
            "chemical-science-pack",
            "advanced-material-processing"
        }
    },
    {
        type = "technology",
        name = "titanium-productivity-1",
        effects = {
            {type = "change-recipe-productivity", recipe = "titanium-ore", change = 0.1}
        },
        icons = {
            {icon = "__oceanblock__/graphics/icons/titanium-ore.png", shift = {-1, -0}, scale = 2},
            {
              icon = "__core__/graphics/icons/technology/constants/constant-mining-productivity.png",
              icon_size = 128,
              scale = 0.5,
              shift = {50, 50}
            }
        },
        unit = {
            ingredients = {
                {"automation-science-pack", 1},
                {"logistic-science-pack", 1},
                {"chemical-science-pack", 1},
                {"production-science-pack", 1},
                {"utility-science-pack", 1}
            },
            time = 60,
            count_formula = "5000*(L^2)"
        },
        prerequisites = {
            "ore-productivity-3",
            "titanium-processing",
            "utility-science-pack"
        },
        max_level = "infinite"
    }
})