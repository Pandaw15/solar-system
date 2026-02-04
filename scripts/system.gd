extends Node


const G : float = 1.0

@onready var sol := %Sol
@onready var earth := %Earth


func _physics_process(delta: float) -> void:
	var direction: Vector2 = sol.position - earth.position
	var distance: float = direction.length()
	
	var force_intensity: float = G * (sol.mass * earth.mass) / distance * distance
	var force: Vector2 = direction.normalized() * force_intensity
	
	sol.acceleration = force / sol.mass
	earth.acceleration = force / earth.mass
