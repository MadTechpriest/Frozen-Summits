#define TAB_MAIN 1
#define TAB_BANK 2
#define TAB_STOCK 3
#define TAB_IMPORT 4
#define TAB_BOUNTIES 5
#define TAB_LOG 6

/obj/structure/roguemachine/stockpile_golem
	name = "Stockpile Golem"
	desc = "A simple Construct that keeps track of the local stockpile. The steward's most trusted friend."
	icon = 'icons/roguetown/misc/machines.dmi'
	icon_state = "steward_machine"
	density = TRUE
	blade_dulling = DULLING_BASH
	max_integrity = 0
	anchored = TRUE
	layer = BELOW_OBJ_LAYER
	var/locked = FALSE
	var/keycontrol = "steward"
	var/current_tab = TAB_STOCK // Default to stockpile view
	var/compact = FALSE

/obj/structure/roguemachine/stockpile_golem/attackby(obj/item/P, mob/user, params)
	if(istype(P, /obj/item/roguekey))
		var/obj/item/roguekey/K = P
		if(K.lockid == keycontrol || istype(K, /obj/item/roguekey/lord)) //Master key
			locked = !locked
			playsound(loc, 'sound/misc/beep.ogg', 100, FALSE, -1)
			update_icon()
		else
			to_chat(user, span_warning("Wrong key."))
		return
	return ..()

/obj/structure/roguemachine/stockpile_golem/Topic(href, href_list)
	if(!usr.canUseTopic(src, BE_CLOSE) || locked)
		return
	if(href_list["switchtab"])
		if(text2num(href_list["switchtab"]) == TAB_STOCK)
			current_tab = TAB_STOCK
		return
	if(href_list["import"])
		var/datum/roguestock/D = locate(href_list["import"]) in SStreasury.stockpile_datums
		if(!D)
			return
		if(SStreasury.treasury_value < D.get_import_price())
			say("Insufficient coin.")
			return
		var/amt = D.get_import_price()
		SStreasury.treasury_value -= amt
		SStreasury.log_to_steward("-[amt] imported [D.name]")
		D.raise_demand()
		addtimer(CALLBACK(src, PROC_REF(do_import), D.type), 10 SECONDS)
	if(href_list["export"])
		var/datum/roguestock/D = locate(href_list["export"]) in SStreasury.stockpile_datums
		if(!D)
			return
		if((D.held_items[1] + D.held_items[2]) < D.importexport_amt)
			say("Insufficient stock.")
			return
		var/amt = D.get_export_price()
		if(D.held_items[1] >= D.importexport_amt)
			D.held_items[1] -= D.importexport_amt
		else
			D.held_items[2] -= (D.importexport_amt - D.held_items[1])
			D.held_items[1] = 0
		SStreasury.treasury_value += amt
		SStreasury.log_to_steward("+[amt] exported [D.name]")
		D.lower_demand()
	if(href_list["togglewithdraw"])
		var/datum/roguestock/D = locate(href_list["togglewithdraw"]) in SStreasury.stockpile_datums
		if(!D)
			return
		D.withdraw_disabled = !D.withdraw_disabled
	return attack_hand(usr)

/obj/structure/roguemachine/stockpile_golem/proc/do_import(datum/roguestock/D,number)
	if(!D)
		return
	D = new D
	if(number > D.importexport_amt)
		return
	testing("number1 is [number]")
	if(!number)
		number = 1
	var/area/A = GLOB.areas_by_type[/area/rogue/indoors/town/warehouse]
	if(!A)
		return
	var/obj/item/I = new D.item_type()
	var/list/turfs = list()
	for(var/turf/T in A)
		turfs += T
	var/turf/T = pick(turfs)
	I.forceMove(T)
	playsound(T, 'sound/misc/hiss.ogg', 100, FALSE, -1)
	number += 1
	testing("number2 is [number]")
	addtimer(CALLBACK(src, PROC_REF(do_import), D.type, number), 3 SECONDS)


/obj/structure/roguemachine/stockpile_golem/attack_hand(mob/living/user)
	. = ..()
	if(.)
		return
	if(locked)
		to_chat(user, span_warning("It's locked. Of course."))
		return
	user.changeNext_move(CLICK_CD_MELEE)
	playsound(loc, 'sound/misc/keyboard_enter.ogg', 100, FALSE, -1)
	var/canread = user.can_read(src, TRUE)
	var/contents
	switch(current_tab)
		if(TAB_MAIN)
			contents += "<center>STOCKPILE MASTER<BR>"
			contents += "--------------<BR>"
			contents += "<a href='?src=\ref[src];switchtab=[TAB_STOCK]'>\[Stockpile\]</a><BR>"
			contents += "<a href='?src=\ref[src];switchtab=[TAB_IMPORT]'>\[Import\]</a><BR>"
			contents += "</center>"
		if(TAB_STOCK)
			contents += "<a href='?src=\ref[src];switchtab=[TAB_MAIN]'>\[Return\]</a>"
			contents += " <a href='?src=\ref[src];compact=1'>\[Compact: [compact? "ENABLED" : "DISABLED"]\]</a><BR>"
			contents += "<center>Stockpile<BR>"
			contents += "--------------<BR>"
			if(compact)
				contents += "Treasury: [SStreasury.treasury_value]m"
				contents += " / Lord's Tax: [SStreasury.tax_value*100]%"
				contents += " / Guild's Tax: [SStreasury.queens_tax*100]%</center><BR>"
				for(var/datum/roguestock/stockpile/A in SStreasury.stockpile_datums)
					contents += "<b>[A.name]:</b>"
					contents += " [A.held_items[1] + A.held_items[2]]"
					contents += " | SELL: <a href='?src=\ref[src];setbounty=\ref[A]'>[A.payout_price]m</a>"
					contents += " / BUY: <a href='?src=\ref[src];setprice=\ref[A]'>[A.withdraw_price]m</a>"
					if(A.importexport_amt)
						contents += " <a href='?src=\ref[src];import=\ref[A]'>\[IMP [A.importexport_amt] ([A.get_import_price()])\]</a> <a href='?src=\ref[src];export=\ref[A]'>\[EXP [A.importexport_amt] ([A.get_export_price()])\]</a> <BR>"
			else
				contents += "Treasury: [SStreasury.treasury_value]m<BR>"
				contents += "Lord's Tax: [SStreasury.tax_value*100]%<BR>"
				contents += "Guild's Tax: [SStreasury.queens_tax*100]%</center><BR>"
				for(var/datum/roguestock/stockpile/A in SStreasury.stockpile_datums)
					contents += "[A.name]<BR>"
					contents += "[A.desc]<BR>"
					contents += "Stockpiled Amount: [A.held_items[1] + A.held_items[2]]<BR>"
					contents += "Bounty Price: <a href='?src=\ref[src];setbounty=\ref[A]'>[A.payout_price]</a><BR>"
					contents += "Withdraw Price: <a href='?src=\ref[src];setprice=\ref[A]'>[A.withdraw_price]</a><BR>"
					contents += "Demand: [A.demand2word()]<BR>"
					if(A.importexport_amt)
						contents += "<a href='?src=\ref[src];import=\ref[A]'>\[Import [A.importexport_amt] ([A.get_import_price()])\]</a> <a href='?src=\ref[src];export=\ref[A]'>\[Export [A.importexport_amt] ([A.get_export_price()])\]</a> <BR>"
					contents += "<a href='?src=\ref[src];togglewithdraw=\ref[A]'>\[[A.withdraw_disabled ? "Enable" : "Disable"] Withdrawing\]</a><BR><BR>"
		if(TAB_IMPORT)
			contents += "<a href='?src=\ref[src];switchtab=[TAB_MAIN]'>\[Return\]</a>"
			contents += " <a href='?src=\ref[src];compact=1'>\[Compact: [compact? "ENABLED" : "DISABLED"]\]</a><BR>"
			contents += "<center>Imports<BR>"
			contents += "--------------<BR>"
			if(compact)
				contents += "Treasury: [SStreasury.treasury_value]m"
				contents += " / Lord's Tax: [SStreasury.tax_value*100]%"
				contents += " / Guild's Tax: [SStreasury.queens_tax*100]%</center><BR>"
				for(var/datum/roguestock/import/A in SStreasury.stockpile_datums)
					contents += "<b>[A.name]:</b>"
					contents += " <a href='?src=\ref[src];import=\ref[A]'>\[Import [A.importexport_amt] ([A.get_import_price()])\]</a><BR><BR>"
			else
				contents += "Treasury: [SStreasury.treasury_value]m<BR>"
				contents += "Lord's Tax: [SStreasury.tax_value*100]%<BR>"
				contents += "Guild's Tax: [SStreasury.queens_tax*100]%</center><BR>"
				for(var/datum/roguestock/import/A in SStreasury.stockpile_datums)
					contents += "[A.name]<BR>"
					contents += "[A.desc]<BR>"
					if(!A.stable_price)
						contents += "Demand: [A.demand2word()]<BR>"
					contents += "<a href='?src=\ref[src];import=\ref[A]'>\[Import [A.importexport_amt] ([A.get_import_price()])\]</a><BR><BR>"

	if(!canread)
		contents = stars(contents)
	var/datum/browser/popup = new(user, "VENDORTHING", "", 500, 800)
	popup.set_content(contents)
	popup.open()



#undef TAB_MAIN
#undef TAB_BANK
#undef TAB_STOCK
#undef TAB_IMPORT
#undef TAB_BOUNTIES
#undef TAB_LOG
