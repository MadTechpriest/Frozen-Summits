/mob/living/carbon/human
	/// List of curses on this mob
	var/list/curses = list()

/datum/curse
	var/name = "Debug Curse"

	/// Whats shown to the player upon being cursed
	var/description = "This is a debug curse."

	/// Trait given by this curse
	var/trait

/datum/curse/proc/on_life()
	return

/datum/curse/proc/on_death()
	return

/datum/curse/proc/on_gain(mob/living/carbon/human/owner)
	ADD_TRAIT(owner, trait, TRAIT_CURSE)
	to_chat(owner, span_userdanger("Something is wrong... I feel cursed."))
	to_chat(owner, span_danger(description))
	owner.playsound_local(get_turf(owner), 'sound/misc/cursed.ogg', 80, FALSE, pressure_affected = FALSE)
	return

/datum/curse/proc/on_loss(mob/living/carbon/human/owner)
	REMOVE_TRAIT(owner, trait, TRAIT_CURSE)
	to_chat(owner, span_userdanger("Something has changed... I feel relieved."))
	owner.playsound_local(get_turf(owner), 'sound/misc/curse_lifted.ogg', 80, FALSE, pressure_affected = FALSE)
	qdel(src)
	return

/mob/living/carbon/human/proc/handle_curses()
	for(var/curse in curses)
		var/datum/curse/C = curse
		C.on_life(src)


/mob/living/carbon/human/Life()
	..()
	handle_curses()

/mob/living/carbon/human/proc/add_curse(datum/curse/C)
	if(is_cursed(C))
		return FALSE

	C = new C()
	curses += C
	C.on_gain(src)
	return TRUE

/mob/living/carbon/human/proc/remove_curse(datum/curse/C)
	if(!is_cursed(C))
		return FALSE
	
	for(var/datum/curse/curse in curses)
		if(curse.name == C.name)
			curse.on_loss(src)
			curses -= curse
			return TRUE

	return FALSE

/mob/living/carbon/human/proc/is_cursed(datum/curse/C)
	if(!C)
		return FALSE

	for(var/datum/curse/curse in curses)
		if(curse.name == C.name)
			return TRUE
	
	return FALSE

//////////////////////
/// SPECIAL CURSES ///
//////////////////////

/datum/curse/atheism
	name = "Curse of the Unbeliever"
	description = "I cannot stand any mention of the divine, and I refuse to believe either the gods or miracles are real."
	trait = TRAIT_ATHEISM_CURSE
	var/datum/patron/old_patron

//////////////////////
///   TEN CURSES   ///
//////////////////////

/datum/curse/astrata
	name = "Hex of the Forsaken"
	description = "The divine have turned their backs on me. Healing magic and miracles have no effect."
	trait = TRAIT_ASTRATA_CURSE

/datum/curse/noc
	name = "Hex of the Shattered Mind"
	description = "The secrets of magic slip through my fingers like sand. Knowledge is forever out of reach."
	trait = TRAIT_NOC_CURSE

/datum/curse/ravox
	name = "Hex of the Pacifist"
	description = "A deep revulsion for violence grips my soul. I cannot bring myself to wield weapons."
	trait = TRAIT_RAVOX_CURSE

/datum/curse/necra
	name = "Hex of the Grim Gate"
	description = "Death has claimed me, body and soul. No force can return me from the grave."
	trait = TRAIT_NECRA_CURSE

/datum/curse/xylix
	name = "Hex of Misfortune"
	description = "Luck has abandoned me. Fortune's favor no longer smiles upon my deeds."
	trait = TRAIT_XYLIX_CURSE

/datum/curse/pestra
	name = "Hex of Decay"
	description = "A foul sickness festers within me. My body rots as my strength wanes."
	trait = TRAIT_PESTRA_CURSE

/datum/curse/eora
	name = "Hex of the Heartless"
	description = "My heart is a hollow void. I am incapable of love or affection, be it physical or emotional."
	trait = TRAIT_EORA_CURSE

//////////////////////
/// INFERNAL HEXES ///
//////////////////////

/datum/curse/graggar
	name = "Curse of Eternal Rage"
	description = "An infernal anger burns within me. I cannot stop lashing out at others, and in their absence, I turn on myself."
	trait = TRAIT_GRAGGAR_CURSE

/datum/curse/matthios
	name = "Curse of Avarice's Scorn"
	description = "Gold and riches fill me with loathing. I cannot bear the sight or touch of wealth."
	trait = TRAIT_MATTHIOS_CURSE	

/datum/curse/baotha
	name = "Curse of Unbridled Desire"
	description = "A constant, insatiable lust consumes me. I cannot control my urges or cravings."
	trait = TRAIT_BAOTHA_CURSE

/datum/curse/nympho
	name = "Nymph's Curse"
	description = "I'm in a constant state of arousal, and I cannot control my urges, even clothes get me off..."
	trait = TRAIT_NYMPHO_CURSE

//////////////////////
/// ON GAIN / LOSS ///
//////////////////////

/datum/curse/atheism/on_gain(mob/living/carbon/human/owner)
	. = ..()
	old_patron = owner.patron
	owner.patron = /datum/patron/godless
	owner.gain_trauma(/datum/brain_trauma/mild/phobia/religion)

/datum/curse/atheism/on_loss(mob/living/carbon/human/owner)
	. = ..()
	owner.patron = old_patron
	owner.cure_trauma_type(/datum/brain_trauma/mild/phobia/religion)


/datum/curse/xylix/on_gain(mob/living/carbon/human/owner)
	. = ..()
	owner.STALUC -= 10

/datum/curse/xylix/on_loss(mob/living/carbon/human/owner)
	. = ..()
	owner.STALUC += 10


//////////////////////
///    ON LIFE     ///
//////////////////////

/datum/curse/pestra/on_life(mob/living/carbon/human/owner)
	. = ..()		
	if(owner.mob_timers["pestra_curse"])
		if(world.time < owner.mob_timers["pestra_curse"] + rand(30,60)SECONDS)
			return
	owner.mob_timers["pestra_curse"] = world.time
	var/effect = rand(1, 4)
	switch(effect)
		if(1)
			owner.vomit()
		if(2)
			owner.Unconscious(20)
		if(3)
			owner.blur_eyes(10)
		if(4)
			var/obj/item/bodypart/BP = pick(owner.bodyparts)
			BP.rotted = TRUE
			owner.playsound_local(get_turf(owner), 'sound/foley/butcher.ogg', 80, FALSE, pressure_affected = FALSE)
			owner.regenerate_icons()















/datum/curse/baotha/on_life(mob/living/carbon/human/owner)
	. = ..()
	if(owner.mob_timers["baotha_curse_passive"])
		if(world.time < owner.mob_timers["baotha_curse"] + rand(5,30)SECONDS)
			return
	owner.mob_timers["baotha_curse_passive"] = world.time
	owner.sexcon.arousal += 0.1 // Very minor increase
	if(owner.mob_timers["baotha_curse"])
		if(world.time < owner.mob_timers["baotha_curse"] + rand(60,300)SECONDS)
			return
	owner.mob_timers["baotha_curse"] = world.time
	owner.sexcon.arousal += rand(-1,1) // Much smaller range to avoid major shifts

/datum/curse/nympho/on_life(mob/living/carbon/human/owner)
	. = ..()
	if(owner.mob_timers["nympho_curse_passive"])
		if(world.time < owner.mob_timers["nympho_curse"] + rand(5,30)SECONDS)
			return
	owner.mob_timers["nympho_curse_passive"] = world.time
	if(owner.wear_pants)
		if(owner.wear_pants.flags_inv & HIDECROTCH && !owner.wear_pants)
			owner.sexcon.arousal += 0.1 // Extremely minor increase
	if(owner.mob_timers["nympho_curse"])
		if(world.time < owner.mob_timers["nympho_curse"] + rand(60,300)SECONDS)
			return
	owner.mob_timers["nympho_curse"] = world.time
	if(owner.wear_pants)
		if(owner.wear_pants.flags_inv & HIDECROTCH && !owner.wear_pants)
			if(rand(5))
				to_chat(owner, span_love("I feel my [owner.wear_pants] rub against me..."))
			owner.sexcon.arousal += rand(0.3,0.5) // Smaller range for gradual buildup











/datum/curse/graggar/on_life(mob/living/carbon/human/owner)
	. = ..()		
	if(owner.mob_timers["graggar_curse"])
		if(world.time < owner.mob_timers["graggar_curse"] + rand(15,60)SECONDS)
			return
	owner.mob_timers["graggar_curse"] = world.time

	for(var/mob/living/carbon/human in view(1, owner))
		owner.emote("rage")
		human.attacked_by(owner.get_active_held_item(), owner)
		owner.cursed_freak_out()
		break

// Currently calls maniac hallucinations
/datum/curse/zizo/on_life(mob/living/carbon/human/owner)
	. = ..()
	handle_maniac_hallucinations(owner)
	handle_maniac_floors(owner)
	handle_maniac_walls(owner)


// cursed_freak_out() is freak_out() without stress adjustments
// bandaid deserves a second look
/mob/living/proc/cursed_freak_out()
	return

/mob/proc/do_cursed_freakout_scream()
	emote("scream", forced=TRUE)

/mob/living/carbon/cursed_freak_out()
	if(mob_timers["freakout"])
		if(world.time < mob_timers["freakout"] + 10 SECONDS)
			flash_fullscreen("stressflash")
			return
	mob_timers["freakout"] = world.time
	shake_camera(src, 1, 3)
	flash_fullscreen("stressflash")
	changeNext_move(CLICK_CD_EXHAUSTED)
	emote("fatigue", forced = TRUE)
	if(get_stress_amount() > 15)
		addtimer(CALLBACK(src, TYPE_PROC_REF(/mob, do_freakout_scream)), rand(30,50))

	if(hud_used)
		var/matrix/skew = matrix()
		skew.Scale(2)
		var/matrix/newmatrix = skew 
		for(var/C in hud_used.plane_masters)
			var/atom/movable/screen/plane_master/whole_screen = hud_used.plane_masters[C]
			if(whole_screen.plane == HUD_PLANE)
				continue
			animate(whole_screen, transform = newmatrix, time = 1, easing = QUAD_EASING)
			animate(transform = -newmatrix, time = 30, easing = QUAD_EASING)
	
