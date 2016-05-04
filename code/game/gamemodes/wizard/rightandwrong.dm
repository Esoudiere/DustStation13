

/mob/proc/rightandwrong(var/summon_type) //0 = Summon Guns, 1 = Summon Magic
	var/list/gunslist = list("taser","egun","laser","revolver","detective","c20r","nuclear","deagle","gyrojet","pulse","suppressed","cannon","doublebarrel","shotgun","combatshotgun","bulldog","mateba","sabr","crossbow","saw","car","boltaction","arg","uzi","turret","pulsecarbine","decloner","mindflayer","hyperkinetic","advplasmacutter","wormhole","wt550","grenadelauncher","medibeam")
	var/list/magiclist = list("fireball","smoke","blind","mindswap","forcewall","knock","horsemask","charge", "summonitem", "wandnothing", "wanddeath", "wandresurrection", "wandpolymorph", "wandteleport", "wanddoor", "wandfireball", "staffhealing", "armor", "scrying", "staffdoor", "special","voodoo","special")
	var/list/magicspeciallist = list("staffchange","staffanimation", "wandbelt", "contract", "staffchaos","necromantic")

	to_chat(usr, "<B>You summoned [summon_type ? "magic" : "guns"]!</B>")
	message_admins("[key_name_admin(usr)] summoned [summon_type ? "magic" : "guns"]!")

	for(var/mob/living/carbon/human/H in player_list)
		if(H.stat == 2 || !(H.client))
			continue
		if(H.mind)
			if(H.mind.special_role == "Wizard" || H.mind.special_role == "apprentice")
				continue
		var/randomizeguns = pick(gunslist)
		var/randomizemagic = pick(magiclist)
		var/randomizemagicspecial = pick(magicspeciallist)
		if(!summon_type)
			switch (randomizeguns)
				if("taser")
					new /obj/item/weapon/gun/energy/advtaser(get_turf(H))
				if("egun")
					new /obj/item/weapon/gun/energy/gun(get_turf(H))
				if("laser")
					new /obj/item/weapon/gun/energy/laser(get_turf(H))
				if("revolver")
					new /obj/item/weapon/gun/projectile/revolver(get_turf(H))
				if("detective")
					new /obj/item/weapon/gun/projectile/revolver/detective(get_turf(H))
				if("deagle")
					new /obj/item/weapon/gun/projectile/automatic/pistol/deagle/camo(get_turf(H))
				if("gyrojet")
					new /obj/item/weapon/gun/projectile/automatic/gyropistol(get_turf(H))
				if("pulse")
					new /obj/item/weapon/gun/energy/pulse_rifle(get_turf(H))
				if("suppressed")
					new /obj/item/weapon/gun/projectile/automatic/pistol(get_turf(H))
					new /obj/item/weapon/suppressor(get_turf(H))
				if("doublebarrel")
					new /obj/item/weapon/gun/projectile/revolver/doublebarrel(get_turf(H))
				if("shotgun")
					new /obj/item/weapon/gun/projectile/shotgun(get_turf(H))
				if("combatshotgun")
					new /obj/item/weapon/gun/projectile/shotgun/automatic/combat(get_turf(H))
				if("arg")
					new /obj/item/weapon/gun/projectile/automatic/ar(get_turf(H))
				if("mateba")
					new /obj/item/weapon/gun/projectile/revolver/mateba(get_turf(H))
				if("boltaction")
					new /obj/item/weapon/gun/projectile/shotgun/boltaction(get_turf(H))
				if("uzi")
					new /obj/item/weapon/gun/projectile/automatic/mini_uzi(get_turf(H))
				if("cannon")
					new /obj/item/weapon/gun/energy/lasercannon(get_turf(H))
				if("crossbow")
					new /obj/item/weapon/gun/energy/kinetic_accelerator/crossbow/large(get_turf(H))
				if("nuclear")
					new /obj/item/weapon/gun/energy/gun/nuclear(get_turf(H))
				if("sabr")
					new /obj/item/weapon/gun/projectile/automatic/proto(get_turf(H))
				if("bulldog")
					new /obj/item/weapon/gun/projectile/automatic/shotgun/bulldog(get_turf(H))
				if("c20r")
					new /obj/item/weapon/gun/projectile/automatic/c20r(get_turf(H))
				if("saw")
					new /obj/item/weapon/gun/projectile/automatic/l6_saw(get_turf(H))
				if("car")
					new /obj/item/weapon/gun/projectile/automatic/m90(get_turf(H))
				if("turret")
					new /obj/item/weapon/gun/energy/gun/turret(get_turf(H))
				if("pulsecarbine")
					new /obj/item/weapon/gun/energy/pulse_rifle/carbine(get_turf(H))
				if("decloner")
					new /obj/item/weapon/gun/energy/decloner(get_turf(H))
				if("mindflayer")
					new /obj/item/weapon/gun/energy/mindflayer(get_turf(H))
				if("hyperkinetic")
					new /obj/item/weapon/gun/energy/kinetic_accelerator/hyper(get_turf(H))
				if("advplasmacutter")
					new /obj/item/weapon/gun/energy/plasmacutter/adv(get_turf(H))
				if("wormhole")
					new /obj/item/weapon/gun/energy/wormhole_projector(get_turf(H))
				if("wt550")
					new /obj/item/weapon/gun/projectile/automatic/wt550(get_turf(H))
				if("grenadelauncher")
					new /obj/item/weapon/gun/projectile/revolver/grenadelauncher(get_turf(H))
				if("medibeam")
					new /obj/item/weapon/gun/medbeam(get_turf(H))
		else
			switch (randomizemagic)
				if("fireball")
					new /obj/item/weapon/spellbook/oneuse/fireball(get_turf(H))
				if("smoke")
					new /obj/item/weapon/spellbook/oneuse/smoke(get_turf(H))
				if("blind")
					new /obj/item/weapon/spellbook/oneuse/blind(get_turf(H))
				if("mindswap")
					new /obj/item/weapon/spellbook/oneuse/mindswap(get_turf(H))
				if("forcewall")
					new /obj/item/weapon/spellbook/oneuse/forcewall(get_turf(H))
				if("knock")
					new /obj/item/weapon/spellbook/oneuse/knock(get_turf(H))
				if("horsemask")
					new /obj/item/weapon/spellbook/oneuse/horsemask(get_turf(H))
				if("charge")
					new /obj/item/weapon/spellbook/oneuse/charge(get_turf(H))
				if("summonitem")
					new /obj/item/weapon/spellbook/oneuse/summonitem(get_turf(H))
				if("wandnothing")
					new /obj/item/weapon/gun/magic/wand(get_turf(H))
				if("wanddeath")
					new /obj/item/weapon/gun/magic/wand/death(get_turf(H))
				if("wandresurrection")
					new /obj/item/weapon/gun/magic/wand/resurrection(get_turf(H))
				if("wandpolymorph")
					new /obj/item/weapon/gun/magic/wand/polymorph(get_turf(H))
				if("wandteleport")
					new /obj/item/weapon/gun/magic/wand/teleport(get_turf(H))
				if("wanddoor")
					new /obj/item/weapon/gun/magic/wand/door(get_turf(H))
				if("wandfireball")
					new /obj/item/weapon/gun/magic/wand/fireball(get_turf(H))
				if("staffhealing")
					new /obj/item/weapon/gun/magic/staff/healing(get_turf(H))
				if("staffdoor")
					new /obj/item/weapon/gun/magic/staff/door(get_turf(H))
				if("armor")
					new /obj/item/clothing/suit/space/rig/wizard(get_turf(H))
					new /obj/item/clothing/head/helmet/space/rig/wizard(get_turf(H))
				if("scrying")
					new /obj/item/weapon/scrying(get_turf(H))
					if (!(XRAY in H.mutations))
						H.mutations.Add(XRAY)
						H.sight |= (SEE_MOBS|SEE_OBJS|SEE_TURFS)
						H.see_in_dark = 8
						H.see_invisible = SEE_INVISIBLE_LEVEL_TWO
						to_chat(H, "<span class='notice'>The walls suddenly disappear.</span>")
				if("voodoo")
					new /obj/item/voodoo(get_turf(H))
				if("special")
					magiclist -= "special" //only one super OP item per summoning max
					switch (randomizemagicspecial)
						if("staffchange")
							new /obj/item/weapon/gun/magic/staff/change(get_turf(H))
						if("staffanimation")
							new /obj/item/weapon/gun/magic/staff/animate(get_turf(H))
						if("wandbelt")
							new /obj/item/weapon/storage/belt/wands/full(get_turf(H))
						if("contract")
							new /obj/item/weapon/contract(get_turf(H))
						if("staffchaos")
							new /obj/item/weapon/gun/magic/staff/chaos(get_turf(H))
						if("necromantic")
							new /obj/item/device/necromantic_stone(get_turf(H))
					to_chat(H, "<span class='notice'>You suddenly feel lucky.</span>")
