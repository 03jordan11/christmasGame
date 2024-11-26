/// @description Insert description here
// You can write your code in this editor



if (global.levelTimeSeconds<= 0){
	if(global.currentLevel != -1){
		if(global.currentLevel == 5){
			if(!layer_exists("endLevel")){
				global.isPaused = true
				steam_set_achievement(global.day5)
				var lay = layer_create(-19999, "endLevel")
				if(global.wrappingSound != ""){
					audio_stop_sound(global.wrappingSound)
				}
				global.endLayerId = layer_sequence_create(lay, 0, 0, finalLevel_sq)
				global.isGameOver = true
			}
		}
		else{
			if(!layer_exists("endLevel")){
				global.isPaused = true
				switch(global.currentLevel){
					case 4:
						steam_set_achievement(global.day4)
					break;
					case 3:
						steam_set_achievement(global.day3)
					break;
					case 2:
						steam_set_achievement(global.day2)
					break;
					case 1:
						steam_set_achievement(global.day1)
					break;
				}
				var lay = layer_create(-19999, "endLevel")
				if(global.wrappingSound != ""){
					audio_stop_sound(global.wrappingSound)
				}
				global.endLayerId = layer_sequence_create(lay, 0, 0, endLevel_sq)
				global.isGameOver = true
				
			}
		}

	}	
}else{
	global.levelTimeSeconds--
}

