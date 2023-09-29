extends CharacterBody3D

@export var speed: float = 5
@export var rot_speed: float = 2

func  _ready():
	pass
	
func _process(delta):
	
	var f = Input.get_axis("move_backwards", "move_forward")
	
	transform.origin += transform.basis.z * speed * delta * f
	
	var t = Input.get_axis("rotate_l", "rotate_r")
	
	transform.basis = transform.basis.rotated(Vector3.UP, t * delta * rot_speed)
	
	pass
	
