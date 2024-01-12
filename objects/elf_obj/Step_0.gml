/// @description Insert description here
// You can write your code in this editor

if(keyboard_check_released(ord("W"))){
	if (global.location <= 1){
		global.location = 1
	}else{
		--global.location	
	}
	movePlayer(self)
}
if(keyboard_check_released(ord("S"))){
	if(global.location > 3){
		global.location = 4
	}
	else{
		++global.location
	}
	movePlayer(self)

}
if(keyboard_check(ord("A"))){
	if(global.location != 0){
		self.x = self.x - 2.5
	}
}
if(keyboard_check(ord("D"))){
	if(global.location != 0){
		self.x = self.x + 2.5
	}
}
if(keyboard_check_released(vk_space)){
	//check that they are above a present
	if (!global.playerIsWrapping){
		global.playerIsWrapping = true
		sprite_index = elf_wrapping_spr
		instance_create_depth(self.x, self.y + 75, -10000, smoke_obj)
	}
	else{
		global.playerIsWrapping = false
		sprite_index = elf_idle_spr
		instance_destroy(smoke_obj)
	}
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
