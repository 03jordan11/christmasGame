/// @description Insert description here
// You can write your code in this editor



if (global.levelTimeSeconds<= 0){
	if(global.currentLevel != -1){
		if(global.currentLevel == 5){
			if(!layer_exists("endLevel")){
				var tt = steam_upload_score("time", 180)
				global.isPaused = true
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
				var tt = steam_upload_score("time", 180)
				global.isPaused = true
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

