require("util")
require("__base__/prototypes/entity/pipecovers")
require("circuit-connector-sprites")
require("__base__/prototypes/entity/assemblerpipes")
local item_sounds = require("__base__.prototypes.item_sounds")

data:extend {
    {
        name = "quantum-computer",
        type = "lab",
        icon = "__oceanblock__/graphics/icons/quantum-computer.png",
        icon_size = 64,
        flags = { "placeable-neutral", "placeable-player", "player-creation" },
        minable = {
            mining_time = 0.5,
            results = { { type = "item", name = "quantum-computer", amount = 1 } }
        },
        max_health = 5000,
        corpse = "medium-remnants",
        dying_explosion = "medium-explosion",
        collision_box = { { -2.6, -2.6 }, { 2.6, 2.6 } },
        selection_box = { { -3, -3 }, { 3, 3 } },
        --map_color = ei_data.colors.assembler,
        researching_speed = 5,
        inputs = {
            "automation-science-pack",
            "logistic-science-pack",
            "military-science-pack",
            "chemical-science-pack",
            "production-science-pack",
            "utility-science-pack",
            "space-science-pack"
        },
        science_pack_drain_rate_percent = 25,
        energy_source =
        {
            type = "electric",
            usage_priority = "secondary-input",
            emissions_per_minute = { pollution = 0 }
        },
        energy_usage = "35MW",
        module_slots = 8,
        allowed_effects = { "consumption", "speed", "productivity", "pollution", "quality" },
        open_sound = { filename = "__base__/sound/open-close/lab-open.ogg", volume = 0.6 },
        close_sound = { filename = "__base__/sound/open-close/lab-close.ogg", volume = 0.6 },
        icons_positioning =
        {
            { inventory_index = defines.inventory.lab_modules, shift = { 0, 1.6 } },
            { inventory_index = defines.inventory.lab_input,   shift = { 0, 0.4 }, max_icons_per_row = 6, separation_multiplier = 1 / 1.1 }
        },
        on_animation =
        {
            layers =
            {                  
                {
                    filename = "__oceanblock__/graphics/entity/quantum-computer/quantum-computer-hr-animation-1.png",
                    width = 400,
                    height = 400,
                    frame_count = 60,
                    line_length = 8,
                    animation_speed = 0.5,
                    shift = util.by_pixel(0, 1.5),
                    scale = 0.5
                },         
                {
                    filename = "__oceanblock__/graphics/entity/quantum-computer/quantum-computer-hr-emission-1.png",
                    blend_mode = "additive",
                    draw_as_glow = true,
                    width = 400,
                    height = 400,
                    frame_count = 60,
                    line_length = 8,
                    animation_speed = 0.5,
                    shift = util.by_pixel(0, 0),
                    scale = 0.5
                },                
                {
                    filename = "__oceanblock__/graphics/entity/quantum-computer/quantum-computer-hr-shadow.png",
                    width = 700,
                    height = 600,
                    frame_count = 1,
                    line_length = 1,
                    repeat_count = 60,
                    animation_speed = 0.5,
                    shift = util.by_pixel(13, 11),
                    scale = 0.5,
                    draw_as_shadow = true
                },   

            }
        },
        off_animation =
        {
            layers =
            {
                {
                    filename = "__oceanblock__/graphics/entity/quantum-computer/quantum-computer-hr-animation-1.png",
                    width = 400,
                    height = 400,
                    animation_speed = 0.5,
                    shift = util.by_pixel(0, 1.5),
                    scale = 0.5
                },
                {
                    filename = "__oceanblock__/graphics/entity/quantum-computer/quantum-computer-hr-shadow.png",
                    width = 700,
                    height = 600,
                    animation_speed = 0.5,
                    shift = util.by_pixel(13, 11),
                    draw_as_shadow = true,
                    scale = 0.5
                }
            }
        },
        --[[{
                light = {
                type = "basic",
                intensity = 1,
                size = 15
                }
            }]]
        --},
        working_sound =
        {
            sound = { filename = "__oceanblock__/sound/fusion-generator.ogg", volume = 0.9},
            apparent_volume = 0.3,
        }
    },
    {
        type = "item",
        name = "quantum-computer",
        order = "z[aop-quantum-computer]",
        subgroup = "production-machine",
        pick_sound = item_sounds.reactor_inventory_pickup,
        drop_sound = item_sounds.reactor_inventory_move,
        icon = "__oceanblock__/graphics/icons/quantum-computer.png",
        icon_size = 64,
        stack_size = 1,
        weight = 1000000,
        place_result = "quantum-computer"
    },
    {
        type = "recipe",
        name = "quantum-computer",
        ingredients = {
            {type = "item", name = "lab", amount = 10},
            {type = "item", name = "titanium-plate", amount = 50},
            {type = "item", name = "processing-unit", amount = 25},
            {type = "item", name = "advanced-processing-unit", amount = 50},
            {type = "item", name = "iron-gear-wheel", amount = 50},
            {type = "fluid", name = "nitric-acid", amount = 200}
        },
        results = {
            {type = "item", name = "quantum-computer", amount = 1}
        },
        energy_required = 60,
        category = "crafting-with-fluid"
    }
}