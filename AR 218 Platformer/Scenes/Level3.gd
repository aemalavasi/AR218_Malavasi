extends Node2D
func _ready():
	Global.current_level = 3
func _process(delta):
	var collectables_left = $Collectables.get_child_count()
	print(collectables_left)
	if collectables_left <= 0:
		$HotdogSal.visible = true
		$LobsterRocky.visible = true

	
