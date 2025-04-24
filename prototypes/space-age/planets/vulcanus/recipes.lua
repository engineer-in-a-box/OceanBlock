data:extend({
    {
        type = "item-subgroup",
        name = "oceanblock-vulcanus",
        group = "oceanblock",
        order = "g[planet]-a[vulcanus]"
    },
    {
        type = "recipe",
        name = "vulcanus-scavenging",
        results = {
            {type = "item", name = "iron-ore", probability = 0.1, amount = 1},
            {type = "item", name = "copper-ore", probability = 0.075, amount = 1},
            {type = "item", name = "stone", probability = 0.15, amount = 1},
            {type = "item", name = "coal", probability = 0.02, amount = 1},
            {type = "item", name = "tungsten-ore", probability = 0.08, amount = 1}
        },
        energy_required = 0.5,
        category = "oceanblock-handcrafting",
        icons = {
            {icon = "__oceanblock__/graphics/icons/recycling.png"},
            {icon = "__space-age__/graphics/icons/vulcanus.png", scale = 0.4},
            {icon = "__oceanblock__/graphics/icons/recycling-top.png"}
        },
        icon_size = 64,
        subgroup = "oceanblock-scavenging",
        surface_conditions = {
            {property = "pressure", min = 4000, max = 4000}
        },
        enabled = false
    },
    {
        type = "recipe",
        name = "stone-from-lava",
        ingredients = {
            {type = "fluid", name = "lava", amount = 500},
            {type = "item", name = "calcite", amount = 1}
        },
        results = {
            {type = "item", name = "stone", amount = 50}
        },
        energy_required = 16,
        category = "metallurgy",
        subgroup = "oceanblock-vulcanus",
        icon = "__oceanblock__/graphics/icons/lava-demineralization.png",
        show_amount_in_title = false,
        allow_productivity = true,
        enabled = false
    },
    {
        type = "recipe",
        name = "tungstic-acid",
        ingredients = {
            {type = "item", name = "calcite", amount = 1},
            {type = "fluid", name = "lava", amount = 500},
            {type = "fluid", name = "sulfuric-acid", amount = 500}
        },
        results = {
            {type = "item", name = "tungstic-acid", amount = 1},
            {type = "item", name = "stone", amount = 25},
            {type = "item", name = "sulfur", amount = 12, ignored_by_productivity = 12},
            {type = "fluid", name = "molten-iron", amount = 100},
            {type = "fluid", name = "molten-copper", amount = 120}
        },
        main_product = "tungstic-acid",
        energy_required = 12,
        category = "metallurgy",
        allow_productivity = true,
        subgroup = "oceanblock-vulcanus",
        enabled = false
    },
    {
        type = "recipe",
        name = "tungsten-ore",
        ingredients = {
            {type = "item", name = "tungstic-acid", amount = 5},
            {type = "item",  name = "iron-stick", amount = 1},
            {type = "fluid", name = "cupric-solution", amount = 50}
        },
        results = {
            {type = "item", name = "tungsten-ore", amount = 1},
            {type = "item", name = "copper-ore", amount = 2},
            {type = "fluid", name = "water", amount = 25}
        },
        main_product = "tungsten-ore",
        energy_required = 7.5,
        category = "centrifuging",
        allow_productivity = true,
        subgroup = "oceanblock-vulcanus",
        enabled = false
    },
    {
        type = "recipe",
        name = "vulcanus-air-separation",
        results = {
            {type = "fluid", name = "sulfuric-acid", amount = 100},
            {type = "fluid", name = "nitric-acid", amount = 100}
        },
        energy_required = 1,
        category = "chemistry",
        icons = {
            {icon = "__base__/graphics/icons/fluid/sulfuric-acid.png", icon_size = 64, shift = {8, 8}},
            {icon = "__Krastorio2Assets__/icons/fluids/nitric-acid.png", icon_size = 64, shift = {-8, -8}}
        },
        subgroup = "oceanblock-vulcanus",
        surface_conditions = {
            {property = "pressure", min = 4000, max = 4000}
        },
        enabled = false
    },
    {
        type = "recipe",
        name = "casting-titansteel-plate",
        ingredients = {
            {type = "item", name = "titanium-powder", amount = 3},
            {type = "fluid", name = "molten-iron", amount = 30},
            {type = "fluid", name = "nitric-acid", amount = 1.5}
        },
        results = {
            {type = "item", name = "titansteel-plate", amount = 1}
        },
        energy_required = 3.2,
        category = "metallurgy",
        icon = "__oceanblock__/graphics/icons/casting-titansteel-plate.png",
        subgroup = "oceanblock-vulcanus",
        enabled = false
    }
})

local recipes = data.raw["recipe"]
recipes["molten-iron-from-lava"].hidden = true
recipes["molten-copper-from-lava"].hidden = true
recipes["foundation"].ingredients = {
    {type = "item", name = "stone", amount = 20},
    {type = "item", name = "tungsten-plate", amount = 4},
    {type = "fluid", name = "molten-copper", amount = 20}
}
recipes["foundation"].category = "metallurgy"