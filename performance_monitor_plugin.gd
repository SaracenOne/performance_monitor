extends EditorPlugin
tool


func _init() -> void:
	print("Initialising PerformanceMonitor plugin")


func _notification(p_notification: int):
	match p_notification:
		NOTIFICATION_PREDELETE:
			print("Destroying PerformanceMonitor plugin")


func get_name() -> String:
	return "PerformanceMonitor"


func _enter_tree() -> void:
	add_autoload_singleton(
		"PerformanceMonitor", "res://addons/performance_monitor/performance_monitor.gd"
	)


func _exit_tree() -> void:
	remove_autoload_singleton("PerformanceMonitor")
