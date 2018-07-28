extends EditorPlugin
tool

func get_name(): 
	return "PerformanceMonitor"

func _enter_tree():
	add_autoload_singleton("PerformanceMonitor", "res://addons/performance_monitor/performance_monitor.gd")

func _exit_tree():
	remove_autoload_singleton("PerformanceMonitor")