//t1, the bends
/obj/effect/proc_holder/spell/invoked/abyssor_bends
	name = "Depth Bends"
	overlay_state = "thebends"
	releasedrain = 15
	chargedrain = 0
	chargetime = 2 SECONDS
	range = 15
	movement_interrupt = FALSE
	chargedloop = null
	sound = 'sound/foley/bubb (5).ogg'
	invocation = "Weight of the deep, crush!"
	invocation_type = "shout"
	associated_skill = /datum/skill/magic/holy
	antimagic_allowed = TRUE
	charge_max = 20 SECONDS
	miracle = TRUE
	devotion_cost = 15

/obj/effect/proc_holder/spell/invoked/abyssor_bends/cast(list/targets, mob/user = usr)
	. = ..()
	if(isliving(targets[1]))
		var/mob/living/target = targets[1]
		user.visible_message("<font color='yellow'>[user] makes a fist at [target]!</font>")
		if(target.anti_magic_check(TRUE, TRUE))
			return FALSE
		target.adjustStaminaLoss(125)
		target.Dizzy(10)
		target.blur_eyes(20)
		target.emote("drown")
		return TRUE
	revert_cast()
	return FALSE
//T2, Abyssal Healing. Totally stole most of this from lesser heal.
/obj/effect/proc_holder/spell/invoked/abyssheal
	name = "Abyssal Healing"
	overlay_state = "thebends"
	releasedrain = 15
	chargedrain = 0
	chargetime = 1 SECONDS
	range = 2
	warnie = "sydwarning"
	movement_interrupt = FALSE
	sound = 'sound/foley/waterenter.ogg'
	invocation = "Healing waters, come forth!"
	invocation_type = "shout"
	associated_skill = /datum/skill/magic/holy
	antimagic_allowed = TRUE
	charge_max = 10 SECONDS
	miracle = TRUE
	devotion_cost = 50

/obj/effect/proc_holder/spell/invoked/abyssheal/cast(list/targets, mob/living/user)
	. = ..()
	if(isliving(targets[1]))
		var/mob/living/target = targets[1]
		if(user.patron?.undead_hater && (target.mob_biotypes & MOB_UNDEAD)) //THE DEEP CALLS- sorry, the pressure of the deep falls upon those of the undead ilk
			target.visible_message(span_danger("[target] is crushed by divine pressure!"), span_userdanger("I'm crushed by divine pressure!"))
			target.adjustBruteLoss(30)			
			return TRUE
		var/conditional_buff = FALSE
		var/situational_bonus = 1
		target.visible_message(span_info("A wave of divine energy crashes over [target]!"), span_notice("I'm crushed by healing energies!"))
		var/list/water = list(/turf/open/water/bath, /turf/open/water/ocean, /turf/open/water/cleanshallow, /turf/open/water/swamp, /turf/open/water/swamp/deep, /turf/open/water/pond, /turf/open/water/river)
		situational_bonus = 0
		// the more warter around us, the more we heal
		for (var/turf/O in oview(3, user))
			if (O in water)
				situational_bonus = min(situational_bonus + 0.1, 2)
		for (var/turf/open/water/ocean/deep/O in oview(3, user))
			situational_bonus += 0.5
		// Healing by the deep sea gives an extra boost.
		if (situational_bonus > 0)
			conditional_buff = TRUE
		var/healing = 6.5
		target.adjustFireLoss(-80)
		if (conditional_buff)
			to_chat(user, "Calling upon Abyssor's power is easier in these conditions!")
			healing += situational_bonus
			target.adjustFireLoss(-40)
		target.apply_status_effect(/datum/status_effect/buff/healing, healing)
		return TRUE
	revert_cast()
	return FALSE
//t3 alt, land surf, i just removed it but if this idea is like better... we'll see

//t3, possible t4 if I put in land surf, summon mossback
/obj/effect/proc_holder/spell/invoked/call_mossback
	name = "Call Mossback"
	overlay_state = "thebends"
	range = 7
	no_early_release = TRUE
	charging_slowdown = 1
	releasedrain = 20
	chargedrain = 0
	chargetime = 2 SECONDS
	chargedloop = null
	sound = 'sound/foley/bubb (1).ogg'
	invocation = "From the abyss, rise!"
	invocation_type = "shout"
	associated_skill = /datum/skill/magic/holy
	antimagic_allowed = TRUE
	charge_max = 180 SECONDS
	miracle = TRUE
	devotion_cost = 100
	var/townercrab = TRUE //I was looking at this for three days and i am utterly stupid for not fixing it
/obj/effect/proc_holder/spell/invoked/call_mossback/cast(list/targets, mob/living/user)
	. = ..()
	var/turf/T = get_turf(targets[1])
	if(isopenturf(T))
		new /mob/living/simple_animal/hostile/retaliate/rogue/mossback(T, user, townercrab)
		return TRUE
	else
		to_chat(user, span_warning("The targeted location is blocked. My call fails to draw a mossback."))
		return FALSE

/obj/effect/proc_holder/spell/invoked/lesser_heal/abyssal //for now just an abyssal version of the same spell, just with a different sprite. Placeholder.
	name = "Lesser Miracle"
	overlay_state = "purification"
	overlay_icon = 'icons/roguetown/kaizoku/misc/spells.dmi'
	action_icon_state = "spell0"
	action_icon = 'icons/roguetown/kaizoku/misc/spells.dmi'

/obj/effect/proc_holder/spell/invoked/icebind
	name = "Barotrauma Bind" //People faithful to Abyssor will instantly be released from this spell.
	overlay_state = "waternet"
	overlay_icon = 'icons/roguetown/kaizoku/misc/spells.dmi'
	chargedrain = 5
	releasedrain = 30
	charge_max = 50 SECONDS
	range = 8
	warnie = "aimwarn"
	movement_interrupt = FALSE
	sound = 'sound/music/kaizoku/spells/martialart_abyssanctum.ogg'
	action_icon_state = "spell0"
	action_icon = 'icons/roguetown/kaizoku/misc/spells.dmi'
	invocation_type = "none"
	associated_skill = /datum/skill/magic/holy
	antimagic_allowed = TRUE
	charge_max = 60 SECONDS
	req_items = list(/obj/item/clothing/neck/roguetown/psicross/abyssanctum)
	devotion_cost = 45

/turf/open/proc/apply_ice_turf()
	var/prev_icon_state = icon_state //that code saves the original attributes of the turf to avoid a black void.
	icon_state = "ice"
	density = FALSE
	MakeSlippery(TURF_WET_PERMAFROST, min_wet_time = 100, wet_time_to_add = 5)
	spawn(100)
		if(icon_state == "ice")
			icon_state = prev_icon_state
			density = initial(density)

/obj/effect/proc_holder/spell/invoked/icebind/cast(list/targets, mob/living/user)
	if(!targets.len || !targets[1])
		to_chat(user, span_warning("<span class='userdanger'>Your spell fails to take hold, victimless.</span>"))
		return FALSE
	var/target = targets[1]

	if(isliving(target))
		var/mob/living/target_mob = target
		if(!target_mob.has_status_effect(/datum/status_effect/abyssaltomb))
			target_mob.apply_status_effect(/datum/status_effect/abyssaltomb)
			target_mob.visible_message("<span class='warning'>[target_mob] is sealed within a crystalline abyssal tomb!</span>")
		else
			to_chat(user, span_warning("<span class='userdanger'>Your target is already immobilized within a frigid tomb from the ocean!</span>"))
		return TRUE

	if(isturf(target))
		var/turf/open/T = target
		if(!isclosedturf(T))
			T.apply_ice_turf()
			to_chat(user, "<span class='warning'>Without a target, the ground becomes victim of the abyssal oppression.</span>")
			return TRUE
		else
			to_chat(user, "<span class='warning'>There is no space for a proper icespyre or cold to be settled.</span>")
			return FALSE

	to_chat(user, span_warning("<span class='userdanger'>Your spell fails to take hold, victimless.</span>"))
	return FALSE

/datum/status_effect/abyssaltomb/on_apply()
	tomb = new /obj/structure/abyssaltomb(get_turf(owner)) // Create the ice tomb, THEN move the victim inside
	tomb.encased_mob = owner
	if(istype(owner, /mob/living/carbon/human))
		tomb.buckle_mob(owner, TRUE, check_loc = FALSE)
		if(owner.patron && owner.patron.type == /datum/patron/divine/abyssor)
			to_chat(src, "<span class='debug'>Abyssor follower = no processing..</span>")
			tomb.processing = FALSE
		else
			to_chat(src, "<span class='debug'>Unbased person that don't follow abyssor, start to purify their ass.</span>")
			START_PROCESSING(SSobj, tomb) // Processing for non-Abyssor followers
	owner.forceMove(tomb) // Move the owner inside the tomb
	tomb.max_integrity = 300
	tomb.density = TRUE
	owner.visible_message("<span class='warning'>[owner] is encased in a crystalline tomb of ice.</span>")
	return ..()

/datum/status_effect/abyssaltomb/on_remove()
	if(tomb)
		tomb.unbuckle_all_mobs() //Avoid Qdelling the mob
		qdel(tomb)
	tomb = null
	return ..()

/obj/structure/abyssaltomb
	name = "abyssal tomb"
	desc = "A solid block of ice encasing a victim inside a pocket dimension deep on the ocean. One requires to break the coffin to be released from such depths."
	icon = 'icons/roguetown/kaizoku/misc/freezesprite.dmi'
	icon_state = "icespyre"
	density = TRUE
	max_integrity = 150
	buckle_lying = 0
	buckle_prevents_pull = 1
	layer = FLY_LAYER
	var/processing = TRUE
	var/last_attack
	var/mob/living/carbon/human/encased_mob

/obj/structure/abyssaltomb/Destroy()
	for(var/atom/movable/M in contents)
		M.forceMove(loc)
	if(encased_mob) // Use the linked mob reference
		encased_mob.remove_status_effect(/datum/status_effect/abyssaltomb)
	playsound(src, 'sound/combat/hits/onglass/glassbreak (2).ogg', 50, TRUE)
	return ..()

/obj/structure/abyssaltomb/process()
	to_chat(src, "<span class='debug'>Abyssal Tomb is processing properly.</span>")
	if(!has_buckled_mobs()) // If there are no mobs buckled, delete the tomb
		to_chat(src, "<span class='debug'>No buckled mobs found, deleting tomb.</span>")
		qdel(src)
		return
	for(var/mob/living/L in buckled_mobs)
		if(!iscarbon(L) || L.buckled != src)
			to_chat(src, "<span class='debug'>Invalid buckled mob detected, skipping.</span>")
			continue
		if(!last_attack) // Time tracking for damaging the buckled person
			last_attack = world.time
		var/barotrauma = 50 // 5 seconds for each
		if(world.time >= last_attack + barotrauma) // Pressure damage after enough time has passed
			last_attack = world.time
			src.visible_message("<span class='danger'>[src]'s crushing pressure squeezes [L] mercilessly!</span>")
			L.flash_fullscreen("whiteflash3")
			L.adjustBruteLoss(rand(10, 30))
		if(L.stat == DEAD)
			src.visible_message("<span class='danger'>[L]'s squeezed body is now released after death.</span>")
			qdel(src)

/obj/structure/abyssaltomb/user_unbuckle_mob(mob/living/carbon/human/M, mob/living/carbon/human/user)
	if(obj_broken)
		..()
		return

	if(isliving(user))
		var/mob/living/L = user
		var/willpower = CLAMP((L.STAINT * 2 - 10), 1, 99)
		var/barotrauma_roll = rand(1, 100)
		to_chat(user, "<span class='debug'>DEBUG: willpower=[willpower], barotrauma_roll=[barotrauma_roll]; To be released, have more Willpower than Barotrauma</span>")

		if(processing == FALSE)
			to_chat(M, "<span class='info'>[M]'s purified body quickly breaks away from the abyssal tomb.</span>")
			M.remove_status_effect(/datum/status_effect/abyssaltomb)
			qdel(src)
			return

		user.changeNext_move(CLICK_CD_RAPID)
		if(user != M)
			if(barotrauma_roll <= willpower) //Freeing someone else.
				to_chat(user, "<span class='info'>Your body warmth releases [M]'s from the pocket dimension.</span>")
				to_chat(M, "<span class='info'>You feel [user]'s warmth as light comes over to your eyes.</span>")
				M.remove_status_effect(/datum/status_effect/abyssaltomb)
				if(processing == TRUE)
					STOP_PROCESSING(SSobj, src)
				qdel(src)
			else
				to_chat(user, "<span class='danger'>You try to free [M], but you hand ricochets.</span>")
				to_chat(M, "<span class='info'>[user] attempts to free you, but your world spins instead.</span>")
				M.Stun(40)
				shake_camera(M, 15, 1)
			return

		if(barotrauma_roll <= willpower) // Freeing themselves
			to_chat(M, "<span class='info'>You push the pressure towards itself, finally released from its grasp.</span>")
			src.visible_message("<span class='info'>[M] manages to break down the abyssal tomb!</span>")
			M.remove_status_effect(/datum/status_effect/abyssaltomb)
			if(processing == TRUE)
				STOP_PROCESSING(SSobj, src)
			qdel(src)
		else
			to_chat(user, "<span class='warning'>You struggle to break free of the tomb, but remain trapped.</span>")
			user.Stun(40)
			shake_camera(user, 15, 1)

///Purification///

/obj/effect/proc_holder/spell/invoked/projectile/purify
	name = "Purifying filter"
	overlay_state = "icespike"
	overlay_icon = 'icons/roguetown/kaizoku/misc/spells.dmi'
	action_icon_state = "spell0"
	action_icon = 'icons/roguetown/kaizoku/misc/spells.dmi'
	releasedrain = 50
	chargetime = 30
	range = 7
	warnie = "sydwarning"
	movement_interrupt = FALSE
	projectile_type = /obj/projectile/magic/purify
	chargedloop = null
	req_items = list(/obj/item/clothing/neck/roguetown/psicross/abyssanctum)
	sound = 'sound/music/kaizoku/spells/martialart_abyssanctum.ogg'
	invocation_type = "none"
	//invocation = "delivers sharp jabs and a sudden clap, unleashing a freezing shockwave that forms and launches a jagged ice spike."

	associated_skill = /datum/skill/magic/holy
	antimagic_allowed = TRUE
	charge_max = 10 SECONDS
	devotion_cost = -45

/obj/projectile/magic/purify
	name = "purification"
	icon_state = "icespikeproj"
	icon = 'icons/roguetown/kaizoku/misc/spells.dmi'
	paralyze = 50
	damage = 0
	range = 7
	hitsound = 'sound/blank.ogg'
	nondirectional_sprite = TRUE
	impact_effect_type = /obj/effect/temp_visual/icespikeproj_projectile_impact //See if we can set it to be a projectile if CMODE, and a invocation if !CMODE

/obj/effect/temp_visual/icespikeproj_projectile_impact
	name = "purifying spike"
	icon = 'icons/roguetown/kaizoku/misc/spells.dmi'
	icon_state = "icespikeproj_break"
	layer = ABOVE_ALL_MOB_LAYER
	duration = 3

/obj/projectile/magic/purify/on_hit(atom/target, mob/living/user, blocked = FALSE)
	..()
	var/mob/living/carbon/C = target
	if(iscarbon(target))
		if(C.mob_biotypes & MOB_SPIRIT) // Abyssor's purifying filter absolutely destroys demonic essence.
			C.visible_message("<span class='info'>An otherworldly divine freeze encircles [target], filtering out their very existence!</span>", "<span class='notice'>My breath shallows- my ears rings, my senses overwhelmed with the crushing grip! I'M GOING TO IMPLODE FROM INSIDE OUT! PLEASE MERCY!</span>")
			C.adjustFireLoss(rand(50, 100)) //Random damage between 50 and 100. Very brutal, and proper for killing demons. Cold damage will come together with it after.
			C.Knockdown(40) //Purification successful. You will be paralyzed.
			C.Paralyze(1)
			C.apply_status_effect(/datum/status_effect/debuff/freezing/severe)
			C.flash_fullscreen("whiteflash3")
			return
		if((C.faction = "orcs") || (C.dna.species?.id == "tiefling") ||(HAS_TRAIT(C, TRAIT_NASTY_EATER ))) // Had to give them these ones because there's a bunch of different goblin IDs. So Trait will have to stay until I care about giving each a respective var.
			C.visible_message("<span class='danger'>[target]'s body is distorted by the crushing force of the abyssal waters!</span>", "<span class='userdanger'>I feel the suffocating pressure of the deep crushing my lungs!</span>")
			C.adjustFireLoss(rand(30, 50)) // 30 to 50 damage, less than full demons. More damage comes from freezing.
			C.Knockdown(20) //Purification successful. You will be paralyzed.
			C.Paralyze(1) // Creatures with demon essence from Apotheosis war gets the second end of the stick.
			C.apply_status_effect(/datum/status_effect/debuff/freezing/severe)
			C.flash_fullscreen("whiteflash3")
			return
		if(C.dna.species?.id == "abyssariad"||C.dna.species?.id == "aasimar") //Barely does anything to "Pure" creatures. This proves their 'divinity' and purity ingame.
			C.visible_message("<span class='danger'>[target]'s body shivers slightly, yet remains sturdy.</span>", "<span class='userdanger'>A cold travel down my spine, yet I feel little to no pain.</span>")
			C.adjustBruteLoss(rand(5, 15)) // 10 to 15 damage. Don't even bother attacking these. They will not be frozen either.
			return
		else //Does not paralyze.
			C.visible_message("<span class='danger'>[target]'s body is distorted by the crushing force of the abyssal waters!</span>", "<span class='userdanger'>I feel the suffocating pressure of the deep crushing my lungs!</span>")
			C.adjustFireLoss(rand(20, 35)) //Normal creatures will still suffer the effects of Barotrauma, yet less in terms of damage. Will still freeze.
			C.apply_status_effect(/datum/status_effect/debuff/freezing)
			C.flash_fullscreen("whiteflash3")
			return
