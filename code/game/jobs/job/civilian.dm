//Food
/datum/job/bartender
	title = "Bartender"
	flag = BARTENDER
	department = "Civilian"
	department_flag = CIVILIAN
	faction = "Station"
	total_positions = 2
	spawn_positions = 2
	supervisors = "the head of personnel"
	selection_color = "#515151"
	access = list(access_hydroponics, access_bar, access_kitchen)
	minimal_access = list(access_bar)
	alt_titles = list("Barista","Mixologist","Barkeep","Barmaid")

	equip(var/mob/living/carbon/human/H)
		if(!H)	return 0
		switch(H.backbag)
			if(2) H.equip_to_slot_or_del(new /obj/item/weapon/storage/backpack(H), slot_back)
			if(3) H.equip_to_slot_or_del(new /obj/item/weapon/storage/backpack/satchel/norm(H), slot_back)
			if(4) H.equip_to_slot_or_del(new /obj/item/weapon/storage/backpack/satchel(H), slot_back)
		H.equip_to_slot_or_del(new /obj/item/device/radio/headset/headset_service(H), slot_l_ear)
		H.equip_to_slot_or_del(new /obj/item/clothing/shoes/black(H), slot_shoes)
		H.equip_to_slot_or_del(new /obj/item/clothing/under/rank/bartender(H), slot_w_uniform)
		H.equip_to_slot_or_del(new /obj/item/device/pda/bar(H), slot_belt)
		return 1


/datum/job/chef
	title = "Chef"
	flag = CHEF
	department = "Civilian"
	department_flag = CIVILIAN
	faction = "Station"
	total_positions = 2
	spawn_positions = 2
	supervisors = "the head of personnel"
	selection_color = "#515151"
	access = list(access_hydroponics, access_bar, access_kitchen)
	minimal_access = list(access_kitchen)
	alt_titles = list("Cook","Culinary Artist","Baker","Waiter","Waitress")

	equip(var/mob/living/carbon/human/H)
		if(!H)	return 0
		H.equip_to_slot_or_del(new /obj/item/device/radio/headset/headset_service(H), slot_l_ear)
		H.equip_to_slot_or_del(new /obj/item/clothing/under/rank/chef(H), slot_w_uniform)
		H.equip_to_slot_or_del(new /obj/item/clothing/suit/chef(H), slot_wear_suit)
		H.equip_to_slot_or_del(new /obj/item/clothing/shoes/black(H), slot_shoes)
		H.equip_to_slot_or_del(new /obj/item/clothing/head/chefhat(H), slot_head)
		H.equip_to_slot_or_del(new /obj/item/device/pda/chef(H), slot_belt)
		return 1


/datum/job/hydro
	title = "Gardener"
	flag = BOTANIST
	department = "Civilian"
	department_flag = CIVILIAN
	faction = "Station"
	total_positions = 2
	spawn_positions = 1
	supervisors = "the head of personnel"
	selection_color = "#515151"
	access = list(access_hydroponics, access_bar, access_kitchen)
	minimal_access = list(access_hydroponics)
	alt_titles = list("Hydroponicist","Botanist","Farmer")


	equip(var/mob/living/carbon/human/H)
		if(!H)	return 0
		H.equip_to_slot_or_del(new /obj/item/device/radio/headset/headset_service(H), slot_l_ear)
		H.equip_to_slot_or_del(new /obj/item/clothing/under/rank/hydroponics(H), slot_w_uniform)
		H.equip_to_slot_or_del(new /obj/item/clothing/shoes/black(H), slot_shoes)
		H.equip_to_slot_or_del(new /obj/item/clothing/gloves/botanic_leather(H), slot_gloves)
		H.equip_to_slot_or_del(new /obj/item/clothing/suit/apron(H), slot_wear_suit)
		H.equip_to_slot_or_del(new /obj/item/device/analyzer/plant_analyzer(H), slot_s_store)
		H.equip_to_slot_or_del(new /obj/item/device/pda/botanist(H), slot_belt)
		switch(H.backbag)
			if(2) H.equip_to_slot_or_del(new /obj/item/weapon/storage/backpack/hydroponics(H), slot_back)
			if(3) H.equip_to_slot_or_del(new /obj/item/weapon/storage/backpack/satchel/hyd(H), slot_back)
			if(4) H.equip_to_slot_or_del(new /obj/item/weapon/storage/backpack/satchel(H), slot_back)
		return 1



//Cargo
/datum/job/qm
	title = "Quartermaster"
	flag = QUARTERMASTER
	department = "Cargo"
	department_flag = CIVILIAN
	faction = "Station"
	total_positions = 1
	spawn_positions = 1
	supervisors = "the head of personnel"
	selection_color = "#515151"
	economic_modifier = 5
	access = list(access_maint_tunnels, access_mailsorting, access_cargo, access_cargo_bot, access_qm, access_mining, access_mining_station)
	minimal_access = list(access_maint_tunnels, access_mailsorting, access_cargo, access_cargo_bot, access_qm, access_mining, access_mining_station)

	ideal_character_age = 40


	equip(var/mob/living/carbon/human/H)
		if(!H)	return 0
		H.equip_to_slot_or_del(new /obj/item/device/radio/headset/headset_cargo(H), slot_l_ear)
		H.equip_to_slot_or_del(new /obj/item/clothing/under/rank/cargo(H), slot_w_uniform)
		H.equip_to_slot_or_del(new /obj/item/clothing/shoes/brown(H), slot_shoes)
		H.equip_to_slot_or_del(new /obj/item/device/pda/quartermaster(H), slot_belt)
//		H.equip_to_slot_or_del(new /obj/item/clothing/gloves/black(H), slot_gloves)
		H.equip_to_slot_or_del(new /obj/item/clothing/glasses/sunglasses(H), slot_glasses)
		H.equip_to_slot_or_del(new /obj/item/weapon/clipboard(H), slot_l_hand)
		return 1



/datum/job/cargo_tech
	title = "Cargo Technician"
	flag = CARGOTECH
	department = "Cargo"
	department_flag = CIVILIAN
	faction = "Station"
	total_positions = 2
	spawn_positions = 2
	supervisors = "the quartermaster and the head of personnel"
	selection_color = "#515151"
	access = list(access_maint_tunnels, access_mailsorting, access_cargo, access_cargo_bot, access_qm, access_mining, access_mining_station)
	minimal_access = list(access_maint_tunnels, access_cargo, access_cargo_bot, access_mailsorting)


	equip(var/mob/living/carbon/human/H)
		if(!H)	return 0
		H.equip_to_slot_or_del(new /obj/item/device/radio/headset/headset_cargo(H), slot_l_ear)
		H.equip_to_slot_or_del(new /obj/item/clothing/under/rank/cargotech(H), slot_w_uniform)
		H.equip_to_slot_or_del(new /obj/item/clothing/shoes/black(H), slot_shoes)
		H.equip_to_slot_or_del(new /obj/item/device/pda/cargo(H), slot_belt)
//		H.equip_to_slot_or_del(new /obj/item/clothing/gloves/black(H), slot_gloves)
		return 1



/datum/job/mining
	title = "Shaft Miner"
	flag = MINER
	department = "Cargo"
	department_flag = CIVILIAN
	faction = "Station"
	total_positions = 3
	spawn_positions = 3
	supervisors = "the quartermaster and the head of personnel"
	selection_color = "#515151"
	economic_modifier = 5
	access = list(access_maint_tunnels, access_mailsorting, access_cargo, access_cargo_bot, access_qm, access_mining, access_mining_station)
	minimal_access = list(access_mining, access_mining_station, access_mailsorting)
	alt_titles = list("Drill Technician","Prospector","Miner")

	equip(var/mob/living/carbon/human/H)
		if(!H)	return 0
		H.equip_to_slot_or_del(new /obj/item/device/radio/headset/headset_cargo (H), slot_l_ear)
		switch(H.backbag)
			if(2) H.equip_to_slot_or_del(new /obj/item/weapon/storage/backpack/industrial(H), slot_back)
			if(3) H.equip_to_slot_or_del(new /obj/item/weapon/storage/backpack/satchel/eng(H), slot_back)
			if(4) H.equip_to_slot_or_del(new /obj/item/weapon/storage/backpack/satchel(H), slot_back)
		H.equip_to_slot_or_del(new /obj/item/clothing/under/rank/miner(H), slot_w_uniform)
		H.equip_to_slot_or_del(new /obj/item/device/pda/shaftminer(H), slot_belt)
		H.equip_to_slot_or_del(new /obj/item/clothing/shoes/black(H), slot_shoes)
//		H.equip_to_slot_or_del(new /obj/item/clothing/gloves/black(H), slot_gloves)
		if(H.backbag == 1)
			H.equip_to_slot_or_del(new /obj/item/weapon/crowbar(H), slot_l_hand)
			H.equip_to_slot_or_del(new /obj/item/weapon/storage/bag/ore(H), slot_l_store)
		else
			H.equip_to_slot_or_del(new /obj/item/weapon/crowbar(H), slot_in_backpack)
			H.equip_to_slot_or_del(new /obj/item/weapon/storage/bag/ore(H), slot_in_backpack)
		return 1

	equip_survival(var/mob/living/carbon/human/H)
		if(!H)	return 0
		H.species.equip_survival_gear(H,1)
		return 1



/datum/job/entertainer
	title = "Entertainer"
	flag = ENTERTAIN
	department_flag = CIVILIAN
	faction = "Station"
	total_positions = 3
	spawn_positions = 3
	supervisors = "the head of personnel"
	selection_color = "#dddddd"
	access = list(access_theatre, access_maint_tunnels)
	minimal_access = list(access_theatre)
	alt_titles = list("Stripper","Exotic Dancer","Escort","Performer","Singer","Comedian")
	equip(var/mob/living/carbon/human/H)
		if(!H)	return 0
		if (H.mind.role_alt_title)
			switch(H.mind.role_alt_title)
				if("Stripper")
					if(H.gender == FEMALE)
						H.equip_to_slot_or_del(new /obj/item/clothing/under/harness(H), slot_w_uniform)
						H.equip_to_slot_or_del(new /obj/item/clothing/suit/stripper/stripper_pink(H), slot_wear_suit)
						H.equip_to_slot_or_del(new /obj/item/clothing/shoes/flats/white(H), slot_shoes)
					else
						H.equip_to_slot_or_del(new /obj/item/clothing/under/darkholme(H), slot_w_uniform)
						H.equip_to_slot_or_del(new /obj/item/clothing/shoes/black(H), slot_shoes)
				if("Escort")
					if(H.gender == MALE)
						H.equip_to_slot_or_del(new /obj/item/clothing/under/darkholme(H), slot_w_uniform)
						H.equip_to_slot_or_del(new /obj/item/clothing/shoes/black(H), slot_shoes)
					else
						H.equip_to_slot_or_del(new /obj/item/clothing/under/harness(H), slot_w_uniform)
						H.equip_to_slot_or_del(new /obj/item/clothing/suit/stripper/stripper_green(H), slot_wear_suit)
						H.equip_to_slot_or_del(new /obj/item/clothing/shoes/flats(H), slot_shoes)
				if("Exotic Dancer")
					if(H.gender == MALE)
						if(prob(10))
							H.equip_to_slot_or_del(new /obj/item/clothing/under/birthdaysuit(H), slot_w_uniform)
							H.equip_to_slot_or_del(new /obj/item/clothing/under/stripper/mankini(H), slot_wear_suit)
							H.equip_to_slot_or_del(new /obj/item/clothing/shoes/flats/purple(H), slot_shoes)
						else
							H.equip_to_slot_or_del(new /obj/item/clothing/under/pants/youngfolksjeans(H), slot_w_uniform)
							H.equip_to_slot_or_del(new /obj/item/clothing/shoes/brown(H), slot_shoes)
							if(prob(20))
								H.equip_to_slot_or_del(new /obj/item/clothing/accessory/necklace/bling(H), slot_tie)
							else
								H.equip_to_slot_or_del(new /obj/item/clothing/accessory/scarf/zebra(H), slot_tie)
					else
						H.equip_to_slot_or_del(new /obj/item/clothing/under/dress/dress_saloon(H), slot_w_uniform)
						H.equip_to_slot_or_del(new /obj/item/clothing/shoes/flats(H), slot_shoes)
				else
					if(H.gender == FEMALE)
						H.equip_to_slot_or_del(new /obj/item/clothing/under/redskirt(H), slot_w_uniform)
						H.equip_to_slot_or_del(new /obj/item/clothing/accessory/scarf/black(H), slot_tie)
						H.equip_to_slot_or_del(new /obj/item/clothing/shoes/laceup(H), slot_shoes)
					else
						H.equip_to_slot_or_del(new /obj/item/clothing/under/pinstriped(H), slot_w_uniform)
						H.equip_to_slot_or_del(new /obj/item/clothing/shoes/laceup(H), slot_shoes)
					return 1


/datum/job/clown
	title = "Clown"
	flag = CLOWN
	department_flag = CIVILIAN
	faction = "Station"
	total_positions = 3
	spawn_positions = 3
	supervisors = "the head of personnel"
	selection_color = "#dddddd"
	access = list(access_theatre, access_maint_tunnels)
	minimal_access = list(access_theatre)
	alt_titles = list("Sexy Clown","Jester")
	equip(var/mob/living/carbon/human/H)
		if(!H)	return 0
		H.equip_to_slot_or_del(new /obj/item/weapon/storage/backpack/clown(H), slot_back)
		H.equip_to_slot_or_del(new /obj/item/weapon/bikehorn(H), slot_in_backpack)
		H.equip_to_slot_or_del(new /obj/item/weapon/stamp/clown(H), slot_in_backpack)
		H.equip_to_slot_or_del(new /obj/item/weapon/pen/crayon/rainbow(H), slot_in_backpack)
		H.equip_to_slot_or_del(new /obj/item/weapon/storage/fancy/crayons(H), slot_in_backpack)
		H.equip_to_slot_or_del(new /obj/item/toy/waterflower(H), slot_in_backpack)
		H.mutations.Add(CLUMSY)
		if (H.mind.role_alt_title)
			switch(H.mind.role_alt_title)
				if("Sexy Clown")
					H.equip_to_slot_or_del(new /obj/item/clothing/under/sexyclown(H), slot_w_uniform)
					H.equip_to_slot_or_del(new /obj/item/device/pda/clown(H), slot_belt)
					H.equip_to_slot_or_del(new /obj/item/clothing/shoes/clown_shoes(H), slot_shoes)
					H.equip_to_slot_or_del(new /obj/item/clothing/mask/gas/sexyclown(H), slot_wear_mask)
				if("Jester")
					H.equip_to_slot_or_del(new /obj/item/weapon/storage/backpack/clown(H), slot_back)
					H.equip_to_slot_or_del(new /obj/item/clothing/under/jester(H), slot_w_uniform)
					H.equip_to_slot_or_del(new /obj/item/device/pda/clown(H), slot_belt)
					H.equip_to_slot_or_del(new /obj/item/clothing/shoes/jestershoes(H), slot_shoes)
					H.equip_to_slot_or_del(new /obj/item/clothing/head/jesterhat(H), slot_head)
				else
					H.equip_to_slot_or_del(new /obj/item/weapon/storage/backpack/clown(H), slot_back)
					H.equip_to_slot_or_del(new /obj/item/clothing/under/rank/clown(H), slot_w_uniform)
					H.equip_to_slot_or_del(new /obj/item/device/pda/clown(H), slot_belt)
					H.equip_to_slot_or_del(new /obj/item/clothing/shoes/clown_shoes(H), slot_shoes)
					H.equip_to_slot_or_del(new /obj/item/clothing/mask/gas/clown_hat(H), slot_wear_mask)
					return 1


/datum/job/mime
	title = "Mime"
	flag = MIME
	department_flag = CIVILIAN
	faction = "Station"
	total_positions = 1
	spawn_positions = 1
	supervisors = "the head of personnel"
	selection_color = "#dddddd"
	access = list(access_theatre, access_maint_tunnels)
	minimal_access = list(access_theatre)
	alt_titles = list("Sexy Mime",)
	equip(var/mob/living/carbon/human/H)
		if(!H)	return 0
		if (H.mind.role_alt_title)
			switch(H.mind.role_alt_title)
				if("Sexy Mime")
					if(H.backbag == 2) H.equip_to_slot_or_del(new /obj/item/weapon/storage/backpack(H), slot_back)
					if(H.backbag == 3) H.equip_to_slot_or_del(new /obj/item/weapon/storage/backpack/satchel/norm(H), slot_back)
					H.equip_to_slot_or_del(new /obj/item/clothing/under/sexymime(H), slot_w_uniform)
					H.equip_to_slot_or_del(new /obj/item/clothing/shoes/black(H), slot_shoes)
					H.equip_to_slot_or_del(new /obj/item/device/pda/mime(H), slot_belt)
					H.equip_to_slot_or_del(new /obj/item/clothing/gloves/white(H), slot_gloves)
					H.equip_to_slot_or_del(new /obj/item/clothing/mask/gas/sexymime(H), slot_wear_mask)
					H.equip_to_slot_or_del(new /obj/item/clothing/head/beret(H), slot_head)
					H.equip_to_slot_or_del(new /obj/item/clothing/suit/suspenders(H), slot_wear_suit)
					if(H.backbag == 1)
						H.equip_to_slot_or_del(new /obj/item/weapon/pen/crayon/mime(H), slot_l_store)
						H.equip_to_slot_or_del(new /obj/item/weapon/reagent_containers/food/drinks/bottle/bottleofnothing(H), slot_l_hand)
					else
						H.equip_to_slot_or_del(new /obj/item/weapon/pen/crayon/mime(H), slot_in_backpack)
						H.equip_to_slot_or_del(new /obj/item/weapon/reagent_containers/food/drinks/bottle/bottleofnothing(H), slot_in_backpack)
					H.verbs += /client/proc/mimespeak
					H.verbs += /client/proc/mimewall
					H.mind.special_verbs += /client/proc/mimespeak
					H.mind.special_verbs += /client/proc/mimewall
					H.miming = 1
				else
					if(H.backbag == 2) H.equip_to_slot_or_del(new /obj/item/weapon/storage/backpack(H), slot_back)
					if(H.backbag == 3) H.equip_to_slot_or_del(new /obj/item/weapon/storage/backpack/satchel/norm(H), slot_back)
					H.equip_to_slot_or_del(new /obj/item/clothing/under/mime(H), slot_w_uniform)
					H.equip_to_slot_or_del(new /obj/item/clothing/shoes/black(H), slot_shoes)
					H.equip_to_slot_or_del(new /obj/item/device/pda/mime(H), slot_belt)
					H.equip_to_slot_or_del(new /obj/item/clothing/gloves/white(H), slot_gloves)
					H.equip_to_slot_or_del(new /obj/item/clothing/mask/gas/mime(H), slot_wear_mask)
					H.equip_to_slot_or_del(new /obj/item/clothing/head/beret(H), slot_head)
					H.equip_to_slot_or_del(new /obj/item/clothing/suit/suspenders(H), slot_wear_suit)
					if(H.backbag == 1)
						H.equip_to_slot_or_del(new /obj/item/weapon/pen/crayon/mime(H), slot_l_store)
						H.equip_to_slot_or_del(new /obj/item/weapon/reagent_containers/food/drinks/bottle/bottleofnothing(H), slot_l_hand)
					else
						H.equip_to_slot_or_del(new /obj/item/weapon/pen/crayon/mime(H), slot_in_backpack)
						H.equip_to_slot_or_del(new /obj/item/weapon/reagent_containers/food/drinks/bottle/bottleofnothing(H), slot_in_backpack)
					H.verbs += /client/proc/mimespeak
					H.verbs += /client/proc/mimewall
					H.mind.special_verbs += /client/proc/mimespeak
					H.mind.special_verbs += /client/proc/mimewall
					H.miming = 1
					return 1

/datum/job/janitor
	title = "Janitor"
	flag = JANITOR
	department = "Civilian"
	department_flag = CIVILIAN
	faction = "Station"
	total_positions = 2
	spawn_positions = 2
	supervisors = "the head of personnel"
	selection_color = "#515151"
	access = list(access_janitor, access_maint_tunnels)
	minimal_access = list(access_janitor, access_maint_tunnels)
	alt_titles = list("Custodian","Maid","Sexy Maid")
	ideal_character_age = 70  // Same as captain :)

	equip(var/mob/living/carbon/human/H)
		if(!H)	return 0
		H.equip_to_slot_or_del(new /obj/item/device/radio/headset/headset_service(H), slot_l_ear)
		if (H.mind.role_alt_title)
			switch(H.mind.role_alt_title)
				if("Maid")
					H.equip_to_slot_or_del(new /obj/item/clothing/under/janimaid(H), slot_w_uniform)
					H.equip_to_slot_or_del(new /obj/item/clothing/suit/maidapron(H), slot_wear_suit)
					H.equip_to_slot_or_del(new /obj/item/device/pda/janitor(H), slot_belt)
					H.equip_to_slot_or_del(new /obj/item/clothing/shoes/flats(H), slot_shoes)
				if ("Sexy Maid")
					H.equip_to_slot_or_del(new /obj/item/clothing/under/maid(H), slot_w_uniform)
					H.equip_to_slot_or_del(new /obj/item/clothing/suit/maidapron(H), slot_wear_suit)
					H.equip_to_slot_or_del(new /obj/item/device/pda/janitor(H), slot_belt)
					H.equip_to_slot_or_del(new /obj/item/clothing/shoes/flats(H), slot_shoes)
				else
					H.equip_to_slot_or_del(new /obj/item/clothing/under/rank/janitor(H), slot_w_uniform)
					H.equip_to_slot_or_del(new /obj/item/clothing/shoes/black(H), slot_shoes)
					H.equip_to_slot_or_del(new /obj/item/device/pda/janitor(H), slot_belt)
 				return 1


//More or less assistants
/datum/job/librarian
	title = "Librarian"
	flag = LIBRARIAN
	department = "Civilian"
	department_flag = CIVILIAN
	faction = "Station"
	total_positions = 1
	spawn_positions = 1
	supervisors = "the head of personnel"
	selection_color = "#515151"
	access = list(access_library, access_maint_tunnels)
	minimal_access = list(access_library)
	alt_titles = list("Journalist","Writer","Bookkeeper","Curator","Archivist","Author")

	equip(var/mob/living/carbon/human/H)
		if(!H)	return 0
		H.equip_to_slot_or_del(new /obj/item/clothing/under/suit_jacket/red(H), slot_w_uniform)
		H.equip_to_slot_or_del(new /obj/item/device/pda/librarian(H), slot_belt)
		H.equip_to_slot_or_del(new /obj/item/clothing/shoes/black(H), slot_shoes)
		H.equip_to_slot_or_del(new /obj/item/weapon/barcodescanner(H), slot_l_hand)
		return 1



//var/global/lawyer = 0//Checks for another lawyer //This changed clothes on 2nd lawyer, both IA get the same dreds.
/datum/job/lawyer
	title = "Internal Affairs Agent"
	flag = LAWYER
	department = "Civilian"
	department_flag = CIVILIAN
	faction = "Station"
	total_positions = 2
	spawn_positions = 2
	supervisors = "company officials and Corporate Regulations"
	selection_color = "#515151"
	economic_modifier = 7
	access = list(access_lawyer, access_sec_doors, access_maint_tunnels, access_heads)
	minimal_access = list(access_lawyer, access_sec_doors, access_heads)
	alt_titles = list("Lawyer","Attorney")

	equip(var/mob/living/carbon/human/H)
		if(!H)	return 0
		H.equip_to_slot_or_del(new /obj/item/device/radio/headset/ia(H), slot_l_ear)
		switch(H.backbag)
			if(2) H.equip_to_slot_or_del(new /obj/item/weapon/storage/backpack(H), slot_back)
			if(3) H.equip_to_slot_or_del(new /obj/item/weapon/storage/backpack/satchel/norm(H), slot_back)
			if(4) H.equip_to_slot_or_del(new /obj/item/weapon/storage/backpack/satchel(H), slot_back)
		H.equip_to_slot_or_del(new /obj/item/clothing/under/rank/internalaffairs(H), slot_w_uniform)
		H.equip_to_slot_or_del(new /obj/item/clothing/suit/storage/toggle/internalaffairs(H), slot_wear_suit)
		H.equip_to_slot_or_del(new /obj/item/clothing/shoes/brown(H), slot_shoes)
		H.equip_to_slot_or_del(new /obj/item/clothing/glasses/sunglasses/big(H), slot_glasses)
		H.equip_to_slot_or_del(new /obj/item/device/pda/lawyer(H), slot_belt)
		H.equip_to_slot_or_del(new /obj/item/weapon/storage/briefcase(H), slot_l_hand)

		H.implant_loyalty()


		return 1
