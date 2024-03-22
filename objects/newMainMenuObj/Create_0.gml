/// @description Insert description here
// You can write your code in this editor

canContinue = global.currentLevel != -1
menuOptions = []
if (canContinue){
	menuOptions = ["Continue", "Endless Mode", "Settings", "Exit"]
}else{
	menuOptions = ["Start", "Endless Mode", "Settings", "Exit"]
}
selectedIndex = 0


#region drawing
startX = 190
startY = 220
padding = 16
#endregion

selectActions = [
	function () {
		if(!canContinue){
			global.currentLevel = 1
		}
		room_goto(SantasWorkshop)
	},
	function(){
		global.currentLevel = -1
		room_goto(SantasWorkshop)
	},
	function(){
		show_debug_message("Open settings menu")
	},
	function(){
		game_end()
	}
]
