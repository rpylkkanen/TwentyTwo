extends Node

enum Tags {
	TIER_1,
	TIER_2,
	TIER_3,
	TIER_4,
	TIER_5,
	TIER_6,
	NEUTRAL,
	BEAST,
	DEMON,
	DRAGON,
	ELEMENTAL,
	QUILBOAR,
	MECH,
	MURLOC,
	PIRATE,
}

const TRIBES = [
	Tags.NEUTRAL,
	Tags.BEAST,
	Tags.DEMON,
	Tags.DRAGON,
	Tags.ELEMENTAL,
	Tags.QUILBOAR,
	Tags.MECH,
	Tags.MURLOC,
	Tags.PIRATE,
]

enum Enum {
	#Tier 1
	ALLEYCAT,
	DECK_SWABBIE,
	EVOLVING_CHROMAWING,
	ICKY_IMP,
	IMPULSIVE_TRICKSTER,
	MICRO_MUMMY,
	PUPBOT,
	RAZORFEN_GEOMANCER,
	RED_WHELP,
	REFRESHING_ANOMALY,
	ROCKPOOL_HUNTER,
	SCALLYWAG,
	SCAVENGING_HYENA,
	SELLEMENTAL,
	SUN_BACON_RELAXER,
	SWAMPSTRIKER,
	WRATH_WEAVER,
}

func get(key):
	match key:
		# Tier 1
		Enum.ALLEYCAT: return Minion.new('Alleycat', 1, 1, [Tags.TIER_1, Tags.BEAST])
		Enum.DECK_SWABBIE: return Minion.new('Deck Swabbie', 2, 2, [Tags.TIER_1, Tags.PIRATE])
		Enum.EVOLVING_CHROMAWING: return Minion.new('Evolving Chromawing', 1, 3, [Tags.TIER_1, Tags.DRAGON])
		Enum.ICKY_IMP: return Minion.new('Icky Imp', 1, 1, [Tags.TIER_1, Tags.DEMON])
		Enum.IMPULSIVE_TRICKSTER: return Minion.new('Impulsive Trickster', 2, 2, [Tags.TIER_1, Tags.DEMON])
		Enum.MICRO_MUMMY: return Minion.new('Micro Mummy', 1, 2, [Tags.TIER_1, Tags.MECH])
		Enum.PUPBOT: return Minion.new('Pupbot', 2, 1, [Tags.TIER_1, Tags.MECH])
		Enum.RAZORFEN_GEOMANCER: return Minion.new('Razorfen Geomancer', 3, 1, [Tags.TIER_1, Tags.QUILBOAR])
		Enum.RED_WHELP: return Minion.new('Red Whelp', 1, 2, [Tags.TIER_1, Tags.DRAGON])
		Enum.REFRESHING_ANOMALY: return Minion.new('Refreshing Anomaly', 1, 4, [Tags.TIER_1, Tags.ELEMENTAL])
		Enum.ROCKPOOL_HUNTER: return Minion.new('Rockpool Hunter', 2, 3, [Tags.TIER_1, Tags.MURLOC])
		Enum.SCALLYWAG: return Minion.new('Scallywag', 3, 1, [Tags.TIER_1, Tags.PIRATE])
		Enum.SCAVENGING_HYENA: return Minion.new('Scavenging Hyena', 2, 2, [Tags.TIER_1, Tags.BEAST])
		Enum.SELLEMENTAL: return Minion.new('Sellemental', 2, 2, [Tags.TIER_1, Tags.ELEMENTAL])
		Enum.SUN_BACON_RELAXER: return Minion.new('Sun-Bacon Relaxer', 1, 2, [Tags.TIER_1, Tags.QUILBOAR])
		Enum.SWAMPSTRIKER: return Minion.new('Swampstriker', 1, 4, [Tags.TIER_1, Tags.MURLOC])
		Enum.WRATH_WEAVER: return Minion.new('Wrath Weaver', 1, 3, [Tags.TIER_1, Tags.NEUTRAL])
		_: return Minion.new('Name', 1, 1, [Tags.TIER_1, Tags.NEUTRAL])

func filter(tags=[]):
	var result = []
	for key in Enum.values():
		var minion = get(key)
		var has_all = true
		for tag in tags:
			if minion.get_tags().has(tag) == false:
				has_all = false
		if has_all:
			result.append(minion)
	return result

func random(num, tags=[]):
	var result = []
	var minions = filter(tags)
	for i in range(num):
		var minion = minions[randi() % minions.size()]
		result.append(minion)
	return result
