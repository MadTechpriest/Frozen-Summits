/mob/living/simple_animal/hostile/retaliate/rogue/slime
	icon = 'icons/roguetown/mob/monster/slimes_sojourn.dmi'
	name = "grey ooze slime"
	icon_state = "grey_adult_slime"
	icon_living = "grey_adult_slime"
	icon_dead = "grey_slime_dead"
	faction = list("slimes")
	gender = MALE
	emote_hear = list("blurbs.")
	emote_see = list("squishes")
	speak_chance = 1
	turns_per_move = 3
	see_in_dark = 6
	move_to_delay = 5
	pixel_x = -16
	pixel_y = -8
	vision_range = 5
	aggro_vision_range = 9
	base_intents = list(/datum/intent/simple/bite)
	butcher_results = list(/obj/item/reagent_containers/food/snacks/rogue/meat/steak = 1,
					/obj/item/natural/hide = 1, /obj/item/natural/bone = 2)
	faction = list("rats")
	mob_biotypes = MOB_ORGANIC|MOB_BEAST
	attack_sound = 'sound/combat/wooshes/punch/punchwoosh (2).ogg'
	health = 100
	maxHealth = 100
	melee_damage_lower = 17
	melee_damage_upper = 25
	environment_smash = ENVIRONMENT_SMASH_NONE
	retreat_distance = 0
	minimum_distance = 0
	milkies = FALSE
	food_type = list(/obj/item/reagent_containers/food/snacks, /obj/item/bodypart, /obj/item/organ)
	footstep_type = FOOTSTEP_MOB_BAREFOOT
	pooptype = null
	STACON = 20
	STASTR = 10
	STASPD = 10
	deaggroprob = 0
	defprob = 40
	defdrain = 10
	attack_same = 0
	retreat_health = 0.3
	aggressive = 1
	stat_attack = UNCONSCIOUS










/mob/living/simple_animal/hostile/retaliate/rogue/slime/toxic
	icon = 'icons/roguetown/mob/monster/slimes_sojourn.dmi'
	name = "venom ooze slime"
	icon_state = "yellow_slime"
	icon_living = "yellow_slime"
	icon_dead = "yellow_slime_dead"
	health = 250
	maxHealth = 250
	melee_damage_lower = 17
	melee_damage_upper = 35


/mob/living/simple_animal/hostile/retaliate/rogue/slime/toxic/AttackingTarget()
	. = ..()
	if(. && isliving(target))
		var/mob/living/L = target
		if(L.reagents)
			L.reagents.add_reagent(/datum/reagent/toxin/spewium, 2) //this won't do much til u get 29u then uhhh bye lol





/mob/living/simple_animal/hostile/retaliate/rogue/slime/cube
	icon = 'icons/roguetown/mob/monster/slimes_sojourn.dmi'
	name = "ooze cube"
	icon_state = "gelatinous"
	icon_living = "gelatinous"
	icon_dead = "gelatinous_dead"
	health = 350
	maxHealth = 350
	melee_damage_lower = 17
	melee_damage_upper = 35


/mob/living/simple_animal/hostile/retaliate/rogue/slime/cube/AttackingTarget()
	. = ..()
	if(. && isliving(target))
		var/mob/living/L = target
		if(L.reagents)
			L.reagents.add_reagent(/datum/reagent/toxin/spewium, 2) //this won't do much til u get 29u then uhhh bye lol

