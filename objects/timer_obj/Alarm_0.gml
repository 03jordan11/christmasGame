/// @description Insert description here
// You can write your code in this editor


global.levelTimeSeconds--
if (global.levelTimeSeconds<= 0){
	if(global.currentLevel != -1){
		endGameSetup()
	}	
}

