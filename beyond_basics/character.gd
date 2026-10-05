class_name Character

const MAX_HEALTH: int = 100
const MAX_STAMINA: int = 100

var _health: int
var _stamina: int
var _weapon: String
var _name: String: set = set_name, get = get_name
var _age: int

func _init(name: String, age: int, health: int, stamina: int, weapon: String):
	_name = name
	_age = age
	_health = health
	_stamina = stamina
	_weapon = weapon

func set_name(name: String) -> void:
	_name = name

func get_name() -> String:
	return _name
	
