extends CharacterBody2D

@export var speed := 300
@export var jump_velocity := 500


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta: float) -> void:
	if not is_on_floor():
		velocity += get_gravity() * delta
		
	var direction := Input.get_axis("move_left", "move_right")
		
	velocity.x = direction * speed
		
	if Input.is_action_just_pressed("jump") and is_on_floor():
			velocity.y = -jump_velocity
			
	move_and_slide()
