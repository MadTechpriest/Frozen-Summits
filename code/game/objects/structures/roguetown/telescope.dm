/obj/structure/telescope
	name = "telescope"
	desc = "A mysterious telescope pointing towards the stars."
	icon = 'icons/roguetown/misc/structure.dmi'
	icon_state = "telescope"
	density = TRUE
	anchored = FALSE

/obj/structure/telescope/attack_hand(mob/user)
	if(!ishuman(user))
		return

	var/mob/living/carbon/human/H = user
	var/random_message = pick("Selune is beautiful tonight.", "Looking at the Sun blinds you!", "The stars smile at you.", "Just the endless Astral Sea.", "You see a spelljammer!", "You see a star!", "You see a strange vortex!" , "Something looks back at you!", "A Dragon circles in the distance!")
	to_chat(H, span_notice("[random_message]"))

	if(random_message == "Looking at the Sun blinds you!")
		if(do_after(H, 25, target = src))
			var/obj/item/bodypart/affecting = H.get_bodypart("head")
			to_chat(H, span_warning("The blinding light causes you intense pain!"))
			if(affecting && affecting.receive_damage(0, 5))
				H.update_damage_overlays()


/obj/structure/globe
	name = "globe"
	desc = "A mysterious globe representing the world."
	icon = 'icons/roguetown/misc/structure.dmi'
	icon_state = "globe"
	density = TRUE
	anchored = FALSE

/obj/structure/globe/attack_hand(mob/user)
	if(!ishuman(user))
		return

	var/mob/living/carbon/human/H = user
	var/random_message = pick("you spin the globe!", "You land on Frozen Summit!", "You land on Beregost!", "You land on Waterdeep!" , "You land on Thay!" , "You land in the trackless Sea..", "You land on Baldurs Gate!!", "You land on Neverwinter!", "You land on Elturel.. Ohno!", "You land on Luskan!", "You land on Bryn Shander.", "You land on Easthaven.", "You land on Daggerford.", "You land on Calimshan!", "You land on Zazesspur.", "You land on Amn.")
	to_chat(H, span_notice("[random_message]"))
