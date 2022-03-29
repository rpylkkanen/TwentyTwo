class_name Player

extends Node

enum {
	HAND,
	BOARD,
}

var attributes = {
	Attr.NAME: 'Name',
}
var hand = []
var board = []

func set_attribute(key, value):
	attributes[key] = value

func get_attribute(key):
	var attribute = attributes[key]
	return attribute

func remove_minion(from, minion):
	match from:
		BOARD: board.remove(minion)
		HAND: hand.remove(minion)
		_: pass
	Controller.message(self, 'remove_minion(%s, %s)' % [from, minion])

func add_minion(to, minion):
	match to:
		BOARD: board.append(minion)
		HAND: board.append(minion)
		_: pass
	Controller.message(self, 'add_minion(%s, %s)' % [to, minion])

func _to_string():
	var string = '<%s>' % [
		get_attribute(Attr.NAME),
	]
	return string
