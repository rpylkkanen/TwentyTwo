extends Node

var chat setget set_chat

func set_chat(node):
	chat = Chat.new()
	node.add_child(chat)

func message(from, text):
	if chat != null:
		chat.add_message(from, text)
	print(from, text)
