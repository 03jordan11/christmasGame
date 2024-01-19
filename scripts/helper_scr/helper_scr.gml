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
			yPos = 192
			break
		case 1:
			yPos = 342
			break
		case 2:
			yPos = 508
			break
		case 3:
			yPos = 658
			break
	}
	toy = instance_create_depth(xPos, yPos, -10000, global.toys[irandom(4)])
	ds_list_add(global.toysOnBelt, toy)
}

function throwPresent(startX, startY, present){
	speed = 4

	direction = point_direction(present.x, present.y, global.bagPosition[0], global.bagPosition[1])
	distance = point_distance(present.x, present.y, global.bagPosition[0], global.bagPosition[1])



	xStep = lengthdir_x(min(speed, distance), direction)
	yStep = lengthdir_y(min(speed, distance), direction)

	x += xStep
	y += yStep

	image_angle += 5

	//scaling

	scaleFactor = 10

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
		instance_destroy(present)
	}
}