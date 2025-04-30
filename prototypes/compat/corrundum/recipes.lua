data:extend({
    {
        type = "recipe",
        name = "platinum-ore",
        ingredients = {
            {type = "item", name = "iron-stick", amount = 5},
            {type = "item", name = "copper-cable", amount = 10},
            {type = "item", name = "sand", amount = 30},
            {type = "item", name = "filter", amount = 10},
            {type = "fluid", name = "mixed-sulfate-solution", amount = 300}
        },
        results = {
            {type = "item", name = "platinum-ore", amount = 2},
            {type = "item", name = "used-filter", amount = 10, ignored_by_productivity = 10},
            {type = "fluid", name = "sulfur-dioxide", amount = 100}
        },
        allow_productivity = true,
        energy_required = 8,
        category = "centrifuging",
        main_product = "platinum-ore",
        crafting_machine_tint = {
            primary = {0.36, 0.25, 0}
        }
    },
    {
        type = "recipe",
        name = "stone-melting",
        ingredients = {
            {type = "item", name = "stone", amount = 100},
            {type = "item", name = "calcite", amount = 1}
        },
        results = {
            {type = "fluid", name = "lava", amount = 500}
        },
        allow_productivity = true,
        energy_required = 4,
        category = "metallurgy",
        subgroup = "oceanblock-vulcanus"
    }
})

data.raw["recipe"]["chalcopyrite-refining"].ingredients = {
    {type = "item", name = "sand", amount = 20},
    {type = "item", name = "calcium-sulfate", amount = 5},
    {type = "fluid", name = "sulfur-dioxide", amount = 100},
    {type = "fluid", name = "petroleum-gas", amount = 50}
}
