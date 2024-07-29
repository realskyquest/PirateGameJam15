extends Node2D

func _on_timer_timeout():
	$NavigationRegion2D.bake_navigation_polygon()
	
