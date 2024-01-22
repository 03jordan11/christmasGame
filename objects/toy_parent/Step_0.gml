/// @description Insert description here
// You can write your code in this editor

if (global.isPaused){
	image_speed = 0
}else{
	image_speed = 1
}

//if at the end of the conveyor
if (self.x >= 500 && !global.isPaused){
	self.sprite_index = wrapping_spr
	image_blend = make_color_rgb(128, 128, 128)
	
}
else{
	if(!global.isPaused){
		self.x += 1.2
	}
}
