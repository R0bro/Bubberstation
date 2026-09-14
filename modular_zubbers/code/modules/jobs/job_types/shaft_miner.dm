/datum/job/shaft_miner
	required_languages = null
	akula_outfit = /datum/outfit/akula/cargo_technician
	alt_titles = list(
		"Shaft Miner",
		"Union Miner",
		"Excavator",
		"Drill Technician",
		"Prospector",
		"Spelunker",
		"Apprentice Miner",
		"Dredger",
		"Contract Miner",
		"Asteroid Miner",
	)

/datum/outfit/job/miner/equipped/mod/asteroid
	name = "Asteroid Miner (Equipment + MODsuit)"
	uniform = /obj/item/clothing/under/rank/cargo/miner
	back = /obj/item/mod/control/pre_equipped/mining/asteroid
	backpack_contents = list(
		/obj/item/flashlight/seclite = 1,
		/obj/item/gun/energy/recharge/kinetic_accelerator = 1,
		/obj/item/knife/combat/survival = 1,
		/obj/item/mining_voucher = 1,
		/obj/item/stack/marker_beacon/ten = 1,
		/obj/item/t_scanner/adv_mining_scanner/lesser = 1,
	)
	suit = null
	mask = /obj/item/clothing/mask/gas/explorer
	internals_slot = ITEM_SLOT_SUITSTORE
