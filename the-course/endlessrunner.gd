extends CharacterBody3D

@export var speed: float = 10.0
@export var gravity: float = -24.8
@export var jump_force: float = 10.0


func _physics_process(delta: float) -> void:
	velocity.y += gravity * delta
	if is_on_floor() and Input.is_action_just_pressed("ui_select"):
		velocity.y = jump_force
	velocity.z = speed
	move_and_slide()
