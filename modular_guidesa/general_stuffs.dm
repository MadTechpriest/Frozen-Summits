/obj/effect/proc_holder/spell/targeted/shapeshift/werewolf_m // THIS IS FUCKING AWFUL
	name = "Werewolf Form"
	desc = "Call upon the curse of lycanthropy, transforming into a werewolf to unleash primal fury. In this form, you embody the predatory instincts and resilience of the lycanthrope, gaining enhanced physical prowess and feral abilities. While in this state, your actions teeter on the edge of control, driven by the beast within."
	invocation = "RAAAAAAAAAAAAAAAAAAAAAAAAWR!!"
	charge_max = 120 SECONDS
	revert_on_death = TRUE
	die_with_shapeshifted_form = FALSE
	convert_damage = TRUE
	convert_damage_type = BRUTE
	sound = 'sound/combat/gib (1).ogg'
	shapeshift_type = /mob/living/carbon/human/species/werewolf/male

/obj/effect/proc_holder/spell/targeted/shapeshift/werewolf_f
	name = "Werewolf Form"
	desc = "Call upon the curse of lycanthropy, transforming into a werewolf to unleash primal fury. In this form, you embody the predatory instincts and resilience of the lycanthrope, gaining enhanced physical prowess and feral abilities. While in this state, your actions teeter on the edge of control, driven by the beast within."
	invocation = "RAAAAAAAAAARRRRARAAAAAAAAAWR!!"
	charge_max = 120 SECONDS
	revert_on_death = TRUE
	die_with_shapeshifted_form = FALSE
	convert_damage = TRUE
	convert_damage_type = BRUTE
	sound = 'sound/combat/gib (1).ogg'
	shapeshift_type = /mob/living/carbon/human/species/werewolf/female

/obj/effect/proc_holder/spell/targeted/shapeshift/wolf_form
	name = "Wolf Form"
	desc = "Call upon nature to transform yourself into a wolf."
	invocation = "RAAAAAAAAAARRRRARAAAAAAAAAWR!!"
	charge_max = 120 SECONDS
	revert_on_death = TRUE
	die_with_shapeshifted_form = FALSE
	convert_damage = TRUE
	convert_damage_type = BRUTE
	sound = 'sound/combat/gib (1).ogg'
	shapeshift_type = /mob/living/simple_animal/hostile/retaliate/rogue/wolf

/obj/effect/proc_holder/spell/targeted/shapeshift/rat_form
	name = "Rat Form"
	desc = "Call upon nature to transform yourself into a rat."
	invocation = "RAAAAAAAAAARRRRARAAAAAAAAAWR!!"
	charge_max = 120 SECONDS
	revert_on_death = TRUE
	die_with_shapeshifted_form = FALSE
	convert_damage = TRUE
	convert_damage_type = BRUTE
	sound = 'sound/combat/gib (1).ogg'
	shapeshift_type = /mob/living/simple_animal/hostile/retaliate/rogue/bigrat

/obj/effect/proc_holder/spell/targeted/shapeshift/dragon_form
	name = "Dragon Form"
	desc = "Call upon your draconic lineage to transform yourself into a dragon."
	invocation = "RAAAAAAAAAARRRRARAAAAAAAAAWR!!"
	charge_max = 120 SECONDS
	revert_on_death = TRUE
	die_with_shapeshifted_form = FALSE
	convert_damage = TRUE
	convert_damage_type = BRUTE
	sound = 'sound/combat/gib (1).ogg'
	shapeshift_type = /mob/living/simple_animal/hostile/retaliate/rogue/dragon/broodmother/whelp


/obj/effect/proc_holder/spell/self/rename_self
	name = "Rename Self"
	desc = "Allows you to rename yourself. Choose wisely!"
	school = "illusion"
	human_req = FALSE
	clothes_req = FALSE
	charge_max = 120 SECONDS
	miracle = FALSE
	invocation = ""

	cast(mob/living/user = usr)
		if(!user)
			return
		// Prompt the user for a new name
		var/new_name = input(user, "Enter your new name:", "Rename Self") as null|text
		if(!new_name || new_name == "") // If no name is entered, cancel
			to_chat(user, "You decide to stick with your current name.")
			return
		to_chat(user, "You have chosen a new name: [new_name]!")
		user.real_name = new_name // Update the user's actual name



//-----------------------------
/mob/living/simple_animal/hostile/retaliate/rogue/dragon/broodmother/whelp
	health = 350
	maxHealth = 350
	name = "dragon youngling"
	projectiletype = /obj/projectile/magic/aoe/fireball/rogue/great
	projectilesound = 'sound/blank.ogg'
	ranged = 1
	ranged_message = "breathes fire"
	ranged_cooldown_time = 45 SECONDS
