extends Node

# get a ref to capsule (click + strg)
@onready var capsule: MeshInstance3D = $Capsule
@onready var capsule_2: MeshInstance3D = $Capsule2

var _speed: float = 5.0
var _rotation_speed: float = 2.0

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	
	if Input.is_action_just_pressed("ui_accept"):
		capsule_2.look_at(capsule.global_position, Vector3.UP, true)
	
	if Input.is_action_pressed("ui_up"):
		capsule_2.translate_object_local(Vector3.BACK * delta * _speed)
		
	if Input.is_action_pressed("ui_down"):
		capsule_2.translate_object_local(Vector3.FORWARD * delta * _speed)
		
	if Input.is_action_pressed("ui_left"):
		capsule_2.rotate(Vector3.UP, deg_to_rad(180) * delta * _rotation_speed)
		
	if Input.is_action_pressed("ui_right"):
		capsule_2.rotate(Vector3.UP, deg_to_rad(-180) * delta * _rotation_speed)
