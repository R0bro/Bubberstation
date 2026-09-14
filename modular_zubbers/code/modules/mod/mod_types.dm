/obj/item/mod/control/pre_equipped/asset_protection
	worn_icon = 'modular_zubbers/icons/mob/clothing/modsuit/mod_clothing.dmi'
	icon = 'modular_zubbers/icons/obj/clothing/modsuit/mod_clothing.dmi'
	icon_state = "asset_protection-control"
	theme = /datum/mod_theme/asset_protection
	applied_cell = /obj/item/stock_parts/power_store/cell/bluespace
	applied_modules = list(
		/obj/item/mod/module/storage/bluespace,
		/obj/item/mod/module/welding,
		/obj/item/mod/module/emp_shield/advanced,
		/obj/item/mod/module/magnetic_harness,
		/obj/item/mod/module/jetpack,
		/obj/item/mod/module/projectile_dampener,
		/obj/item/mod/module/status_readout,
	)
	default_pins = list(
		/obj/item/mod/module/jetpack,
	)

/obj/item/mod/control/pre_equipped/mining/asteroid
	theme = /datum/mod_theme/mining/asteroid
	applied_core = /obj/item/mod/core/standard
	applied_modules = list(
		/obj/item/mod/module/storage/large_capacity,
		/obj/item/mod/module/magnetic_harness,
		/obj/item/mod/module/mouthhole,
	)
	default_pins = list()

/obj/item/mod/control/pre_equipped/mining/asteroid/Initialize(mapload, new_theme, new_skin, new_core)
	. = ..()
	for(var/obj/item/part as anything in get_parts())
		if(istype(part, /obj/item/clothing/head/mod) || istype(part, /obj/item/clothing/suit/mod))
			part.AddComponent(/datum/component/armor_plate/asteroid_mod)

/datum/component/armor_plate/asteroid_mod

/datum/component/armor_plate/asteroid_mod/Initialize(maxamount, obj/item/upgrade_item, datum/armor/armor_mod, upgrade_prefix = "reinforced")
	. = ..()
	if(. == COMPONENT_INCOMPATIBLE)
		return
	RegisterSignal(parent, COMSIG_ITEM_GET_WORN_OVERLAYS, PROC_REF(add_asteroid_overlay))
	RegisterSignal(parent, COMSIG_ARMOR_PLATED, PROC_REF(update_asteroid_overlay))

/datum/component/armor_plate/asteroid_mod/proc/add_asteroid_overlay(datum/source, list/overlays, mutable_appearance/standing, isinhands, icon_file, bodyshape = NONE)
	SIGNAL_HANDLER

	if(isinhands || !amount)
		return
	var/obj/item/part = parent
	var/overlay_state = "asteroid-[istype(part, /obj/item/clothing/head/mod) ? "helmet" : "chestplate"]-g"
	if(amount >= maxamount)
		overlay_state += "-full"
	overlays += mutable_appearance('modular_zubbers/icons/mob/clothing/modsuit/mod_clothing.dmi', overlay_state, layer = standing.layer + 0.1)

/datum/component/armor_plate/asteroid_mod/proc/update_asteroid_overlay(datum/source, amount, maxamount)
	SIGNAL_HANDLER

	var/obj/item/part = parent
	part.update_icon(UPDATE_OVERLAYS)
	if(ismob(part.loc))
		var/mob/wearer = part.loc
		wearer.update_clothing(part.slot_flags)

/obj/item/mod/control/pre_equipped/lustwish
	worn_icon = 'modular_zubbers/icons/mob/clothing/modsuit/mod_lustwish.dmi'
	icon = 'modular_zubbers/icons/obj/clothing/modsuit/mod_lustwish.dmi'
	icon_state = "lustwish-control"
	theme = /datum/mod_theme/lustwish

//Hat Stabilizer Module added as default module to the Blueshield and Safeguard Modsuits
/obj/item/mod/control/pre_equipped/blueshield/New()
	applied_modules += list(
		/obj/item/mod/module/hat_stabilizer,
	)
	return ..()

/obj/item/mod/control/pre_equipped/safeguard/New()
	applied_modules += list(
		/obj/item/mod/module/hat_stabilizer,
	)
	return ..()

/obj/item/mod/control/pre_equipped/voskhod
	applied_cell = /obj/item/stock_parts/power_store/cell/high
	theme = /datum/mod_theme/voskhod
	applied_modules = list(
		/obj/item/mod/module/storage,
		/obj/item/mod/module/flashlight,
		/obj/item/mod/module/auto_doc,
		/obj/item/mod/module/status_readout/operational,
	)
	default_pins = list(
		/obj/item/mod/module/flashlight,
		/obj/item/mod/module/auto_doc,
	)
