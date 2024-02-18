/// @description Insert description here
// You can write your code in this editor



if (global.levelTimeSeconds<= 0){
	if(global.currentLevel != -1){
		
		if(!layer_exists("endLevel")){
			global.isPaused = true
			var lay = layer_create(-19999, "endLevel")
			global.endLayerId = layer_sequence_create(lay, 0, 0, endLevel_sq)
		}
		
		//endGameSetup()
	}	
}else{
	global.levelTimeSeconds--
}

