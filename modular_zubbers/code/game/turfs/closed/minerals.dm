/turf/closed/mineral/random/asteroid
	name = "iron rock"
	icon = MAP_SWITCH('icons/turf/walls/red_rock.dmi', 'icons/turf/mining.dmi')
	icon_state = "red_rock"
	base_icon_state = "red_rock"
	transform = MAP_SWITCH(TRANSLATE_MATRIX(-8, -8), matrix())
	smoothing_groups = SMOOTH_GROUP_CLOSED_TURFS + SMOOTH_GROUP_RED_ROCK_WALLS
	canSmoothWith = SMOOTH_GROUP_RED_ROCK_WALLS
	tool_mine_speed = 5 SECONDS // 25% harder than basalt
	hand_mine_speed = 17 SECONDS
	mineral_chance = 8 // N% functionally, 6.67% default, accounts for ~22% turfs
	wall_icon_state = "red_rock"
	turf_type = /turf/open/misc/asteroid/airless
	baseturfs = /turf/open/misc/asteroid/airless

/turf/closed/mineral/random/labormineral/asteroid
	icon_state = "red_rock"
	turf_type = /turf/open/misc/asteroid
	baseturfs = /turf/open/misc/asteroid
	initial_gas_mix = OPENTURF_DEFAULT_ATMOS
