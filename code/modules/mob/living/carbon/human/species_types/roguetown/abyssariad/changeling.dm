
	/*==============*
	*				*
	*   Changeling 	*
	*				*
	*===============*/

/mob/living/carbon/human/species/abyssariad/changeling
	race = /datum/species/abyssariad/changeling

/datum/species/abyssariad/changeling
	name = "Changeling"
	id = "abyssariad"
	desc = "<b>Storm branched Champions</b><br>\
	Molded from Abyssor's tumultuous embrace of storm and will, the Changelings are a warrior, demiurgic race \
	deeply bonded with honor and ethos that intertwines with the tempestuous forces of Abyssor, \
	never set on a balance, all Changelings are extreme as the storms, with the tendency to be both \
	hermeticly humble and quick tempered, and know for either loving duel for honor's sake \
	- or being the most radical martial pacifists on the planet. Their society almost crumbled \
	during The Bloody Apotheosis, but their bronze-age traditions lives on together with a deep \
	hatred for all things Graggar. Their biology allows high degree of fleshbending, their faces exactly alike masks. \
	They are noble souls that, when not belonging to military or clerical jobs, usually partakes \
	in the society's intelligentsia division, usually as astronomers, alchemists and surgeons. \
	+1 strength, +1 intelligence, -1 perception."
	inherent_traits = list(
		TRAIT_NOCSIGHT,
		TRAIT_BEAUTIFUL,
		TRAIT_SEA_DRINKER,
		TRAIT_STRONGBITE,
		TRAIT_LONGSTRIDER,
	)

	skin_tone_wording = "Championage Branch"

	species_traits = list(EYECOLOR,HAIR,FACEHAIR,LIPS)
	inherent_traits = list(TRAIT_NOMOBSWAP)
	default_features = MANDATORY_FEATURE_LIST
	use_skintones = 1
	possible_ages = ALL_AGES_LIST //Abyssariads are Immortal. However, if they become stray from Abyssor - they suffer severe dementia, and after some decades, become Dais.
	skinned_type = /obj/item/stack/sheet/animalhide/human
	disliked_food = NONE
	liked_food = MEAT
	changesource_flags = MIRROR_BADMIN | WABBAJACK | MIRROR_MAGIC | MIRROR_PRIDE | RACE_SWAP | SLIME_EXTRACT
	limbs_icon_m = 'icons/roguetown/kaizoku/abyssariad_bodies/male/mt_kit.dmi'
	limbs_icon_f = 'icons/roguetown/kaizoku/abyssariad_bodies/female/ft_kit.dmi'
	dam_icon = 'icons/roguetown/mob/bodies/dam/dam_male.dmi'
	dam_icon_f = 'icons/roguetown/mob/bodies/dam/dam_female.dmi'
	hairyness = ""
	use_f = FALSE
	soundpack_m = /datum/voicepack/male/abyssariad
	soundpack_f = /datum/voicepack/female

	offset_features = list(OFFSET_ID = list(0,1), OFFSET_GLOVES = list(0,1), OFFSET_WRISTS = list(0,1),\
	OFFSET_CLOAK = list(0,1), OFFSET_FACEMASK = list(0,1), OFFSET_HEAD = list(0,1), \
	OFFSET_FACE = list(0,1), OFFSET_BELT = list(0,1), OFFSET_BACK = list(0,1), \
	OFFSET_NECK = list(0,1), OFFSET_MOUTH = list(0,1), OFFSET_PANTS = list(0,1), \
	OFFSET_SHIRT = list(0,1), OFFSET_ARMOR = list(0,1), OFFSET_HANDS = list(0,1), OFFSET_UNDIES = list(0,1), \
	OFFSET_ID_F = list(0,-1), OFFSET_GLOVES_F = list(0,1), OFFSET_WRISTS_F = list(0,1), OFFSET_HANDS_F = list(0,1), \
	OFFSET_CLOAK_F = list(0,1), OFFSET_FACEMASK_F = list(0,0), OFFSET_HEAD_F = list(0,0), \
	OFFSET_FACE_F = list(0,0), OFFSET_BELT_F = list(0,1), OFFSET_BACK_F = list(0,0), \
	OFFSET_NECK_F = list(0,0), OFFSET_MOUTH_F = list(0,0), OFFSET_PANTS_F = list(0,1), \
	OFFSET_SHIRT_F = list(0,1), OFFSET_ARMOR_F = list(0,1), OFFSET_UNDIES_F = list(0,1))

	race_bonus = list(STAT_STRENGTH = 1, STAT_INTELLIGENCE = 1, STAT_CONSTITUTION = -1)
	enflamed_icon = "widefire"
	organs = list(
		ORGAN_SLOT_BRAIN = /obj/item/organ/brain,
		ORGAN_SLOT_HEART = /obj/item/organ/heart,
		ORGAN_SLOT_LUNGS = /obj/item/organ/lungs,
		ORGAN_SLOT_EYES = /obj/item/organ/eyes/night_vision/werewolf,
		ORGAN_SLOT_EARS = /obj/item/organ/ears,
		ORGAN_SLOT_TONGUE = /obj/item/organ/tongue/kitsune,
		ORGAN_SLOT_LIVER = /obj/item/organ/liver,
		ORGAN_SLOT_STOMACH = /obj/item/organ/stomach,
		ORGAN_SLOT_APPENDIX = /obj/item/organ/appendix,
		)

	bodypart_features = list(
		/datum/bodypart_feature/hair/head,
		/datum/bodypart_feature/hair/facial,
	)
	body_marking_sets = list(
		/datum/body_marking_set/none,
		/datum/body_marking_set/belly,
		/datum/body_marking_set/bellysocks,
		/datum/body_marking_set/tiger,
		/datum/body_marking_set/tiger_dark,
	)
	body_markings = list(
		/datum/body_marking/flushed_cheeks,
		/datum/body_marking/eyeliner,
		/datum/body_marking/plain,
		/datum/body_marking/tiger,
		/datum/body_marking/tiger/dark,
		/datum/body_marking/sock,
		/datum/body_marking/socklonger,
		/datum/body_marking/tips,
		/datum/body_marking/bellyscale,
		/datum/body_marking/bellyscaleslim,
		/datum/body_marking/bellyscalesmooth,
		/datum/body_marking/bellyscaleslimsmooth,
		/datum/body_marking/buttscale,
		/datum/body_marking/belly,
		/datum/body_marking/bellyslim,
		/datum/body_marking/butt,
		/datum/body_marking/tie,
		/datum/body_marking/tiesmall,
		/datum/body_marking/backspots,
		/datum/body_marking/front,
		/datum/body_marking/drake_eyes,
		/datum/body_marking/tonage,
		/datum/body_marking/spotted,
	)
	customizers = list(
		/datum/customizer/organ/eyes/humanoid,
		/datum/customizer/bodypart_feature/hair/head/humanoid,
		/datum/customizer/bodypart_feature/hair/facial/humanoid,
		/datum/customizer/bodypart_feature/accessory,
		/datum/customizer/bodypart_feature/face_detail,
		/datum/customizer/bodypart_feature/underwear,
		/datum/customizer/organ/tail/anthro,
		/datum/customizer/organ/testicles/anthro,
		/datum/customizer/organ/penis/anthro,
		/datum/customizer/organ/breasts/human,
		/datum/customizer/organ/belly/human,
		/datum/customizer/organ/butt/human,
		/datum/customizer/organ/vagina/human,
		)
	languages = list(
		/datum/language/common,
		/datum/language/abyssal,
	)
/*  
/datum/species/abyssariad/changeling/check_roundstart_eligible()
	return TRUE
*/
/datum/species/abyssariad/changeling/on_species_gain(mob/living/carbon/C, datum/species/old_species)
	..()
	RegisterSignal(C, COMSIG_MOB_SAY, PROC_REF(handle_speech))

/datum/species/abyssariad/changeling/after_creation(mob/living/carbon/C)
	..()
	to_chat(C, "<span class='info'>I can speak Abyssal with ,j before my speech.</span>")

/datum/species/abyssariad/changeling/on_species_loss(mob/living/carbon/C)
	. = ..()
	UnregisterSignal(C, COMSIG_MOB_SAY)

/datum/species/abyssariad/changeling/qualifies_for_rank(rank, list/features)
	return TRUE

/datum/species/abyssariad/changeling/get_skin_list()
	return sortList(list(
		"Oathbound Muqian" = SKIN_COLOR_OATHBOUND_MUQIAN,
		"Oathbound Kaizoku" = SKIN_COLOR_OATHBOUND_KAIZOKU,
		"Oathbound Shuhen" = SKIN_COLOR_OATHBOUND_SHUHEN,
		"Oathbound Linyou" = SKIN_COLOR_OATHBOUND_LINYOU,
		"Oathbound Dustwalker" = SKIN_COLOR_OATHBOUND_DUSTWALKER,
		"Warpcaster Muqian" = SKIN_COLOR_WARPCASTER_MUQIAN,
		"Warpcaster Kaizoku" = SKIN_COLOR_WARPCASTER_KAIZOKU,
		"Warpcaster Shuhen" = SKIN_COLOR_WARPCASTER_SHUHEN,
		"Warpcaster Linyou" = SKIN_COLOR_WARPCASTER_LINYOU,
		"Warpcaster Dustwalker" = SKIN_COLOR_WARPCASTER_DUSTWALKER,
	))


/datum/species/abyssariad/changeling/get_hairc_list()
	return sortList(list(
	"blond - pale" = "9d8d6e",
	"blond - dirty" = "88754f",
	"blond - drywheat" = "d5ba7b",
	"blond - strawberry" = "c69b71",

	"brown - mud" = "362e25",
	"brown - oats" = "584a3b",
	"brown - grain" = "58433b",
	"brown - soil" = "48322a",

	"black - oil" = "181a1d",
	"black - cave" = "201616",
	"black - rogue" = "2b201b",
	"black - midnight" = "1d1b2b",

	"red - berry" = "48322a",
	"red - wine" = "82534c",
	"red - sunset" = "82462b",
	"red - blood" = "822b2b",

	"white - platinum" = "f8f3f3",
	"white - silver" = "ddddc8",
	"white - oceanid" = "141f1f"

	))

/datum/species/abyssariad/changeling/random_name(gender,unique,lastname)
	var/randname
	if(unique)
		if(gender == MALE)
			for(var/i in 1 to 10)
				randname = pick( world.file2list("strings/rt/names/abyssariad/abyssnorm.txt") )
				if(!findname(randname))
					break
		if(gender == FEMALE)
			for(var/i in 1 to 10)
				randname = pick( world.file2list("strings/rt/names/abyssariad/abyssnorf.txt") )
				if(!findname(randname))
					break
	else
		if(gender == MALE)
			randname = pick( world.file2list("strings/rt/names/abyssariad/abyssnorm.txt") )
		if(gender == FEMALE)
			randname = pick( world.file2list("strings/rt/names/abyssariad/abyssnorf.txt") )
	randname += " Clanless"
	return randname

/datum/species/abyssariad/changeling/random_surname()
	return " [pick(world.file2list("strings/rt/names/abyssariad/abyssnorlast.txt"))]"
