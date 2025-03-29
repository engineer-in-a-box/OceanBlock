centrifuge_pipes = {
    north = {filename = "__core__/graphics/empty.png", size = 64},
    west = {filename = "__oceanblock__/graphics/entity/centrifuge/centrifuge-pipe-W.png", size = {39, 73}, scale = 0.5, shift = {0.79, 0.04}},
    south = {filename = "__oceanblock__/graphics/entity/centrifuge/centrifuge-pipe-S.png", size = {88, 61}, scale = 0.5, shift = {0, -1}},
    east = {filename = "__oceanblock__/graphics/entity/centrifuge/centrifuge-pipe-E.png", size = {42, 76}, scale = 0.5, shift = {-0.765, 0.04}}
}

data.raw["assembling-machine"]["centrifuge"].fluid_boxes = {
    {
        pipe_connections = {
            {flow_direction = "input", direction = 0, position = {0, -1}}
        },
        volume = 500,
        pipe_picture = centrifuge_pipes,
        production_type = "input",
        always_draw_covers = true
    },
    {
        pipe_connections = {
            {flow_direction = "output", direction = 4, position = {1, 0}}
        },
        volume = 500,
        pipe_picture = centrifuge_pipes,
        production_type = "output",
        always_draw_covers = true
    },
    {
        pipe_connections = {
            {flow_direction = "output", direction = 8, position = {0, 1}}
        },
        volume = 500,
        pipe_picture = centrifuge_pipes,
        production_type = "output",
        always_draw_covers = true
    },
    {
        pipe_connections = {
            {flow_direction = "output", direction = 12, position = {-1, 0}}
        },
        volume = 500,
        pipe_picture = centrifuge_pipes,
        production_type = "output",
        always_draw_covers = true
    }
}
data.raw["assembling-machine"]["centrifuge"].fluid_boxes_off_when_no_fluid_recipe = true
data.raw["offshore-pump"]["offshore-pump"].pumping_speed = 80
data.raw["assembling-machine"]["sg-greenhouse"].fixed_quality = "normal"
data.raw["assembling-machine"]["sg-greenhouse"].fixed_recipe = "sg-grow-wood"

data.raw["boiler"]["boiler"].energy_source.effectivity = 3
data.raw["boiler"]["boiler"].energy_consumption = "5.4MW"
data.raw["generator"]["steam-engine"].max_power_output = "2.7MW"
data.raw["generator"]["steam-engine"].fluid_usage_per_tick = 1.5
data.raw["underground-belt"]["express-underground-belt"].max_distance = 11
data.raw["electric-pole"]["medium-electric-pole"].supply_area_distance = 5.5
data.raw["electric-pole"]["medium-electric-pole"].maximum_wire_distance = 13
