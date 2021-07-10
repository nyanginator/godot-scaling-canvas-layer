# Copyright © 2021 Nicholas Yang and contributors - MIT License
# See `LICENSE.md` included in the source distribution for details.

tool
extends EditorPlugin


func _enter_tree():
	add_custom_type(
		"ScalingCanvasLayer",
		"CanvasLayer",
		preload("scaling_canvas_layer.gd"),
		preload("scaling_canvas_layer.svg")
	)


func _exit_tree():
	remove_custom_type("ScalingCanvasLayer")
