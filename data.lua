require("scripts.recipes")
require("scripts.fluids")
require("scripts.items")
require("scripts.entities")
require("scripts.technologies")

if mods["space-age"] then
    require("scripts.space-age.aquilo")
    require("scripts.space-age.fulgora")
    require("scripts.space-age.gleba")
    require("scripts.space-age.vulcanus")
    data.raw["recipe"]["rocket-part"].ingredients = {
        {type = "item", name = "processing-unit", amount = 2},
        {type = "item", name = "advanced-processing-unit", amount = 1},
        {type = "item", name = "rocket-fuel", amount = 2},
        {type = "item", name = "low-density-structure", amount = 2}
    }
    data.raw["recipe"]["rocket-part"].results = {
        {type = "item", name = "rocket-part", amount = 2}
    }
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