Swarm 1.3.0
===========

Version 1.3.0 was released March 2X, 2019, was tested using Factorio v0.17.16, and was authored by Supercheese, with contributions from Pawz.

Beware the swarm! This mod makes larger biters and spitters fragment into multiple smaller enemies on death. Now, for instance, killing a medium biter means you have to deal with the small biters that spawn from the medium corpse.
Spawners, too, release enemies when they die. Now you have to be more careful when clearing enemy bases, because if the evolution factor is high enough, you might be faced with multiple behemoths appearing for each spawner you kill!

This mod also supports the following:

-Bob's mods (bobenemies)
-Dytech War
-Natural Evolution Enemies
-5dim Battlefield
-Vampire Biters

The configuration options available in config.lua control how many and what sort of enemies spawn when larger enemies die. Here you may adjust these if you so wish (it's quite the wall of text).

The in-game Mod Options also has two Swarm settings available: you can choose that enemies should NOT fragment into smaller versions on death, only spawners -- or vice versa. Disabling both options effectively disables the mod entirely.
You can access these settings from the main menu via: Options -> Mods. You should even be able to change them mid-game in singleplayer or if you are an admin in a multiplayer match.


Known Issues:
-------------

Factorio's pathfinding algorithm can choke when large waves of biters crash against your defenses, especially now that so many more small biters are spawning from the corpses of their larger brethren. This may lead to severe lag.
If it becomes unbearable, you have two recourses: Disable the biter-fragmentation entirely by toggling the appropriate setting in the Mod Options, or reduce the number of sub-enemies that spawn in the Advanced config section.
Additionally, firing an ion cannon, Big Bang, artillery cannon, or other weapon of mass destruction at a large enemy base may lead to lag as well. This is to be expected, when the game is suddenly spawning in hundreds of new fragmented small enemies.
As of v1.3.0, the lag should be reduced, thanks to a new spawn queueing system.


Credits etc:
------------

I checked out bobenemies_0.17.2, Dytech_War_1.9.9, Natural_Evolution_Enemies_0.17.5, 5dim_battlefield 0.17.0, and Vampire_Biters_0.0.5 when writing this mod.
Other versions might still work, but are untested.

Thanks to the Factorio IRC and Discord denizens for advice, bugtesting, and contributions.

See also the associated forum thread to give feedback, view screenshots, etc.:

http://www.factorioforums.com/forum/viewtopic.php?f=93&t=20165
