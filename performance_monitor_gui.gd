extends Control
tool

export (NodePath) var fps_label_path = NodePath()
var fps_label = null

export (NodePath) var process_label_path = NodePath()
var process_label = null

export (NodePath) var physics_process_label_path = NodePath()
var physics_process_label = null

export (NodePath) var render_objects_in_frame_label_path = NodePath()
var render_objects_in_frame_label = null

export (NodePath) var render_draw_calls_in_frame_label_path = NodePath()
var render_draw_calls_in_frame_label = null

export (NodePath) var render_verticies_in_frame_label_path = NodePath()
var render_verticies_in_frame_label = null

export (NodePath) var render_material_changes_in_frame_label_path = NodePath()
var render_material_changes_in_frame_label = null

export (NodePath) var render_shader_changes_in_frame_label_path = NodePath()
var render_shader_changes_in_frame_label = null

export (NodePath) var render_surface_changes_in_frame_label_path = NodePath()
var render_surface_changes_in_frame_label = null

export (NodePath) var memory_static_label_path = NodePath()
var memory_static_label = null

export (NodePath) var memory_dynamic_label_path = NodePath()
var memory_dynamic_label = null

export (NodePath) var object_count_label_path = NodePath()
var object_count_label = null

export (NodePath) var object_resource_count_label_path = NodePath()
var object_resource_count_label = null

export (NodePath) var object_node_count_label_path = NodePath()
var object_node_count_label = null

export (NodePath) var physics_3d_active_objects_label_path = NodePath()
var physics_3d_active_objects_label = null

export (NodePath) var physics_3d_collision_pairs_label_path = NodePath()
var physics_3d_collision_pairs_label = null

export (NodePath) var physics_3d_island_count_label_path = NodePath()
var physics_3d_island_count_label = null

export (NodePath) var physics_2d_active_objects_label_path = NodePath()
var physics_2d_active_objects_label = null

export (NodePath) var physics_2d_collision_pairs_label_path = NodePath()
var physics_2d_collision_pairs_label = null

export (NodePath) var physics_2d_island_count_label_path = NodePath()
var physics_2d_island_count_label = null

export (NodePath) var usage_video_memory_total_label_path = NodePath()
var usage_video_memory_total_label = null

export (NodePath) var video_memory_used_label_path = NodePath()
var video_memory_used_label = null

export (NodePath) var texture_memory_used_label_path = NodePath()
var texture_memory_used_label = null

export (NodePath) var vertex_memory_used_label_path = NodePath()
var vertex_memory_used_label = null

var should_show_performance_monitor = false


func _process(p_delta):
	if p_delta > 0.0 and ! Engine.is_editor_hint():
		fps_label.set_text("FPS: %s" % str(Performance.get_monitor(Performance.TIME_FPS)))
		process_label.set_text(
			"Process: %s" % str(Performance.get_monitor(Performance.TIME_PROCESS))
		)
		physics_process_label.set_text(
			"Physics Process: %s" % str(Performance.get_monitor(Performance.TIME_PHYSICS_PROCESS))
		)

		render_objects_in_frame_label.set_text(
			(
				"Render Objects in Frame: %s"
				% str(Performance.get_monitor(Performance.RENDER_OBJECTS_IN_FRAME))
			)
		)
		render_draw_calls_in_frame_label.set_text(
			(
				"Render Draw Calls in Frame: %s"
				% str(Performance.get_monitor(Performance.RENDER_DRAW_CALLS_IN_FRAME))
			)
		)
		render_verticies_in_frame_label.set_text(
			(
				"Verticies in Frame: %s"
				% str(Performance.get_monitor(Performance.RENDER_VERTICES_IN_FRAME))
			)
		)
		render_material_changes_in_frame_label.set_text(
			(
				"Material Changes in Frame: %s"
				% str(Performance.get_monitor(Performance.RENDER_MATERIAL_CHANGES_IN_FRAME))
			)
		)
		render_shader_changes_in_frame_label.set_text(
			(
				"Shader Changes in Frame: %s"
				% str(Performance.get_monitor(Performance.RENDER_MATERIAL_CHANGES_IN_FRAME))
			)
		)
		render_surface_changes_in_frame_label.set_text(
			(
				"Surface Changes in Frame: %s"
				% str(Performance.get_monitor(Performance.RENDER_SURFACE_CHANGES_IN_FRAME))
			)
		)

		memory_static_label.set_text(
			(
				"Memory Static: %s/%s kb"
				% [
					str(ceil(Performance.get_monitor(Performance.MEMORY_STATIC) * 0.001)),
					str(ceil(Performance.get_monitor(Performance.MEMORY_STATIC_MAX) * 0.001))
				]
			)
		)
		memory_dynamic_label.set_text(
			(
				"Memory Dynamic: %s/%s kb"
				% [
					str(ceil(Performance.get_monitor(Performance.MEMORY_DYNAMIC) * 0.001)),
					str(ceil(Performance.get_monitor(Performance.MEMORY_DYNAMIC_MAX) * 0.001))
				]
			)
		)

		object_count_label.set_text(
			"Object Count: %s" % str(Performance.get_monitor(Performance.OBJECT_COUNT))
		)
		object_resource_count_label.set_text(
			(
				"Object Resource Count: %s"
				% str(Performance.get_monitor(Performance.OBJECT_RESOURCE_COUNT))
			)
		)
		object_node_count_label.set_text(
			"Object Node Count: %s" % str(Performance.get_monitor(Performance.OBJECT_NODE_COUNT))
		)

		physics_3d_active_objects_label.set_text(
			(
				"Physics 3D Active Objects: %s"
				% str(Performance.get_monitor(Performance.PHYSICS_3D_ACTIVE_OBJECTS))
			)
		)
		physics_3d_collision_pairs_label.set_text(
			(
				"Physics 3D Collision Pairs: %s"
				% str(Performance.get_monitor(Performance.PHYSICS_3D_COLLISION_PAIRS))
			)
		)
		physics_3d_island_count_label.set_text(
			(
				"Physics 3D Island Count: %s"
				% str(Performance.get_monitor(Performance.PHYSICS_3D_ISLAND_COUNT))
			)
		)

		physics_2d_active_objects_label.set_text(
			(
				"Physics 2D Active Objects: %s"
				% str(Performance.get_monitor(Performance.PHYSICS_2D_ACTIVE_OBJECTS))
			)
		)
		physics_2d_collision_pairs_label.set_text(
			(
				"Physics 2D Collision Pairs: %s"
				% str(Performance.get_monitor(Performance.PHYSICS_2D_COLLISION_PAIRS))
			)
		)
		physics_2d_island_count_label.set_text(
			(
				"Physics 2D Island Count: %s"
				% str(Performance.get_monitor(Performance.PHYSICS_2D_ISLAND_COUNT))
			)
		)

		usage_video_memory_total_label.set_text(
			(
				"Usage Video Memory Total: %s kb"
				% str(
					ceil(Performance.get_monitor(Performance.RENDER_USAGE_VIDEO_MEM_TOTAL) * 0.001)
				)
			)
		)
		video_memory_used_label.set_text(
			(
				"Video Memory Used Label: %s kb"
				% str(ceil(Performance.get_monitor(Performance.RENDER_VIDEO_MEM_USED) * 0.001))
			)
		)
		texture_memory_used_label.set_text(
			(
				"Texture Memory Used: %s kb"
				% str(ceil(Performance.get_monitor(Performance.RENDER_TEXTURE_MEM_USED) * 0.001))
			)
		)
		vertex_memory_used_label.set_text(
			(
				"Vertex Memory Used: %s kb"
				% str(ceil(Performance.get_monitor(Performance.RENDER_VERTEX_MEM_USED) * 0.001))
			)
		)


func show_performance_monitor(p_bool):
	if ! Engine.is_editor_hint():
		set_process(p_bool)
		if p_bool == true:
			show()
		else:
			hide()


func _ready():
	if ! Engine.is_editor_hint():
		if has_node("Container"):
			get_node("Container").set_size(get_node("Container").get_minimum_size())

		# Left
		fps_label = get_node(fps_label_path)
		assert(fps_label)

		process_label = get_node(process_label_path)
		assert(process_label)

		physics_process_label = get_node(physics_process_label_path)
		assert(physics_process_label)

		render_objects_in_frame_label = get_node(render_objects_in_frame_label_path)
		assert(render_objects_in_frame_label)

		render_draw_calls_in_frame_label = get_node(render_draw_calls_in_frame_label_path)
		assert(render_draw_calls_in_frame_label)

		render_verticies_in_frame_label = get_node(render_verticies_in_frame_label_path)
		assert(render_verticies_in_frame_label)

		render_material_changes_in_frame_label = get_node(
			render_material_changes_in_frame_label_path
		)
		assert(render_material_changes_in_frame_label)

		render_shader_changes_in_frame_label = get_node(render_shader_changes_in_frame_label_path)
		assert(render_shader_changes_in_frame_label)

		render_surface_changes_in_frame_label = get_node(render_surface_changes_in_frame_label_path)
		assert(render_surface_changes_in_frame_label)

		memory_static_label = get_node(memory_static_label_path)
		assert(memory_static_label)

		memory_dynamic_label = get_node(memory_dynamic_label_path)
		assert(memory_dynamic_label)

		object_count_label = get_node(object_count_label_path)
		assert(object_count_label)

		object_resource_count_label = get_node(object_resource_count_label_path)
		assert(object_resource_count_label)

		object_node_count_label = get_node(object_node_count_label_path)
		assert(object_node_count_label)

		#Right

		physics_3d_active_objects_label = get_node(physics_3d_active_objects_label_path)
		assert(physics_3d_active_objects_label)

		physics_3d_collision_pairs_label = get_node(physics_3d_collision_pairs_label_path)
		assert(physics_3d_collision_pairs_label)

		physics_3d_island_count_label = get_node(physics_3d_island_count_label_path)
		assert(physics_3d_island_count_label)

		physics_2d_active_objects_label = get_node(physics_2d_active_objects_label_path)
		assert(physics_2d_active_objects_label)

		physics_2d_collision_pairs_label = get_node(physics_2d_collision_pairs_label_path)
		assert(physics_2d_collision_pairs_label)

		physics_2d_island_count_label = get_node(physics_2d_island_count_label_path)
		assert(physics_2d_island_count_label)

		usage_video_memory_total_label = get_node(usage_video_memory_total_label_path)
		assert(usage_video_memory_total_label)

		video_memory_used_label = get_node(video_memory_used_label_path)
		assert(video_memory_used_label)

		texture_memory_used_label = get_node(texture_memory_used_label_path)
		assert(texture_memory_used_label)

		vertex_memory_used_label = get_node(vertex_memory_used_label_path)
		assert(vertex_memory_used_label)

		if ProjectSettings.has_setting("debug/settings/performance/show_performance_monitor"):
			should_show_performance_monitor = ProjectSettings.get_setting(
				"debug/settings/performance/show_performance_monitor"
			)
		else:
			ProjectSettings.set_setting(
				"debug/settings/performance/show_performance_monitor",
				should_show_performance_monitor
			)

			if Engine.is_editor_hint():
				var save_result = ProjectSettings.save()
				if save_result != OK:
					printerr("Could not save project settings!")

		show_performance_monitor(should_show_performance_monitor)
