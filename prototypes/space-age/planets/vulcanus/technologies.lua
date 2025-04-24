local tech = data.raw["technology"]
tech["foundation"].prerequisites = {"tungsten-steel"}
table.insert(tech["foundry"].effects, {type = "unlock-recipe", recipe = "stone-from-lava"})
table.insert(tech["foundry"].effects, {type = "unlock-recipe", recipe = "tungstic-acid"})
table.insert(tech["foundry"].effects, {type = "unlock-recipe", recipe = "tungsten-ore"})
table.insert(tech["foundry"].effects, {type = "unlock-recipe", recipe = "casting-titansteel-plate"})
table.insert(tech["planet-discovery-vulcanus"].effects, {type = "unlock-recipe", recipe = "vulcanus-scavenging"})
table.insert(tech["planet-discovery-vulcanus"].effects, {type = "unlock-recipe", recipe = "vulcanus-air-separation"})