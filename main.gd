extends Node3D


# Called when the node enters the scene tree for the first time.
func _ready():
	var cr = $Simulation/ColorRect
	var slop = $Slop
	var simText = $Simulation.get_texture()
	var colText = $Collision.get_texture()
	
	cr.material.set_shader_parameter('sim_text', simText)
	cr.material.set_shader_parameter('col_text', colText)
	
	slop.mesh.surface_get_material(0).set_shader_parameter('simulation', simText)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
