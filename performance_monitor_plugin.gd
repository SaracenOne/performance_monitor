extends EditorPlugin
tool

func get_name() -> String:
	return "PerformanceMonitor"

func _enter_tree() -> void:
	add_autoload_singleton("PerformanceMonitor", "res://addons/performance_monitor/performance_monitor.gd")

func _exit_tree() -> void:
	remove_autoload_singleton("PerformanceMonitor")
