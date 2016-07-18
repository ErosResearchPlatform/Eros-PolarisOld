/datum/game_mode/traitorling
	name = "Traitors & Changelings"
	round_description = "There are traitors and alien changelings on the station. Do not let the changelings succeed!"
	extended_round_description = "Traitors and changelings both spawn during this mode."
	votable = 0
	config_tag = "traitorling"
	required_players = 10
	required_players_secret = 10
	required_enemies = 5
	end_on_antag_death = 1
	require_all_templates = 1
	antag_tags = list(MODE_CHANGELING, MODE_TRAITOR)
