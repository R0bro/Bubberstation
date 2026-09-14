// We're in space, we don't need lava bubbling ambience.
/area/mine/asteroid
	ambient_buzz = null

/area/mine/asteroid/lobby
	name = "Mining Station"
	icon_state = "mining_lobby"

/area/mine/asteroid/storage
	name = "Mining Station Production Storage"
	icon_state = "mining_storage"

/area/mine/asteroid/storage/public
	name = "Mining Station Public Storage"
	icon_state = "mining_storage"

/area/mine/asteroid/production
	name = "Mining Station Production Wing"
	icon_state = "mining_production"

/area/mine/asteroid/abandoned
	name = "Abandoned Mining Station"

/area/mine/asteroid/living_quarters
	name = "Mining Station Living Quarters"
	icon_state = "mining_living"

/area/mine/asteroid/eva
	name = "Mining Station EVA"
	icon_state = "mining_eva"

/area/mine/asteroid/maintenance
	name = "Mining Station Maintenance"

/area/mine/asteroid/maintenance/production
	name = "Mining Station Production Maintenance"

/area/mine/asteroid/maintenance/living
	name = "Mining Station Living Quarters Maintenance"

/area/mine/asteroid/maintenance/living/north
	name = "Mining Station Living Quarters North Maintenance"

/area/mine/asteroid/maintenance/living/south
	name = "Mining Station Living Quarters South Maintenance"

/area/mine/asteroid/maintenance/public
	name = "Mining Station Public Maintenance"

/area/mine/asteroid/maintenance/public/north
	name = "Mining Station Public North Maintenance"

/area/mine/asteroid/maintenance/public/south
	name = "Mining Station Public South Maintenance"

/area/mine/asteroid/maintenance/service
	name = "Mining Station Service Maintenance"

/area/mine/asteroid/maintenance/service/disposals
	name = "Mining Station Disposals"

/area/mine/asteroid/maintenance/service/comms
	name = "Mining Station Communications"

/area/mine/asteroid/maintenance/service/solars
	name = "Mining Station Solar Array"
	icon_state = "panels"

/area/mine/asteroid/maintenance/labor
	name = "Labor Camp Maintenance"

/area/mine/asteroid/cafeteria
	name = "Mining Station Cafeteria"
	icon_state = "mining_cafe"

/area/mine/asteroid/cafeteria/labor
	name = "Labor Camp Cafeteria"
	icon_state = "mining_labor_cafe"

/area/mine/asteroid/hydroponics
	name = "Mining Station Hydroponics"
	icon_state = "mining_hydro"

/area/mine/asteroid/medical
	name = "Mining Station Emergency Medbay"

/area/mine/asteroid/mechbay
	name = "Mining Station Mech Bay"
	icon_state = "mechbay"

/area/mine/asteroid/xenoarcheology
	name = "Mining Station Xenoarchaeology Lab"
	icon_state = "aux_lab"

/area/mine/asteroid/lounge
	name = "Mining Station Public Lounge"
	icon_state = "mining_lounge"

/area/mine/asteroid/laborcamp
	name = "Labor Camp"
	icon_state = "mining_labor"

/area/mine/asteroid/laborcamp/quarters
	name = "Labor Camp Quarters"
	icon_state = "mining_labor_quarters"

/area/mine/asteroid/laborcamp/production
	name = "Labor Camp Production"
	icon_state = "mining_labor_production"

/area/mine/asteroid/laborcamp/security
	name = "Labor Camp Security"
	icon_state = "labor_camp_security"
	ambience_index = AMBIENCE_DANGER

/area/mine/asteroid/laborcamp/security/maintenance
	name = "Labor Camp Security Maintenance"
	icon_state = "labor_camp_security"
	ambience_index = AMBIENCE_DANGER




/**********************Asteroid Areas**************************/

/area/asteroid
	name = "Asteroid"
	icon = 'icons/area/areas_station.dmi'
	icon_state = "mining"
	default_gravity = STANDARD_GRAVITY
	flags_1 = NONE
	area_flags = VALID_TERRITORY | FLORA_ALLOWED
	sound_environment = SOUND_AREA_ASTEROID
	allow_shuttle_docking = TRUE
	map_generator = /datum/map_generator/cave_generator/asteroid
	use_mapgen = FALSE

/area/asteroid/surface
	icon_state = "explored"
	always_unpowered = TRUE
	power_environ = FALSE
	power_equip = FALSE
	power_light = FALSE
	requires_power = TRUE
	ambience_index = AMBIENCE_MINING
	area_flags = VALID_TERRITORY

/area/asteroid/surface/outdoors
	outdoors = TRUE

/area/asteroid/surface/outdoors/unexplored //monsters and ruins spawn here
	name = "Asteroid Depths"
	icon_state = "unexplored"
	area_flags = VALID_TERRITORY
	area_flags_mapping = UNIQUE_AREA | CAVES_ALLOWED | FLORA_ALLOWED | MOB_SPAWN_ALLOWED
	use_mapgen = TRUE

/area/asteroid/surface/outdoors/unexplored/danger //megafauna will also spawn here
	icon_state = "danger"
	area_flags = VALID_TERRITORY
	area_flags_mapping = parent_type::area_flags_mapping | MEGAFAUNA_SPAWN_ALLOWED

/// Same thing as parent, but uses a different map generator for the icemoon ruin that needs it.
	map_generator = /datum/map_generator/cave_generator/asteroid/ruin_version

/area/asteroid/surface/outdoors/explored
	name = "Asteroid Labor Camp"
	area_flags = VALID_TERRITORY
