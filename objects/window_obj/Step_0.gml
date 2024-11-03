/// @description Insert description here
// You can write your code in this editor

if(!global.isPaused){
	image_speed = 1
	
	if(global.currentLevel != -1){
		if (!_changedToEvening && global.levelTimeSeconds <= _changeTime){
			sprite_index = window_night_spr
			_changedToEvening = true
		}
		else if (!_changedToNight &&global.levelTimeSeconds <= _changeTime * 2){
			sprite_index = window_evening_spr
			_changedToNight = true
		}
		else if(!_changedToDay){
			sprite_index = window_day_spr
			_changedToDay = true
		}
	}
}
else{
	image_speed = 0
}


