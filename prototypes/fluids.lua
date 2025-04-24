data:extend({
    {
        type = "fluid",
        name = "hydrogen",
        base_color = {0.95, 0.95, 0.95},
        flow_color = {0.95, 0.95, 0.95},
        gas_temperature = 0,
        default_temperature = 15,
        fuel_value = "5MJ",
        emissions_multiplier = 0.05,
        icon = "__Krastorio2Assets__/icons/fluids/hydrogen.png",
        icon_size = 64,
        auto_barrel = false,
        subgroup = "oceanblock-fluid"
    },
    {
        type = "fluid",
        name = "oxygen",
        base_color = {0.95, 0.5, 0.5},
        flow_color = {0.95, 0.5, 0.5},
        gas_temperature = 0,
        default_temperature = 15,
        icon = "__Krastorio2Assets__/icons/fluids/oxygen.png",
        icon_size = 64,
        auto_barrel = false,
        subgroup = "oceanblock-fluid"
    },
    {
        type = "fluid",
        name = "nitrogen",
        base_color = {0.5, 0.5, 0.95},
        flow_color = {0.5, 0.5, 0.95},
        gas_temperature = 0,
        default_temperature = 15,
        icon = "__Krastorio2Assets__/icons/fluids/nitrogen.png",
        icon_size = 64,
        auto_barrel = false,
        subgroup = "oceanblock-fluid"
    },
    {
        type = "fluid",
        name = "nitric-acid",
        base_color = {0.7, 0.6, 0.3},
        flow_color = {0.7, 0.6, 0.3},
        default_temperature = 15,
        icon = "__Krastorio2Assets__/icons/fluids/nitric-acid.png",
        icon_size = 64,
        subgroup = "oceanblock-fluid"
    },
    {
        type = "fluid",
        name = "mineral-water",
        base_color = {0.1, 0.1, 0.9},
        flow_color = {0.1, 0.1, 0.9},
        default_temperature = 15,
        icon = "__Krastorio2Assets__/icons/fluids/mineral-water.png",
        icon_size = 64,
        subgroup = "oceanblock-fluid"
    },
    {
        type = "fluid",
        name = "slurry",
        base_color = {0.5, 0.25, 0.0},
        flow_color = {0.5, 0.25, 0.0},
        default_temperature = 15,
        icon = "__Krastorio2Assets__/icons/fluids/dirty-water.png",
        icon_size = 64,
        subgroup = "oceanblock-fluid"
    },
    {
        type = "fluid",
        name = "ferric-solution",
        base_color = {0.5, 0.25, 0.0},
        flow_color = {0.5, 0.25, 0.0},
        default_temperature = 15,
        icons = {
            {icon = "__Krastorio2Assets__/icons/fluids/dirty-water.png", icon_size = 64},
            {icon = "__base__/graphics/icons/iron-ore.png", icon_size = 64, scale = 0.3, shift = {0, 8}}
        },
        subgroup = "oceanblock-fluid"
    },
    {
        type = "fluid",
        name = "cupric-solution",
        base_color = {0.5, 0.25, 0.0},
        flow_color = {0.5, 0.25, 0.0},
        default_temperature = 15,
        icons = {
            {icon = "__Krastorio2Assets__/icons/fluids/dirty-water.png", icon_size = 64},
            {icon = "__base__/graphics/icons/copper-ore.png", icon_size = 64, scale = 0.3, shift = {0, 8}}
        },
        subgroup = "oceanblock-fluid"
    },
    {
        type = "fluid",
        name = "uranium-hexasulfide",
        base_color = {0.8, 0.8, 0.1},
        flow_color = {0.8, 0.8, 0.1},
        default_temperature = 15,
        icons = {
            {icon = "__base__/graphics/icons/fluid/sulfuric-acid.png", icon_size = 64},
            {icon = "__base__/graphics/icons/uranium-ore.png", icon_size = 64, scale = 0.3, shift = {0, 8}}
        },
        subgroup = "oceanblock-fluid"
    }
})