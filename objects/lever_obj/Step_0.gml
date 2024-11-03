/// @description Insert description here
// You can write your code in this editor

if (!global.conveyersOn[lever_id] && !global.isPaused){
	sprite_index = lever_down_spr
}

if (global.conveyersOn[lever_id] && !global.isPaused){
	flash = false
	sprite_index = lever_up_spr
}

if (flash && alarm[3] == -1){
	alarm[3] = room_speed * 0.25
}
if(!flash){
	visible = true
}



