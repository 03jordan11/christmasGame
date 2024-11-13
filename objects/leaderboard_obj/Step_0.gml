/// @description Insert description here
// You can write your code in this editor

if(backInput()){
	showLeaderboard = false
	with (id)
		instance_destroy()
}

if(mouse_check_button_released(mb_left)){
	global.usingController = false
	if(backButtonHovered){
		with (id)
			instance_destroy()
	}
}