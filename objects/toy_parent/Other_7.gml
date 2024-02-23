/// @description Insert description here
// You can write your code in this editor

//once it gets to the end of the conveyer, destory
if (self.sprite_index == wrapping_spr){
	global.score-=10
	global.health--
	instance_destroy()
}


