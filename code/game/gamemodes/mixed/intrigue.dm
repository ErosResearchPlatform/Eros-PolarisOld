/datum/game_mode/intrigue
	name = "Traitors & Ninja"
	round_description = "Crewmembers are contacted by external elements while another infiltrates the colony."
	extended_round_description = "Traitors and a ninja spawn during this round."
	votable = 0
	config_tag = "intrigue"
	required_players = 7
	required_players_secret = 7
	required_enemies = 2
	end_on_antag_death = 0
	antag_tags = list(MODE_NINJA, MODE_AUTOTRAITOR)
	round_autoantag = 1
	require_all_templates = 1