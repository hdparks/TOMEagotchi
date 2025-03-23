extends Sprite2D

@export var threshold: int

func toggle_on():
	self.texture = load('res://status-full.png')

func toggle_off():
	self.texture = load('res://status-empty.png')

func _on_discipline_changed(old_value: Variant, new_value: Variant) -> void:
	if (new_value >= threshold):
		toggle_on()
	else:
		toggle_off()
