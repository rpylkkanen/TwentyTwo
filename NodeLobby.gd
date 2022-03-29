class_name Lobby

extends Node

var num_players = 1
var players = {}

func _init(_num_players):
	num_players = _num_players
	for num in range(num_players):
		players[num] = null

func set_player(num, player):
	players[num] = player
	Controller.message(self, 'set_player(%s, %s)' % [num, player])

func _to_string():
	return '<Lobby>'
