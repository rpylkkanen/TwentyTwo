class_name Minion

extends Node

var attributes = {
	Attr.NAME: 'Name',
	Attr.ATTACK: 0,
	Attr.HEALTH: 0,
}

var tags = []

var modifiers = []

func _init(_name, attack, health, _tags=[]):
	attributes[Attr.NAME] = _name
	attributes[Attr.ATTACK] = attack
	attributes[Attr.HEALTH] = health
	tags = _tags

func get_attribute(key):
	var value = attributes[key]
	if key in modifiers:
		value += modifiers[key]
	return value

func get_tags():
	return tags

func get_tags_text():
	var result = []
	for tag in tags:
		var text = Minions.Tags.keys()[tag]
		result.append(text)
	return result

func _to_string():
	var string = '<%s (%s, %s, %s)>' % [
		get_attribute(Attr.NAME),
		get_attribute(Attr.ATTACK),
		get_attribute(Attr.HEALTH),
		get_tags_text(),
	]
	return string
