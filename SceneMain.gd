extends Node

func _ready():
	Controller.set_chat($UI)
	Controller.message(self, 'Hello')
	var lobby = Lobby.new(2)
	var player = Player.new()
	player.set_attribute(Attr.NAME, 'Player')
	var opponent = Player.new()
	opponent.set_attribute(Attr.NAME, 'Opponent')
	lobby.set_player(0, player)
	lobby.set_player(1, opponent)
	for identity in [player, opponent]:
		var minions = Minions.random(3, [Minions.Tags.MURLOC])
		for minion in minions:
			identity.add_minion(identity.BOARD, minion)

func _to_string():
	return '<Main>'
