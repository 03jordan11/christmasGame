/// @description Insert description here
// You can write your code in this editor

if (displayGui && anyInput()){
	//check if there is more text in the next position
	arrLength = array_length(global.storyScripts[global.currentLevel -1])
	if (arrLength > currTextOrder + 1){
		++currTextOrder
		currentTextToDisplay = global.storyScripts[global.currentLevel-1][currTextOrder]
	}
	else{
		global.pauseDisabled = false
		displayGui = false
		global.isPaused = false
	}
}




