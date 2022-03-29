class_name Chat

extends VBoxContainer

func add_message(sender, text):
	var sender_label = Label.new()
	var text_label = Label.new()
	sender_label.set_text(str(sender))
	text_label.set_text(str(text))
	var container = HBoxContainer.new()
	container.add_child(sender_label)
	container.add_child(text_label)
	add_child(container)
