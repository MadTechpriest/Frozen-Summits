/obj/item/clothing/shoes/roguetown/anklets
	name = "Gold Anklets"
	desc = "Delicate golden hoops worn around the ankle."
	gender = PLURAL
	icon_state = "anklets"
	item_state = "anklets"
	anvilrepair = /datum/skill/craft/blacksmithing
	is_barefoot = TRUE

/obj/item/clothing/suit/roguetown/shirt/exoticsilkbra
	name = "Exotic Silks"
	desc = "Fanciful gold laced silks barely able to conceal what little it covers."
	icon_state = "exoticsilkbra"
	item_state = "exoticsilkbra"
	gender = PLURAL
	body_parts_covered = CHEST|ARMS|VITALS
	sewrepair = TRUE
	slot_flags = ITEM_SLOT_ARMOR|ITEM_SLOT_SHIRT|ITEM_SLOT_CLOAK

/obj/item/clothing/suit/roguetown/shirt/dress_strapped
	name = "dress"
	desc = "Fancy dress."
	icon_state = "dress_strapped"
	item_state = "dress_strapped"
	gender = PLURAL
	body_parts_covered = CHEST|ARMS|VITALS
	sewrepair = TRUE
	slot_flags = ITEM_SLOT_ARMOR|ITEM_SLOT_SHIRT|ITEM_SLOT_CLOAK

//................ Briar Thorns ............... //	- Dendor Briar
/obj/item/clothing/head/roguetown/padded/briarthorns
	name = "briar thorns"
	desc = "The pain it causes perhaps can distract from the whispers of a mad God overpowering your sanity..."
	icon_state = "briarthorns"

/obj/item/clothing/head/roguetown/padded/briarthorns/pickup(mob/living/user)
	. = ..()
	to_chat(user, span_warning ("The thorns prick me."))
	user.adjustBruteLoss(4)

/obj/item/clothing/head/roguetown/nyle
	name = "jewel of nyle"
	icon_state = "nile"
	body_parts_covered = null
	slot_flags = ITEM_SLOT_HEAD
	dynamic_hair_suffix = null
	sellprice = 100
	resistance_flags = FIRE_PROOF
	anvilrepair = /datum/skill/craft/armorsmithing

/obj/item/clothing/head/roguetown/nyle/consortcrown
	name = "consort crown"
	icon_state = "consortcrown"
	sellprice = 100

/obj/item/clothing/head/roguetown/circlet
	name = "golden circlet"
	icon_state = "goldcirclet"
	sellprice = 50
