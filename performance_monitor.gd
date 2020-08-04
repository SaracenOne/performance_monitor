extends Node
tool

var canvas_layer = null

const performance_monitor_gui_const = preload("performance_monitor_gui.tscn")


func _ready():
	if ! Engine.is_editor_hint():
		canvas_layer = CanvasLayer.new()
		canvas_layer.set_name("PerformanceMonitorLayer")
		canvas_layer.set_layer(128)
		add_child(canvas_layer)
		var performance_monitor_gui = performance_monitor_gui_const.instance()
		canvas_layer.add_child(performance_monitor_gui)
