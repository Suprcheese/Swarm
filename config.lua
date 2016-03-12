-- BASIC
-- If true, spawners will release several units on death. Now you need to be more careful about attacking the spawners in biter bases.
spawnersSpawnUnitsOnDeath = true

-- If true, larger units will release several smaller units on death. Think you've fully defeated that behemoth? Think again, now it's spawned more biters on death!
-- Note that this has the potential to severely impact game performance if a large wave of biters crashes against your line of turrets.
-- The pathfinder can choke on the hundreds and hundreds of small biters that are spawned when the large biters die.
unitsSpawnUnitsOnDeath = true



-- ADVANCED
-- The result in the right column is the enemy that appears when the enemy in the left column dies. So if a behemoth spitter dies, medium spitters will appear.
-- For spawners, the current evolution factor rounded down to the nearest 10% (though 99% is rounded up to 100%) is used to look up which enemy appears.
-- So at 74% evo, a biter spawner will spawn big biters on death.
subEnemyNameTable = {}
-- Vanilla
subEnemyNameTable["medium-biter"] = 				"small-biter"
subEnemyNameTable["big-biter"] = 					"small-biter"
subEnemyNameTable["behemoth-biter"] = 				"medium-biter"

subEnemyNameTable["medium-spitter"] = 				"small-spitter"
subEnemyNameTable["big-spitter"] = 					"small-spitter"
subEnemyNameTable["behemoth-spitter"] = 			"medium-spitter"

subEnemyNameTable["biter-spawner"] = {}
subEnemyNameTable["biter-spawner"][0] = 			"small-biter"
subEnemyNameTable["biter-spawner"][1] = 			"small-biter"
subEnemyNameTable["biter-spawner"][2] = 			"small-biter"
subEnemyNameTable["biter-spawner"][3] = 			"medium-biter"
subEnemyNameTable["biter-spawner"][4] = 			"medium-biter"
subEnemyNameTable["biter-spawner"][5] = 			"medium-biter"
subEnemyNameTable["biter-spawner"][6] = 			"big-biter"
subEnemyNameTable["biter-spawner"][7] = 			"big-biter"
subEnemyNameTable["biter-spawner"][8] = 			"big-biter"
subEnemyNameTable["biter-spawner"][9] = 			"behemoth-biter"
subEnemyNameTable["biter-spawner"][10] =			"behemoth-biter"

subEnemyNameTable["spitter-spawner"] = {}
subEnemyNameTable["spitter-spawner"][0] = 			"small-spitter"
subEnemyNameTable["spitter-spawner"][1] = 			"small-spitter"
subEnemyNameTable["spitter-spawner"][2] = 			"small-spitter"
subEnemyNameTable["spitter-spawner"][3] = 			"medium-spitter"
subEnemyNameTable["spitter-spawner"][4] = 			"medium-spitter"
subEnemyNameTable["spitter-spawner"][5] = 			"medium-spitter"
subEnemyNameTable["spitter-spawner"][6] = 			"big-spitter"
subEnemyNameTable["spitter-spawner"][7] = 			"big-spitter"
subEnemyNameTable["spitter-spawner"][8] = 			"big-spitter"
subEnemyNameTable["spitter-spawner"][9] = 			"behemoth-spitter"
subEnemyNameTable["spitter-spawner"][10] =			"behemoth-spitter"

-- Bob's Enemies
subEnemyNameTable["bob-bigger-biter"] =				"medium-biter"
subEnemyNameTable["bob-biggest-biter"] =			"medium-biter"
subEnemyNameTable["bob-fire-biter"] =				"medium-biter"
subEnemyNameTable["bob-titan-biter"] =				"big-biter"
subEnemyNameTable["bob-behemoth-biter"] =			"big-biter"

subEnemyNameTable["bob-bigger-spitter"] =			"medium-spitter"
subEnemyNameTable["bob-biggest-spitter"] =			"medium-spitter"
subEnemyNameTable["bob-poison-spitter"] =			"medium-spitter"
subEnemyNameTable["bob-titan-spitter"] =			"big-spitter"
subEnemyNameTable["bob-behemoth-spitter"] =			"big-spitter"

subEnemyNameTable["bob-biter-spawner"] = {}
subEnemyNameTable["bob-biter-spawner"][0] = 		"small-biter"
subEnemyNameTable["bob-biter-spawner"][1] = 		"small-biter"
subEnemyNameTable["bob-biter-spawner"][2] = 		"small-biter"
subEnemyNameTable["bob-biter-spawner"][3] = 		"medium-biter"
subEnemyNameTable["bob-biter-spawner"][4] = 		"medium-biter"
subEnemyNameTable["bob-biter-spawner"][5] = 		"medium-biter"
subEnemyNameTable["bob-biter-spawner"][6] = 		"big-biter"
subEnemyNameTable["bob-biter-spawner"][7] = 		"bob-bigger-biter"
subEnemyNameTable["bob-biter-spawner"][8] = 		"bob-biggest-biter"
subEnemyNameTable["bob-biter-spawner"][9] = 		"bob-titan-biter"
subEnemyNameTable["bob-biter-spawner"][10] =		"bob-behemoth-biter"

subEnemyNameTable["bob-spitter-spawner"] = {}
subEnemyNameTable["bob-spitter-spawner"][0] = 		"small-spitter"
subEnemyNameTable["bob-spitter-spawner"][1] = 		"small-spitter"
subEnemyNameTable["bob-spitter-spawner"][2] = 		"small-spitter"
subEnemyNameTable["bob-spitter-spawner"][3] = 		"medium-spitter"
subEnemyNameTable["bob-spitter-spawner"][4] = 		"medium-spitter"
subEnemyNameTable["bob-spitter-spawner"][5] = 		"medium-spitter"
subEnemyNameTable["bob-spitter-spawner"][6] = 		"big-spitter"
subEnemyNameTable["bob-spitter-spawner"][7] = 		"bob-bigger-spitter"
subEnemyNameTable["bob-spitter-spawner"][8] = 		"bob-biggest-spitter"
subEnemyNameTable["bob-spitter-spawner"][9] = 		"bob-titan-spitter"
subEnemyNameTable["bob-spitter-spawner"][10] =		"bob-behemoth-spitter"

-- Dytech War
subEnemyNameTable["young-berserk-biter"] = 			"small-biter"
subEnemyNameTable["young-elder-biter"] = 			"small-biter"
subEnemyNameTable["young-king-biter"] = 			"medium-biter"
subEnemyNameTable["young-queen-biter"] = 			"medium-biter"
subEnemyNameTable["teen-berserk-biter"] = 			"medium-biter"
subEnemyNameTable["teen-elder-biter"] = 			"medium-biter"
subEnemyNameTable["teen-king-biter"] = 				"medium-biter"
subEnemyNameTable["teen-queen-biter"] = 			"medium-biter"
subEnemyNameTable["adult-berserk-biter"] = 			"medium-biter"
subEnemyNameTable["adult-elder-biter"] = 			"medium-biter"
subEnemyNameTable["adult-king-biter"] = 			"big-biter"
subEnemyNameTable["adult-queen-biter"] = 			"big-biter"

subEnemyNameTable["young-berserk-spitter"] = 		"small-spitter"
subEnemyNameTable["young-elder-spitter"] = 			"small-spitter"
subEnemyNameTable["young-king-spitter"] = 			"medium-spitter"
subEnemyNameTable["young-queen-spitter"] = 			"medium-spitter"
subEnemyNameTable["teen-berserk-spitter"] = 		"medium-spitter"
subEnemyNameTable["teen-elder-spitter"] = 			"medium-spitter"
subEnemyNameTable["teen-king-spitter"] = 			"medium-spitter"
subEnemyNameTable["teen-queen-spitter"] = 			"medium-spitter"
subEnemyNameTable["adult-berserk-spitter"] = 		"medium-spitter"
subEnemyNameTable["adult-elder-spitter"] = 			"medium-spitter"
subEnemyNameTable["adult-king-spitter"] = 			"big-spitter"
subEnemyNameTable["adult-queen-spitter"] = 			"big-spitter"

subEnemyNameTable["dyzilla-unit-1"] = 				"adult-berserk-biter"
subEnemyNameTable["dyzilla-unit-2"] = 				"adult-elder-biter"
subEnemyNameTable["dyzilla-unit-3"] = 				"adult-king-biter"
subEnemyNameTable["dyzilla-unit-4"] = 				"adult-queen-biter"

subEnemyNameTable["dyzilla-spawner"] = {}
subEnemyNameTable["dyzilla-spawner"][0] = 			"dyzilla-unit-1"
subEnemyNameTable["dyzilla-spawner"][1] = 			"dyzilla-unit-1"
subEnemyNameTable["dyzilla-spawner"][2] = 			"dyzilla-unit-1"
subEnemyNameTable["dyzilla-spawner"][3] = 			"dyzilla-unit-1"
subEnemyNameTable["dyzilla-spawner"][4] = 			"dyzilla-unit-2"
subEnemyNameTable["dyzilla-spawner"][5] = 			"dyzilla-unit-2"
subEnemyNameTable["dyzilla-spawner"][6] = 			"dyzilla-unit-2"
subEnemyNameTable["dyzilla-spawner"][7] = 			"dyzilla-unit-3"
subEnemyNameTable["dyzilla-spawner"][8] = 			"dyzilla-unit-3"
subEnemyNameTable["dyzilla-spawner"][9] = 			"dyzilla-unit-3"
subEnemyNameTable["dyzilla-spawner"][10] =			"dyzilla-unit-4"  -- Good luck with that!

if DytechDetected then
subEnemyNameTable["biter-spawner"][0] = 			"small-biter"
subEnemyNameTable["biter-spawner"][1] = 			"small-biter"
subEnemyNameTable["biter-spawner"][2] = 			"medium-biter"
subEnemyNameTable["biter-spawner"][3] = 			"big-biter"
subEnemyNameTable["biter-spawner"][4] = 			"young-berserk-biter"
subEnemyNameTable["biter-spawner"][5] = 			"young-king-biter"
subEnemyNameTable["biter-spawner"][6] = 			"teen-berserk-biter"
subEnemyNameTable["biter-spawner"][7] = 			"teen-king-biter"
subEnemyNameTable["biter-spawner"][8] = 			"adult-berserk-biter"
subEnemyNameTable["biter-spawner"][9] = 			"adult-elder-biter"
subEnemyNameTable["biter-spawner"][10] =			"adult-queen-biter"
end

if DytechDetected then
subEnemyNameTable["spitter-spawner"][0] = 			"small-spitter"
subEnemyNameTable["spitter-spawner"][1] = 			"small-spitter"
subEnemyNameTable["spitter-spawner"][2] = 			"medium-spitter"
subEnemyNameTable["spitter-spawner"][3] = 			"big-spitter"
subEnemyNameTable["spitter-spawner"][4] = 			"young-berserk-spitter"
subEnemyNameTable["spitter-spawner"][5] = 			"young-king-spitter"
subEnemyNameTable["spitter-spawner"][6] = 			"teen-berserk-spitter"
subEnemyNameTable["spitter-spawner"][7] = 			"teen-king-spitter"
subEnemyNameTable["spitter-spawner"][8] = 			"adult-berserk-spitter"
subEnemyNameTable["spitter-spawner"][9] = 			"adult-elder-spitter"
subEnemyNameTable["spitter-spawner"][10] =			"adult-queen-spitter"
end

-- Natural Evolution Enemies
subEnemyNameTable["medium-biter-Mk2"] = 			"small-biter-Mk2"
subEnemyNameTable["medium-biter-Mk3"] = 			"small-biter-Mk3"
subEnemyNameTable["big-biter-Mk2"] = 				"small-biter-Mk3"
subEnemyNameTable["big-biter-Mk3"] = 				"small-biter-Mk3"
subEnemyNameTable["medium-spitter-Mk2"] = 			"small-spitter-Mk2"
subEnemyNameTable["medium-spitter-Mk3"] = 			"small-spitter-Mk3"
subEnemyNameTable["big-spitter-Mk2"] = 				"small-spitter-Mk3"
subEnemyNameTable["big-spitter-Mk3"] = 				"small-spitter-Mk3"

if NatEvoDetected then
subEnemyNameTable["biter-spawner"][0] = 			"small-biter"
subEnemyNameTable["biter-spawner"][1] = 			"small-biter-Mk2"
subEnemyNameTable["biter-spawner"][2] = 			"small-biter-Mk3"
subEnemyNameTable["biter-spawner"][3] = 			"medium-biter"
subEnemyNameTable["biter-spawner"][4] = 			"medium-biter-Mk2"
subEnemyNameTable["biter-spawner"][5] = 			"medium-biter-Mk3"
subEnemyNameTable["biter-spawner"][6] = 			"big-biter"
subEnemyNameTable["biter-spawner"][7] = 			"big-biter-Mk2"
subEnemyNameTable["biter-spawner"][8] = 			"big-biter-Mk3"
subEnemyNameTable["biter-spawner"][9] = 			"behemoth-biter"
subEnemyNameTable["biter-spawner"][10] =			"behemoth-biter"
end

if NatEvoDetected then
subEnemyNameTable["spitter-spawner"][0] = 			"small-spitter"
subEnemyNameTable["spitter-spawner"][1] = 			"small-spitter-Mk2"
subEnemyNameTable["spitter-spawner"][2] = 			"small-spitter-Mk3"
subEnemyNameTable["spitter-spawner"][3] = 			"medium-spitter"
subEnemyNameTable["spitter-spawner"][4] = 			"medium-spitter-Mk2"
subEnemyNameTable["spitter-spawner"][5] = 			"medium-spitter-Mk3"
subEnemyNameTable["spitter-spawner"][6] = 			"big-spitter"
subEnemyNameTable["spitter-spawner"][7] = 			"big-spitter-Mk2"
subEnemyNameTable["spitter-spawner"][8] = 			"big-spitter-Mk3"
subEnemyNameTable["spitter-spawner"][9] = 			"behemoth-spitter"
subEnemyNameTable["spitter-spawner"][10] =			"behemoth-spitter"
end

-- NUMBERS

-- The result in the right column is the number of enemies that appear when the enemy in the left column dies.
-- The current evolution factor rounded down to the nearest 10% is also used to look up which enemy appears.
subEnemyNumberTable = {}
-- Vanilla
subEnemyNumberTable["medium-biter"] = {}
subEnemyNumberTable["medium-biter"][0] = 			2	-- small
subEnemyNumberTable["medium-biter"][1] = 			2	-- small
subEnemyNumberTable["medium-biter"][2] = 			2	-- small
subEnemyNumberTable["medium-biter"][3] = 			2	-- small
subEnemyNumberTable["medium-biter"][4] = 			2	-- small
subEnemyNumberTable["medium-biter"][5] = 			2	-- small
subEnemyNumberTable["medium-biter"][6] = 			2	-- small
subEnemyNumberTable["medium-biter"][7] = 			2	-- small
subEnemyNumberTable["medium-biter"][8] = 			2	-- small
subEnemyNumberTable["medium-biter"][9] = 			3	-- small
subEnemyNumberTable["medium-biter"][10] =			3	-- small

subEnemyNumberTable["medium-spitter"] = 			subEnemyNumberTable["medium-biter"] -- Same numbers for spitters as biters of the same class

subEnemyNumberTable["big-biter"] = {}
subEnemyNumberTable["big-biter"][0] = 				5	-- small
subEnemyNumberTable["big-biter"][1] = 				5	-- small
subEnemyNumberTable["big-biter"][2] = 				5	-- small
subEnemyNumberTable["big-biter"][3] = 				5	-- small
subEnemyNumberTable["big-biter"][4] = 				5	-- small
subEnemyNumberTable["big-biter"][5] = 				5	-- small
subEnemyNumberTable["big-biter"][6] = 				5	-- small
subEnemyNumberTable["big-biter"][7] = 				5	-- small
subEnemyNumberTable["big-biter"][8] = 				5	-- small
subEnemyNumberTable["big-biter"][9] = 				5	-- small
subEnemyNumberTable["big-biter"][10] =				6	-- small

subEnemyNumberTable["big-spitter"] = 				subEnemyNumberTable["big-biter"]

subEnemyNumberTable["behemoth-biter"] = {}
subEnemyNumberTable["behemoth-biter"][0] = 			4	-- medium
subEnemyNumberTable["behemoth-biter"][1] = 			4	-- medium
subEnemyNumberTable["behemoth-biter"][2] = 			4	-- medium
subEnemyNumberTable["behemoth-biter"][3] = 			4	-- medium
subEnemyNumberTable["behemoth-biter"][4] = 			4	-- medium
subEnemyNumberTable["behemoth-biter"][5] = 			4	-- medium
subEnemyNumberTable["behemoth-biter"][6] = 			4	-- medium
subEnemyNumberTable["behemoth-biter"][7] = 			4	-- medium
subEnemyNumberTable["behemoth-biter"][8] = 			4	-- medium
subEnemyNumberTable["behemoth-biter"][9] = 			4	-- medium
subEnemyNumberTable["behemoth-biter"][10] =			4	-- medium

subEnemyNumberTable["behemoth-spitter"] = 			subEnemyNumberTable["behemoth-biter"]

subEnemyNumberTable["biter-spawner"] = {}
subEnemyNumberTable["biter-spawner"][0] = 			8    --small
subEnemyNumberTable["biter-spawner"][1] = 			8    --small
subEnemyNumberTable["biter-spawner"][2] = 			9    --small
subEnemyNumberTable["biter-spawner"][3] = 			5    --medium
subEnemyNumberTable["biter-spawner"][4] = 			6    --medium
subEnemyNumberTable["biter-spawner"][5] = 			7    --medium
subEnemyNumberTable["biter-spawner"][6] = 			3    --big
subEnemyNumberTable["biter-spawner"][7] = 			4    --big
subEnemyNumberTable["biter-spawner"][8] = 			5    --big
subEnemyNumberTable["biter-spawner"][9] = 			2    --behemoth
subEnemyNumberTable["biter-spawner"][10] =			2    --behemoth

subEnemyNumberTable["spitter-spawner"] = 			subEnemyNumberTable["biter-spawner"]

-- Bob's Enemies
subEnemyNumberTable["bob-bigger-biter"] = {}
subEnemyNumberTable["bob-bigger-biter"][0] = 		3	-- medium
subEnemyNumberTable["bob-bigger-biter"][1] = 		3	-- medium
subEnemyNumberTable["bob-bigger-biter"][2] = 		3	-- medium
subEnemyNumberTable["bob-bigger-biter"][3] = 		3	-- medium
subEnemyNumberTable["bob-bigger-biter"][4] = 		3	-- medium
subEnemyNumberTable["bob-bigger-biter"][5] = 		3	-- medium
subEnemyNumberTable["bob-bigger-biter"][6] = 		3	-- medium
subEnemyNumberTable["bob-bigger-biter"][7] = 		3	-- medium
subEnemyNumberTable["bob-bigger-biter"][8] = 		3	-- medium
subEnemyNumberTable["bob-bigger-biter"][9] = 		3	-- medium
subEnemyNumberTable["bob-bigger-biter"][10] =		3	-- medium

subEnemyNumberTable["bob-bigger-spitter"] =			subEnemyNumberTable["bob-bigger-biter"]

subEnemyNumberTable["bob-biggest-biter"] = {}
subEnemyNumberTable["bob-biggest-biter"][0] = 		4	-- medium
subEnemyNumberTable["bob-biggest-biter"][1] = 		4	-- medium
subEnemyNumberTable["bob-biggest-biter"][2] = 		4	-- medium
subEnemyNumberTable["bob-biggest-biter"][3] = 		4	-- medium
subEnemyNumberTable["bob-biggest-biter"][4] = 		4	-- medium
subEnemyNumberTable["bob-biggest-biter"][5] = 		4	-- medium
subEnemyNumberTable["bob-biggest-biter"][6] = 		4	-- medium
subEnemyNumberTable["bob-biggest-biter"][7] = 		4	-- medium
subEnemyNumberTable["bob-biggest-biter"][8] = 		4	-- medium
subEnemyNumberTable["bob-biggest-biter"][9] = 		4	-- medium
subEnemyNumberTable["bob-biggest-biter"][10] =		4	-- medium

subEnemyNumberTable["bob-fire-biter"] =				subEnemyNumberTable["bob-biggest-biter"]
subEnemyNumberTable["bob-biggest-spitter"] =		subEnemyNumberTable["bob-biggest-biter"]
subEnemyNumberTable["bob-poison-spitter"] =			subEnemyNumberTable["bob-biggest-biter"]

subEnemyNumberTable["bob-titan-biter"] = {}
subEnemyNumberTable["bob-titan-biter"][0] = 		2	-- big
subEnemyNumberTable["bob-titan-biter"][1] = 		2	-- big
subEnemyNumberTable["bob-titan-biter"][2] = 		2	-- big
subEnemyNumberTable["bob-titan-biter"][3] = 		2	-- big
subEnemyNumberTable["bob-titan-biter"][4] = 		2	-- big
subEnemyNumberTable["bob-titan-biter"][5] = 		2	-- big
subEnemyNumberTable["bob-titan-biter"][6] = 		2	-- big
subEnemyNumberTable["bob-titan-biter"][7] = 		2	-- big
subEnemyNumberTable["bob-titan-biter"][8] = 		2	-- big
subEnemyNumberTable["bob-titan-biter"][9] = 		2	-- big
subEnemyNumberTable["bob-titan-biter"][10] =		2	-- big

subEnemyNumberTable["bob-titan-spitter"] =			subEnemyNumberTable["bob-titan-biter"]

subEnemyNumberTable["bob-behemoth-biter"] = {}
subEnemyNumberTable["bob-behemoth-biter"][0] = 		3	-- big
subEnemyNumberTable["bob-behemoth-biter"][1] = 		3	-- big
subEnemyNumberTable["bob-behemoth-biter"][2] = 		3	-- big
subEnemyNumberTable["bob-behemoth-biter"][3] = 		3	-- big
subEnemyNumberTable["bob-behemoth-biter"][4] = 		3	-- big
subEnemyNumberTable["bob-behemoth-biter"][5] = 		3	-- big
subEnemyNumberTable["bob-behemoth-biter"][6] = 		3	-- big
subEnemyNumberTable["bob-behemoth-biter"][7] = 		3	-- big
subEnemyNumberTable["bob-behemoth-biter"][8] = 		3	-- big
subEnemyNumberTable["bob-behemoth-biter"][9] = 		3	-- big
subEnemyNumberTable["bob-behemoth-biter"][10] =		3	-- big

subEnemyNumberTable["bob-behemoth-spitter"] =		subEnemyNumberTable["bob-behemoth-biter"]

subEnemyNumberTable["bob-biter-spawner"] = {}
subEnemyNumberTable["bob-biter-spawner"][0] = 		8   -- small
subEnemyNumberTable["bob-biter-spawner"][1] = 		8   -- small
subEnemyNumberTable["bob-biter-spawner"][2] = 		9   -- small
subEnemyNumberTable["bob-biter-spawner"][3] = 		5   -- medium
subEnemyNumberTable["bob-biter-spawner"][4] = 		6   -- medium
subEnemyNumberTable["bob-biter-spawner"][5] = 		7   -- medium
subEnemyNumberTable["bob-biter-spawner"][6] = 		4   -- big
subEnemyNumberTable["bob-biter-spawner"][7] = 		4   -- bob-bigger
subEnemyNumberTable["bob-biter-spawner"][8] = 		4   -- bob-biggest
subEnemyNumberTable["bob-biter-spawner"][9] = 		2   -- bob-titan
subEnemyNumberTable["bob-biter-spawner"][10] =		2   -- bob-behemoth

subEnemyNumberTable["bob-spitter-spawner"] =		subEnemyNumberTable["bob-biter-spawner"]

-- Dytech War
subEnemyNumberTable["young-berserk-biter"] = {}
subEnemyNumberTable["young-berserk-biter"][0] =		3	-- small
subEnemyNumberTable["young-berserk-biter"][1] =		3	-- small
subEnemyNumberTable["young-berserk-biter"][2] =		3	-- small
subEnemyNumberTable["young-berserk-biter"][3] =		3	-- small
subEnemyNumberTable["young-berserk-biter"][4] =		3	-- small
subEnemyNumberTable["young-berserk-biter"][5] =		3	-- small
subEnemyNumberTable["young-berserk-biter"][6] =		3	-- small
subEnemyNumberTable["young-berserk-biter"][7] =		3	-- small
subEnemyNumberTable["young-berserk-biter"][8] =		3	-- small
subEnemyNumberTable["young-berserk-biter"][9] =		3	-- small
subEnemyNumberTable["young-berserk-biter"][10] =	3	-- small

subEnemyNumberTable["young-berserk-spitter"] = 		subEnemyNumberTable["young-berserk-biter"]

subEnemyNumberTable["young-elder-biter"] = {}
subEnemyNumberTable["young-elder-biter"][0] =		4	-- small
subEnemyNumberTable["young-elder-biter"][1] =		4	-- small
subEnemyNumberTable["young-elder-biter"][2] =		4	-- small
subEnemyNumberTable["young-elder-biter"][3] =		4	-- small
subEnemyNumberTable["young-elder-biter"][4] =		4	-- small
subEnemyNumberTable["young-elder-biter"][5] =		4	-- small
subEnemyNumberTable["young-elder-biter"][6] =		4	-- small
subEnemyNumberTable["young-elder-biter"][7] =		4	-- small
subEnemyNumberTable["young-elder-biter"][8] =		4	-- small
subEnemyNumberTable["young-elder-biter"][9] =		4	-- small
subEnemyNumberTable["young-elder-biter"][10] =		4	-- small

subEnemyNumberTable["young-elder-spitter"] = 		subEnemyNumberTable["young-elder-biter"]

subEnemyNumberTable["young-king-biter"] = {}
subEnemyNumberTable["young-king-biter"][0] =		2	-- medium
subEnemyNumberTable["young-king-biter"][1] =		2	-- medium
subEnemyNumberTable["young-king-biter"][2] =		2	-- medium
subEnemyNumberTable["young-king-biter"][3] =		2	-- medium
subEnemyNumberTable["young-king-biter"][4] =		2	-- medium
subEnemyNumberTable["young-king-biter"][5] =		2	-- medium
subEnemyNumberTable["young-king-biter"][6] =		2	-- medium
subEnemyNumberTable["young-king-biter"][7] =		2	-- medium
subEnemyNumberTable["young-king-biter"][8] =		2	-- medium
subEnemyNumberTable["young-king-biter"][9] =		2	-- medium
subEnemyNumberTable["young-king-biter"][10] =		2	-- medium

subEnemyNumberTable["young-king-spitter"] = 		subEnemyNumberTable["young-king-biter"]
subEnemyNumberTable["young-queen-biter"] = 			subEnemyNumberTable["young-king-biter"]
subEnemyNumberTable["young-queen-spitter"] = 		subEnemyNumberTable["young-king-biter"]
subEnemyNumberTable["teen-berserk-biter"] = 		subEnemyNumberTable["young-king-biter"]

subEnemyNumberTable["teen-elder-biter"] = {}
subEnemyNumberTable["teen-elder-biter"][0] =		3	-- medium
subEnemyNumberTable["teen-elder-biter"][1] =		3	-- medium
subEnemyNumberTable["teen-elder-biter"][2] =		3	-- medium
subEnemyNumberTable["teen-elder-biter"][3] =		3	-- medium
subEnemyNumberTable["teen-elder-biter"][4] =		3	-- medium
subEnemyNumberTable["teen-elder-biter"][5] =		3	-- medium
subEnemyNumberTable["teen-elder-biter"][6] =		3	-- medium
subEnemyNumberTable["teen-elder-biter"][7] =		3	-- medium
subEnemyNumberTable["teen-elder-biter"][8] =		3	-- medium
subEnemyNumberTable["teen-elder-biter"][9] =		3	-- medium
subEnemyNumberTable["teen-elder-biter"][10] =		3	-- medium

subEnemyNumberTable["teen-elder-spitter"] = 		subEnemyNumberTable["teen-elder-biter"]
subEnemyNumberTable["teen-king-biter"] = 			subEnemyNumberTable["teen-elder-biter"]
subEnemyNumberTable["teen-king-spitter"] = 			subEnemyNumberTable["teen-elder-biter"]
subEnemyNumberTable["teen-queen-biter"] = 			subEnemyNumberTable["teen-elder-biter"]
subEnemyNumberTable["teen-queen-spitter"] = 		subEnemyNumberTable["teen-elder-biter"]

subEnemyNumberTable["adult-berserk-biter"] = {}
subEnemyNumberTable["adult-berserk-biter"][0] =		4	-- medium
subEnemyNumberTable["adult-berserk-biter"][1] =		4	-- medium
subEnemyNumberTable["adult-berserk-biter"][2] =		4	-- medium
subEnemyNumberTable["adult-berserk-biter"][3] =		4	-- medium
subEnemyNumberTable["adult-berserk-biter"][4] =		4	-- medium
subEnemyNumberTable["adult-berserk-biter"][5] =		4	-- medium
subEnemyNumberTable["adult-berserk-biter"][6] =		4	-- medium
subEnemyNumberTable["adult-berserk-biter"][7] =		4	-- medium
subEnemyNumberTable["adult-berserk-biter"][8] =		4	-- medium
subEnemyNumberTable["adult-berserk-biter"][9] =		4	-- medium
subEnemyNumberTable["adult-berserk-biter"][10] =	4	-- medium

subEnemyNumberTable["adult-berserk-spitter"] = 		subEnemyNumberTable["adult-berserk-biter"]
subEnemyNumberTable["adult-elder-biter"] = 			subEnemyNumberTable["adult-berserk-biter"]
subEnemyNumberTable["adult-elder-spitter"] = 		subEnemyNumberTable["adult-berserk-biter"]

subEnemyNumberTable["adult-king-biter"] = {}
subEnemyNumberTable["adult-king-biter"][0] =		2	-- big
subEnemyNumberTable["adult-king-biter"][1] =		2	-- big
subEnemyNumberTable["adult-king-biter"][2] =		2	-- big
subEnemyNumberTable["adult-king-biter"][3] =		2	-- big
subEnemyNumberTable["adult-king-biter"][4] =		2	-- big
subEnemyNumberTable["adult-king-biter"][5] =		2	-- big
subEnemyNumberTable["adult-king-biter"][6] =		2	-- big
subEnemyNumberTable["adult-king-biter"][7] =		2	-- big
subEnemyNumberTable["adult-king-biter"][8] =		2	-- big
subEnemyNumberTable["adult-king-biter"][9] =		2	-- big
subEnemyNumberTable["adult-king-biter"][10] =		2	-- big

subEnemyNumberTable["adult-king-spitter"] = 		subEnemyNumberTable["adult-king-biter"]

subEnemyNumberTable["adult-queen-biter"] = {}
subEnemyNumberTable["adult-queen-biter"][0] =		3	-- big
subEnemyNumberTable["adult-queen-biter"][1] =		3	-- big
subEnemyNumberTable["adult-queen-biter"][2] =		3	-- big
subEnemyNumberTable["adult-queen-biter"][3] =		3	-- big
subEnemyNumberTable["adult-queen-biter"][4] =		3	-- big
subEnemyNumberTable["adult-queen-biter"][5] =		3	-- big
subEnemyNumberTable["adult-queen-biter"][6] =		3	-- big
subEnemyNumberTable["adult-queen-biter"][7] =		3	-- big
subEnemyNumberTable["adult-queen-biter"][8] =		3	-- big
subEnemyNumberTable["adult-queen-biter"][9] =		3	-- big
subEnemyNumberTable["adult-queen-biter"][10] =		3	-- big

subEnemyNumberTable["adult-queen-spitter"] = 		subEnemyNumberTable["adult-queen-biter"]

if DytechDetected then
subEnemyNumberTable["biter-spawner"][0] = 			8	--small
subEnemyNumberTable["biter-spawner"][1] = 			9	--small
subEnemyNumberTable["biter-spawner"][2] = 			6	--medium
subEnemyNumberTable["biter-spawner"][3] = 			5	--big
subEnemyNumberTable["biter-spawner"][4] = 			5	--young-berserk
subEnemyNumberTable["biter-spawner"][5] = 			2	--young-king
subEnemyNumberTable["biter-spawner"][6] = 			4	--teen-berserk
subEnemyNumberTable["biter-spawner"][7] = 			2	--teen-king
subEnemyNumberTable["biter-spawner"][8] = 			5	--adult-berserk
subEnemyNumberTable["biter-spawner"][9] = 			3	--adult-elder
subEnemyNumberTable["biter-spawner"][10] =			2	--adult-queen
end

if DytechDetected then
subEnemyNumberTable["spitter-spawner"][0] = 		8	--small
subEnemyNumberTable["spitter-spawner"][1] = 		9	--small
subEnemyNumberTable["spitter-spawner"][2] = 		6	--medium
subEnemyNumberTable["spitter-spawner"][3] = 		5	--big
subEnemyNumberTable["spitter-spawner"][4] = 		5	--young-berserk
subEnemyNumberTable["spitter-spawner"][5] = 		2	--young-king
subEnemyNumberTable["spitter-spawner"][6] = 		4	--teen-berserk
subEnemyNumberTable["spitter-spawner"][7] = 		2	--teen-king
subEnemyNumberTable["spitter-spawner"][8] = 		5	--adult-berserk
subEnemyNumberTable["spitter-spawner"][9] = 		3	--adult-elder
subEnemyNumberTable["spitter-spawner"][10] =		2	--adult-queen
end

subEnemyNumberTable["dyzilla-spawner"] = {}
subEnemyNumberTable["dyzilla-spawner"][0] = 		1   -- dyzilla-1
subEnemyNumberTable["dyzilla-spawner"][1] = 		1   -- dyzilla-1
subEnemyNumberTable["dyzilla-spawner"][2] = 		1   -- dyzilla-1
subEnemyNumberTable["dyzilla-spawner"][3] = 		1   -- dyzilla-1
subEnemyNumberTable["dyzilla-spawner"][4] = 		1   -- dyzilla-2
subEnemyNumberTable["dyzilla-spawner"][5] = 		1   -- dyzilla-2
subEnemyNumberTable["dyzilla-spawner"][6] = 		1   -- dyzilla-2
subEnemyNumberTable["dyzilla-spawner"][7] = 		1   -- dyzilla-3
subEnemyNumberTable["dyzilla-spawner"][8] = 		1   -- dyzilla-3
subEnemyNumberTable["dyzilla-spawner"][9] = 		1   -- dyzilla-3
subEnemyNumberTable["dyzilla-spawner"][10] =		1   -- dyzilla-4

subEnemyNumberTable["dyzilla-unit-1"] = {}
subEnemyNumberTable["dyzilla-unit-1"][0] =			2	-- berserk
subEnemyNumberTable["dyzilla-unit-1"][1] =			2	-- berserk
subEnemyNumberTable["dyzilla-unit-1"][2] =			2	-- berserk
subEnemyNumberTable["dyzilla-unit-1"][3] =			2	-- berserk
subEnemyNumberTable["dyzilla-unit-1"][4] =			2	-- berserk
subEnemyNumberTable["dyzilla-unit-1"][5] =			2	-- berserk
subEnemyNumberTable["dyzilla-unit-1"][6] =			2	-- berserk
subEnemyNumberTable["dyzilla-unit-1"][7] =			2	-- berserk
subEnemyNumberTable["dyzilla-unit-1"][8] =			2	-- berserk
subEnemyNumberTable["dyzilla-unit-1"][9] =			2	-- berserk
subEnemyNumberTable["dyzilla-unit-1"][10] =			2	-- berserk

subEnemyNumberTable["dyzilla-unit-2"] = {}
subEnemyNumberTable["dyzilla-unit-2"][0] =			2	-- elder
subEnemyNumberTable["dyzilla-unit-2"][1] =			2	-- elder
subEnemyNumberTable["dyzilla-unit-2"][2] =			2	-- elder
subEnemyNumberTable["dyzilla-unit-2"][3] =			2	-- elder
subEnemyNumberTable["dyzilla-unit-2"][4] =			2	-- elder
subEnemyNumberTable["dyzilla-unit-2"][5] =			2	-- elder
subEnemyNumberTable["dyzilla-unit-2"][6] =			2	-- elder
subEnemyNumberTable["dyzilla-unit-2"][7] =			2	-- elder
subEnemyNumberTable["dyzilla-unit-2"][8] =			2	-- elder
subEnemyNumberTable["dyzilla-unit-2"][9] =			2	-- elder
subEnemyNumberTable["dyzilla-unit-2"][10] =			2	-- elder

subEnemyNumberTable["dyzilla-unit-3"] = {}
subEnemyNumberTable["dyzilla-unit-3"][0] =			2	-- king
subEnemyNumberTable["dyzilla-unit-3"][1] =			2	-- king
subEnemyNumberTable["dyzilla-unit-3"][2] =			2	-- king
subEnemyNumberTable["dyzilla-unit-3"][3] =			2	-- king
subEnemyNumberTable["dyzilla-unit-3"][4] =			2	-- king
subEnemyNumberTable["dyzilla-unit-3"][5] =			2	-- king
subEnemyNumberTable["dyzilla-unit-3"][6] =			2	-- king
subEnemyNumberTable["dyzilla-unit-3"][7] =			2	-- king
subEnemyNumberTable["dyzilla-unit-3"][8] =			2	-- king
subEnemyNumberTable["dyzilla-unit-3"][9] =			2	-- king
subEnemyNumberTable["dyzilla-unit-3"][10] =			2	-- king

subEnemyNumberTable["dyzilla-unit-4"] = {}
subEnemyNumberTable["dyzilla-unit-4"][0] =			2	-- queen
subEnemyNumberTable["dyzilla-unit-4"][1] =			2	-- queen
subEnemyNumberTable["dyzilla-unit-4"][2] =			2	-- queen
subEnemyNumberTable["dyzilla-unit-4"][3] =			2	-- queen
subEnemyNumberTable["dyzilla-unit-4"][4] =			2	-- queen
subEnemyNumberTable["dyzilla-unit-4"][5] =			2	-- queen
subEnemyNumberTable["dyzilla-unit-4"][6] =			2	-- queen
subEnemyNumberTable["dyzilla-unit-4"][7] =			2	-- queen
subEnemyNumberTable["dyzilla-unit-4"][8] =			2	-- queen
subEnemyNumberTable["dyzilla-unit-4"][9] =			2	-- queen
subEnemyNumberTable["dyzilla-unit-4"][10] =			2	-- queen

-- Natural Evolution Enemies
subEnemyNumberTable["medium-biter-Mk2"] = {}
subEnemyNumberTable["medium-biter-Mk2"][0] = 		2	-- small-Mk2
subEnemyNumberTable["medium-biter-Mk2"][1] = 		2	-- small-Mk2
subEnemyNumberTable["medium-biter-Mk2"][2] = 		2	-- small-Mk2
subEnemyNumberTable["medium-biter-Mk2"][3] = 		2	-- small-Mk2
subEnemyNumberTable["medium-biter-Mk2"][4] = 		2	-- small-Mk2
subEnemyNumberTable["medium-biter-Mk2"][5] = 		2	-- small-Mk2
subEnemyNumberTable["medium-biter-Mk2"][6] = 		2	-- small-Mk2
subEnemyNumberTable["medium-biter-Mk2"][7] = 		2	-- small-Mk2
subEnemyNumberTable["medium-biter-Mk2"][8] = 		2	-- small-Mk2
subEnemyNumberTable["medium-biter-Mk2"][9] = 		3	-- small-Mk2
subEnemyNumberTable["medium-biter-Mk2"][10] =		3	-- small-Mk2

subEnemyNumberTable["medium-spitter-Mk2"] = 		subEnemyNumberTable["medium-biter-Mk2"]
subEnemyNumberTable["medium-biter-Mk3"] = 			subEnemyNumberTable["medium-biter-Mk2"]
subEnemyNumberTable["medium-spitter-Mk3"] = 		subEnemyNumberTable["medium-biter-Mk2"]

subEnemyNumberTable["big-biter-Mk2"] = {}
subEnemyNumberTable["big-biter-Mk2"][0] = 			5	-- small-Mk3
subEnemyNumberTable["big-biter-Mk2"][1] = 			5	-- small-Mk3
subEnemyNumberTable["big-biter-Mk2"][2] = 			5	-- small-Mk3
subEnemyNumberTable["big-biter-Mk2"][3] = 			5	-- small-Mk3
subEnemyNumberTable["big-biter-Mk2"][4] = 			5	-- small-Mk3
subEnemyNumberTable["big-biter-Mk2"][5] = 			5	-- small-Mk3
subEnemyNumberTable["big-biter-Mk2"][6] = 			5	-- small-Mk3
subEnemyNumberTable["big-biter-Mk2"][7] = 			5	-- small-Mk3
subEnemyNumberTable["big-biter-Mk2"][8] = 			5	-- small-Mk3
subEnemyNumberTable["big-biter-Mk2"][9] = 			5	-- small-Mk3
subEnemyNumberTable["big-biter-Mk2"][10] =			6	-- small-Mk3

subEnemyNumberTable["big-spitter-Mk2"] = 			subEnemyNumberTable["big-biter-Mk2"]
subEnemyNumberTable["big-biter-Mk3"] = 				subEnemyNumberTable["big-biter-Mk2"]
subEnemyNumberTable["big-spitter-Mk3"] = 			subEnemyNumberTable["big-biter-Mk2"]

