data:extend({
    {
        type = "item",
        name = "sand",
        stack_size = 200,
        icon = "__Krastorio2Assets__/icons/items/sand.png",
        pictures = {
            {size = 64, filename = "__Krastorio2Assets__/icons/items/sand.png", scale = 0.5},
            {size = 64, filename = "__Krastorio2Assets__/icons/items/sand-1.png", scale = 0.5},
            {size = 64, filename = "__Krastorio2Assets__/icons/items/sand-2.png", scale = 0.5}
        },
        subgroup = "oceanblock-raw-material",
        order = "b[powder]-a[sand]"
    },
    {
        type = "item",
        name = "filter",
        stack_size = 25,
        icon = "__Krastorio2Assets__/icons/items/pollution-filter.png",
        subgroup = "oceanblock-intermediate-product"
    },
    {
        type = "item",
        name = "used-filter",
        stack_size = 25,
        icon = "__Krastorio2Assets__/icons/items/used-pollution-filter.png",
        subgroup = "oceanblock-intermediate-product"
    },
    {
        type = "item",
        name = "advanced-processing-unit",
        stack_size = 100,
        icon = "__oceanblock__/graphics/icons/advanced-processing-unit.png",
        subgroup = "oceanblock-intermediate-product",
        order = "bd"
    },
    {
        type = "item",
        name = "titanium-ore",
        stack_size = 50,
        icon = "__oceanblock__/graphics/icons/titanium-ore.png",
        pictures = {
            {size = 64, filename = "__oceanblock__/graphics/icons/titanium-ore.png", scale = 0.5},
            {size = 64, filename = "__oceanblock__/graphics/icons/titanium-ore-2.png", scale = 0.5},
            {size = 64, filename = "__oceanblock__/graphics/icons/titanium-ore-3.png", scale = 0.5},
            {size = 64, filename = "__oceanblock__/graphics/icons/titanium-ore-4.png", scale = 0.5}
        },
        subgroup = "oceanblock-raw-resource",
        order = "h[titanium-ore]"
    },
    {
        type = "item",
        name = "titanium-powder",
        stack_size = 200,
        icon = "__oceanblock__/graphics/icons/titanium-powder.png",
        subgroup = "oceanblock-raw-material",
        order = "b[powder]-b[titanium-powder]"
    },
    {
        type = "item",
        name = "titanium-plate",
        stack_size = 100,
        icon = "__oceanblock__/graphics/icons/titanium-plate.png",
        subgroup = "oceanblock-raw-material",
        order = "a[smelting]-d[titanium-plate]"
    },
    {
        type = "item",
        name = "titansteel-plate",
        stack_size = 100,
        icon = "__oceanblock__/graphics/icons/titansteel-plate.png",
        subgroup = "oceanblock-raw-material",
        order = "a[smelting]-e[titansteel-plate]"
    },
    {
        type = "item",
        name = "titanium-iron-mixture",
        stack_size = 200,
        icon = "__oceanblock__/graphics/icons/titanium-iron-mixture.png",
        subgroup = "oceanblock-raw-material",
        order = "b[powder]-c[titanium-iron-mixture]"
    },
    {
        type = "item-group",
        name = "oceanblock",
        icon = "__base__/graphics/icons/landfill.png",
        order = "f"
    },
    {
        type = "item-subgroup",
        name = "oceanblock-fluid-recipes",
        group = "oceanblock",
        order = "a"
    },
    {
        type = "item-subgroup",
        name = "oceanblock-fluid",
        group = "oceanblock",
        order = "b"
    },
    {
        type = "item-subgroup",
        name = "oceanblock-raw-resource",
        group = "oceanblock",
        order = "c"
    },
    {
        type = "item-subgroup",
        name = "oceanblock-raw-material",
        group = "oceanblock",
        order = "d"
    },
    {
        type = "item-subgroup",
        name = "oceanblock-intermediate-product",
        group = "oceanblock",
        order = "e"
    },
    {
        type = "item-subgroup",
        name = "oceanblock-scavenging",
        group = "oceanblock",
        order = "f"
    }
})

local items = data.raw["item"]

items["uranium-fuel-cell"].fuel_value = "5PJ"
items["uranium-fuel-cell"].stack_size = 200

items["nuclear-fuel"].fuel_value = "50GJ"
items["nuclear-fuel"].fuel_acceleration_multiplier = 3
items["nuclear-fuel"].fuel_top_speed_multiplier = 1.3

items["coal"].fuel_value = "24MJ"