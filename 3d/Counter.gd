extends Label

var coins = 0
const MAX_COINS = 8
# Called when the node enters the scene tree for the first time.
func _ready():
	text = str(coins)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	text = str(coins)

func _on_coin_2_child_entered_tree(node):
	print("Coin collected in counter!")
	coins = coins + 1

func _on_coin_child_exiting_tree(node):
	coins = coins + 1
	if coins == MAX_COINS:
		get_tree().change_scene_to_file("res://win.tscn")
