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