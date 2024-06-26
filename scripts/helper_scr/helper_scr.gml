// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function listToArray(list){
	var size = ds_list_size(list)
	var arr = array_create(list)
	for (var i = 0; i < size; i++){
		arr[i] = ds_list_find_value(list, i)
	}
	return arr
}

function startTimer(){
	global.timerStart = current_time
}

function spawnToys(conveyorId){
	if (global.isPaused){
		return
	}
	xPos = 64
	yPos = 0
	switch(conveyorId){
		case 0:
			yPos = 182
			break
		case 1:
			yPos = 330
			break
		case 2:
			yPos = 483
			break
		case 3:
			yPos = 635
			break
	}
	toy = instance_create_depth(xPos, yPos, -10000, global.toys[irandom(4)], {conveyorToyId: conveyorId})
	ds_list_add(global.toysOnBelt, toy)
}

function throwPresent(startX, startY, present){
	theSpeed = 8

	direction = point_direction(present.x, present.y, global.bagPosition[0], global.bagPosition[1])
	distance = point_distance(present.x, present.y, global.bagPosition[0], global.bagPosition[1])

	xStep = lengthdir_x(min(theSpeed, distance), direction)
	yStep = lengthdir_y(min(theSpeed, distance), direction)

	x += xStep
	y += yStep

	image_angle += 5

	//scaling

	scaleFactor = 3

	progress = point_distance(present.x, present.y, startX, startY) / point_distance(startX, startY, global.bagPosition[0], global.bagPosition[1])

	if (progress < 0.5){
		image_xscale = 1 + progress * scaleFactor
		image_yscale = 1 + progress * scaleFactor
	}
	else{
		image_xscale = 1 + (1 - progress) * scaleFactor
		image_yscale = 1 + (1 - progress) * scaleFactor
	}
	
	if (present.x == global.bagPosition[0] && present.y == global.bagPosition[1]){
		audio_play_sound_on(global.sfxEmitter, presentDrop, false, 1)
		instance_destroy(present)
	}
}

function endGameSetup(isLevelFailed = false){
	//if endless mode, do somethings
	//if last level, do something else
	if(global.currentLevel == -1){
		global.health = 5
		global.score = 0
		endWrapping()
	}
	else if(global.currentLevel == 5){
		global.levelTimeSeconds = global.MAX_LEVEL_TIME
		global.health = 5
		global.score = 0
		endWrapping()
	}
	else{
		if(!isLevelFailed){
			++global.currentLevel
		}
		global.levelTimeSeconds = global.MAX_LEVEL_TIME
		global.health = 5
		endWrapping()
	
		if(!isLevelFailed){
			room_restart()
		}
	}

}

function endWrapping(){
	global.playerCanMove = true
	global.playerIsWrapping = false
	global.wrappingTimesPressed = 0
	global.timeSpaceHeld = 0
	global.spaceHeldStart = -1
	global.elfAnim = "idle"
}