local technologies = data.raw["technology"]

table.insert(technologies["automation"].effects, {type = "unlock-recipe", recipe = "chemical-plant"})
table.insert(technologies["automation"].effects, {type = "unlock-recipe", recipe = "electrolysis"})
table.insert(technologies["automation"].effects, {type = "unlock-recipe", recipe = "stone-crushing"})
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

table.insert(technologies["sulfur-processing"].effects, {type = "unlock-recipe", recipe = "sand-dissolving"})
table.insert(technologies["sulfur-processing"].effects, {type = "unlock-recipe", recipe = "slurry-filtering-1"})
table.insert(technologies["sulfur-processing"].effects, {type = "unlock-recipe", recipe = "slurry-filtering-2"})

table.insert(technologies["uranium-processing"].effects, {type = "unlock-recipe", recipe = "advanced-slurry-filtering-for-copper"})
table.insert(technologies["uranium-processing"].effects, {type = "unlock-recipe", recipe = "advanced-slurry-filtering-for-iron"})
table.insert(technologies["uranium-processing"].effects, {type = "unlock-recipe", recipe = "cupric-solution-filtering"})
table.insert(technologies["uranium-processing"].effects, {type = "unlock-recipe", recipe = "ferric-solution-filtering"})
table.insert(technologies["uranium-processing"].effects, {type = "unlock-recipe", recipe = "fish-oil"})
table.insert(technologies["uranium-processing"].effects, {type = "unlock-recipe", recipe = "sand-centrifuging"})
table.insert(technologies["uranium-processing"].effects, {type = "unlock-recipe", recipe = "uranium-hexasulfide"})
technologies["uranium-processing"].prerequisites = table.deepcopy(data.raw["technology"]["uranium-mining"].prerequisites)

technologies["uranium-mining"].hidden = true

table.insert(technologies["production-science-pack"].prerequisites, "uranium-processing")
table.insert(technologies["utility-science-pack"].prerequisites, "uranium-processing")

table.insert(technologies["speed-module-3"].prerequisites, "robotics")

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
technologies["mining-productivity-4"].hidden = true

technologies["landfill"].hidden = true

table.insert(technologies["processing-unit"].effects, {type = "unlock-recipe", recipe = "advanced-processing-unit"})
