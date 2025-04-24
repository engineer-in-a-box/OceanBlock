data:extend({
    {
        type = "item-subgroup",
        name = "oceanblock-aquilo",
        group = "oceanblock",
        order = "g[planet]-c[aquilo]"
    },
    {
        type = "recipe",
        name = "aquilo-air-separation",
        results = {
            {type = "fluid", name = "fluorine", amount = 100},
            {type = "fluid", name = "nitrogen", amount = 100},
            {type = "fluid", name = "oxygen", amount = 100}
        },
        energy_required = 1,
        category = "cryogenics",
        icons = {
            {icon = "__Krastorio2Assets__/icons/fluids/oxygen.png", icon_size = 64, shift = {12, 12}},
            {icon = "__space-age__/graphics/icons/fluid/fluorine.png", icon_size = 64, shift = {0, -6}},
            {icon = "__Krastorio2Assets__/icons/fluids/nitrogen.png", icon_size = 64, shift = {-12, 12}}
        },
        subgroup = "oceanblock-aquilo",
        surface_conditions = {
            {property = "pressure", min = 300, max = 300}
        },
        enabled = false
    }
})

table.insert(data.raw["recipe"]["ammoniacal-solution-separation"].results, {type = "fluid", name = "lithium-brine", amount = 20})