/// @description Insert description here
// You can write your code in this editor
cursor_sprite = cursor71

load(global.saveFileName)
menuOptions = ["Start", "Endless Mode", "Settings", "Leaderboards", "Exit"]

if(canContinue()){
	array_insert(menuOptions, 0, "Continue")
}
selectedIndex = 0

#region drawing
startX = 190
startY = 220
padding = 16
#endregion

selectActions = [
	function () {
		global.currentLevel = 1
		room_goto(SantasWorkshop)
	},
	function(){
		global.currentLevel = -1
		room_goto(SantasWorkshop)
	},
	function(){
		instance_destroy(self)
		instance_create_layer(0, 0, "Instances", newSettings_obj)
		show_debug_message("Open settings menu")
	},
	function(){
		instance_create_layer(0,0, "Leaderboard", leaderboard_obj)
	},
	function(){
		game_end()
	}
]

if(canContinue()){
	var continueFunc = function(){
		room_goto(SantasWorkshop)
	}
	
	array_insert(selectActions, 0, continueFunc)
}
