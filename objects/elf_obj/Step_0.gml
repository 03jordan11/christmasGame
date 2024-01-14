/// @description Insert description here
// You can write your code in this editor

if(global.playerCanMove){
	playerMovement(self)
}


if(keyboard_check_released(vk_space)){
	//check that they are above a present
	wrapPresent(self)

}



if (global.elfAnim == ""){
	image_index = 0
	image_speed = 0
}

if (global.elfAnim == "idle"){
	image_speed = 1
}

if (global.elfAnim == "wrapping"){

}
