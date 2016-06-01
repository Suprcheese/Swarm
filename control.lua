require "util"
require "defines"
require ("config")

script.on_init(function() On_Init() end)
script.on_configuration_changed(function() On_Init() end)

function On_Init()
	if not global.tick then
		global.tick = game.tick
	end
	if not global.evoFactorFloor then
		if game.evolution_factor > 0.995 then
			global.evoFactorFloor = 10
		else
			global.evoFactorFloor = math.floor(game.evolution_factor * 10)
		end
		global.tick = global.tick + 1800
	end
	if game.entity_prototypes["young-berserk-biter"] then
		global.DytechDetected = true
	else
		global.DytechDetected = false
	end
	if game.entity_prototypes["small-biter-Mk2"] then
		global.NatEvoDetected = true
	else
		global.NatEvoDetected = false
	end
	if game.entity_prototypes["bob-bigger-biter"] then
		global.BobsEnemies126Detected = true
	else
		global.BobsEnemies126Detected = false
	end
	if game.entity_prototypes["bob-leviathan-biter"] then
		global.BobsEnemies127Detected = true
	else
		global.BobsEnemies127Detected = false
	end
	populateTables()
end

script.on_event(defines.events.on_entity_died, function(event)
	if not global.subEnemyNameTable[event.entity.name] then
		return
	end
	if global.tick < event.tick then
		if game.evolution_factor > 0.995 then
			global.evoFactorFloor = 10
		else
			global.evoFactorFloor = math.floor(game.evolution_factor * 10)
		end
		global.tick = global.tick + 1800
	end
	if (unitsSpawnUnitsOnDeath and event.entity.type == "unit") or (spawnersSpawnUnitsOnDeath and event.entity.type == "unit-spawner") then
		spawnSubEnemies(event.entity)
	end
end)

function spawnSubEnemies(enemy)
	local subEnemyName = global.subEnemyNameTable[enemy.name]
	if global.subEnemyNameTable[enemy.name][global.evoFactorFloor] then
		subEnemyName = global.subEnemyNameTable[enemy.name][global.evoFactorFloor]
	end
	local number = global.subEnemyNumberTable[enemy.name][global.evoFactorFloor]
	for i = 1, number do
		local subEnemyPosition = enemy.surface.find_non_colliding_position(subEnemyName, enemy.position, 2 + isSpawner(enemy), 0.5)
		if subEnemyPosition then
			enemy.surface.create_entity({name = subEnemyName, position = subEnemyPosition, force = enemy.force})
		end
	end
end

function isSpawner(enemy)
	if enemy.type == "unit-spawner" then
		return 2
	else
		return 0
	end
end
