for _, planet in pairs(data.raw["planet"]) do
    if planet.asteroid_spawn_definitions then
        for k, asteroid_spawn in pairs(planet.asteroid_spawn_definitions) do
            local a = string.find(asteroid_spawn.asteroid, "metallic-asteroid", 1, true)
            local b = string.find(asteroid_spawn.asteroid, "carbonic-asteroid", 1, true)
            local c = string.find(asteroid_spawn.asteroid, "oxide-asteroid", 1, true)
            if a then
                table.remove(planet.asteroid_spawn_definitions, k)
            elseif b then
                asteroid_spawn.probability = asteroid_spawn.probability / 2
            elseif c then
                asteroid_spawn.probability = asteroid_spawn.probability * 5
            end
        end
    else
        log("planet " .. planet.name .. " has no asteroid spawn definitions")
    end
end

for _, location in pairs(data.raw["space-location"]) do
    if location.asteroid_spawn_definitions then
        for k, asteroid_spawn in pairs(location.asteroid_spawn_definitions) do
            local a = string.find(asteroid_spawn.asteroid, "metallic-asteroid", 1, true)
            local b = string.find(asteroid_spawn.asteroid, "carbonic-asteroid", 1, true)
            local c = string.find(asteroid_spawn.asteroid, "oxide-asteroid", 1, true)
            if a then
                table.remove(location.asteroid_spawn_definitions, k)
            elseif b then
                asteroid_spawn.probability = asteroid_spawn.probability / 2
            elseif c then
                asteroid_spawn.probability = asteroid_spawn.probability * 5
            end
        end
    else
        log("space location " .. location.name .. " has no asteroid spawn definitions")
    end
end

for _, connection in pairs(data.raw["space-connection"]) do
    if connection.asteroid_spawn_definitions then
        for k, asteroid_spawn in pairs(connection.asteroid_spawn_definitions) do
            local a = string.find(asteroid_spawn.asteroid, "metallic-asteroid", 1, true)
            local b = string.find(asteroid_spawn.asteroid, "carbonic-asteroid", 1, true)
            local c = string.find(asteroid_spawn.asteroid, "oxide-asteroid", 1, true)
            if a then
                table.remove(connection.asteroid_spawn_definitions, k)
            elseif b then
                for _, spawn_point in pairs(asteroid_spawn.spawn_points) do
                    spawn_point.probability = spawn_point.probability / 2
                end
            elseif c then
                for _, spawn_point in pairs(asteroid_spawn.spawn_points) do
                    spawn_point.probability = spawn_point.probability *5
                end
            end
        end
    else
        log("space location " .. connection.name .. " has no asteroid spawn definitions")
    end
end
log("planet-updates.lua successfully run")