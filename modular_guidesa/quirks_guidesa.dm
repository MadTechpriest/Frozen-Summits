/datum/quirk/elemental_breath_fire
	name = "Elemental Breath (Fire Breath)"
	desc = "Harness the elemental fury within you to unleash a breath of scorching fire. This power, often gifted by draconic heritage or a deep elemental connection, allows you to exhale a ball of flames, searing the enemies. Its not not as strong as a true dragon breath, the intensity only embodies a little of your lineage's power, but it requires time to recover after each use."
	value = 5

/datum/quirk/elemental_breath_fire/on_spawn()
	var/mob/living/carbon/human/H = quirk_holder
	H.mind.AddSpell(new /obj/effect/proc_holder/spell/invoked/projectile/elemental_fire_breath)

/obj/effect/proc_holder/spell/invoked/projectile/elemental_fire_breath
	name = "Fire Breath"
	desc = "Using your own body energy or organ, you can use fire breath as a minor weapon."
	clothes_req = FALSE
	range = 8
	projectile_type = /obj/projectile/magic/aoe/fireball/firebolt5e
	overlay_state = "fireball_multi"
	sound = list('sound/magic/whiteflame.ogg')
	active = FALSE
	releasedrain = 30
	chargedrain = 1
	chargetime = 3
	charge_max = 15 SECONDS
	warnie = "spellwarning"
	no_early_release = TRUE
	movement_interrupt = FALSE
	charging_slowdown = 3
	chargedloop = /datum/looping_sound/invokegen
	associated_skill = /datum/skill/magic/arcane
	cost = 1
	xp_gain = TRUE

/obj/projectile/magic/aoe/fireball/firebolt5e
	name = "fireball"
	exp_heavy = 0
	exp_light = 0
	exp_flash = 1
	exp_fire = -1
	damage = 35
	damage_type = BURN
	nodamage = FALSE
	flag = "magic"
	hitsound = 'sound/blank.ogg'
	aoe_range = 0

//---------------------------------------------

/datum/quirk/elemental_breath_eletricity
	name = "Elemental Breath (Lighting Breath)"
	desc = "You can unleash a bolt of lightning from your breath, striking enemies in a straight line. This power comes from your draconic heritage or elemental connection and can only be used occasionally as it takes time to recharge."
	value = 5

/datum/quirk/elemental_breath_eletricity/on_spawn()
	var/mob/living/carbon/human/H = quirk_holder
	H.mind.AddSpell(new /obj/effect/proc_holder/spell/invoked/projectile/lightningbolt)





/datum/quirk/elemental_acid
	name = "Elemental Breath (Acid)"
	desc = "You can breath acid. Ouch."
	value = 5

/datum/quirk/elemental_acid/on_spawn()
	var/mob/living/carbon/human/H = quirk_holder
	H.mind.AddSpell(new /obj/effect/proc_holder/spell/invoked/projectile/acidsplash5e)






//---------------------

/datum/quirk/xenophobic
	name = "Xenophobic"
	desc = "Thoses filthy lesser races, to even look at them makes me feel disgust."
	value = -7

/datum/quirk/xenophobic/on_spawn()
	var/mob/living/carbon/human/H = quirk_holder
	ADD_TRAIT(H, TRAIT_XENOPHOBIC, TRAIT_GENERIC)




/datum/quirk/tolerant
	name = "Tolerant"
	desc = "Well, people are alright i guess."
	value = 2

/datum/quirk/tolerant/on_spawn()
	var/mob/living/carbon/human/H = quirk_holder
	ADD_TRAIT(H, TRAIT_TOLERANT, TRAIT_GENERIC)


/datum/quirk/nosey
	name = "Nosey"
	desc = "I can grab people by their nose!"
	value = 3

/datum/quirk/nosey/on_spawn()
	var/mob/living/carbon/human/H = quirk_holder
	ADD_TRAIT(H, TRAIT_NOSEGRAB, TRAIT_GENERIC)


/datum/quirk/nutcracker
	name = "Nutkicker"
	desc = "I can kick people in the nuts and CRACK them... even not having one does not save them from me."
	value = 4

/datum/quirk/nutcracker/on_spawn()
	var/mob/living/carbon/human/H = quirk_holder
	ADD_TRAIT(H, TRAIT_NUTCRACKER, TRAIT_GENERIC)

/datum/quirk/critical_weakness
	name = "Critically Weak"
	desc = "I am quick to wound, and a fracture on my head would be my doom. "
	value = -15

/datum/quirk/critical_weakness/on_spawn()
	var/mob/living/carbon/human/H = quirk_holder
	ADD_TRAIT(H, TRAIT_CRITICAL_WEAKNESS, TRAIT_GENERIC)

/datum/quirk/good_trainer
	name = "Good Trainer"
	desc = "I am good at training people."
	value = 0

/datum/quirk/good_trainer/on_spawn()
	var/mob/living/carbon/human/H = quirk_holder
	ADD_TRAIT(H, TRAIT_GOODTRAINER, TRAIT_GENERIC)

/datum/quirk/one_eye_l
	name = "Bad Eye (Left)"
	desc = "My left eye is bad, wounded, or lost, and thus my vision is bad"
	value = -5

/datum/quirk/one_eye_l/on_spawn()
	var/mob/living/carbon/human/H = quirk_holder
	ADD_TRAIT(H, TRAIT_CYCLOPS_LEFT, TRAIT_GENERIC)

/datum/quirk/one_eye_r
	name = "Bad Eye (Right)"
	desc = "My Right eye is bad, wounded, or lost, and thus my vision is bad"
	value = -5

/datum/quirk/one_eye_r/on_spawn()
	var/mob/living/carbon/human/H = quirk_holder
	ADD_TRAIT(H, TRAIT_CYCLOPS_RIGHT, TRAIT_GENERIC)


/datum/quirk/one_eye_both
	name = "Bad Eye (Both)"
	desc = "My both eyes are bad. My vision is really limited."
	value = -5

/datum/quirk/one_eye_both/on_spawn()
	var/mob/living/carbon/human/H = quirk_holder
	ADD_TRAIT(H, TRAIT_CYCLOPS_BOTH_EYES, TRAIT_GENERIC)


/datum/quirk/immune_eletricity
	name = "Shock Immunity"
	desc = "Due to my blood heritage, fey magic, or elemental prowess, i am immune to a degree to shocks."
	value = 15

/datum/quirk/immune_eletricity/on_spawn()
	var/mob/living/carbon/human/H = quirk_holder
	ADD_TRAIT(H, TRAIT_SHOCKIMMUNE, TRAIT_GENERIC)

/datum/quirk/seed_knower
	name = "Seed Knower"
	desc = "Due to teachings i had, i know which seed is which when i look at them."
	value = 2

/datum/quirk/seed_knower/on_spawn()
	var/mob/living/carbon/human/H = quirk_holder
	ADD_TRAIT(H, TRAIT_SEEDKNOW, TRAIT_GENERIC)




/datum/quirk/pugilist
	name = "Pugilist"
	desc = "I am good at punching people."
	value = 2

/datum/quirk/pugilist/on_spawn()
	var/mob/living/carbon/human/H = quirk_holder
	ADD_TRAIT(H, TRAIT_PUGILIST, TRAIT_GENERIC)




/datum/quirk/bed_breaker
	name = "Bed Breaker"
	desc = "Usually i hurt others really badly in the bed when i want to."
	value = 0

/datum/quirk/bed_breaker/on_spawn()
	var/mob/living/carbon/human/H = quirk_holder
	ADD_TRAIT(H, TRAIT_DEATHBYSNOOSNOO, TRAIT_GENERIC)

/datum/quirk/strong_throw
	name = "Strong Throw"
	desc = "By being big, or knowing how to throw stuff, i can hurl stuffs in a greater force in larger distance."
	value = 2

/datum/quirk/strong_throw/on_spawn()
	var/mob/living/carbon/human/H = quirk_holder
	ADD_TRAIT(H, TRAIT_STRONGTHROW, TRAIT_GENERIC)



/datum/quirk/martist
	name = "Martial Artist"
	desc = "I know martial arts to a degree, and i can use it in battle, like kicks in a better manner."
	value = 2

/datum/quirk/martist/on_spawn()
	var/mob/living/carbon/human/H = quirk_holder
	ADD_TRAIT(H, TRAIT_MARTIALARTIST, TRAIT_GENERIC)


/datum/quirk/bash_door
	name = "Door Basher"
	desc = "Due to my terrifying size or merely my body, i can bash into doors, and break them."
	value = 3

/datum/quirk/bash_door/on_spawn()
	var/mob/living/carbon/human/H = quirk_holder
	ADD_TRAIT(H, TRAIT_BASHDOORS, TRAIT_GENERIC)

/datum/quirk/silver_bless
	name = "Silver Blessed"
	desc = "I was blessed by the moonmaiden since i was little, completing the trial of the forest under her guidance under the moon made me slightly more special than others."
	value = 6

/datum/quirk/silver_bless/on_spawn()
	var/mob/living/carbon/human/H = quirk_holder
	ADD_TRAIT(H, TRAIT_SILVER_BLESSED, TRAIT_GENERIC)


/datum/quirk/nyctophobia
	name = "Nyctophobia"
	desc = "I fear the dark..."
	value = -6
	medical_record_text = "Patient demonstrates a fear of the dark. (Seriously?)"

/datum/quirk/nyctophobia/on_process()
	var/mob/living/carbon/human/H = quirk_holder
	if(H.dna.species.id in list("shadow", "nightmare"))
		return //we're tied with the dark, so we don't get scared of it; don't cleanse outright to avoid cheese
	var/turf/T = get_turf(quirk_holder)
	var/lums = T.get_lumcount()
	if(lums <= 0.2)
		if(quirk_holder.m_intent == MOVE_INTENT_RUN)
			to_chat(quirk_holder, span_warning("Easy, easy, I need to take it slow... I am in the dark..."))
			quirk_holder.toggle_move_intent(MOVE_INTENT_WALK)


/datum/quirk/weird_weapons
	name = "Ritual Weaponary"
	desc = "You have a few less than conventional weapons stashed around."


/datum/quirk/weird_weapons/on_spawn()
	var/mob/living/carbon/human/H = quirk_holder
	H.mind.special_items["Bone Scythe"] = /obj/item/rogueweapon/sword/iron/scythe
	H.mind.special_items["Enchanted Iron Sword"] = /obj/item/rogueweapon/sword/iron/cultist_Sword
	H.mind.special_items["Giant Cleaver"] = /obj/item/rogueweapon/sword/iron/cleaver











//-----------------------------------

////////////////////////
///  STRENGTH QUIRKS ///
////////////////////////

/datum/quirk/strong
	name = "Stats: Strong"
	desc = "I possess exceptional strength, making heavy lifting and physical tasks much easier for me. (+2 Strenght)"
	value = 2

/datum/quirk/strong/on_spawn()
	var/mob/living/carbon/human/H = quirk_holder
	H.change_stat("strength", 2)

/datum/quirk/weak
	name = "Stats: Weak"
	desc = "I lack physical strength, struggling with tasks requiring brute force. (-2 Strenght)"
	value = -2

/datum/quirk/weak/on_spawn()
	var/mob/living/carbon/human/H = quirk_holder
	H.change_stat("strength", -2)

////////////////////////////
///  PERCEPTION QUIRKS   ///
////////////////////////////

/datum/quirk/keen_eyes
	name = "Stats: Keen Eyes"
	desc = "I have sharp eyesight and a heightened sense of awareness. (+ 2 Perception)"
	value = 2

/datum/quirk/keen_eyes/on_spawn()
	var/mob/living/carbon/human/H = quirk_holder
	H.change_stat("perception", 2)

/datum/quirk/unobservant
	name = "Stats: Unobservant"
	desc = "I struggle to notice things around me, often missing important details. (- 2 Perception)"
	value = -2

/datum/quirk/unobservant/on_spawn()
	var/mob/living/carbon/human/H = quirk_holder
	H.change_stat("perception", -2)

///////////////////////////////
///  INTELLIGENCE QUIRKS    ///
///////////////////////////////

/datum/quirk/genius
	name = "Stats: Genius"
	desc = "I have an extraordinary intellect, excelling at problem-solving and learning. (+ 2 Intelligence)"
	value = 2

/datum/quirk/genius/on_spawn()
	var/mob/living/carbon/human/H = quirk_holder
	H.change_stat("intelligence", 2)

/datum/quirk/dimwitted
	name = "Stats: Dimwitted"
	desc = "I struggle with intellectual challenges and learning new things. (- 2 Intelligence)"
	value = -2

/datum/quirk/dimwitted/on_spawn()
	var/mob/living/carbon/human/H = quirk_holder
	H.change_stat("intelligence", -2)

///////////////////////////////
///  CONSTITUTION QUIRKS    ///
///////////////////////////////

/datum/quirk/resilient
	name = "Stats: Resilient"
	desc = "I have an incredibly tough constitution, allowing me to endure harsh conditions. (+ 2 Constitution)"
	value = 2

/datum/quirk/resilient/on_spawn()
	var/mob/living/carbon/human/H = quirk_holder
	H.change_stat("constitution", 2)

/datum/quirk/frail
	name = "Stats: Frail"
	desc = "My constitution is weak, making me susceptible to injuries and illnesses. (- 2 Constitution)"
	value = -2

/datum/quirk/frail/on_spawn()
	var/mob/living/carbon/human/H = quirk_holder
	H.change_stat("constitution", -2)

/////////////////////////////
///  ENDURANCE QUIRKS    ///
/////////////////////////////

/datum/quirk/stamina_boost
	name = "Stats: Enduring"
	desc = "I can keep going when others would give up, rarely tiring. (+ 2 Endurance)"
	value = 2

/datum/quirk/stamina_boost/on_spawn()
	var/mob/living/carbon/human/H = quirk_holder
	H.change_stat("endurance", 2)

/datum/quirk/exhausted
	name = "Stats: Exhausted"
	desc = "I tire easily, unable to keep up with physically demanding tasks for long. (- 2 Endurance)"
	value = -2

/datum/quirk/exhausted/on_spawn()
	var/mob/living/carbon/human/H = quirk_holder
	H.change_stat("endurance", -2)

////////////////////////
///  SPEED QUIRKS   ///
////////////////////////

/datum/quirk/quick
	name = "Stats: Quick"
	desc = "I am faster than average, able to move swiftly when needed. (+ 2 Speed)"
	value = 2

/datum/quirk/quick/on_spawn()
	var/mob/living/carbon/human/H = quirk_holder
	H.change_stat("speed", 2)

/datum/quirk/slow
	name = "Stats: Slow"
	desc = "I move slower than most, often lagging behind. (- 2 Speed)"
	value = -2

/datum/quirk/slow/on_spawn()
	var/mob/living/carbon/human/H = quirk_holder
	H.change_stat("speed", -2)

///////////////////////////////
///  FORTUNE (LUCK) QUIRKS  ///
///////////////////////////////

/datum/quirk/lucky
	name = "Stats: Lucky"
	desc = "Fortune seems to smile upon me, with good outcomes happening more often. (+ 2 Fortune)"
	value = 2

/datum/quirk/lucky/on_spawn()
	var/mob/living/carbon/human/H = quirk_holder
	H.change_stat("fortune", 2)

/datum/quirk/unlucky
	name = "Stats: Unlucky"
	desc = "Bad luck seems to follow me wherever I go, with things going wrong unexpectedly. (- 2 Fortune)"
	value = -2

/datum/quirk/unlucky/on_spawn()
	var/mob/living/carbon/human/H = quirk_holder
	H.change_stat("fortune", -2)
