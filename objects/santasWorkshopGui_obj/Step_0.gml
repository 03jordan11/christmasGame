/// @description Insert description here
// You can write your code in this editor

if(layer_exists("endLevel")){
	if(alarm[0] == -1){
		alarm[0] = 30
	}	
}


if(layer_exists("endLevel") &&layer_sequence_get_headpos(global.endLayerId) == layer_sequence_get_length(global.endLayerId) ){
	if(scoreX <= scoreTargetX - 5 && scoreY <= scoreTargetY - 5){
		speed = 10
		direction = point_direction(scoreX, scoreY, scoreTargetX, scoreTargetY)

		var moveX = lengthdir_x(speed, direction)
		var moveY = lengthdir_y(speed, direction)

		scoreX += moveX
		scoreY += moveY
	}
	else{
		endScoreInPosition = true
	}
}


if(global.health == 0 && !layer_exists("levelFail")){
	levelFailGui()
}




