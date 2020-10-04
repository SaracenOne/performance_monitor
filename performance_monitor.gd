extends Node
tool

var performance_monitor_gui: Control = null
var canvas_layer: CanvasLayer = null

const performance_monitor_gui_const = preload("performance_monitor_gui.tscn")

func toggle_performance_monitor() -> void:
	if performance_monitor_gui:
		performance_monitor_gui.show_performance_monitor(!performance_monitor_gui.should_show_performance_monitor)

func _input(p_event: InputEvent) -> void:
	if ! Engine.is_editor_hint():
		if p_event.is_action("toggle_performance_monitor"):
			if p_event.is_pressed():
				toggle_performance_monitor()

func _ready() -> void:
	if ! Engine.is_editor_hint():
		canvas_layer = CanvasLayer.new()
		canvas_layer.set_name("PerformanceMonitorLayer")
		canvas_layer.set_layer(128)
		add_child(canvas_layer)
		performance_monitor_gui = performance_monitor_gui_const.instance()
		canvas_layer.add_child(performance_monitor_gui)
