meld = require("meld")

local function require_folder(folder, filenames)
    for _, filename in pairs(filenames) do
        require(folder .. "." .. filename)
    end
end

require_folder("prototypes", {"recipes", "fluids", "items", "entities", "technologies"})
if mods["Age-of-Production"] then
    require_folder("prototypes.compat.Age-of-Production", {"recipes"})
end

data.raw["map-gen-presets"]["default"]["oceanblock-default"] = {
    order = "0",
    basic_settings = {
        autoplace_controls = {
            ["iron-ore"] = {size = 0},
            ["copper-ore"] = {size = 0},
            ["stone"] = {size = 0},
            ["coal"] = {size = 0},
            ["crude-oil"] = {size = 0},
            ["uranium-ore"] = {size = 0}
        },
        no_enemies_mode = true
    }
}

if mods["space-age"] then
    -- planets
    require_folder("prototypes.space-age.planets.aquilo", {"recipes", "technologies"})
    require_folder("prototypes.space-age.planets.fulgora", {"recipes", "technologies"})
    require_folder("prototypes.space-age.planets.vulcanus", {"vulcanus", "recipes", "technologies", "items"})
    -- other stuff
    data.raw["recipe"]["rocket-part"].ingredients = {
        {type = "item", name = "processing-unit", amount = 2},
        {type = "item", name = "advanced-processing-unit", amount = 1},
        {type = "item", name = "rocket-fuel", amount = 2},
        {type = "item", name = "low-density-structure", amount = 2}
    }
    data.raw["recipe"]["rocket-part"].results = {
        {type = "item", name = "rocket-part", amount = 2}
    }
    grow_wood = table.deepcopy(data.raw["recipe"]["sg-grow-wood"])
    grow_wood.name = "grow-wood-with-atmosphere"
    grow_wood.ingredients = {
        {type = "item", name = "sg-sapling", amount = 10},
        {type = "item", name = "carbon", amount = 10},
        {type = "fluid", name = "oxygen", amount = 1200}
    }
    data:extend({grow_wood})
    data.raw["recipe"]["sg-grow-wood"].surface_conditions = {
        {property = "pressure", min = 1000, max = 1000}
    }
    meld(data.raw["map-gen-presets"]["default"]["oceanblock-default"].basic_settings.autoplace_controls, {
        ["aquilo_crude_oil"] = {size = 0},
        ["calcite"] = {size = 0},
        ["fluorine_vent"] = {size = 0},
        ["gleba_stone"] = {size = 0},
        ["lithium_brine"] = {size = 0},
        ["scrap"] = {size = 0},
        ["sulfuric_acid_geyser"] = {size = 0},
        ["tungsten_ore"] = {size = 0},
        ["vulcanus_coal"] = {size = 0}
    })
end

table.insert(data.raw["character"]["character"].crafting_categories, "oceanblock-handcrafting")

-- entity modifications
data.raw["furnace"]["flare-stack"].crafting_speed = 20

-- autoplace
data.raw["tile"]["water"].autoplace = {
    probability_expression = "1",
    order = "zzzzz"
}
-- data.raw["planet"]["nauvis"].map_gen_settings.autoplace_controls = {
--     ["water"] = {}
-- }
-- data.raw["planet"]["nauvis"].map_gen_settings.autoplace_settings = {
--     ["tile"] = {
--         settings = {
--             ["landfill"] = {},
--             ["water"] = {}
--         }
--     }
-- }
-- 
-- for sub_type in pairs(defines.prototypes.entity) do
--     local sub_prototypes = data.raw[sub_type]
--     if sub_prototypes then
--         for _, prototype in pairs(sub_prototypes) do
--             prototype.autoplace = nil
--         end
--     end
-- end
-- for _, tile in pairs(data.raw.tile) do
--     tile.autoplace = nil
-- end
-- data.raw["autoplace-control"] = nil
