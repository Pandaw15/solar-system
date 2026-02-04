extends Node2D


@export var mass: float = 1.0
@export var initial_velocity: Vector2 = Vector2.ZERO 

@onready var velocity: Vector2 = initial_velocity
var acceleration: Vector2


func _physics_process(delta: float) -> void:
	velocity += acceleration
	position += velocity * delta
