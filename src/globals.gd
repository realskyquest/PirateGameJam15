extends Node

enum Missions {
	DEFAULT,
	GOV,
	CULT,
	ANOMALY,
}

var missionType: Missions = Missions.DEFAULT

var evidenceCount: int = 0
var evidencePics: Array = []
