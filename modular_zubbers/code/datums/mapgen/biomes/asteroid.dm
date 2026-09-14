/datum/biome/asteroid
	open_turf_type = /turf/open/misc/asteroid/airless
	closed_turf_type = /turf/closed/mineral
	mob_exclusion_radius = 7

/datum/biome/asteroid/general
	closed_turf_type = /turf/closed/mineral/random

	fauna_density = 6
	flora_density = 2.5
	feature_density = 0.25

	// Certified hood classic
	fauna_types = list(
		SPAWN_MEGAFAUNA = 2,
		/mob/living/basic/mining/goliath = 50,
		/mob/living/basic/mining/hivelord = 40,
		/mob/living/basic/mining/basilisk = 20,
		/mob/living/basic/mining/goldgrub = 5,
	)

	flora_types = list(
		/obj/structure/flora/rock/style_random = 1,
		/obj/structure/flora/rock/pile/style_random = 3,
	)

	feature_types = list(
		/obj/structure/geyser/plasma_oxide = 8,
		/obj/structure/geyser/protozine = 8,
		/obj/structure/geyser/wittel = 8,
		/obj/structure/geyser/random = 3,
		/obj/structure/ore_vent/boss = 1,
	)

/datum/biome/asteroid/red_rock
	closed_turf_type = /turf/closed/mineral/random/asteroid
	fauna_density = 6
	flora_density = 4
	feature_density = 0.25

	// Yet to be determined
	fauna_types = list(
		SPAWN_MEGAFAUNA = 2,
		/mob/living/basic/mining/goliath = 50,
		/mob/living/basic/mining/hivelord = 40,
		/mob/living/basic/mining/basilisk = 20,
		/mob/living/basic/mining/goldgrub = 5,
	)

	flora_types = list(
		/obj/structure/flora/rock/style_random = 1,
		/obj/structure/flora/rock/pile/style_random = 3,
		/obj/structure/flora/rock/pile/siderite/style_random = 4,
		/obj/structure/flora/rock/siderite_growth = 1,
	)

	feature_types = list(
		/obj/structure/geyser/protozine = 12,
		/obj/structure/geyser/chiral_buffer = 12,
		/obj/structure/geyser/random = 3,
		/obj/structure/ore_vent/boss = 1,
	)
