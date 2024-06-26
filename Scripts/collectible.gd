extends Area3D

@export var type = "apple"
var is_collected = false
signal item_collected

func _on_body_entered(body):
	# when player enters
	if type == "apple":
		# increment apple count by 1
		global.apple_count = global.apple_count + 1
	
	if type == "special_key":
		global.has_special_key = true

	body.play_pickup_sound()
	emit_signal("item_collected")
	queue_free() # remove object from scene
