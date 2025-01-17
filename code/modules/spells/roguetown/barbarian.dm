// Barbarian
/obj/effect/proc_holder/spell/invoked/barbarian_rage
	name = "Rage"
	desc = "Fly into a rage increasing your physical stats."
	range = 1
	overlay_state = "null"
	releasedrain = 30
	cast_without_targets = TRUE
	charge_max = 60 SECONDS
	movement_interrupt = FALSE
	sound = 'sound/vo/male/warrior/rage (3).ogg' //change for gender later or do warcry which I don't know how to do rn.
	associated_skill = /datum/skill/magic/druidic
	invocation = "RAAAAAAAAAAAAAA!!"
	miracle = FALSE
	invocation_type = "shout" //can be none, whisper, emote and shout

/obj/effect/proc_holder/spell/invoked/barbarian_rage/cast(list/targets, mob/living/user)
	if(user && user.mind)
		user.visible_message("<span class='info'>[user]'s muscles tense up beyond imagination.</span>")
		user.add_stress(/datum/stressevent/barbarian_rage)
		user.apply_status_effect(/datum/status_effect/buff/barbarian_rage)
		user.adjustStaminaLoss(-100)
		return TRUE
	return FALSE

/datum/status_effect/buff/barbarian_rage
	id = "barbarian rage"
	alert_type = /atom/movable/screen/alert/status_effect/buff/barbarian_rage
	effectedstats = list("speed" = 2, "endurance" = 2, "strength" = 4)
	duration = 45 SECONDS

/atom/movable/screen/alert/status_effect/buff/barbarian_rage
	name = "Rage"
	desc = "Rage fills my heart and my muscles."
	icon_state = "buff"

/datum/status_effect/buff/barbarian_rage/on_remove()
	var/mob/living/carbon/M = owner
	var/mob/living/target = owner
	M.rogfat_add(100)
	M.rogstam_add(100)
	target.adjustOxyLoss(50)
	target.visible_message("<span class='info'>[owner]'s rage subsides.</span>", "<span class='notice'>My rage subsides.</span>")
	target.apply_status_effect(/atom/movable/screen/alert/status_effect/debuff/muscle_sore)
	M.updatehealth()
	. = ..()

/datum/stressevent/barbarian_rage
	timer = 5 MINUTES
	stressadd = 6
	max_stacks = 10 //don't rage spam or you WILL have a heart attack
