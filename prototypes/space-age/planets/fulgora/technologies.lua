local tech = data.raw["technology"]
table.insert(tech["recycling"].effects, {type = "unlock-recipe", recipe = "heavy-oil-filtering"})
table.insert(tech["planet-discovery-fulgora"].effects, {type = "unlock-recipe", recipe = "fulgora-scavenging"})