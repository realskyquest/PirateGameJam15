extends Node2D

@onready var navigation_region: NavigationRegion2D = $Map/NavigationRegion2D

func _ready() -> void:
	randomize()
	
	match randi_range(0, 3):
		1:
			Globals.missionType = Globals.Missions.GOV
		2:
			Globals.missionType = Globals.Missions.CULT
		3:
			Globals.missionType = Globals.Missions.ANOMALY
			
		
	

func _on_make_map_timer_timeout():
	navigation_region.bake_navigation_polygon()
	
