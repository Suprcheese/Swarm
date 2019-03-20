require "util"
require "config"

script.on_init(function() On_Init() end)
script.on_configuration_changed(function() On_Init() end)

function On_Init()
	if not global.tick then
		global.tick = game.tick
	end
	if not global.swarmQueue then
		global.swarmQueue = {}
	end

	if not global.evoFactorFloor then
		if game.forces["enemy"].evolution_factor > 0.995 then
			global.evoFactorFloor = 10
		else
			global.evoFactorFloor = math.floor(game.forces["enemy"].evolution_factor * 10)
		end
		global.tick = global.tick + 1800
	end
	if game.entity_prototypes["young-berserk-biter"] then -- Does anyone still use Dytech...?
		global.DytechDetected = true
	else
		global.DytechDetected = false
	end
	if game.entity_prototypes["small-biter-Mk2"] then
		global.NatEvoDetected = true
	else
		global.NatEvoDetected = false
	end
	if game.entity_prototypes["bob-leviathan-biter"] then
		global.BobsEnemiesDetected = true
	else
		global.BobsEnemiesDetected = false
	end
	populateTables()
end

script.on_event(defines.events.on_entity_died, function(event)
	if not global.subEnemyNameTable[event.entity.name] then
		return
	end
	if global.tick < event.tick then
		if game.forces["enemy"].evolution_factor > 0.995 then
			global.evoFactorFloor = 10
		else
			global.evoFactorFloor = math.floor(game.forces["enemy"].evolution_factor * 10)
		end
		global.tick = global.tick + 1800
	end
	if (settings.global["units-fragment-units"].value and event.entity.type == "unit") or (settings.global["spawners-fragment-units"].value and event.entity.type == "unit-spawner") then
		queueSubEnemies(event.entity)
	end
end)

function queueSubEnemies(enemy)
	local subEnemyName = global.subEnemyNameTable[enemy.name]
	if global.subEnemyNameTable[enemy.name][global.evoFactorFloor] then
		subEnemyName = global.subEnemyNameTable[enemy.name][global.evoFactorFloor]
	end
	local number = global.subEnemyNumberTable[enemy.name][global.evoFactorFloor]
	for i = 1, number do
		table.insert(
			global.swarmQueue,
			{
				surface = enemy.surface,
				name = subEnemyName,
				position = enemy.position,
				force = enemy.force,
				isspawner = isSpawner(enemy)
			}
		)
		-- local subEnemyPosition = enemy.surface.find_non_colliding_position(subEnemyName, enemy.position, 2 + isSpawner(enemy), 0.5)
		-- if subEnemyPosition then
		-- 	enemy.surface.create_entity({name = subEnemyName, position = subEnemyPosition, force = enemy.force})
		-- end
	end
end

script.on_event(defines.events.on_tick,	function(event)
	if #(global.swarmQueue) > 0 then
		local spawnstodo = math.min(settings.global["spawns-per-tick"].value, #(global.swarmQueue))
		for i = 1, spawnstodo do
			newEnemy = table.remove(global.swarmQueue, 1)
			local subEnemyPosition =
				newEnemy.surface.find_non_colliding_position(newEnemy.name, newEnemy.position, 2 + newEnemy.isspawner, 0.5)
			if subEnemyPosition then
				newEnemy.surface.create_entity({name = newEnemy.name, position = subEnemyPosition, force = newEnemy.force})
			else
				table.insert(
					global.swarmQueue,
					{
						surface = newEnemy.surface,
						name = newEnemy.name,
						position = newEnemy.position,
						force = newEnemy.force,
						isspawner = newEnemy.isspawner
					}
				) -- we'll try spawning this again later!
			end
		end
	end
end)

function spawnSubEnemies(enemy)
	local enemyName = enemy.name
	local subEnemyName = global.subEnemyNameTable[enemyName]
	if global.subEnemyNameTable[enemyName][global.evoFactorFloor] then
		subEnemyName = global.subEnemyNameTable[enemyName][global.evoFactorFloor]
	end
	local number = global.subEnemyNumberTable[enemyName][global.evoFactorFloor]
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
