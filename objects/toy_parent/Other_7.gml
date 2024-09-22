/// @description Insert description here
// You can write your code in this editor

//once it gets to the end of the conveyer, destory
if (self.sprite_index == wrapping_spr){
	if(global.score >= 10){
		global.score-=10
	}else{
		global.score = 0
	}
	global.health--
	instance_destroy()
}


