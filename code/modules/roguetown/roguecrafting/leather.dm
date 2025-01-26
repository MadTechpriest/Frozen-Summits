
/datum/crafting_recipe/roguetown/leather
	tools = list(/obj/item/needle)
	structurecraft = /obj/structure/fluff/dryingrack
	skillcraft = /datum/skill/craft/tanning

/datum/crafting_recipe/roguetown/leather/bedroll
	name = "bedroll"
	result = /obj/item/bedroll
	reqs = list(/obj/item/natural/hide = 2,
				/obj/item/rope = 1)
	tools = list(/obj/item/needle)
	verbage_simple = "construct"
	verbage = "constructs"
	craftdiff = 0

/datum/crafting_recipe/roguetown/leather/pouch
	name = "leather pouch (x2)"
	result = list(/obj/item/storage/belt/rogue/pouch,
				/obj/item/storage/belt/rogue/pouch)
	reqs = list(/obj/item/natural/hide = 1,
				/obj/item/natural/fibers = 1)
	sellprice = 6
	craftdiff = 0

/datum/crafting_recipe/roguetown/leather/satchel
	name = "leather satchel"
	result = /obj/item/storage/backpack/rogue/satchel
	reqs = list(/obj/item/natural/hide = 2,
				/obj/item/natural/fibers = 1)
	sellprice = 15

/datum/crafting_recipe/roguetown/leather/backpack
	name = "leather backpack"
	result = /obj/item/storage/backpack/rogue/backpack
	reqs = list(/obj/item/natural/hide = 2,
				/obj/item/natural/fibers = 1)
	sellprice = 45

/datum/crafting_recipe/roguetown/leather/waterskin
	name = "waterskin"
	result = /obj/item/reagent_containers/glass/bottle/waterskin
	reqs = list(/obj/item/natural/hide = 1,
				/obj/item/natural/fibers = 2)
	sellprice = 45

/datum/crafting_recipe/roguetown/leather/quiver
	name = "quiver"
	result = /obj/item/quiver
	reqs = list(/obj/item/natural/hide = 2,
				/obj/item/natural/fibers = 2)
	sellprice = 30

/datum/crafting_recipe/roguetown/leather/gwstrap
	name = "Greatweapon Strap"
	result = /obj/item/gwstrap
	reqs = list(/obj/item/natural/hide = 2,
				/obj/item/rope = 1)
	sellprice = 30

/datum/crafting_recipe/roguetown/leather/twstrap
	name = "bandolier"
	result = /obj/item/twstrap
	reqs = list(/obj/item/natural/hide = 2,
				/obj/item/rope = 1)
	sellprice = 30

/datum/crafting_recipe/roguetown/leather/belt
	name = "leather belt"
	result = /obj/item/storage/belt/rogue/leather
	reqs = list(/obj/item/natural/hide = 2,
				/obj/item/natural/fibers = 2)
	sellprice = 30

/datum/crafting_recipe/roguetown/leather/belt/knifebelt
	name = "leather knifebelt"
	result = /obj/item/storage/belt/rogue/leather/knifebelt
	reqs = list(/obj/item/natural/hide = 2,
				/obj/item/natural/fibers = 2)
	sellprice = 30

/datum/crafting_recipe/roguetown/leather/gloves
	name = "leather gloves (x2)"
	result = list(/obj/item/clothing/gloves/roguetown/leather,
	/obj/item/clothing/gloves/roguetown/leather)
	reqs = list(/obj/item/natural/hide = 1)
	sellprice = 10
	craftdiff = 0

/datum/crafting_recipe/roguetown/leather/heavygloves
	name = "heavy leather gloves"
	result = /obj/item/clothing/gloves/roguetown/angle
	reqs = list(/obj/item/natural/fur = 1)
	sellprice = 20

/datum/crafting_recipe/roguetown/leather/fingerless_leather_gloves
	name = "fingerless leather gloves"
	result = /obj/item/clothing/gloves/roguetown/fingerless_leather
	reqs = list(
		/obj/item/natural/hide = 1,
		/obj/item/reagent_containers/food/snacks/tallow = 1,
		/obj/item/natural/fibers = 1,
		)
	sellprice = 20

/datum/crafting_recipe/roguetown/leather/bracers
	name = "leather bracers (x2)"
	result = list(/obj/item/clothing/wrists/roguetown/bracers/leather,
			/obj/item/clothing/wrists/roguetown/bracers/leather)
	reqs = list(/obj/item/natural/hide = 1)
	sellprice = 10

/datum/crafting_recipe/roguetown/leather/pants
	name = "leather pants"
	result = list(/obj/item/clothing/under/roguetown/trou/leather)
	reqs = list(/obj/item/natural/hide = 1)
	sellprice = 10

/datum/crafting_recipe/roguetown/leather/volfhelm
	name = "volf helm"
	result = list(/obj/item/clothing/head/roguetown/helmet/leather/volfhelm)
	reqs = list(/obj/item/natural/hide = 3, /obj/item/natural/fur = 2,)
	sellprice = 20

/datum/crafting_recipe/roguetown/leather/heavy_leather_pants
	name = "heavy leather pants"
	result = list(/obj/item/clothing/under/roguetown/heavy_leather_pants)
	reqs = list(
		/obj/item/natural/hide = 1,
		/obj/item/reagent_containers/food/snacks/tallow = 1,
		/obj/item/natural/fibers = 1,
		)
	sellprice = 20

/datum/crafting_recipe/roguetown/leather/heavy_leather_pants/shorts
	name = "heavy leather shorts"
	result = list(/obj/item/clothing/under/roguetown/heavy_leather_pants/shorts)
	reqs = list(
		/obj/item/natural/hide = 1, //they cover less, you see
		/obj/item/reagent_containers/food/snacks/tallow = 1,
		/obj/item/natural/fibers = 1,
		)
	sellprice = 20

/datum/crafting_recipe/roguetown/leather/shoes
	name = "leather shoes (x3)"
	result = list(/obj/item/clothing/shoes/roguetown/simpleshoes,
				/obj/item/clothing/shoes/roguetown/simpleshoes,
				/obj/item/clothing/shoes/roguetown/simpleshoes)
	reqs = list(/obj/item/natural/hide = 1)
	sellprice = 10

/datum/crafting_recipe/roguetown/leather/boots
	name = "leather boots"
	result = /obj/item/clothing/shoes/roguetown/boots/leather
	reqs = list(/obj/item/natural/hide = 1)
	sellprice = 27

/datum/crafting_recipe/roguetown/leather/boots/gladiator
	name = "leather soleae"
	result = /obj/item/clothing/shoes/roguetown/gladiator

/datum/crafting_recipe/roguetown/leather/shoes/sandals
	name = "leather sandals (x3)"
	result = list(/obj/item/clothing/shoes/roguetown/sandals,
				/obj/item/clothing/shoes/roguetown/sandals,
				/obj/item/clothing/shoes/roguetown/sandals)
/datum/crafting_recipe/roguetown/leather/boots/furlinedboots
	name = "fur-lined boots"
	result = /obj/item/clothing/shoes/roguetown/boots/furlinedboots
	reqs = list(/obj/item/natural/hide = 1,
				/obj/item/natural/fur = 1)

/datum/crafting_recipe/roguetown/leather/boots/short
	name = "shortboots"
	result = /obj/item/clothing/shoes/roguetown/shortboots
	reqs = list(/obj/item/natural/hide = 1)

/datum/crafting_recipe/roguetown/leather/boots/dark
	name = "dark boots"
	result = /obj/item/clothing/shoes/roguetown/boots
	reqs = list(/obj/item/natural/hide = 1)

/datum/crafting_recipe/roguetown/leather/boots/noble
	name = "noble boots"
	result = /obj/item/clothing/shoes/roguetown/nobleboot
	reqs = list(/obj/item/natural/hide = 3,
				/obj/item/natural/fur = 1)

/datum/crafting_recipe/roguetown/leather/helmet
	name = "leather helmet"
	result = /obj/item/clothing/head/roguetown/helmet/leather
	reqs = list(/obj/item/natural/hide = 1)
	sellprice = 27

/datum/crafting_recipe/roguetown/leather/bandana
	name = "leather bandana"
	result = /obj/item/clothing/head/roguetown/helmet/bandana
	reqs = list(/obj/item/natural/hide = 1)
	sellprice = 27
	craftdiff = 0

/datum/crafting_recipe/roguetown/leather/tricorn
	name = "leather tricorn"
	result = /obj/item/clothing/head/roguetown/helmet/tricorn
	reqs = list(/obj/item/natural/hide = 1)
	sellprice = 27

/datum/crafting_recipe/roguetown/leather/hood
	name = "leather hood"
	result = /obj/item/clothing/head/roguetown/roguehood
	reqs = list(/obj/item/natural/hide = 1)
	sellprice = 26

/datum/crafting_recipe/roguetown/leather/vest
	name = "leather vest"
	result = /obj/item/clothing/suit/roguetown/armor/leather/vest
	reqs = list(/obj/item/natural/hide = 2)

/datum/crafting_recipe/roguetown/leather/armor
	name = "leather armor"
	result = /obj/item/clothing/suit/roguetown/armor/leather
	reqs = list(/obj/item/natural/hide = 2)
	sellprice = 26

/datum/crafting_recipe/roguetown/leather/bikini
	name = "leather bikini armor"
	result = /obj/item/clothing/suit/roguetown/armor/leather/bikini
	reqs = list(/obj/item/natural/hide = 2)
	sellprice = 26

/datum/crafting_recipe/roguetown/leather/hidearmor
	name = "hide armor"
	result = /obj/item/clothing/suit/roguetown/armor/leather/hide
	reqs = list(/obj/item/natural/hide = 2,
				/obj/item/natural/fur = 1)
	sellprice = 26

/datum/crafting_recipe/roguetown/leather/heavy_leather_armor
	name = "heavy leather armor"
	result = /obj/item/clothing/suit/roguetown/armor/leather/heavy
	reqs = list(
		/obj/item/natural/hide = 2,
		/obj/item/reagent_containers/food/snacks/tallow = 1,
		/obj/item/natural/fibers = 1,
		)
	sellprice = 26

/datum/crafting_recipe/roguetown/leather/heavy_leather_armor/belted
	name = "belted heavy leather armor"
	result = /obj/item/clothing/suit/roguetown/armor/leather/heavy/belted
	reqs = list(
		/obj/item/natural/hide = 2,
		/obj/item/reagent_containers/food/snacks/tallow = 1,
		/obj/item/natural/fibers = 1,
		)
	sellprice = 26

/datum/crafting_recipe/roguetown/leather/heavy_leather_armor/coat
	name = "armored leather coat"
	result = /obj/item/clothing/suit/roguetown/armor/leather/heavy/coat
	reqs = list(
		/obj/item/natural/hide = 3,
		/obj/item/reagent_containers/food/snacks/tallow = 1,
		/obj/item/natural/fibers = 1,
		)
	sellprice = 36

/datum/crafting_recipe/roguetown/leather/hidebikini
	name = "hide bikini armor"
	result = /obj/item/clothing/suit/roguetown/armor/leather/hide/bikini
	reqs = list(/obj/item/natural/hide = 2,
				/obj/item/natural/fur = 1)
	sellprice = 26

/datum/crafting_recipe/roguetown/leather/cloak
	name = "leather cloak"
	result = /obj/item/clothing/cloak/raincloak/brown
	reqs = list(/obj/item/natural/hide = 2)

/datum/crafting_recipe/roguetown/leather/apron/blacksmith
	name = "leather apron"
	result = /obj/item/clothing/cloak/apron/blacksmith
	reqs = list(/obj/item/natural/hide = 2,
				/obj/item/natural/fibers = 1)

/datum/crafting_recipe/roguetown/leather/cloakfur
	name = "fur cloak"
	result = /obj/item/clothing/cloak/raincloak/furcloak/crafted
	reqs = list(/obj/item/natural/hide = 2,/obj/item/natural/fur = 1)

/obj/item/clothing/cloak/raincloak/furcloak/crafted
	sellprice = 55

/datum/crafting_recipe/roguetown/leather/papakha
	name = "papakha hat"
	result = /obj/item/clothing/head/roguetown/papakha/crafted
	reqs = list(/obj/item/natural/fur = 1, /obj/item/natural/fibers = 2)

/obj/item/clothing/head/roguetown/papakha/crafted
	sellprice = 10

/datum/crafting_recipe/roguetown/leather/saddle
	name = "saddle"
	result = /obj/item/natural/saddle
	reqs = list(/obj/item/natural/hide = 2)

/datum/crafting_recipe/roguetown/leather/whip
	name = "leather whip"
	result = /obj/item/rogueweapon/whip
	reqs = list(/obj/item/natural/hide = 2,/obj/item/natural/stone = 1)
	sellprice = 39

/datum/crafting_recipe/roguetown/leather/drum
	name = "Drum"
	result = /obj/item/rogue/instrument/drum
	reqs = list(/obj/item/natural/hide = 1,/obj/item/grown/log/tree/small = 1)

/datum/crafting_recipe/roguetown/leather/vest
	name = "leather sea jacket"
	result = /obj/item/clothing/suit/roguetown/armor/leather/vest/sailor
	reqs = list(/obj/item/natural/hide = 2)

/datum/crafting_recipe/roguetown/leather/darkcloak
	name = "dark cloak"
	result = list(/obj/item/clothing/cloak/darkcloak)
	reqs = list(/obj/item/natural/fur = 2,
				/obj/item/natural/hide = 4)
	craftdiff = 5
	sellprice = 80

/datum/crafting_recipe/roguetown/leather/bearcloak
	name = "direbear cloak"
	result = list(/obj/item/clothing/cloak/darkcloak/bear)
	reqs = list(/obj/item/natural/fur = 2,
				/obj/item/natural/hide = 4)
	craftdiff = 3
	sellprice = 80

/datum/crafting_recipe/roguetown/leather/lightbearcloak
	name = "light direbear cloak"
	result = list(/obj/item/clothing/cloak/darkcloak/bear/light)
	reqs = list(/obj/item/natural/fur = 2,
				/obj/item/natural/hide = 4)
	craftdiff = 3
	sellprice = 80

/datum/crafting_recipe/roguetown/leather/volfhelm
	name = "wolf helmet"
	result = /obj/item/clothing/head/roguetown/helmet/leather/volfhelm
	reqs = list(/obj/item/natural/volf_head = 1, /obj/item/natural/hide = 2)
	craftdiff = 1

/datum/crafting_recipe/roguetown/leather/abyssalgloves
	name = "abyssal leather gloves (x2){fl}"
	result = list(/obj/item/clothing/gloves/roguetown/leather/abyssal,
	/obj/item/clothing/gloves/roguetown/leather/abyssal)
	reqs = list(/obj/item/natural/hide = 2)

/datum/crafting_recipe/roguetown/leather/khudagach
	name = "archery bracers (x2){fl}"
	result = list(/obj/item/clothing/wrists/roguetown/bracers/leather/khudagach,
			/obj/item/clothing/wrists/roguetown/bracers/leather/khudagach)

/datum/crafting_recipe/roguetown/leather/furtobi
	name = "leather pants {fl}"
	result = list(/obj/item/clothing/under/roguetown/trou/leather/fur)
	reqs = list(/obj/item/natural/hide = 2)

/datum/crafting_recipe/roguetown/leather/jikatabi
	name = "jikatabi (x2){fl}"
	result = list(/obj/item/clothing/shoes/roguetown/boots/jikatabi,
				/obj/item/clothing/shoes/roguetown/boots/jikatabi)
	reqs = list(/obj/item/natural/hide = 2)

/datum/crafting_recipe/roguetown/leather/cloudhead
	name = "cloudhead shoes {fl}"
	result = /obj/item/clothing/shoes/roguetown/shortboots/cloudhead
	reqs = list(/obj/item/natural/hide = 2)

/datum/crafting_recipe/roguetown/leather/geta
	name = "geta sandals {fl}"
	result = /obj/item/clothing/shoes/roguetown/sandals/geta
	reqs = list(/obj/item/natural/hide = 2)

/datum/crafting_recipe/roguetown/leather/haori
	name = "haori jacket {fl}"
	result = list(/obj/item/clothing/suit/roguetown/armor/leather/jacket/haori)
	reqs = list(/obj/item/natural/hide = 2)

/*.............. recipes requiring skill 1 ..............*/

/datum/crafting_recipe/roguetown/leather/falcon
	name = "falconry heavy gloves {fl}"
	result = /obj/item/clothing/gloves/roguetown/angle/falcon
	reqs = list(/obj/item/natural/hide = 1,
				/obj/item/natural/fur = 1)
	craftdiff = 1

/datum/crafting_recipe/roguetown/leather/malgai
	name = "malgai helmet {fl}"
	result = /obj/item/clothing/head/roguetown/helmet/leather/malgai
	reqs = list(/obj/item/natural/hide = 2)
	craftdiff = 1

/datum/crafting_recipe/roguetown/leather/kaizokuhat
	name = "heartfeltean hat {fl}"
	result = /obj/item/clothing/head/roguetown/helmet/leather/malgai/kaizoku
	reqs = list(/obj/item/natural/hide = 2)
	craftdiff = 1

/datum/crafting_recipe/roguetown/leather/kaizokuhat/female
	name = "female heartfeltean hat {fl}"
	result = /obj/item/clothing/head/roguetown/helmet/leather/malgai/kaizoku/female
	reqs = list(/obj/item/natural/hide = 2)
	craftdiff = 1

/datum/crafting_recipe/roguetown/leather/abyssalarmor
	name = "leather lamellar armor {fl}"
	result = /obj/item/clothing/suit/roguetown/armor/leather/abyssal
	reqs = list(/obj/item/natural/hide = 2)
	craftdiff = 1

/*.............. recipes requiring skill 2 ..............*/

/datum/crafting_recipe/roguetown/leather/dustwalker
	name = "light cavalry armor {fl}"
	result = /obj/item/clothing/suit/roguetown/armor/leather/hide/dustwalker
	reqs = list(/obj/item/natural/hide = 2,
				/obj/item/natural/fur = 1)
	craftdiff = 2

/*
/datum/crafting_recipe/roguetown/leather/shozoku
	name = "stealthy body armor {fl}"
	result = /obj/item/clothing/suit/roguetown/armor/leather/hide/shozoku
	reqs = list(/obj/item/natural/hide = 2,
				/obj/item/natural/fur = 1)
	craftdiff = 2
*/
/datum/crafting_recipe/roguetown/leather/kaizoku
	name = "heartfeltean vest {fl}"
	result = /obj/item/clothing/suit/roguetown/armor/leather/vest/kaizoku
	reqs = list(/obj/item/natural/hide = 2)
	craftdiff = 2

/datum/crafting_recipe/roguetown/leather/arisan
	name = "cavalry light headgear {fl}"
	reqs = list(/obj/item/natural/hide = 2,
				/obj/item/natural/fur = 1)
	craftdiff = 2
