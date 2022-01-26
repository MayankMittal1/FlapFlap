extends Node


var music = true
var highscore = 5
var wall_speed = Vector2(-2, 0)

func save():
	var save_dict = {
		"music" : music,
		"highscore" : highscore,
	}
	return save_dict

func save_game():
	var save_data = File.new()
	save_data.open("user://savegame.save", File.WRITE)
	var node_data = save()
	save_data.store_line(to_json(node_data))
	save_data.close()

func load_game():
	var save_game = File.new()
	if save_game.file_exists("user://savegame.save"):
		save_game.open("user://savegame.save", File.READ)
		var node_data = parse_json(save_game.get_line())
		if(node_data.has("music")):
			music = node_data["music"]
		if(node_data.has("highscore")):
			highscore = node_data["highscore"]
		save_game.close()
