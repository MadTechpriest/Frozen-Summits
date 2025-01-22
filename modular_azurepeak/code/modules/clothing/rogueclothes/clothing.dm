#define CLOTHING_SOOT_BLACK		"#414145"
#define CLOTHING_WINESTAIN_RED	"#673c3c"
#define CLOTHING_PEASANT_BROWN	"#634f44"
#define CLOTHING_MUD_BROWN		"#6f5f4d"
#define CLOTHING_CHESTNUT		"#604631"
#define CLOTHING_OLD_LEATHER	"#473f39"
#define CLOTHING_SPRING_GREEN	"#41493a"
#define CLOTHING_BERRY_BLUE		"#39404d"

#define CLOTHING_ASH_GREY		"#676262"
#define CLOTHING_CANVAS			"#858564"
#define CLOTHING_LINEN			"#a1a17a"
#define CLOTHING_WHITE			"#ffffff"
#define CLOTHING_WET			"#afafaf"


///Royal clothing:
//................ Royal Dress (Ball Gown)............... //
/obj/item/clothing/suit/roguetown/shirt/dress/royal
	slot_flags = ITEM_SLOT_SHIRT|ITEM_SLOT_ARMOR
	icon = 'icons/roguetown/clothing/shirts_royalty.dmi'
	mob_overlay_icon = 'icons/roguetown/clothing/onmob/shirts_royalty.dmi'
	name = "royal gown"
	desc = "An elaborate ball gown, a favoured fashion of queens and elevated nobility in Enigma."
	body_parts_covered = CHEST|GROIN|ARMS|VITALS
	icon_state = "royaldress"
	sleeved = 'icons/roguetown/clothing/onmob/helpers/sleeves_shirts_royalty.dmi'
	boobed = TRUE
	detail_tag = "_detail"
	detail_color = CLOTHING_SOOT_BLACK
	r_sleeve_status = SLEEVE_NORMAL
	l_sleeve_status = SLEEVE_NORMAL

/obj/item/clothing/suit/roguetown/shirt/dress/royal/update_icon()
	cut_overlays()
	if(get_detail_tag())
		var/mutable_appearance/pic = mutable_appearance(icon(icon, "[icon_state][detail_tag]"))
		pic.appearance_flags = RESET_COLOR
		if(get_detail_color())
			pic.color = get_detail_color()
		add_overlay(pic)

/obj/item/clothing/suit/roguetown/shirt/dress/royal/lordcolor(primary,secondary)
	detail_color = primary
	update_icon()

/obj/item/clothing/suit/roguetown/shirt/dress/royal/Initialize()
	. = ..()
	if(GLOB.lordprimary)
		lordcolor(GLOB.lordprimary,GLOB.lordsecondary)
	else
		GLOB.lordcolor += src

/obj/item/clothing/suit/roguetown/shirt/dress/royal/Destroy()
	GLOB.lordcolor -= src
	return ..()

//................ Princess Dress ............... //
/obj/item/clothing/suit/roguetown/shirt/dress/royal/princess
	slot_flags = ITEM_SLOT_SHIRT|ITEM_SLOT_ARMOR
	name = "pristine dress"
	desc = "A flowy, intricate dress made by the finest tailors in the land for the monarch's children."
	icon_state = "princess"
	boobed = TRUE
	detail_color = CLOTHING_BERRY_BLUE

//................ Winter Dress ............... //
/obj/item/clothing/suit/roguetown/armor/gambeson/heavy/winterdress
	name = "winter dress"
	icon = 'icons/roguetown/clothing/shirts_royalty.dmi'
	mob_overlay_icon = 'icons/roguetown/clothing/onmob/shirts_royalty.dmi'
	desc = "A thick, padded, and comfortable dress to maintain both temperature and safety when leaving the keep."
	icon_state = "winterdress"
	sleeved = 'icons/roguetown/clothing/onmob/helpers/sleeves_shirts_royalty.dmi'
	boobed = TRUE
	detail_tag = "_detail"
	detail_color = CLOTHING_SOOT_BLACK
	r_sleeve_status = SLEEVE_NORMAL
	l_sleeve_status = SLEEVE_NORMAL
	slot_flags = ITEM_SLOT_ARMOR|ITEM_SLOT_SHIRT

/obj/item/clothing/suit/roguetown/armor/gambeson/heavy/winterdress/update_icon()
	cut_overlays()
	if(get_detail_tag())
		var/mutable_appearance/pic = mutable_appearance(icon(icon, "[icon_state][detail_tag]"))
		pic.appearance_flags = RESET_COLOR
		if(get_detail_color())
			pic.color = get_detail_color()
		add_overlay(pic)

/obj/item/clothing/suit/roguetown/armor/gambeson/heavy/winterdress/lordcolor(primary,secondary)
	detail_color = primary
	update_icon()

/obj/item/clothing/suit/roguetown/armor/gambeson/heavy/winterdress/Initialize()
	. = ..()
	if(GLOB.lordprimary)
		lordcolor(GLOB.lordprimary,GLOB.lordsecondary)
	else
		GLOB.lordcolor += src

/obj/item/clothing/suit/roguetown/armor/gambeson/heavy/winterdress/Destroy()
	GLOB.lordcolor -= src
	return ..()
