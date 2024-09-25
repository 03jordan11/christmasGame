/// @description Insert description here
// You can write your code in this editor
global.pressedPause = false

_howToPlayEnabled = false
_selected = 0
_settingsMenuEnabled = false
_options = ["Resume", "Restart", "Settings", "How to Play", "Quit"]


_actions = function(_selected){
	switch(_selected){
		case 0:
			//resume game
			global.isPaused = false
			global.pressedPause = false
			break;
		case 1:
			//restart level
			endGameSetup(true)
			room_restart()
			break;
		case 2:
			instance_create_layer(0, 0, "Instances",newSettings_obj)
			_settingsMenuEnabled = true
			break
		case 3: 
			//how to play
			_howToPlayEnabled = true
			break;
		case 4:
			//quit
			room_goto(NewMainMenu)
	}
}