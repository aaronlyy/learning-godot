@tool
extends EditorScript

func _run() -> void:
    var aragorn: Character = Character.new("aaron", 10, 100, 100, "none")
    print(aragorn.get_name())
    aragorn.set_name("ehhehe")
    print(aragorn.get_name())
