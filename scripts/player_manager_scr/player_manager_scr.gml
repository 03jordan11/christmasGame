// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function movePlayer(player){
	switch(global.location){
		case 1:
			player.x = 575
			player.y = 105
		break;
		case 2:
			player.x = 575
			player.y = 254
		break;
		case 3:
			player.x = 575
			player.y = 408
		break;
		case 4:
			player.x = 575
			player.y = 559
		break;
	}
}

function wrapPresent(player){
	if (!global.playerIsWrapping){		
		//can start wrapping if toy exists below
		var toy = isToyBelow(player)
		if (toy != noone){			
			global.playerCanMove = false
			global.playerIsWrapping = true
			global.elfAnim = "wrapping"
			instance_create_depth(self.x, self.y + 75, -10000, smoke_obj)
			instance_destroy(toy)
		}
	}else{
		if(global.wrappingType == 0){
			++global.wrappingTimesPressed
			if(global.wrappingTimesPressed >= global.wrappingTimeButtonPress){
				global.playerCanMove = true
				global.playerIsWrapping = false
				global.wrappingTimesPressed = 0
				global.elfAnim = "idle"
				instance_create_depth(smoke_obj.x, smoke_obj.y, -10001, present_obj)
				instance_destroy(smoke_obj)
			}
		}
		else{
			if(global.timeSpaceHeld >= global.wrappingTimeSeconds){
				global.score+=50
				global.playerCanMove = true
				global.playerIsWrapping = false
				global.elfAnim = "idle"
				global.timeSpaceHeld = 0
				global.spaceHeldStart = -1
				instance_create_depth(smoke_obj.x, smoke_obj.y, -10001, present_obj)
				instance_destroy(smoke_obj)

			}
		}
	}
}


function isToyBelow(player){
	var toys = listToArray(global.toysOnBelt)
	var toy = instance_position(player.x, player.y+120, toys)
	return toy
}

function playerMovement(player){
	if(moveUp()){
		if (global.location <= 1){
			global.location = 1
		}else{
			--global.location	
		}
		movePlayer(player)
	}
	if(moveDown()){
		if(global.location > 3){
			global.location = 4
		}
		else{
			++global.location
		}
		movePlayer(player)

	}
	if(moveLeft() && player.x >= 65){
		if(global.location != 0){
			player.x = player.x - 2.5
		}
	}
	if(moveRight() && player.x <= 575){
		if(global.location != 0){
			player.x = player.x + 2.5
		}
	}
}
	
function drinkCoco(){
	if(drinkCocoInput()){
		global.cocoIsReady = false
		global.wrappingTimeSeconds -= global.cocoTimeReductionSeconds
		global.wrappingTimeButtonPress -= global.cocoTimePressedReduction
		show_debug_message("drunk the coco")
		coco_obj.alarm[1] = (global.cocoMakingTime / 2) * 60
		//set time to wrap to lower here for so many seconds
	}
}

function resetWrappingTimes(){
	global.wrappingTimeSeconds += global.cocoTimeReductionSeconds
	global.wrappingTimeButtonPress += global.cocoTimePressedReduction
}
	
function pressLever(player){
	if (pullLeverInput()){
		lever = isLeverBelow(player)
		if(lever != noone){
			global.conveyersOn[lever.lever_id] = !global.conveyersOn[lever.lever_id]
		}
	}
}

function isLeverBelow(player){
	var lever = instance_position(player.x+32, player.y+120, lever_obj)
	return lever
}