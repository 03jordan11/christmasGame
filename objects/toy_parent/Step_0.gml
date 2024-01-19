/// @description Insert description here
// You can write your code in this editor

//if at the end of the conveyor
if (self.x >= 500){
	self.sprite_index = wrapping_spr
	image_blend = make_color_rgb(128, 128, 128)
	
}
else{
	if(!global.isPaused){
		self.x += 1.2
	}
}

