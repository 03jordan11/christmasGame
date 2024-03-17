/// @description Insert description here
// You can write your code in this editor
if(pauseInput()){
	if(_howToPlayEnabled){
		_howToPlayEnabled = false
	}else{
		global.isPaused = !global.isPaused
		global.pressedPause = !global.pressedPause
	}

}



