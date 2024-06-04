@tool
extends EditorPlugin

var timer : float = 0.0
var timeout : float = 60.0

func _enter_tree():
	# Initialization of the plugin goes here.
	pass


func _exit_tree():
	# Clean-up of the plugin goes here.
	pass

func _physics_process(delta):
	timer += delta
	if timer > timeout:
		timer -= timeout
		EditorInterface.save_all_scenes()
		print("Autosaved")
