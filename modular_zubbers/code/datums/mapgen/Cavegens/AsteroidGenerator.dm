/datum/map_generator/cave_generator/asteroid
	weighted_open_turf_types = list(/turf/open/misc/asteroid/airless = 1)
	weighted_closed_turf_types = list(/turf/closed/mineral/random = 1)

	possible_biomes = list(
		BIOME_LOW_HEAT = list(
			BIOME_LOW_HUMIDITY = /datum/biome/asteroid/general,
			BIOME_MEDIUM_HUMIDITY = /datum/biome/asteroid/general,
			BIOME_HIGH_HUMIDITY = /datum/biome/asteroid/general,
			),
		BIOME_MEDIUM_HEAT = list(
			BIOME_LOW_HUMIDITY = /datum/biome/asteroid/general,
			BIOME_MEDIUM_HUMIDITY = /datum/biome/asteroid/general,
			BIOME_HIGH_HUMIDITY = /datum/biome/asteroid/red_rock,
			),
		BIOME_HIGH_HEAT = list(
			BIOME_LOW_HUMIDITY = /datum/biome/asteroid/general,
			BIOME_MEDIUM_HUMIDITY = /datum/biome/asteroid/red_rock,
			BIOME_HIGH_HUMIDITY = /datum/biome/asteroid/red_rock,
			),
		)

	high_heat_threshold = 0.15
	high_humidity_threshold = 0.15
	biome_stamp_size = 60

/datum/map_generator/cave_generator/asteroid/ruin_version
	biome_population = FALSE
	weighted_open_turf_types = list(/turf/open/misc/asteroid/airless = 1)
	weighted_closed_turf_types = list(/turf/closed/mineral = 1)
