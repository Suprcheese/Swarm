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
		DytechDetected = true
	else
		DytechDetected = false
	end
	if game.entity_prototypes["small-biter-Mk2"] then
		NatEvoDetected = true
	else
		NatEvoDetected = false
	end
end

script.on_event(defines.events.on_entity_died, function(event)
	if event.entity.name == "small-biter" or event.entity.name == "small-spitter" or event.entity.name == "small-biter-Mk2" or event.entity.name == "small-spitter-Mk2" or event.entity.name == "small-biter-Mk3" or event.entity.name == "small-spitter-Mk3" then
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
	local subEnemyName = subEnemyNameTable[enemy.name]
	if not subEnemyName then
		return
	end
	if subEnemyNameTable[enemy.name][global.evoFactorFloor] then
		subEnemyName = subEnemyNameTable[enemy.name][global.evoFactorFloor]
	end
	local number = subEnemyNumberTable[enemy.name][global.evoFactorFloor]
	for i = 1, number do
		local subEnemyPosition = enemy.surface.find_non_colliding_position(subEnemyName, enemy.position, 2 + isSpawner(enemy), 0.5)
		if subEnemyPosition then
			enemy.surface.create_entity({name = subEnemyName, position = subEnemyPosition, force = game.forces.enemy})
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
