// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function movePlayer(player){
	switch(global.location){
		case 1:
			player.x = 575
			player.y = 105
		break;
		case 2:
			player.x = 575
			player.y = 254
		break;
		case 3:
			player.x = 575
			player.y = 408
		break;
		case 4:
			player.x = 575
			player.y = 559
		break;
	}
}

function wrapPresent(player){
	if (!global.playerIsWrapping){
		var toys = listToArray(global.toysOnBelt)
		var toy = instance_position(player.x, player.y+120, toys)
		if (toy != noone){
			global.playerCanMove = false
			global.playerIsWrapping = true
			player.sprite_index = elf_wrapping_spr
			instance_create_depth(self.x, self.y + 75, -10000, smoke_obj)
			instance_destroy(toy)
		}
	}else{
		++global.wrappingTimesPressed
		if(global.wrappingTimesPressed >= 8){
			global.playerCanMove = true
			global.wrappingTimesPressed = 0
			global.playerIsWrapping = false
			player.sprite_index = elf_idle_spr
			instance_destroy(smoke_obj)			
		}

	}

}

function playerMovement(player){
	if(keyboard_check_released(ord("W"))){
		if (global.location <= 1){
			global.location = 1
		}else{
			--global.location	
		}
		movePlayer(player)
	}
	if(keyboard_check_released(ord("S"))){
		if(global.location > 3){
			global.location = 4
		}
		else{
			++global.location
		}
		movePlayer(player)

	}
	if(keyboard_check(ord("A")) && player.x >= 65){
		if(global.location != 0){
			player.x = player.x - 2.5
		}
	}
	if(keyboard_check(ord("D")) && player.x <= 575){
		if(global.location != 0){
			player.x = player.x + 2.5
		}
	}
}