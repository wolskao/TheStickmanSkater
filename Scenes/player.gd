extends RigidBody2D

@export var push_force := 1000.0
@export var jump_force := 500.0

func _physics_process(delta: float) -> void:
	var direction := Input.get_axis("move_left", "move_right")

	if direction != 0:
		apply_central_force(Vector2.RIGHT * direction * push_force)

	if Input.is_action_just_pressed("jump"):
		apply_central_impulse(Vector2.UP * jump_force)
