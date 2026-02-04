extends Line2D


@export var color: Color


func _ready() -> void:
	%ToggleTrails.connect("toggled", _on_toggle_trails_toggled)
	default_color = color


func _physics_process(_delta: float) -> void:
	add_point(get_parent().global_position)


func _on_toggle_trails_toggled(state: bool) -> void:
	visible = state
