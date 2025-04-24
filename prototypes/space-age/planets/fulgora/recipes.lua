data:extend({
    {
        type = "item-subgroup",
        name = "oceanblock-fulgora",
        group = "oceanblock",
        order = "g[planet]-b[fulgora]"
    },
    {
        type = "recipe",
        name = "heavy-oil-filtering",
        ingredients = {
            {type = "item", name = "filter", amount = 1},
            {type = "fluid", name = "heavy-oil", amount = 200}
        },
        results = {
            {type = "item", name = "used-filter", amount = 1, ignored_by_productivity = 1},
            {type = "item", name = "scrap", amount = 10},
            {type = "item", name = "iron-gear-wheel", amount = 1, probability = 0.12},
            {type = "item", name = "superconductor", amount = 1, probability = 0.005},
            {type = "item", name = "electronic-circuit", amount = 1, probability = 0.15},
            {type = "fluid", name = "holmium-solution", amount = 5},
            {type = "fluid", name = "electrolyte", amount = 1, probability = 0.75}
        },
        energy_required = 1,
        category = "chemistry",
        icons = {
            {icon = "__oceanblock__/graphics/icons/recycling.png"},
            {icon = "__base__/graphics/icons/fluid/heavy-oil.png", scale = 0.4},
            {icon = "__oceanblock__/graphics/icons/recycling-top.png"}
        },
        subgroup = "oceanblock-fulgora",
        surface_conditions = {
            {property = "magnetic-field", min = 99, max = 99}
        }
    },
    {
        type = "recipe",
        name = "fulgora-scavenging",
        results = {
            {type = "item", name = "scrap", probability = 0.75, amount = 1}
        },
        energy_required = 0.5,
        category = "oceanblock-handcrafting",
        icons = {
            {icon = "__oceanblock__/graphics/icons/recycling.png"},
            {icon = "__space-age__/graphics/icons/fulgora.png", scale = 0.4},
            {icon = "__oceanblock__/graphics/icons/recycling-top.png"}
        },
        icon_size = 64,
        subgroup = "oceanblock-scavenging",
        enabled = false,
        surface_conditions = {
            {property = "magnetic-field", min = 99, max = 99}
        }
    }
})