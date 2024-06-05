extends Node

const scene_path = "res://SceneToLoad.tscn"
@export var threaded = true

func _ready():
	if threaded:
		ResourceLoader.load_threaded_request(scene_path)
		set_process(true)
	else:
		var node = load(scene_path).instantiate()
		add_child(node)
		set_process(false)

func _process(delta):
	if threaded:
		_threaded_process()

func _threaded_process():
	var load_status = ResourceLoader.load_threaded_get_status(scene_path)
	if load_status == ResourceLoader.THREAD_LOAD_LOADED:
		var node = ResourceLoader.load_threaded_get(scene_path).instantiate()
		add_child(node)
		set_process(false)
