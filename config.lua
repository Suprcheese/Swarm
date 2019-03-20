-- ADVANCED SETTINGS

-- The result in the right column is the enemy that appears when the enemy in the left column dies. So if a behemoth spitter dies, medium spitters will appear.
-- For spawners, the current evolution factor rounded down to the nearest 10% (though 99% is rounded up to 100%) is used to look up which enemy appears.
-- So at 74% evo, a biter spawner will spawn big biters on death.
function populateTables()
global.subEnemyNameTable = {}

-- Vanilla
global.subEnemyNameTable["medium-biter"] = 					"small-biter"
global.subEnemyNameTable["big-biter"] = 					"medium-biter"
global.subEnemyNameTable["behemoth-biter"] = 				"big-biter"

global.subEnemyNameTable["medium-spitter"] = 				"small-spitter"
global.subEnemyNameTable["big-spitter"] = 					"medium-spitter"
global.subEnemyNameTable["behemoth-spitter"] = 				"big-spitter"

global.subEnemyNameTable["biter-spawner"] = {}
global.subEnemyNameTable["biter-spawner"][0] = 				"small-biter"
global.subEnemyNameTable["biter-spawner"][1] = 				"small-biter"
global.subEnemyNameTable["biter-spawner"][2] = 				"small-biter"
global.subEnemyNameTable["biter-spawner"][3] = 				"medium-biter"
global.subEnemyNameTable["biter-spawner"][4] = 				"medium-biter"
global.subEnemyNameTable["biter-spawner"][5] = 				"medium-biter"
global.subEnemyNameTable["biter-spawner"][6] = 				"big-biter"
global.subEnemyNameTable["biter-spawner"][7] = 				"big-biter"
global.subEnemyNameTable["biter-spawner"][8] = 				"big-biter"
global.subEnemyNameTable["biter-spawner"][9] = 				"behemoth-biter"
global.subEnemyNameTable["biter-spawner"][10] =				"behemoth-biter"

global.subEnemyNameTable["spitter-spawner"] = {}
global.subEnemyNameTable["spitter-spawner"][0] = 			"small-spitter"
global.subEnemyNameTable["spitter-spawner"][1] = 			"small-spitter"
global.subEnemyNameTable["spitter-spawner"][2] = 			"small-spitter"
global.subEnemyNameTable["spitter-spawner"][3] = 			"medium-spitter"
global.subEnemyNameTable["spitter-spawner"][4] = 			"medium-spitter"
global.subEnemyNameTable["spitter-spawner"][5] = 			"medium-spitter"
global.subEnemyNameTable["spitter-spawner"][6] = 			"big-spitter"
global.subEnemyNameTable["spitter-spawner"][7] = 			"big-spitter"
global.subEnemyNameTable["spitter-spawner"][8] = 			"big-spitter"
global.subEnemyNameTable["spitter-spawner"][9] = 			"behemoth-spitter"
global.subEnemyNameTable["spitter-spawner"][10] =			"behemoth-spitter"

-- Bob's Enemies
if global.BobsEnemiesDetected then
global.subEnemyNameTable["bob-big-piercing-biter"] =		"big-biter"
global.subEnemyNameTable["bob-huge-acid-biter"] =			"bob-big-piercing-biter"
global.subEnemyNameTable["bob-huge-explosive-biter"] =		"bob-big-piercing-biter"
global.subEnemyNameTable["bob-giant-poison-biter"] =		"bob-huge-acid-biter"
global.subEnemyNameTable["bob-giant-fire-biter"] =			"bob-huge-explosive-biter"
global.subEnemyNameTable["bob-titan-biter"] =				"bob-giant-fire-biter"
global.subEnemyNameTable["bob-behemoth-biter"] =			"bob-titan-biter"
global.subEnemyNameTable["bob-leviathan-biter"] =			"bob-behemoth-biter"

global.subEnemyNameTable["behemoth-biter"] = 				"bob-titan-biter"
global.subEnemyNameTable["behemoth-spitter"] = 				"bob-titan-spitter"

global.subEnemyNameTable["bob-big-electric-spitter"] =		"big-spitter"
global.subEnemyNameTable["bob-huge-explosive-spitter"] =	"bob-big-electric-spitter"
global.subEnemyNameTable["bob-huge-acid-spitter"] =			"bob-big-electric-spitter"
global.subEnemyNameTable["bob-giant-fire-spitter"] =		"bob-huge-explosive-spitter"
global.subEnemyNameTable["bob-giant-poison-spitter"] =		"bob-huge-acid-spitter"
global.subEnemyNameTable["bob-titan-spitter"] =				"bob-giant-poison-spitter"
global.subEnemyNameTable["bob-behemoth-spitter"] =			"bob-titan-spitter"
global.subEnemyNameTable["bob-leviathan-spitter"] =			"bob-behemoth-spitter"

global.subEnemyNameTable["bob-biter-spawner"] = {}
global.subEnemyNameTable["bob-biter-spawner"][0] = 			"small-biter"
global.subEnemyNameTable["bob-biter-spawner"][1] = 			"small-biter"
global.subEnemyNameTable["bob-biter-spawner"][2] = 			"small-biter"
global.subEnemyNameTable["bob-biter-spawner"][3] = 			"medium-biter"
global.subEnemyNameTable["bob-biter-spawner"][4] = 			"medium-biter"
global.subEnemyNameTable["bob-biter-spawner"][5] = 			"medium-biter"
global.subEnemyNameTable["bob-biter-spawner"][6] = 			"big-biter"
global.subEnemyNameTable["bob-biter-spawner"][7] = 			"bob-big-piercing-biter"
global.subEnemyNameTable["bob-biter-spawner"][8] = 			"bob-giant-fire-biter"
global.subEnemyNameTable["bob-biter-spawner"][9] = 			"bob-titan-biter"
global.subEnemyNameTable["bob-biter-spawner"][10] =			"bob-leviathan-biter"

global.subEnemyNameTable["bob-spitter-spawner"] = {}
global.subEnemyNameTable["bob-spitter-spawner"][0] = 		"small-spitter"
global.subEnemyNameTable["bob-spitter-spawner"][1] = 		"small-spitter"
global.subEnemyNameTable["bob-spitter-spawner"][2] = 		"small-spitter"
global.subEnemyNameTable["bob-spitter-spawner"][3] = 		"medium-spitter"
global.subEnemyNameTable["bob-spitter-spawner"][4] = 		"medium-spitter"
global.subEnemyNameTable["bob-spitter-spawner"][5] = 		"medium-spitter"
global.subEnemyNameTable["bob-spitter-spawner"][6] = 		"big-spitter"
global.subEnemyNameTable["bob-spitter-spawner"][7] = 		"bob-big-electric-spitter"
global.subEnemyNameTable["bob-spitter-spawner"][8] = 		"bob-giant-fire-spitter"
global.subEnemyNameTable["bob-spitter-spawner"][9] = 		"bob-titan-spitter"
global.subEnemyNameTable["bob-spitter-spawner"][10] =		"bob-leviathan-spitter"
end

-- Dytech War; even though Dytech is long-dead
global.subEnemyNameTable["young-berserk-biter"] = 			"small-biter"
global.subEnemyNameTable["young-elder-biter"] = 			"small-biter"
global.subEnemyNameTable["young-king-biter"] = 				"medium-biter"
global.subEnemyNameTable["young-queen-biter"] = 			"medium-biter"
global.subEnemyNameTable["teen-berserk-biter"] = 			"medium-biter"
global.subEnemyNameTable["teen-elder-biter"] = 				"medium-biter"
global.subEnemyNameTable["teen-king-biter"] = 				"medium-biter"
global.subEnemyNameTable["teen-queen-biter"] = 				"medium-biter"
global.subEnemyNameTable["adult-berserk-biter"] = 			"medium-biter"
global.subEnemyNameTable["adult-elder-biter"] = 			"medium-biter"
global.subEnemyNameTable["adult-king-biter"] = 				"big-biter"
global.subEnemyNameTable["adult-queen-biter"] = 			"big-biter"

global.subEnemyNameTable["young-berserk-spitter"] = 		"small-spitter"
global.subEnemyNameTable["young-elder-spitter"] = 			"small-spitter"
global.subEnemyNameTable["young-king-spitter"] = 			"medium-spitter"
global.subEnemyNameTable["young-queen-spitter"] = 			"medium-spitter"
global.subEnemyNameTable["teen-berserk-spitter"] = 			"medium-spitter"
global.subEnemyNameTable["teen-elder-spitter"] = 			"medium-spitter"
global.subEnemyNameTable["teen-king-spitter"] = 			"medium-spitter"
global.subEnemyNameTable["teen-queen-spitter"] = 			"medium-spitter"
global.subEnemyNameTable["adult-berserk-spitter"] = 		"medium-spitter"
global.subEnemyNameTable["adult-elder-spitter"] = 			"medium-spitter"
global.subEnemyNameTable["adult-king-spitter"] = 			"big-spitter"
global.subEnemyNameTable["adult-queen-spitter"] = 			"big-spitter"

global.subEnemyNameTable["dyzilla-unit-1"] = 				"adult-berserk-biter"
global.subEnemyNameTable["dyzilla-unit-2"] = 				"adult-elder-biter"
global.subEnemyNameTable["dyzilla-unit-3"] = 				"adult-king-biter"
global.subEnemyNameTable["dyzilla-unit-4"] = 				"adult-queen-biter"

global.subEnemyNameTable["dyzilla-spawner"] = {}
global.subEnemyNameTable["dyzilla-spawner"][0] = 			"dyzilla-unit-1"
global.subEnemyNameTable["dyzilla-spawner"][1] = 			"dyzilla-unit-1"
global.subEnemyNameTable["dyzilla-spawner"][2] = 			"dyzilla-unit-1"
global.subEnemyNameTable["dyzilla-spawner"][3] = 			"dyzilla-unit-1"
global.subEnemyNameTable["dyzilla-spawner"][4] = 			"dyzilla-unit-2"
global.subEnemyNameTable["dyzilla-spawner"][5] = 			"dyzilla-unit-2"
global.subEnemyNameTable["dyzilla-spawner"][6] = 			"dyzilla-unit-2"
global.subEnemyNameTable["dyzilla-spawner"][7] = 			"dyzilla-unit-3"
global.subEnemyNameTable["dyzilla-spawner"][8] = 			"dyzilla-unit-3"
global.subEnemyNameTable["dyzilla-spawner"][9] = 			"dyzilla-unit-3"
global.subEnemyNameTable["dyzilla-spawner"][10] =			"dyzilla-unit-4"  -- Good luck with that!

if global.DytechDetected then
global.subEnemyNameTable["biter-spawner"][0] = 				"small-biter"
global.subEnemyNameTable["biter-spawner"][1] = 				"small-biter"
global.subEnemyNameTable["biter-spawner"][2] = 				"medium-biter"
global.subEnemyNameTable["biter-spawner"][3] = 				"big-biter"
global.subEnemyNameTable["biter-spawner"][4] = 				"young-berserk-biter"
global.subEnemyNameTable["biter-spawner"][5] = 				"young-king-biter"
global.subEnemyNameTable["biter-spawner"][6] = 				"teen-berserk-biter"
global.subEnemyNameTable["biter-spawner"][7] = 				"teen-king-biter"
global.subEnemyNameTable["biter-spawner"][8] = 				"adult-berserk-biter"
global.subEnemyNameTable["biter-spawner"][9] = 				"adult-elder-biter"
global.subEnemyNameTable["biter-spawner"][10] =				"adult-queen-biter"
end

if global.DytechDetected then
global.subEnemyNameTable["spitter-spawner"][0] = 			"small-spitter"
global.subEnemyNameTable["spitter-spawner"][1] = 			"small-spitter"
global.subEnemyNameTable["spitter-spawner"][2] = 			"medium-spitter"
global.subEnemyNameTable["spitter-spawner"][3] = 			"big-spitter"
global.subEnemyNameTable["spitter-spawner"][4] = 			"young-berserk-spitter"
global.subEnemyNameTable["spitter-spawner"][5] = 			"young-king-spitter"
global.subEnemyNameTable["spitter-spawner"][6] = 			"teen-berserk-spitter"
global.subEnemyNameTable["spitter-spawner"][7] = 			"teen-king-spitter"
global.subEnemyNameTable["spitter-spawner"][8] = 			"adult-berserk-spitter"
global.subEnemyNameTable["spitter-spawner"][9] = 			"adult-elder-spitter"
global.subEnemyNameTable["spitter-spawner"][10] =			"adult-queen-spitter"
end

-- Natural Evolution Enemies; Ugh it's updated and now I have to change everything
global.subEnemyNameTable["medium-biter-Mk2"] = 				"small-biter-Mk2"
global.subEnemyNameTable["medium-biter-Mk3"] = 				"small-biter-Mk3"
global.subEnemyNameTable["big-biter-Mk2"] = 				"small-biter-Mk3"
global.subEnemyNameTable["big-biter-Mk3"] = 				"small-biter-Mk3"
global.subEnemyNameTable["medium-spitter-Mk2"] = 			"small-spitter-Mk2"
global.subEnemyNameTable["medium-spitter-Mk3"] = 			"small-spitter-Mk3"
global.subEnemyNameTable["big-spitter-Mk2"] = 				"small-spitter-Mk3"
global.subEnemyNameTable["big-spitter-Mk3"] = 				"small-spitter-Mk3"

if global.NatEvoDetected then
global.subEnemyNameTable["biter-spawner"][0] = 				"small-biter"
global.subEnemyNameTable["biter-spawner"][1] = 				"small-biter-Mk2"
global.subEnemyNameTable["biter-spawner"][2] = 				"small-biter-Mk3"
global.subEnemyNameTable["biter-spawner"][3] = 				"medium-biter"
global.subEnemyNameTable["biter-spawner"][4] = 				"medium-biter-Mk2"
global.subEnemyNameTable["biter-spawner"][5] = 				"medium-biter-Mk3"
global.subEnemyNameTable["biter-spawner"][6] = 				"big-biter"
global.subEnemyNameTable["biter-spawner"][7] = 				"big-biter-Mk2"
global.subEnemyNameTable["biter-spawner"][8] = 				"big-biter-Mk3"
global.subEnemyNameTable["biter-spawner"][9] = 				"behemoth-biter"
global.subEnemyNameTable["biter-spawner"][10] =				"behemoth-biter"
end

if global.NatEvoDetected then
global.subEnemyNameTable["spitter-spawner"][0] = 			"small-spitter"
global.subEnemyNameTable["spitter-spawner"][1] = 			"small-spitter-Mk2"
global.subEnemyNameTable["spitter-spawner"][2] = 			"small-spitter-Mk3"
global.subEnemyNameTable["spitter-spawner"][3] = 			"medium-spitter"
global.subEnemyNameTable["spitter-spawner"][4] = 			"medium-spitter-Mk2"
global.subEnemyNameTable["spitter-spawner"][5] = 			"medium-spitter-Mk3"
global.subEnemyNameTable["spitter-spawner"][6] = 			"big-spitter"
global.subEnemyNameTable["spitter-spawner"][7] = 			"big-spitter-Mk2"
global.subEnemyNameTable["spitter-spawner"][8] = 			"big-spitter-Mk3"
global.subEnemyNameTable["spitter-spawner"][9] = 			"behemoth-spitter"
global.subEnemyNameTable["spitter-spawner"][10] =			"behemoth-spitter"
end

-- 5dim Battlefield
global.subEnemyNameTable["5d-medium-biter-laser"] = 		"5d-small-biter-laser"
global.subEnemyNameTable["5d-medium-biter-physical"] = 		"5d-small-biter-physical"
global.subEnemyNameTable["5d-medium-biter-explosive"] = 	"5d-small-biter-explosive"
global.subEnemyNameTable["5d-big-biter-laser"] = 			"5d-small-biter-laser"
global.subEnemyNameTable["5d-big-biter-physical"] = 		"5d-small-biter-physical"
global.subEnemyNameTable["5d-big-biter-explosive"] = 		"5d-small-biter-explosive"

global.subEnemyNameTable["5d-medium-spiter-rocket"] = 		"5d-small-spiter-rocket"
global.subEnemyNameTable["5d-medium-spiter-fire"] = 		"5d-small-spiter-fire"
global.subEnemyNameTable["5d-big-spiter-rocket"] = 			"5d-small-spiter-rocket"
global.subEnemyNameTable["5d-big-spiter-fire"] = 			"5d-small-spiter-fire"

-- Vampire Biters
global.subEnemyNameTable["medium-vampire"] = 				"small-vampire"
global.subEnemyNameTable["big-vampire"] = 					"small-vampire"

global.subEnemyNameTable["vampire-den"] = {}
global.subEnemyNameTable["vampire-den"][0] = 				"small-vampire"
global.subEnemyNameTable["vampire-den"][1] = 				"small-vampire"
global.subEnemyNameTable["vampire-den"][2] = 				"small-vampire"
global.subEnemyNameTable["vampire-den"][3] = 				"medium-vampire"
global.subEnemyNameTable["vampire-den"][4] = 				"medium-vampire"
global.subEnemyNameTable["vampire-den"][5] = 				"medium-vampire"
global.subEnemyNameTable["vampire-den"][6] = 				"big-vampire"
global.subEnemyNameTable["vampire-den"][7] = 				"big-vampire"
global.subEnemyNameTable["vampire-den"][8] = 				"big-vampire"
global.subEnemyNameTable["vampire-den"][9] = 				"big-vampire"
global.subEnemyNameTable["vampire-den"][10] =				"big-vampire"



-- NUMBERS

-- The result in the right column is the number of enemies that appear when the enemy in the left column dies.
-- The current evolution factor rounded down to the nearest 10% is also used to look up which enemy appears.
global.subEnemyNumberTable = {}
-- Vanilla
global.subEnemyNumberTable["medium-biter"] = {}
global.subEnemyNumberTable["medium-biter"][0] = 			3	-- small
global.subEnemyNumberTable["medium-biter"][1] = 			3	-- small
global.subEnemyNumberTable["medium-biter"][2] = 			3	-- small
global.subEnemyNumberTable["medium-biter"][3] = 			3	-- small
global.subEnemyNumberTable["medium-biter"][4] = 			3	-- small
global.subEnemyNumberTable["medium-biter"][5] = 			3	-- small
global.subEnemyNumberTable["medium-biter"][6] = 			3	-- small
global.subEnemyNumberTable["medium-biter"][7] = 			3	-- small
global.subEnemyNumberTable["medium-biter"][8] = 			3	-- small
global.subEnemyNumberTable["medium-biter"][9] = 			3	-- small
global.subEnemyNumberTable["medium-biter"][10] =			3	-- small

global.subEnemyNumberTable["medium-spitter"] = 				global.subEnemyNumberTable["medium-biter"] -- Same numbers for spitters as biters of the same class

global.subEnemyNumberTable["big-biter"] = {}
global.subEnemyNumberTable["big-biter"][0] = 				3	-- medium
global.subEnemyNumberTable["big-biter"][1] = 				3	-- medium
global.subEnemyNumberTable["big-biter"][2] = 				3	-- medium
global.subEnemyNumberTable["big-biter"][3] = 				3	-- medium
global.subEnemyNumberTable["big-biter"][4] = 				3	-- medium
global.subEnemyNumberTable["big-biter"][5] = 				3	-- medium
global.subEnemyNumberTable["big-biter"][6] = 				3	-- medium
global.subEnemyNumberTable["big-biter"][7] = 				3	-- medium
global.subEnemyNumberTable["big-biter"][8] = 				3	-- medium
global.subEnemyNumberTable["big-biter"][9] = 				3	-- medium
global.subEnemyNumberTable["big-biter"][10] =				3	-- medium

global.subEnemyNumberTable["big-spitter"] = 				global.subEnemyNumberTable["big-biter"]

global.subEnemyNumberTable["behemoth-biter"] = {}
global.subEnemyNumberTable["behemoth-biter"][0] = 			2	-- big
global.subEnemyNumberTable["behemoth-biter"][1] = 			2	-- big
global.subEnemyNumberTable["behemoth-biter"][2] = 			2	-- big
global.subEnemyNumberTable["behemoth-biter"][3] = 			2	-- big
global.subEnemyNumberTable["behemoth-biter"][4] = 			2	-- big
global.subEnemyNumberTable["behemoth-biter"][5] = 			2	-- big
global.subEnemyNumberTable["behemoth-biter"][6] = 			2	-- big
global.subEnemyNumberTable["behemoth-biter"][7] = 			2	-- big
global.subEnemyNumberTable["behemoth-biter"][8] = 			2	-- big
global.subEnemyNumberTable["behemoth-biter"][9] = 			2	-- big
global.subEnemyNumberTable["behemoth-biter"][10] =			2	-- big

global.subEnemyNumberTable["behemoth-spitter"] = 			global.subEnemyNumberTable["behemoth-biter"]

global.subEnemyNumberTable["biter-spawner"] = {}
global.subEnemyNumberTable["biter-spawner"][0] = 			8    --small
global.subEnemyNumberTable["biter-spawner"][1] = 			8    --small
global.subEnemyNumberTable["biter-spawner"][2] = 			9    --small
global.subEnemyNumberTable["biter-spawner"][3] = 			5    --medium
global.subEnemyNumberTable["biter-spawner"][4] = 			6    --medium
global.subEnemyNumberTable["biter-spawner"][5] = 			7    --medium
global.subEnemyNumberTable["biter-spawner"][6] = 			3    --big
global.subEnemyNumberTable["biter-spawner"][7] = 			4    --big
global.subEnemyNumberTable["biter-spawner"][8] = 			5    --big
global.subEnemyNumberTable["biter-spawner"][9] = 			2    --behemoth
global.subEnemyNumberTable["biter-spawner"][10] =			2    --behemoth

global.subEnemyNumberTable["spitter-spawner"] = 			global.subEnemyNumberTable["biter-spawner"]

-- Bob's Enemies
if global.BobsEnemiesDetected then
global.subEnemyNumberTable["bob-big-piercing-biter"] = {}
global.subEnemyNumberTable["bob-big-piercing-biter"][0] = 	3	-- big
global.subEnemyNumberTable["bob-big-piercing-biter"][1] = 	3	-- big
global.subEnemyNumberTable["bob-big-piercing-biter"][2] = 	3	-- big
global.subEnemyNumberTable["bob-big-piercing-biter"][3] = 	3	-- big
global.subEnemyNumberTable["bob-big-piercing-biter"][4] = 	3	-- big
global.subEnemyNumberTable["bob-big-piercing-biter"][5] = 	3	-- big
global.subEnemyNumberTable["bob-big-piercing-biter"][6] = 	3	-- big
global.subEnemyNumberTable["bob-big-piercing-biter"][7] = 	3	-- big
global.subEnemyNumberTable["bob-big-piercing-biter"][8] = 	3	-- big
global.subEnemyNumberTable["bob-big-piercing-biter"][9] = 	3	-- big
global.subEnemyNumberTable["bob-big-piercing-biter"][10] =	3	-- big

global.subEnemyNumberTable["bob-big-electric-spitter"] =	global.subEnemyNumberTable["bob-big-piercing-biter"]

global.subEnemyNumberTable["bob-huge-acid-biter"] = {}
global.subEnemyNumberTable["bob-huge-acid-biter"][0] = 		2	-- bob-big
global.subEnemyNumberTable["bob-huge-acid-biter"][1] = 		2	-- bob-big
global.subEnemyNumberTable["bob-huge-acid-biter"][2] = 		2	-- bob-big
global.subEnemyNumberTable["bob-huge-acid-biter"][3] = 		2	-- bob-big
global.subEnemyNumberTable["bob-huge-acid-biter"][4] = 		2	-- bob-big
global.subEnemyNumberTable["bob-huge-acid-biter"][5] = 		2	-- bob-big
global.subEnemyNumberTable["bob-huge-acid-biter"][6] = 		2	-- bob-big
global.subEnemyNumberTable["bob-huge-acid-biter"][7] = 		2	-- bob-big
global.subEnemyNumberTable["bob-huge-acid-biter"][8] = 		2	-- bob-big
global.subEnemyNumberTable["bob-huge-acid-biter"][9] = 		2	-- bob-big
global.subEnemyNumberTable["bob-huge-acid-biter"][10] =		2	-- bob-big

global.subEnemyNumberTable["bob-huge-explosive-biter"] =	global.subEnemyNumberTable["bob-huge-acid-biter"]
global.subEnemyNumberTable["bob-huge-explosive-spitter"] =	global.subEnemyNumberTable["bob-huge-acid-biter"]
global.subEnemyNumberTable["bob-huge-acid-spitter"] =		global.subEnemyNumberTable["bob-huge-acid-biter"]

global.subEnemyNumberTable["bob-giant-poison-biter"] = {}
global.subEnemyNumberTable["bob-giant-poison-biter"][0] = 	2	-- bob-huge
global.subEnemyNumberTable["bob-giant-poison-biter"][1] = 	2	-- bob-huge
global.subEnemyNumberTable["bob-giant-poison-biter"][2] = 	2	-- bob-huge
global.subEnemyNumberTable["bob-giant-poison-biter"][3] = 	2	-- bob-huge
global.subEnemyNumberTable["bob-giant-poison-biter"][4] = 	2	-- bob-huge
global.subEnemyNumberTable["bob-giant-poison-biter"][5] = 	2	-- bob-huge
global.subEnemyNumberTable["bob-giant-poison-biter"][6] = 	2	-- bob-huge
global.subEnemyNumberTable["bob-giant-poison-biter"][7] = 	2	-- bob-huge
global.subEnemyNumberTable["bob-giant-poison-biter"][8] = 	2	-- bob-huge
global.subEnemyNumberTable["bob-giant-poison-biter"][9] = 	2	-- bob-huge
global.subEnemyNumberTable["bob-giant-poison-biter"][10] =	2	-- bob-huge

global.subEnemyNumberTable["bob-giant-fire-biter"] =		global.subEnemyNumberTable["bob-giant-poison-biter"]
global.subEnemyNumberTable["bob-giant-fire-spitter"] =		global.subEnemyNumberTable["bob-giant-poison-biter"]
global.subEnemyNumberTable["bob-giant-poison-spitter"] =	global.subEnemyNumberTable["bob-giant-poison-biter"]

global.subEnemyNumberTable["bob-titan-biter"] = {}
global.subEnemyNumberTable["bob-titan-biter"][0] = 			2	-- bob-giant
global.subEnemyNumberTable["bob-titan-biter"][1] = 			2	-- bob-giant
global.subEnemyNumberTable["bob-titan-biter"][2] = 			2	-- bob-giant
global.subEnemyNumberTable["bob-titan-biter"][3] = 			2	-- bob-giant
global.subEnemyNumberTable["bob-titan-biter"][4] = 			2	-- bob-giant
global.subEnemyNumberTable["bob-titan-biter"][5] = 			2	-- bob-giant
global.subEnemyNumberTable["bob-titan-biter"][6] = 			2	-- bob-giant
global.subEnemyNumberTable["bob-titan-biter"][7] = 			2	-- bob-giant
global.subEnemyNumberTable["bob-titan-biter"][8] = 			2	-- bob-giant
global.subEnemyNumberTable["bob-titan-biter"][9] = 			2	-- bob-giant
global.subEnemyNumberTable["bob-titan-biter"][10] =			2	-- bob-giant

global.subEnemyNumberTable["bob-titan-spitter"] =			global.subEnemyNumberTable["bob-titan-biter"]

global.subEnemyNumberTable["bob-behemoth-biter"] = {}
global.subEnemyNumberTable["bob-behemoth-biter"][0] = 		2	-- bob-titan
global.subEnemyNumberTable["bob-behemoth-biter"][1] = 		2	-- bob-titan
global.subEnemyNumberTable["bob-behemoth-biter"][2] = 		2	-- bob-titan
global.subEnemyNumberTable["bob-behemoth-biter"][3] = 		2	-- bob-titan
global.subEnemyNumberTable["bob-behemoth-biter"][4] = 		2	-- bob-titan
global.subEnemyNumberTable["bob-behemoth-biter"][5] = 		2	-- bob-titan
global.subEnemyNumberTable["bob-behemoth-biter"][6] = 		2	-- bob-titan
global.subEnemyNumberTable["bob-behemoth-biter"][7] = 		2	-- bob-titan
global.subEnemyNumberTable["bob-behemoth-biter"][8] = 		2	-- bob-titan
global.subEnemyNumberTable["bob-behemoth-biter"][9] = 		2	-- bob-titan
global.subEnemyNumberTable["bob-behemoth-biter"][10] =		2	-- bob-titan

global.subEnemyNumberTable["bob-behemoth-spitter"] =		global.subEnemyNumberTable["bob-behemoth-biter"]

global.subEnemyNumberTable["bob-leviathan-biter"] = {}
global.subEnemyNumberTable["bob-leviathan-biter"][0] = 		2	-- bob-behemoth
global.subEnemyNumberTable["bob-leviathan-biter"][1] = 		2	-- bob-behemoth
global.subEnemyNumberTable["bob-leviathan-biter"][2] = 		2	-- bob-behemoth
global.subEnemyNumberTable["bob-leviathan-biter"][3] = 		2	-- bob-behemoth
global.subEnemyNumberTable["bob-leviathan-biter"][4] = 		2	-- bob-behemoth
global.subEnemyNumberTable["bob-leviathan-biter"][5] = 		2	-- bob-behemoth
global.subEnemyNumberTable["bob-leviathan-biter"][6] = 		2	-- bob-behemoth
global.subEnemyNumberTable["bob-leviathan-biter"][7] = 		2	-- bob-behemoth
global.subEnemyNumberTable["bob-leviathan-biter"][8] = 		2	-- bob-behemoth
global.subEnemyNumberTable["bob-leviathan-biter"][9] = 		2	-- bob-behemoth
global.subEnemyNumberTable["bob-leviathan-biter"][10] =		2	-- bob-behemoth

global.subEnemyNumberTable["bob-leviathan-spitter"] =		global.subEnemyNumberTable["bob-leviathan-biter"]

global.subEnemyNumberTable["bob-biter-spawner"] = {}
global.subEnemyNumberTable["bob-biter-spawner"][0] = 		8   -- small
global.subEnemyNumberTable["bob-biter-spawner"][1] = 		8   -- small
global.subEnemyNumberTable["bob-biter-spawner"][2] = 		9   -- small
global.subEnemyNumberTable["bob-biter-spawner"][3] = 		5   -- medium
global.subEnemyNumberTable["bob-biter-spawner"][4] = 		6   -- medium
global.subEnemyNumberTable["bob-biter-spawner"][5] = 		7   -- medium
global.subEnemyNumberTable["bob-biter-spawner"][6] = 		4   -- big
global.subEnemyNumberTable["bob-biter-spawner"][7] = 		4   -- bob-bigger
global.subEnemyNumberTable["bob-biter-spawner"][8] = 		4   -- bob-biggest
global.subEnemyNumberTable["bob-biter-spawner"][9] = 		2   -- bob-titan
global.subEnemyNumberTable["bob-biter-spawner"][10] =		2   -- bob-leviathan

global.subEnemyNumberTable["bob-spitter-spawner"] =			global.subEnemyNumberTable["bob-biter-spawner"]
end

-- Dytech War
global.subEnemyNumberTable["young-berserk-biter"] = {}
global.subEnemyNumberTable["young-berserk-biter"][0] =		3	-- small
global.subEnemyNumberTable["young-berserk-biter"][1] =		3	-- small
global.subEnemyNumberTable["young-berserk-biter"][2] =		3	-- small
global.subEnemyNumberTable["young-berserk-biter"][3] =		3	-- small
global.subEnemyNumberTable["young-berserk-biter"][4] =		3	-- small
global.subEnemyNumberTable["young-berserk-biter"][5] =		3	-- small
global.subEnemyNumberTable["young-berserk-biter"][6] =		3	-- small
global.subEnemyNumberTable["young-berserk-biter"][7] =		3	-- small
global.subEnemyNumberTable["young-berserk-biter"][8] =		3	-- small
global.subEnemyNumberTable["young-berserk-biter"][9] =		3	-- small
global.subEnemyNumberTable["young-berserk-biter"][10] =		3	-- small

global.subEnemyNumberTable["young-berserk-spitter"] = 		global.subEnemyNumberTable["young-berserk-biter"]

global.subEnemyNumberTable["young-elder-biter"] = {}
global.subEnemyNumberTable["young-elder-biter"][0] =		4	-- small
global.subEnemyNumberTable["young-elder-biter"][1] =		4	-- small
global.subEnemyNumberTable["young-elder-biter"][2] =		4	-- small
global.subEnemyNumberTable["young-elder-biter"][3] =		4	-- small
global.subEnemyNumberTable["young-elder-biter"][4] =		4	-- small
global.subEnemyNumberTable["young-elder-biter"][5] =		4	-- small
global.subEnemyNumberTable["young-elder-biter"][6] =		4	-- small
global.subEnemyNumberTable["young-elder-biter"][7] =		4	-- small
global.subEnemyNumberTable["young-elder-biter"][8] =		4	-- small
global.subEnemyNumberTable["young-elder-biter"][9] =		4	-- small
global.subEnemyNumberTable["young-elder-biter"][10] =		4	-- small

global.subEnemyNumberTable["young-elder-spitter"] = 		global.subEnemyNumberTable["young-elder-biter"]

global.subEnemyNumberTable["young-king-biter"] = {}
global.subEnemyNumberTable["young-king-biter"][0] =			2	-- medium
global.subEnemyNumberTable["young-king-biter"][1] =			2	-- medium
global.subEnemyNumberTable["young-king-biter"][2] =			2	-- medium
global.subEnemyNumberTable["young-king-biter"][3] =			2	-- medium
global.subEnemyNumberTable["young-king-biter"][4] =			2	-- medium
global.subEnemyNumberTable["young-king-biter"][5] =			2	-- medium
global.subEnemyNumberTable["young-king-biter"][6] =			2	-- medium
global.subEnemyNumberTable["young-king-biter"][7] =			2	-- medium
global.subEnemyNumberTable["young-king-biter"][8] =			2	-- medium
global.subEnemyNumberTable["young-king-biter"][9] =			2	-- medium
global.subEnemyNumberTable["young-king-biter"][10] =		2	-- medium

global.subEnemyNumberTable["young-king-spitter"] = 			global.subEnemyNumberTable["young-king-biter"]
global.subEnemyNumberTable["young-queen-biter"] = 			global.subEnemyNumberTable["young-king-biter"]
global.subEnemyNumberTable["young-queen-spitter"] = 		global.subEnemyNumberTable["young-king-biter"]
global.subEnemyNumberTable["teen-berserk-biter"] = 			global.subEnemyNumberTable["young-king-biter"]

global.subEnemyNumberTable["teen-elder-biter"] = {}
global.subEnemyNumberTable["teen-elder-biter"][0] =			3	-- medium
global.subEnemyNumberTable["teen-elder-biter"][1] =			3	-- medium
global.subEnemyNumberTable["teen-elder-biter"][2] =			3	-- medium
global.subEnemyNumberTable["teen-elder-biter"][3] =			3	-- medium
global.subEnemyNumberTable["teen-elder-biter"][4] =			3	-- medium
global.subEnemyNumberTable["teen-elder-biter"][5] =			3	-- medium
global.subEnemyNumberTable["teen-elder-biter"][6] =			3	-- medium
global.subEnemyNumberTable["teen-elder-biter"][7] =			3	-- medium
global.subEnemyNumberTable["teen-elder-biter"][8] =			3	-- medium
global.subEnemyNumberTable["teen-elder-biter"][9] =			3	-- medium
global.subEnemyNumberTable["teen-elder-biter"][10] =		3	-- medium

global.subEnemyNumberTable["teen-elder-spitter"] = 			global.subEnemyNumberTable["teen-elder-biter"]
global.subEnemyNumberTable["teen-king-biter"] = 			global.subEnemyNumberTable["teen-elder-biter"]
global.subEnemyNumberTable["teen-king-spitter"] = 			global.subEnemyNumberTable["teen-elder-biter"]
global.subEnemyNumberTable["teen-queen-biter"] = 			global.subEnemyNumberTable["teen-elder-biter"]
global.subEnemyNumberTable["teen-queen-spitter"] = 			global.subEnemyNumberTable["teen-elder-biter"]

global.subEnemyNumberTable["adult-berserk-biter"] = {}
global.subEnemyNumberTable["adult-berserk-biter"][0] =		4	-- medium
global.subEnemyNumberTable["adult-berserk-biter"][1] =		4	-- medium
global.subEnemyNumberTable["adult-berserk-biter"][2] =		4	-- medium
global.subEnemyNumberTable["adult-berserk-biter"][3] =		4	-- medium
global.subEnemyNumberTable["adult-berserk-biter"][4] =		4	-- medium
global.subEnemyNumberTable["adult-berserk-biter"][5] =		4	-- medium
global.subEnemyNumberTable["adult-berserk-biter"][6] =		4	-- medium
global.subEnemyNumberTable["adult-berserk-biter"][7] =		4	-- medium
global.subEnemyNumberTable["adult-berserk-biter"][8] =		4	-- medium
global.subEnemyNumberTable["adult-berserk-biter"][9] =		4	-- medium
global.subEnemyNumberTable["adult-berserk-biter"][10] =		4	-- medium

global.subEnemyNumberTable["adult-berserk-spitter"] = 		global.subEnemyNumberTable["adult-berserk-biter"]
global.subEnemyNumberTable["adult-elder-biter"] = 			global.subEnemyNumberTable["adult-berserk-biter"]
global.subEnemyNumberTable["adult-elder-spitter"] = 		global.subEnemyNumberTable["adult-berserk-biter"]

global.subEnemyNumberTable["adult-king-biter"] = {}
global.subEnemyNumberTable["adult-king-biter"][0] =			2	-- big
global.subEnemyNumberTable["adult-king-biter"][1] =			2	-- big
global.subEnemyNumberTable["adult-king-biter"][2] =			2	-- big
global.subEnemyNumberTable["adult-king-biter"][3] =			2	-- big
global.subEnemyNumberTable["adult-king-biter"][4] =			2	-- big
global.subEnemyNumberTable["adult-king-biter"][5] =			2	-- big
global.subEnemyNumberTable["adult-king-biter"][6] =			2	-- big
global.subEnemyNumberTable["adult-king-biter"][7] =			2	-- big
global.subEnemyNumberTable["adult-king-biter"][8] =			2	-- big
global.subEnemyNumberTable["adult-king-biter"][9] =			2	-- big
global.subEnemyNumberTable["adult-king-biter"][10] =		2	-- big

global.subEnemyNumberTable["adult-king-spitter"] = 			global.subEnemyNumberTable["adult-king-biter"]

global.subEnemyNumberTable["adult-queen-biter"] = {}
global.subEnemyNumberTable["adult-queen-biter"][0] =		3	-- big
global.subEnemyNumberTable["adult-queen-biter"][1] =		3	-- big
global.subEnemyNumberTable["adult-queen-biter"][2] =		3	-- big
global.subEnemyNumberTable["adult-queen-biter"][3] =		3	-- big
global.subEnemyNumberTable["adult-queen-biter"][4] =		3	-- big
global.subEnemyNumberTable["adult-queen-biter"][5] =		3	-- big
global.subEnemyNumberTable["adult-queen-biter"][6] =		3	-- big
global.subEnemyNumberTable["adult-queen-biter"][7] =		3	-- big
global.subEnemyNumberTable["adult-queen-biter"][8] =		3	-- big
global.subEnemyNumberTable["adult-queen-biter"][9] =		3	-- big
global.subEnemyNumberTable["adult-queen-biter"][10] =		3	-- big

global.subEnemyNumberTable["adult-queen-spitter"] = 		global.subEnemyNumberTable["adult-queen-biter"]

if global.DytechDetected then
global.subEnemyNumberTable["biter-spawner"][0] = 			8	--small
global.subEnemyNumberTable["biter-spawner"][1] = 			9	--small
global.subEnemyNumberTable["biter-spawner"][2] = 			6	--medium
global.subEnemyNumberTable["biter-spawner"][3] = 			5	--big
global.subEnemyNumberTable["biter-spawner"][4] = 			5	--young-berserk
global.subEnemyNumberTable["biter-spawner"][5] = 			2	--young-king
global.subEnemyNumberTable["biter-spawner"][6] = 			4	--teen-berserk
global.subEnemyNumberTable["biter-spawner"][7] = 			2	--teen-king
global.subEnemyNumberTable["biter-spawner"][8] = 			5	--adult-berserk
global.subEnemyNumberTable["biter-spawner"][9] = 			3	--adult-elder
global.subEnemyNumberTable["biter-spawner"][10] =			2	--adult-queen
end

if global.DytechDetected then
global.subEnemyNumberTable["spitter-spawner"][0] = 			8	--small
global.subEnemyNumberTable["spitter-spawner"][1] = 			9	--small
global.subEnemyNumberTable["spitter-spawner"][2] = 			6	--medium
global.subEnemyNumberTable["spitter-spawner"][3] = 			5	--big
global.subEnemyNumberTable["spitter-spawner"][4] = 			5	--young-berserk
global.subEnemyNumberTable["spitter-spawner"][5] = 			2	--young-king
global.subEnemyNumberTable["spitter-spawner"][6] = 			4	--teen-berserk
global.subEnemyNumberTable["spitter-spawner"][7] = 			2	--teen-king
global.subEnemyNumberTable["spitter-spawner"][8] = 			5	--adult-berserk
global.subEnemyNumberTable["spitter-spawner"][9] = 			3	--adult-elder
global.subEnemyNumberTable["spitter-spawner"][10] =			2	--adult-queen
end

global.subEnemyNumberTable["dyzilla-spawner"] = {}
global.subEnemyNumberTable["dyzilla-spawner"][0] = 			1   -- dyzilla-1
global.subEnemyNumberTable["dyzilla-spawner"][1] = 			1   -- dyzilla-1
global.subEnemyNumberTable["dyzilla-spawner"][2] = 			1   -- dyzilla-1
global.subEnemyNumberTable["dyzilla-spawner"][3] = 			1   -- dyzilla-1
global.subEnemyNumberTable["dyzilla-spawner"][4] = 			1   -- dyzilla-2
global.subEnemyNumberTable["dyzilla-spawner"][5] = 			1   -- dyzilla-2
global.subEnemyNumberTable["dyzilla-spawner"][6] = 			1   -- dyzilla-2
global.subEnemyNumberTable["dyzilla-spawner"][7] = 			1   -- dyzilla-3
global.subEnemyNumberTable["dyzilla-spawner"][8] = 			1   -- dyzilla-3
global.subEnemyNumberTable["dyzilla-spawner"][9] = 			1   -- dyzilla-3
global.subEnemyNumberTable["dyzilla-spawner"][10] =			1   -- dyzilla-4

global.subEnemyNumberTable["dyzilla-unit-1"] = {}
global.subEnemyNumberTable["dyzilla-unit-1"][0] =			2	-- berserk
global.subEnemyNumberTable["dyzilla-unit-1"][1] =			2	-- berserk
global.subEnemyNumberTable["dyzilla-unit-1"][2] =			2	-- berserk
global.subEnemyNumberTable["dyzilla-unit-1"][3] =			2	-- berserk
global.subEnemyNumberTable["dyzilla-unit-1"][4] =			2	-- berserk
global.subEnemyNumberTable["dyzilla-unit-1"][5] =			2	-- berserk
global.subEnemyNumberTable["dyzilla-unit-1"][6] =			2	-- berserk
global.subEnemyNumberTable["dyzilla-unit-1"][7] =			2	-- berserk
global.subEnemyNumberTable["dyzilla-unit-1"][8] =			2	-- berserk
global.subEnemyNumberTable["dyzilla-unit-1"][9] =			2	-- berserk
global.subEnemyNumberTable["dyzilla-unit-1"][10] =			2	-- berserk

global.subEnemyNumberTable["dyzilla-unit-2"] = {}
global.subEnemyNumberTable["dyzilla-unit-2"][0] =			2	-- elder
global.subEnemyNumberTable["dyzilla-unit-2"][1] =			2	-- elder
global.subEnemyNumberTable["dyzilla-unit-2"][2] =			2	-- elder
global.subEnemyNumberTable["dyzilla-unit-2"][3] =			2	-- elder
global.subEnemyNumberTable["dyzilla-unit-2"][4] =			2	-- elder
global.subEnemyNumberTable["dyzilla-unit-2"][5] =			2	-- elder
global.subEnemyNumberTable["dyzilla-unit-2"][6] =			2	-- elder
global.subEnemyNumberTable["dyzilla-unit-2"][7] =			2	-- elder
global.subEnemyNumberTable["dyzilla-unit-2"][8] =			2	-- elder
global.subEnemyNumberTable["dyzilla-unit-2"][9] =			2	-- elder
global.subEnemyNumberTable["dyzilla-unit-2"][10] =			2	-- elder

global.subEnemyNumberTable["dyzilla-unit-3"] = {}
global.subEnemyNumberTable["dyzilla-unit-3"][0] =			2	-- king
global.subEnemyNumberTable["dyzilla-unit-3"][1] =			2	-- king
global.subEnemyNumberTable["dyzilla-unit-3"][2] =			2	-- king
global.subEnemyNumberTable["dyzilla-unit-3"][3] =			2	-- king
global.subEnemyNumberTable["dyzilla-unit-3"][4] =			2	-- king
global.subEnemyNumberTable["dyzilla-unit-3"][5] =			2	-- king
global.subEnemyNumberTable["dyzilla-unit-3"][6] =			2	-- king
global.subEnemyNumberTable["dyzilla-unit-3"][7] =			2	-- king
global.subEnemyNumberTable["dyzilla-unit-3"][8] =			2	-- king
global.subEnemyNumberTable["dyzilla-unit-3"][9] =			2	-- king
global.subEnemyNumberTable["dyzilla-unit-3"][10] =			2	-- king

global.subEnemyNumberTable["dyzilla-unit-4"] = {}
global.subEnemyNumberTable["dyzilla-unit-4"][0] =			2	-- queen
global.subEnemyNumberTable["dyzilla-unit-4"][1] =			2	-- queen
global.subEnemyNumberTable["dyzilla-unit-4"][2] =			2	-- queen
global.subEnemyNumberTable["dyzilla-unit-4"][3] =			2	-- queen
global.subEnemyNumberTable["dyzilla-unit-4"][4] =			2	-- queen
global.subEnemyNumberTable["dyzilla-unit-4"][5] =			2	-- queen
global.subEnemyNumberTable["dyzilla-unit-4"][6] =			2	-- queen
global.subEnemyNumberTable["dyzilla-unit-4"][7] =			2	-- queen
global.subEnemyNumberTable["dyzilla-unit-4"][8] =			2	-- queen
global.subEnemyNumberTable["dyzilla-unit-4"][9] =			2	-- queen
global.subEnemyNumberTable["dyzilla-unit-4"][10] =			2	-- queen

-- Natural Evolution Enemies
global.subEnemyNumberTable["medium-biter-Mk2"] = 			global.subEnemyNumberTable["medium-biter"]
global.subEnemyNumberTable["medium-spitter-Mk2"] = 			global.subEnemyNumberTable["medium-biter"]
global.subEnemyNumberTable["medium-biter-Mk3"] = 			global.subEnemyNumberTable["medium-biter"]
global.subEnemyNumberTable["medium-spitter-Mk3"] = 			global.subEnemyNumberTable["medium-biter"]

global.subEnemyNumberTable["big-biter-Mk2"] = 				global.subEnemyNumberTable["big-biter"]
global.subEnemyNumberTable["big-spitter-Mk2"] = 			global.subEnemyNumberTable["big-biter"]
global.subEnemyNumberTable["big-biter-Mk3"] = 				global.subEnemyNumberTable["big-biter"]
global.subEnemyNumberTable["big-spitter-Mk3"] = 			global.subEnemyNumberTable["big-biter"]

-- 5dim Battlefield
global.subEnemyNumberTable["5d-medium-biter-laser"] = 		global.subEnemyNumberTable["medium-biter"]
global.subEnemyNumberTable["5d-medium-biter-physical"] = 	global.subEnemyNumberTable["medium-biter"]
global.subEnemyNumberTable["5d-medium-biter-explosive"] = 	global.subEnemyNumberTable["medium-biter"]
global.subEnemyNumberTable["5d-big-biter-laser"] = 			global.subEnemyNumberTable["big-biter"]
global.subEnemyNumberTable["5d-big-biter-physical"] = 		global.subEnemyNumberTable["big-biter"]
global.subEnemyNumberTable["5d-big-biter-explosive"] = 		global.subEnemyNumberTable["big-biter"]

global.subEnemyNumberTable["5d-medium-spiter-rocket"] = 	global.subEnemyNumberTable["medium-biter"]
global.subEnemyNumberTable["5d-medium-spiter-fire"] = 		global.subEnemyNumberTable["medium-biter"]
global.subEnemyNumberTable["5d-big-spiter-rocket"] = 		global.subEnemyNumberTable["big-biter"]
global.subEnemyNumberTable["5d-big-spiter-fire"] = 			global.subEnemyNumberTable["big-biter"]

-- Vampire Biters
global.subEnemyNumberTable["medium-vampire"] = 				global.subEnemyNumberTable["medium-biter"]
global.subEnemyNumberTable["big-vampire"] = 				global.subEnemyNumberTable["big-biter"]

global.subEnemyNumberTable["vampire-den"] = {}
global.subEnemyNumberTable["vampire-den"][0] = 				8    --small
global.subEnemyNumberTable["vampire-den"][1] = 				8    --small
global.subEnemyNumberTable["vampire-den"][2] = 				9    --small
global.subEnemyNumberTable["vampire-den"][3] = 				5    --medium
global.subEnemyNumberTable["vampire-den"][4] = 				6    --medium
global.subEnemyNumberTable["vampire-den"][5] = 				7    --medium
global.subEnemyNumberTable["vampire-den"][6] = 				3    --big
global.subEnemyNumberTable["vampire-den"][7] = 				4    --big
global.subEnemyNumberTable["vampire-den"][8] = 				5    --big
global.subEnemyNumberTable["vampire-den"][9] = 				7    --big
global.subEnemyNumberTable["vampire-den"][10] =				10   --big
end
