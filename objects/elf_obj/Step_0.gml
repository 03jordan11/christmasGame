/// @description Insert description here
// You can write your code in this editor

if(keyboard_check(ord("W"))){
	global.elfAnim = "idle"
}
if(keyboard_check(ord("S"))){
	global.elfAnim = ""
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
